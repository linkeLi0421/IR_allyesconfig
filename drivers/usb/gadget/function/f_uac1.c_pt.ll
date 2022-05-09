; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/f_uac1.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_uac1.c"
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
%struct.uac1_output_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.uac_format_type_i_discrete_descriptor_1 = type { i8, i8, i8, i8, i8, i8, i8, i8, [1 x [3 x i8]] }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.uac1_as_header_descriptor = type <{ i8, i8, i8, i8, i8, i16 }>
%struct.uac_iso_endpoint_descriptor = type <{ i8, i8, i8, i8, i8, i16 }>
%struct.atomic_t = type { i32 }
%struct.f_uac1_opts = type { %struct.usb_function_instance, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i8, i8, i16, i16, i16, i32, i8, %struct.mutex, i32 }
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
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.uac1_ac_header_descriptor = type <{ i8, i8, i8, i16, i16, i8, [0 x i8] }>
%struct.uac_feature_unit_descriptor = type { i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.f_uac1 = type { %struct.g_audio, i8, i8, i8, i8, i8, i8, %struct.usb_ctrlrequest, ptr, %struct.atomic_t }
%struct.g_audio = type { %struct.usb_function, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.uac_params }
%struct.uac_params = type { i32, i32, i32, %struct.uac_fu_params, i32, i32, i32, %struct.uac_fu_params, i32, i32 }
%struct.uac_fu_params = type { i32, i8, i8, i16, i16, i16 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.uac1_status_word = type { i8, i8 }

@__UNIQUE_ID_alias243 = internal constant [30 x i8] c"usb_f_uac1.alias=usbfunc:uac1\00", section ".modinfo", align 1
@uac1usb_func = internal global { %struct.usb_function_driver, [40 x i8] } { %struct.usb_function_driver { ptr @.str, ptr null, %struct.list_head zeroinitializer, ptr @f_audio_alloc_inst, ptr @f_audio_alloc }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_usb_f_uac1__244_1570_uac1mod_init6 = internal global ptr @uac1mod_init, section ".initcall6.init", align 4
@__exitcall_uac1mod_exit = internal global ptr @uac1mod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file245 = internal constant [55 x i8] c"usb_f_uac1.file=drivers/usb/gadget/function/usb_f_uac1\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [23 x i8] c"usb_f_uac1.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author247 = internal constant [33 x i8] c"usb_f_uac1.author=Ruslan Bilovol\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uac1\00", [27 x i8] zeroinitializer }, align 32
@f_audio_alloc_inst.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&opts->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@f_uac1_func_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @f_uac1_item_ops, ptr null, ptr @f_uac1_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@f_uac1_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @f_uac1_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@f_uac1_attrs = internal global { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @f_uac1_opts_attr_c_chmask, ptr @f_uac1_opts_attr_c_srate, ptr @f_uac1_opts_attr_c_ssize, ptr @f_uac1_opts_attr_p_chmask, ptr @f_uac1_opts_attr_p_srate, ptr @f_uac1_opts_attr_p_ssize, ptr @f_uac1_opts_attr_req_number, ptr @f_uac1_opts_attr_p_mute_present, ptr @f_uac1_opts_attr_p_volume_present, ptr @f_uac1_opts_attr_p_volume_min, ptr @f_uac1_opts_attr_p_volume_max, ptr @f_uac1_opts_attr_p_volume_res, ptr @f_uac1_opts_attr_c_mute_present, ptr @f_uac1_opts_attr_c_volume_present, ptr @f_uac1_opts_attr_c_volume_min, ptr @f_uac1_opts_attr_c_volume_max, ptr @f_uac1_opts_attr_c_volume_res, ptr null], [56 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_c_chmask = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.3, ptr null, i16 420, ptr @f_uac1_opts_c_chmask_show, ptr @f_uac1_opts_c_chmask_store }, [44 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_c_srate = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.5, ptr null, i16 420, ptr @f_uac1_opts_c_srate_show, ptr @f_uac1_opts_c_srate_store }, [44 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_c_ssize = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.6, ptr null, i16 420, ptr @f_uac1_opts_c_ssize_show, ptr @f_uac1_opts_c_ssize_store }, [44 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_p_chmask = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.7, ptr null, i16 420, ptr @f_uac1_opts_p_chmask_show, ptr @f_uac1_opts_p_chmask_store }, [44 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_p_srate = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.8, ptr null, i16 420, ptr @f_uac1_opts_p_srate_show, ptr @f_uac1_opts_p_srate_store }, [44 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_p_ssize = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.9, ptr null, i16 420, ptr @f_uac1_opts_p_ssize_show, ptr @f_uac1_opts_p_ssize_store }, [44 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_req_number = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.10, ptr null, i16 420, ptr @f_uac1_opts_req_number_show, ptr @f_uac1_opts_req_number_store }, [44 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_p_mute_present = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.11, ptr null, i16 420, ptr @f_uac1_opts_p_mute_present_show, ptr @f_uac1_opts_p_mute_present_store }, [44 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_p_volume_present = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.12, ptr null, i16 420, ptr @f_uac1_opts_p_volume_present_show, ptr @f_uac1_opts_p_volume_present_store }, [44 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_p_volume_min = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.13, ptr null, i16 420, ptr @f_uac1_opts_p_volume_min_show, ptr @f_uac1_opts_p_volume_min_store }, [44 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_p_volume_max = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.15, ptr null, i16 420, ptr @f_uac1_opts_p_volume_max_show, ptr @f_uac1_opts_p_volume_max_store }, [44 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_p_volume_res = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.16, ptr null, i16 420, ptr @f_uac1_opts_p_volume_res_show, ptr @f_uac1_opts_p_volume_res_store }, [44 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_c_mute_present = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.17, ptr null, i16 420, ptr @f_uac1_opts_c_mute_present_show, ptr @f_uac1_opts_c_mute_present_store }, [44 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_c_volume_present = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.18, ptr null, i16 420, ptr @f_uac1_opts_c_volume_present_show, ptr @f_uac1_opts_c_volume_present_store }, [44 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_c_volume_min = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.19, ptr null, i16 420, ptr @f_uac1_opts_c_volume_min_show, ptr @f_uac1_opts_c_volume_min_store }, [44 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_c_volume_max = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.20, ptr null, i16 420, ptr @f_uac1_opts_c_volume_max_show, ptr @f_uac1_opts_c_volume_max_store }, [44 x i8] zeroinitializer }, align 32
@f_uac1_opts_attr_c_volume_res = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.21, ptr null, i16 420, ptr @f_uac1_opts_c_volume_res_show, ptr @f_uac1_opts_c_volume_res_store }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"c_chmask\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"c_srate\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"c_ssize\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p_chmask\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"p_srate\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"p_ssize\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"req_number\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"p_mute_present\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"p_volume_present\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p_volume_min\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%hd\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p_volume_max\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p_volume_res\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"c_mute_present\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c_volume_present\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"c_volume_min\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"c_volume_max\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"c_volume_res\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uac1_func\00", [22 x i8] zeroinitializer }, align 32
@uac1_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @str_uac1, ptr null], [24 x i8] zeroinitializer }, align 32
@ac_header_desc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@out_feature_unit_desc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@in_feature_unit_desc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ac_interface_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@usb_out_it_desc = internal global { %struct.uac_input_terminal_descriptor, [20 x i8] } { %struct.uac_input_terminal_descriptor { i8 12, i8 36, i8 2, i8 0, i16 257, i8 0, i8 0, i16 768, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@io_out_ot_desc = internal global { %struct.uac1_output_terminal_descriptor, [23 x i8] } { %struct.uac1_output_terminal_descriptor <{ i8 9, i8 36, i8 3, i8 0, i16 259, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@as_out_interface_alt_0_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 1, i8 2, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@as_out_interface_alt_1_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 1, i8 1, i8 1, i8 2, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@io_in_it_desc = internal global { %struct.uac_input_terminal_descriptor, [20 x i8] } { %struct.uac_input_terminal_descriptor { i8 12, i8 36, i8 2, i8 0, i16 258, i8 0, i8 0, i16 768, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@usb_in_ot_desc = internal global { %struct.uac1_output_terminal_descriptor, [23 x i8] } { %struct.uac1_output_terminal_descriptor <{ i8 9, i8 36, i8 3, i8 0, i16 257, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@as_in_interface_alt_0_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 1, i8 2, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@as_in_interface_alt_1_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 1, i8 1, i8 1, i8 2, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@as_out_type_i_desc = internal global { %struct.uac_format_type_i_discrete_descriptor_1, [21 x i8] } { %struct.uac_format_type_i_discrete_descriptor_1 { i8 11, i8 36, i8 2, i8 1, i8 0, i8 2, i8 16, i8 1, [1 x [3 x i8]] zeroinitializer }, [21 x i8] zeroinitializer }, align 32
@as_in_type_i_desc = internal global { %struct.uac_format_type_i_discrete_descriptor_1, [21 x i8] } { %struct.uac_format_type_i_discrete_descriptor_1 { i8 11, i8 36, i8 2, i8 1, i8 0, i8 2, i8 16, i8 1, [1 x [3 x i8]] zeroinitializer }, [21 x i8] zeroinitializer }, align 32
@ac_int_ep_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 512, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@as_out_ep_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 9, i8 5, i8 0, i8 9, i16 -14336, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@as_in_ep_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 9, i8 5, i8 -128, i8 5, i16 -14336, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@f_audio_desc = internal global { [22 x ptr], [40 x i8] } { [22 x ptr] [ptr @ac_interface_desc, ptr @ac_header_desc, ptr @usb_out_it_desc, ptr @io_out_ot_desc, ptr @out_feature_unit_desc, ptr @io_in_it_desc, ptr @usb_in_ot_desc, ptr @in_feature_unit_desc, ptr @ac_int_ep_desc, ptr @as_out_interface_alt_0_desc, ptr @as_out_interface_alt_1_desc, ptr @as_out_header_desc, ptr @as_out_type_i_desc, ptr @as_out_ep_desc, ptr @as_iso_out_desc, ptr @as_in_interface_alt_0_desc, ptr @as_in_interface_alt_1_desc, ptr @as_in_header_desc, ptr @as_in_type_i_desc, ptr @as_in_ep_desc, ptr @as_iso_in_desc, ptr null], [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"UAC1_PCM\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UAC1_Gadget\00", [20 x i8] zeroinitializer }, align 32
@f_audio_validate_opts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.27, i32 1063, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error: no playback and capture channels\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"f_audio_validate_opts\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/usb/gadget/function/f_uac1.c\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@f_audio_validate_opts._entry_ptr = internal global ptr @f_audio_validate_opts._entry, section ".printk_index", align 4
@f_audio_validate_opts._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.27, i32 1066, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error: unsupported playback channels mask\0A\00", [53 x i8] zeroinitializer }, align 32
@f_audio_validate_opts._entry_ptr.32 = internal global ptr @f_audio_validate_opts._entry.30, section ".printk_index", align 4
@f_audio_validate_opts._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.27, i32 1069, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error: unsupported capture channels mask\0A\00", [54 x i8] zeroinitializer }, align 32
@f_audio_validate_opts._entry_ptr.35 = internal global ptr @f_audio_validate_opts._entry.33, section ".printk_index", align 4
@f_audio_validate_opts._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.26, ptr @.str.27, i32 1072, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error: incorrect playback sample size\0A\00", [57 x i8] zeroinitializer }, align 32
@f_audio_validate_opts._entry_ptr.38 = internal global ptr @f_audio_validate_opts._entry.36, section ".printk_index", align 4
@f_audio_validate_opts._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.26, ptr @.str.27, i32 1075, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error: incorrect capture sample size\0A\00", [58 x i8] zeroinitializer }, align 32
@f_audio_validate_opts._entry_ptr.41 = internal global ptr @f_audio_validate_opts._entry.39, section ".printk_index", align 4
@f_audio_validate_opts._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.26, ptr @.str.27, i32 1078, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error: incorrect playback sampling rate\0A\00", [55 x i8] zeroinitializer }, align 32
@f_audio_validate_opts._entry_ptr.44 = internal global ptr @f_audio_validate_opts._entry.42, section ".printk_index", align 4
@f_audio_validate_opts._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.26, ptr @.str.27, i32 1081, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error: incorrect capture sampling rate\0A\00", [56 x i8] zeroinitializer }, align 32
@f_audio_validate_opts._entry_ptr.47 = internal global ptr @f_audio_validate_opts._entry.45, section ".printk_index", align 4
@f_audio_validate_opts._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.26, ptr @.str.27, i32 1086, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error: incorrect playback volume max/min\0A\00", [54 x i8] zeroinitializer }, align 32
@f_audio_validate_opts._entry_ptr.50 = internal global ptr @f_audio_validate_opts._entry.48, section ".printk_index", align 4
@f_audio_validate_opts._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.26, ptr @.str.27, i32 1089, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error: incorrect capture volume max/min\0A\00", [55 x i8] zeroinitializer }, align 32
@f_audio_validate_opts._entry_ptr.53 = internal global ptr @f_audio_validate_opts._entry.51, section ".printk_index", align 4
@f_audio_validate_opts._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.26, ptr @.str.27, i32 1092, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Error: negative/zero playback volume resolution\0A\00", [47 x i8] zeroinitializer }, align 32
@f_audio_validate_opts._entry_ptr.56 = internal global ptr @f_audio_validate_opts._entry.54, section ".printk_index", align 4
@f_audio_validate_opts._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.26, ptr @.str.27, i32 1095, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Error: negative/zero capture volume resolution\0A\00", [48 x i8] zeroinitializer }, align 32
@f_audio_validate_opts._entry_ptr.59 = internal global ptr @f_audio_validate_opts._entry.57, section ".printk_index", align 4
@f_audio_validate_opts._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.26, ptr @.str.27, i32 1100, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Error: incorrect playback volume resolution\0A\00", [51 x i8] zeroinitializer }, align 32
@f_audio_validate_opts._entry_ptr.62 = internal global ptr @f_audio_validate_opts._entry.60, section ".printk_index", align 4
@f_audio_validate_opts._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.26, ptr @.str.27, i32 1103, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Error: incorrect capture volume resolution\0A\00", [52 x i8] zeroinitializer }, align 32
@f_audio_validate_opts._entry_ptr.65 = internal global ptr @f_audio_validate_opts._entry.63, section ".printk_index", align 4
@str_uac1 = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @strings_uac1 }, [24 x i8] zeroinitializer }, align 32
@strings_uac1 = internal global { [14 x %struct.usb_string], [48 x i8] } { [14 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.66 }, %struct.usb_string { i8 0, ptr @.str.67 }, %struct.usb_string { i8 0, ptr @.str.68 }, %struct.usb_string { i8 0, ptr @.str.69 }, %struct.usb_string { i8 0, ptr @.str.70 }, %struct.usb_string { i8 0, ptr @.str.71 }, %struct.usb_string { i8 0, ptr @.str.72 }, %struct.usb_string { i8 0, ptr @.str.73 }, %struct.usb_string { i8 0, ptr @.str.74 }, %struct.usb_string { i8 0, ptr @.str.75 }, %struct.usb_string { i8 0, ptr @.str.76 }, %struct.usb_string { i8 0, ptr @.str.77 }, %struct.usb_string { i8 0, ptr @.str.78 }, %struct.usb_string zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AC Interface\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Playback Input terminal\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Playback Channels\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Playback Output terminal\00", [39 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Capture Input terminal\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Capture Channels\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Capture Output terminal\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Playback Volume\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Playback Inactive\00", [46 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Playback Active\00", [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Capture Inactive\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Active\00", [17 x i8] zeroinitializer }, align 32
@as_out_header_desc = internal global { %struct.uac1_as_header_descriptor, [25 x i8] } { %struct.uac1_as_header_descriptor <{ i8 7, i8 36, i8 1, i8 0, i8 1, i16 256 }>, [25 x i8] zeroinitializer }, align 32
@as_in_header_desc = internal global { %struct.uac1_as_header_descriptor, [25 x i8] } { %struct.uac1_as_header_descriptor <{ i8 7, i8 36, i8 1, i8 0, i8 1, i16 256 }>, [25 x i8] zeroinitializer }, align 32
@as_iso_out_desc = internal global { %struct.uac_iso_endpoint_descriptor, [25 x i8] } { %struct.uac_iso_endpoint_descriptor <{ i8 7, i8 37, i8 1, i8 1, i8 1, i16 256 }>, [25 x i8] zeroinitializer }, align 32
@as_iso_in_desc = internal global { %struct.uac_iso_endpoint_descriptor, [25 x i8] } { %struct.uac_iso_endpoint_descriptor <{ i8 7, i8 37, i8 1, i8 1, i8 0, i16 0 }>, [25 x i8] zeroinitializer }, align 32
@f_audio_set_alt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.27, i32 831, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s:%d Error!\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"f_audio_set_alt\00", [16 x i8] zeroinitializer }, align 32
@f_audio_set_alt._entry_ptr = internal global ptr @f_audio_set_alt._entry, section ".printk_index", align 4
@f_audio_set_alt._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.27, i32 838, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@f_audio_set_alt._entry_ptr.82 = internal global ptr @f_audio_set_alt._entry.81, section ".printk_index", align 4
@f_audio_set_alt._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.27, i32 867, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@f_audio_set_alt._entry_ptr.84 = internal global ptr @f_audio_set_alt._entry.83, section ".printk_index", align 4
@f_audio_get_alt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.27, i32 889, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:%d Invalid Interface %d!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"f_audio_get_alt\00", [16 x i8] zeroinitializer }, align 32
@f_audio_get_alt._entry_ptr = internal global ptr @f_audio_get_alt._entry, section ".printk_index", align 4
@f_audio_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.27, i32 801, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"invalid control req%02x.%02x v%04x i%04x l%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"f_audio_setup\00", [18 x i8] zeroinitializer }, align 32
@f_audio_setup._entry_ptr = internal global ptr @f_audio_setup._entry, section ".printk_index", align 4
@f_audio_setup.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.89, ptr @.str.88, ptr @.str.27, ptr @.str.90, i8 0, i8 -54, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usb_f_uac1\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"audio req%02x.%02x v%04x i%04x l%d\0A\00", [60 x i8] zeroinitializer }, align 32
@f_audio_setup._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.88, ptr @.str.27, i32 813, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"audio response on err %d\0A\00", [38 x i8] zeroinitializer }, align 32
@f_audio_setup._entry_ptr.93 = internal global ptr @f_audio_setup._entry.91, section ".printk_index", align 4
@audio_set_endpoint_req.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.89, ptr @.str.94, ptr @.str.27, ptr @.str.95, i8 0, i8 -77, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"audio_set_endpoint_req\00", [41 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"bRequest 0x%x, w_value 0x%04x, len %d, endpoint %d\0A\00", [44 x i8] zeroinitializer }, align 32
@audio_get_endpoint_req.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.89, ptr @.str.96, ptr @.str.27, ptr @.str.95, i8 0, i8 -68, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"audio_get_endpoint_req\00", [41 x i8] zeroinitializer }, align 32
@out_rq_cur._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.27, i32 668, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d entity_id=%d control_selector=%d TODO!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"out_rq_cur\00", [21 x i8] zeroinitializer }, align 32
@out_rq_cur._entry_ptr = internal global ptr @out_rq_cur._entry, section ".printk_index", align 4
@out_rq_cur_complete.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.89, ptr @.str.99, ptr @.str.27, ptr @.str.100, i8 0, i8 -105, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"out_rq_cur_complete\00", [44 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"completion err %d\0A\00", [45 x i8] zeroinitializer }, align 32
@out_rq_cur_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.27, i32 633, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:%d control_selector=%d TODO!\0A\00", [63 x i8] zeroinitializer }, align 32
@out_rq_cur_complete._entry_ptr = internal global ptr @out_rq_cur_complete._entry, section ".printk_index", align 4
@out_rq_cur_complete._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.99, ptr @.str.27, i32 639, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@out_rq_cur_complete._entry_ptr.103 = internal global ptr @out_rq_cur_complete._entry.102, section ".printk_index", align 4
@ac_rq_in.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.89, ptr @.str.104, ptr @.str.27, ptr @.str.95, i8 0, i8 -86, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ac_rq_in\00", [23 x i8] zeroinitializer }, align 32
@in_rq_cur._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.105, ptr @.str.27, i32 439, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in_rq_cur\00", [22 x i8] zeroinitializer }, align 32
@in_rq_cur._entry_ptr = internal global ptr @in_rq_cur._entry, section ".printk_index", align 4
@in_rq_cur._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.105, ptr @.str.27, i32 444, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@in_rq_cur._entry_ptr.107 = internal global ptr @in_rq_cur._entry.106, section ".printk_index", align 4
@in_rq_min._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.108, ptr @.str.27, i32 486, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in_rq_min\00", [22 x i8] zeroinitializer }, align 32
@in_rq_min._entry_ptr = internal global ptr @in_rq_min._entry, section ".printk_index", align 4
@in_rq_min._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.108, ptr @.str.27, i32 491, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@in_rq_min._entry_ptr.110 = internal global ptr @in_rq_min._entry.109, section ".printk_index", align 4
@in_rq_max._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.111, ptr @.str.27, i32 533, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in_rq_max\00", [22 x i8] zeroinitializer }, align 32
@in_rq_max._entry_ptr = internal global ptr @in_rq_max._entry, section ".printk_index", align 4
@in_rq_max._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.111, ptr @.str.27, i32 538, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@in_rq_max._entry_ptr.113 = internal global ptr @in_rq_max._entry.112, section ".printk_index", align 4
@in_rq_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.114, ptr @.str.27, i32 580, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in_rq_res\00", [22 x i8] zeroinitializer }, align 32
@in_rq_res._entry_ptr = internal global ptr @in_rq_res._entry, section ".printk_index", align 4
@in_rq_res._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.114, ptr @.str.27, i32 585, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@in_rq_res._entry_ptr.116 = internal global ptr @in_rq_res._entry.115, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 33, i64 34, i64 161, i64 162]
@__sancov_gen_cov_switch_values.117 = internal global [7 x i64] [i64 5, i64 8, i64 129, i64 130, i64 131, i64 132, i64 255]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.120 = private unnamed_addr constant [13 x i8] c"uac1usb_func\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1570, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1483, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1486, i32 54 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"f_uac1_func_type\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1461, i32 38 }
@___asan_gen_.138 = private unnamed_addr constant [16 x i8] c"f_uac1_item_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1362, i32 40 }
@___asan_gen_.141 = private unnamed_addr constant [13 x i8] c"f_uac1_attrs\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1437, i32 35 }
@___asan_gen_.144 = private unnamed_addr constant [26 x i8] c"f_uac1_opts_attr_c_chmask\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [25 x i8] c"f_uac1_opts_attr_c_srate\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [25 x i8] c"f_uac1_opts_attr_c_ssize\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [26 x i8] c"f_uac1_opts_attr_p_chmask\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [25 x i8] c"f_uac1_opts_attr_p_srate\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [25 x i8] c"f_uac1_opts_attr_p_ssize\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [28 x i8] c"f_uac1_opts_attr_req_number\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [32 x i8] c"f_uac1_opts_attr_p_mute_present\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [34 x i8] c"f_uac1_opts_attr_p_volume_present\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [30 x i8] c"f_uac1_opts_attr_p_volume_min\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [30 x i8] c"f_uac1_opts_attr_p_volume_max\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [30 x i8] c"f_uac1_opts_attr_p_volume_res\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [32 x i8] c"f_uac1_opts_attr_c_mute_present\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [34 x i8] c"f_uac1_opts_attr_c_volume_present\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [30 x i8] c"f_uac1_opts_attr_c_volume_min\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [30 x i8] c"f_uac1_opts_attr_c_volume_max\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [30 x i8] c"f_uac1_opts_attr_c_volume_res\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1417, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1370, i32 30 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1418, i32 1 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1419, i32 1 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1420, i32 1 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1421, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1422, i32 1 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1423, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1425, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1426, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1427, i32 1 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1371, i32 30 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1428, i32 1 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1429, i32 1 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1431, i32 1 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1432, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1433, i32 1 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1434, i32 1 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1435, i32 1 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1558, i32 28 }
@___asan_gen_.255 = private unnamed_addr constant [13 x i8] c"uac1_strings\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 327, i32 35 }
@___asan_gen_.258 = private unnamed_addr constant [15 x i8] c"ac_header_desc\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 80, i32 42 }
@___asan_gen_.261 = private unnamed_addr constant [22 x i8] c"out_feature_unit_desc\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 123, i32 44 }
@___asan_gen_.264 = private unnamed_addr constant [21 x i8] c"in_feature_unit_desc\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 122, i32 44 }
@___asan_gen_.267 = private unnamed_addr constant [18 x i8] c"ac_interface_desc\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 71, i32 40 }
@___asan_gen_.270 = private unnamed_addr constant [16 x i8] c"usb_out_it_desc\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 82, i32 45 }
@___asan_gen_.273 = private unnamed_addr constant [15 x i8] c"io_out_ot_desc\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 92, i32 47 }
@___asan_gen_.276 = private unnamed_addr constant [28 x i8] c"as_out_interface_alt_0_desc\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 136, i32 40 }
@___asan_gen_.279 = private unnamed_addr constant [28 x i8] c"as_out_interface_alt_1_desc\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 145, i32 40 }
@___asan_gen_.282 = private unnamed_addr constant [14 x i8] c"io_in_it_desc\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 102, i32 45 }
@___asan_gen_.285 = private unnamed_addr constant [15 x i8] c"usb_in_ot_desc\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 112, i32 47 }
@___asan_gen_.288 = private unnamed_addr constant [27 x i8] c"as_in_interface_alt_0_desc\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 154, i32 40 }
@___asan_gen_.291 = private unnamed_addr constant [27 x i8] c"as_in_interface_alt_1_desc\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 163, i32 40 }
@___asan_gen_.294 = private unnamed_addr constant [19 x i8] c"as_out_type_i_desc\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 193, i32 55 }
@___asan_gen_.297 = private unnamed_addr constant [18 x i8] c"as_in_type_i_desc\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 224, i32 55 }
@___asan_gen_.300 = private unnamed_addr constant [15 x i8] c"ac_int_ep_desc\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 126, i32 39 }
@___asan_gen_.303 = private unnamed_addr constant [15 x i8] c"as_out_ep_desc\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 204, i32 39 }
@___asan_gen_.306 = private unnamed_addr constant [14 x i8] c"as_in_ep_desc\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 235, i32 39 }
@___asan_gen_.309 = private unnamed_addr constant [13 x i8] c"f_audio_desc\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 255, i32 38 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1328, i32 32 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1328, i32 44 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1063, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1066, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1069, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1072, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1075, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1078, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1081, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1086, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1089, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1092, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1095, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1100, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1103, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant [9 x i8] c"str_uac1\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 322, i32 34 }
@___asan_gen_.411 = private unnamed_addr constant [13 x i8] c"strings_uac1\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 305, i32 26 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 306, i32 18 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 307, i32 23 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 308, i32 32 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 309, i32 22 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 310, i32 21 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 311, i32 30 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 312, i32 22 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 313, i32 18 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 314, i32 19 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 315, i32 27 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 316, i32 27 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 317, i32 26 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 318, i32 26 }
@___asan_gen_.453 = private unnamed_addr constant [19 x i8] c"as_out_header_desc\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 173, i32 41 }
@___asan_gen_.456 = private unnamed_addr constant [18 x i8] c"as_in_header_desc\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 182, i32 41 }
@___asan_gen_.459 = private unnamed_addr constant [16 x i8] c"as_iso_out_desc\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 215, i32 43 }
@___asan_gen_.462 = private unnamed_addr constant [15 x i8] c"as_iso_in_desc\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 246, i32 43 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 831, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 838, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 867, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 888, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 799, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 806, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 813, i32 4 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 715, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 751, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 666, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 605, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 631, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 637, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 682, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 437, i32 4 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 442, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 484, i32 4 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 489, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 531, i32 4 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 536, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 578, i32 4 }
@___asan_gen_.579 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.580 = private constant [40 x i8] c"../drivers/usb/gadget/function/f_uac1.c\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 583, i32 3 }
@llvm.compiler.used = appending global [191 x ptr] [ptr @__UNIQUE_ID_alias243, ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_uac1mod_exit, ptr @__initcall__kmod_usb_f_uac1__244_1570_uac1mod_init6, ptr @f_audio_get_alt._entry, ptr @f_audio_get_alt._entry_ptr, ptr @f_audio_set_alt._entry, ptr @f_audio_set_alt._entry.81, ptr @f_audio_set_alt._entry.83, ptr @f_audio_set_alt._entry_ptr, ptr @f_audio_set_alt._entry_ptr.82, ptr @f_audio_set_alt._entry_ptr.84, ptr @f_audio_setup._entry, ptr @f_audio_setup._entry.91, ptr @f_audio_setup._entry_ptr, ptr @f_audio_setup._entry_ptr.93, ptr @f_audio_validate_opts._entry, ptr @f_audio_validate_opts._entry.30, ptr @f_audio_validate_opts._entry.33, ptr @f_audio_validate_opts._entry.36, ptr @f_audio_validate_opts._entry.39, ptr @f_audio_validate_opts._entry.42, ptr @f_audio_validate_opts._entry.45, ptr @f_audio_validate_opts._entry.48, ptr @f_audio_validate_opts._entry.51, ptr @f_audio_validate_opts._entry.54, ptr @f_audio_validate_opts._entry.57, ptr @f_audio_validate_opts._entry.60, ptr @f_audio_validate_opts._entry.63, ptr @f_audio_validate_opts._entry_ptr, ptr @f_audio_validate_opts._entry_ptr.32, ptr @f_audio_validate_opts._entry_ptr.35, ptr @f_audio_validate_opts._entry_ptr.38, ptr @f_audio_validate_opts._entry_ptr.41, ptr @f_audio_validate_opts._entry_ptr.44, ptr @f_audio_validate_opts._entry_ptr.47, ptr @f_audio_validate_opts._entry_ptr.50, ptr @f_audio_validate_opts._entry_ptr.53, ptr @f_audio_validate_opts._entry_ptr.56, ptr @f_audio_validate_opts._entry_ptr.59, ptr @f_audio_validate_opts._entry_ptr.62, ptr @f_audio_validate_opts._entry_ptr.65, ptr @in_rq_cur._entry, ptr @in_rq_cur._entry.106, ptr @in_rq_cur._entry_ptr, ptr @in_rq_cur._entry_ptr.107, ptr @in_rq_max._entry, ptr @in_rq_max._entry.112, ptr @in_rq_max._entry_ptr, ptr @in_rq_max._entry_ptr.113, ptr @in_rq_min._entry, ptr @in_rq_min._entry.109, ptr @in_rq_min._entry_ptr, ptr @in_rq_min._entry_ptr.110, ptr @in_rq_res._entry, ptr @in_rq_res._entry.115, ptr @in_rq_res._entry_ptr, ptr @in_rq_res._entry_ptr.116, ptr @out_rq_cur._entry, ptr @out_rq_cur._entry_ptr, ptr @out_rq_cur_complete._entry, ptr @out_rq_cur_complete._entry.102, ptr @out_rq_cur_complete._entry_ptr, ptr @out_rq_cur_complete._entry_ptr.103, ptr @uac1mod_exit, ptr @uac1usb_func, ptr @.str, ptr @f_audio_alloc_inst.__key, ptr @.str.1, ptr @.str.2, ptr @f_uac1_func_type, ptr @f_uac1_item_ops, ptr @f_uac1_attrs, ptr @f_uac1_opts_attr_c_chmask, ptr @f_uac1_opts_attr_c_srate, ptr @f_uac1_opts_attr_c_ssize, ptr @f_uac1_opts_attr_p_chmask, ptr @f_uac1_opts_attr_p_srate, ptr @f_uac1_opts_attr_p_ssize, ptr @f_uac1_opts_attr_req_number, ptr @f_uac1_opts_attr_p_mute_present, ptr @f_uac1_opts_attr_p_volume_present, ptr @f_uac1_opts_attr_p_volume_min, ptr @f_uac1_opts_attr_p_volume_max, ptr @f_uac1_opts_attr_p_volume_res, ptr @f_uac1_opts_attr_c_mute_present, ptr @f_uac1_opts_attr_c_volume_present, ptr @f_uac1_opts_attr_c_volume_min, ptr @f_uac1_opts_attr_c_volume_max, ptr @f_uac1_opts_attr_c_volume_res, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @uac1_strings, ptr @ac_header_desc, ptr @out_feature_unit_desc, ptr @in_feature_unit_desc, ptr @ac_interface_desc, ptr @usb_out_it_desc, ptr @io_out_ot_desc, ptr @as_out_interface_alt_0_desc, ptr @as_out_interface_alt_1_desc, ptr @io_in_it_desc, ptr @usb_in_ot_desc, ptr @as_in_interface_alt_0_desc, ptr @as_in_interface_alt_1_desc, ptr @as_out_type_i_desc, ptr @as_in_type_i_desc, ptr @ac_int_ep_desc, ptr @as_out_ep_desc, ptr @as_in_ep_desc, ptr @f_audio_desc, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @str_uac1, ptr @strings_uac1, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @as_out_header_desc, ptr @as_in_header_desc, ptr @as_iso_out_desc, ptr @as_iso_in_desc, ptr @.str.79, ptr @.str.80, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.104, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114], section "llvm.metadata"
@0 = internal global [154 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uac1usb_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_alloc_inst.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_func_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_attrs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_c_chmask to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_c_srate to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_c_ssize to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_p_chmask to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_p_srate to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_p_ssize to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_req_number to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_p_mute_present to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_p_volume_present to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_p_volume_min to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_p_volume_max to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_p_volume_res to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_c_mute_present to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_c_volume_present to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_c_volume_min to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_c_volume_max to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac1_opts_attr_c_volume_res to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uac1_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_header_desc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_feature_unit_desc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_feature_unit_desc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_interface_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_out_it_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_out_ot_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_out_interface_alt_0_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_out_interface_alt_1_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_in_it_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_in_ot_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_in_interface_alt_0_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_in_interface_alt_1_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_out_type_i_desc to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_in_type_i_desc to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_int_ep_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_out_ep_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_in_ep_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_desc to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_validate_opts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_validate_opts._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_validate_opts._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_validate_opts._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_validate_opts._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_validate_opts._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_validate_opts._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_validate_opts._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_validate_opts._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_validate_opts._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_validate_opts._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_validate_opts._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_validate_opts._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str_uac1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strings_uac1 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_out_header_desc to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_in_header_desc to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_iso_out_desc to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_iso_in_desc to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_set_alt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_set_alt._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_set_alt._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_get_alt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_audio_setup._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_rq_cur._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_rq_cur_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_rq_cur_complete._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_rq_cur._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_rq_cur._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_rq_min._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_rq_min._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_rq_max._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_rq_max._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_rq_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_rq_res._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uac1mod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_function_unregister(ptr noundef nonnull @uac1usb_func) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uac1mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_function_register(ptr noundef nonnull @uac1usb_func) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @f_audio_alloc_inst() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 244) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %call7.i.i, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @f_audio_alloc_inst.__key) #11
  %free_func_inst = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %free_func_inst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @f_audio_free_inst, ptr %free_func_inst, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @f_uac1_func_type) #11
  %c_chmask = getelementptr inbounds %struct.f_uac1_opts, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %c_chmask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %c_chmask, align 4
  %c_srate = getelementptr inbounds %struct.f_uac1_opts, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %c_srate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 48000, ptr %c_srate, align 8
  %c_ssize = getelementptr inbounds %struct.f_uac1_opts, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %c_ssize to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %c_ssize, align 4
  %p_chmask = getelementptr inbounds %struct.f_uac1_opts, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %p_chmask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %p_chmask, align 8
  %p_srate = getelementptr inbounds %struct.f_uac1_opts, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %p_srate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 48000, ptr %p_srate, align 4
  %p_ssize = getelementptr inbounds %struct.f_uac1_opts, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %p_ssize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %p_ssize, align 8
  %p_mute_present = getelementptr inbounds %struct.f_uac1_opts, ptr %call7.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %p_mute_present, align 4
  %p_volume_present = getelementptr inbounds %struct.f_uac1_opts, ptr %call7.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %p_volume_present to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %p_volume_present, align 1
  %p_volume_min = getelementptr inbounds %struct.f_uac1_opts, ptr %call7.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %p_volume_min to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -25600, ptr %p_volume_min, align 2
  %p_volume_max = getelementptr inbounds %struct.f_uac1_opts, ptr %call7.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %p_volume_max to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %p_volume_max, align 8
  %p_volume_res = getelementptr inbounds %struct.f_uac1_opts, ptr %call7.i.i, i32 0, i32 11
  %12 = ptrtoint ptr %p_volume_res to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 256, ptr %p_volume_res, align 2
  %c_mute_present = getelementptr inbounds %struct.f_uac1_opts, ptr %call7.i.i, i32 0, i32 12
  %13 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %c_mute_present, align 4
  %c_volume_present = getelementptr inbounds %struct.f_uac1_opts, ptr %call7.i.i, i32 0, i32 13
  %14 = ptrtoint ptr %c_volume_present to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %c_volume_present, align 1
  %c_volume_min = getelementptr inbounds %struct.f_uac1_opts, ptr %call7.i.i, i32 0, i32 14
  %15 = ptrtoint ptr %c_volume_min to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -25600, ptr %c_volume_min, align 2
  %c_volume_max = getelementptr inbounds %struct.f_uac1_opts, ptr %call7.i.i, i32 0, i32 15
  %16 = ptrtoint ptr %c_volume_max to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %c_volume_max, align 8
  %c_volume_res = getelementptr inbounds %struct.f_uac1_opts, ptr %call7.i.i, i32 0, i32 16
  %17 = ptrtoint ptr %c_volume_res to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 256, ptr %c_volume_res, align 2
  %req_number = getelementptr inbounds %struct.f_uac1_opts, ptr %call7.i.i, i32 0, i32 17
  %18 = ptrtoint ptr %req_number to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %req_number, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %do.body ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @f_audio_alloc(ptr noundef %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 220) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %fi, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uac1_opts, ptr %fi, i32 0, i32 20
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %refcnt, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.22, ptr %call7.i.i, align 8
  %bind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 9
  %4 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @f_audio_bind, ptr %bind, align 4
  %unbind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 10
  %5 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @f_audio_unbind, ptr %unbind, align 8
  %set_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 13
  %6 = ptrtoint ptr %set_alt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @f_audio_set_alt, ptr %set_alt, align 4
  %get_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 14
  %7 = ptrtoint ptr %get_alt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @f_audio_get_alt, ptr %get_alt, align 8
  %setup = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @f_audio_setup, ptr %setup, align 8
  %disable = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 15
  %9 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @f_audio_disable, ptr %disable, align 4
  %free_func = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %free_func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @f_audio_free, ptr %free_func, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f_audio_free_inst(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %f) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_put_function_instance(ptr noundef %item) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_chmask_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %c_chmask = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %c_chmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_chmask, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_chmask_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !313
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 20
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %c_chmask = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 1
  %5 = ptrtoint ptr %c_chmask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %c_chmask, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #11
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
define internal i32 @f_uac1_opts_c_srate_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %c_srate = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %c_srate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_srate, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_srate_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !313
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 20
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %c_srate = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 2
  %5 = ptrtoint ptr %c_srate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %c_srate, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_ssize_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %c_ssize = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %c_ssize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_ssize, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_ssize_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !313
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 20
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %c_ssize = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 3
  %5 = ptrtoint ptr %c_ssize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %c_ssize, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_chmask_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %p_chmask = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %p_chmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p_chmask, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_chmask_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !313
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 20
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %p_chmask = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 4
  %5 = ptrtoint ptr %p_chmask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %p_chmask, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_srate_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %p_srate = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %p_srate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p_srate, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_srate_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !313
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 20
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %p_srate = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 5
  %5 = ptrtoint ptr %p_srate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %p_srate, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_ssize_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %p_ssize = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 6
  %0 = ptrtoint ptr %p_ssize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p_ssize, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_ssize_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !313
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 20
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %p_ssize = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 6
  %5 = ptrtoint ptr %p_ssize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %p_ssize, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_req_number_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %req_number = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 17
  %0 = ptrtoint ptr %req_number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req_number, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_req_number_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !313
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 20
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %req_number = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 17
  %5 = ptrtoint ptr %req_number to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %req_number, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_mute_present_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %p_mute_present = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 7
  %0 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p_mute_present, align 4, !range !314
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %2)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_mute_present_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num) #11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %num, align 1, !annotation !313
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 20
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num, align 1, !range !314
  %p_mute_present = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 7
  %5 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %p_mute_present, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_volume_present_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %p_volume_present = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 8
  %0 = ptrtoint ptr %p_volume_present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p_volume_present, align 1, !range !314
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %2)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_volume_present_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num) #11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %num, align 1, !annotation !313
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 20
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num, align 1, !range !314
  %p_volume_present = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 8
  %5 = ptrtoint ptr %p_volume_present to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %p_volume_present, align 1
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_volume_min_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %p_volume_min = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 9
  %0 = ptrtoint ptr %p_volume_min to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %p_volume_min, align 2
  %conv = sext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.14, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_volume_min_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num) #11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %num, align 2, !annotation !313
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 20
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtos16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num, align 2
  %p_volume_min = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 9
  %5 = ptrtoint ptr %p_volume_min to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %p_volume_min, align 2
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtos16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_volume_max_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %p_volume_max = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 10
  %0 = ptrtoint ptr %p_volume_max to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %p_volume_max, align 4
  %conv = sext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.14, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_volume_max_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num) #11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %num, align 2, !annotation !313
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 20
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtos16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num, align 2
  %p_volume_max = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 10
  %5 = ptrtoint ptr %p_volume_max to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %p_volume_max, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_volume_res_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %p_volume_res = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 11
  %0 = ptrtoint ptr %p_volume_res to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %p_volume_res, align 2
  %conv = sext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.14, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_volume_res_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num) #11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %num, align 2, !annotation !313
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 20
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtos16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num, align 2
  %p_volume_res = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 11
  %5 = ptrtoint ptr %p_volume_res to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %p_volume_res, align 2
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_mute_present_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %c_mute_present = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 12
  %0 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %c_mute_present, align 4, !range !314
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %2)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_mute_present_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num) #11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %num, align 1, !annotation !313
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 20
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num, align 1, !range !314
  %c_mute_present = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 12
  %5 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %c_mute_present, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_volume_present_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %c_volume_present = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 13
  %0 = ptrtoint ptr %c_volume_present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %c_volume_present, align 1, !range !314
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %2)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_volume_present_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num) #11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %num, align 1, !annotation !313
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 20
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num, align 1, !range !314
  %c_volume_present = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 13
  %5 = ptrtoint ptr %c_volume_present to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %c_volume_present, align 1
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_volume_min_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %c_volume_min = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 14
  %0 = ptrtoint ptr %c_volume_min to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %c_volume_min, align 2
  %conv = sext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.14, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_volume_min_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num) #11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %num, align 2, !annotation !313
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 20
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtos16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num, align 2
  %c_volume_min = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 14
  %5 = ptrtoint ptr %c_volume_min to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %c_volume_min, align 2
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_volume_max_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %c_volume_max = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 15
  %0 = ptrtoint ptr %c_volume_max to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %c_volume_max, align 4
  %conv = sext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.14, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_volume_max_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num) #11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %num, align 2, !annotation !313
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 20
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtos16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num, align 2
  %c_volume_max = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 15
  %5 = ptrtoint ptr %c_volume_max to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %c_volume_max, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_volume_res_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %c_volume_res = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 16
  %0 = ptrtoint ptr %c_volume_res to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %c_volume_res, align 2
  %conv = sext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.14, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_volume_res_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num) #11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %num, align 2, !annotation !313
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 20
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtos16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num, align 2
  %c_volume_res = getelementptr inbounds %struct.f_uac1_opts, ptr %item, i32 0, i32 16
  %5 = ptrtoint ptr %c_volume_res to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %c_volume_res, align 2
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_audio_bind(ptr noundef %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 11
  %fi.i.i = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %4 = ptrtoint ptr %fi.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fi.i.i, align 4
  %p_chmask.i = getelementptr inbounds %struct.f_uac1_opts, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %p_chmask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p_chmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %c_chmask.i = getelementptr inbounds %struct.f_uac1_opts, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %c_chmask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %c_chmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not.i = icmp eq i32 %9, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.f_audio_validate_opts.exit_crit_edge, label %land.lhs.true.i.if.else8.i_crit_edge

land.lhs.true.i.if.else8.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else8.i

land.lhs.true.i.f_audio_validate_opts.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f_audio_validate_opts.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %7)
  %tobool3.not.i = icmp ult i32 %7, 4096
  br i1 %tobool3.not.i, label %if.else.i.if.else8.i_crit_edge, label %if.else.i.f_audio_validate_opts.exit_crit_edge

if.else.i.f_audio_validate_opts.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f_audio_validate_opts.exit

if.else.i.if.else8.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else8.i

if.else8.i:                                       ; preds = %if.else.i.if.else8.i_crit_edge, %land.lhs.true.i.if.else8.i_crit_edge
  %c_chmask9.i = getelementptr inbounds %struct.f_uac1_opts, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %c_chmask9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %c_chmask9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %11)
  %tobool11.not.i = icmp ult i32 %11, 4096
  br i1 %tobool11.not.i, label %if.else16.i, label %if.else8.i.f_audio_validate_opts.exit_crit_edge

if.else8.i.f_audio_validate_opts.exit_crit_edge:  ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f_audio_validate_opts.exit

if.else16.i:                                      ; preds = %if.else8.i
  %p_ssize.i = getelementptr inbounds %struct.f_uac1_opts, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %p_ssize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %p_ssize.i, align 4
  %14 = add i32 %13, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %14)
  %15 = icmp ult i32 %14, -4
  br i1 %15, label %if.else16.i.f_audio_validate_opts.exit_crit_edge, label %if.else23.i

if.else16.i.f_audio_validate_opts.exit_crit_edge: ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f_audio_validate_opts.exit

if.else23.i:                                      ; preds = %if.else16.i
  %c_ssize.i = getelementptr inbounds %struct.f_uac1_opts, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %c_ssize.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %c_ssize.i, align 4
  %18 = add i32 %17, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %18)
  %19 = icmp ult i32 %18, -4
  br i1 %19, label %if.else23.i.f_audio_validate_opts.exit_crit_edge, label %if.else32.i

if.else23.i.f_audio_validate_opts.exit_crit_edge: ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f_audio_validate_opts.exit

if.else32.i:                                      ; preds = %if.else23.i
  %p_srate.i = getelementptr inbounds %struct.f_uac1_opts, ptr %5, i32 0, i32 5
  %20 = ptrtoint ptr %p_srate.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %p_srate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool33.not.i = icmp eq i32 %21, 0
  br i1 %tobool33.not.i, label %if.else32.i.f_audio_validate_opts.exit_crit_edge, label %if.else38.i

if.else32.i.f_audio_validate_opts.exit_crit_edge: ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f_audio_validate_opts.exit

if.else38.i:                                      ; preds = %if.else32.i
  %c_srate.i = getelementptr inbounds %struct.f_uac1_opts, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %c_srate.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %c_srate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool39.not.i = icmp eq i32 %23, 0
  br i1 %tobool39.not.i, label %if.else38.i.f_audio_validate_opts.exit_crit_edge, label %if.end49.i

if.else38.i.f_audio_validate_opts.exit_crit_edge: ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f_audio_validate_opts.exit

if.end49.i:                                       ; preds = %if.else38.i
  %p_volume_max.i = getelementptr inbounds %struct.f_uac1_opts, ptr %5, i32 0, i32 10
  %24 = ptrtoint ptr %p_volume_max.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %p_volume_max.i, align 4
  %conv.i = sext i16 %25 to i32
  %p_volume_min.i = getelementptr inbounds %struct.f_uac1_opts, ptr %5, i32 0, i32 9
  %26 = ptrtoint ptr %p_volume_min.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %p_volume_min.i, align 2
  %conv50.i = sext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp51.not.i = icmp sgt i16 %25, %27
  br i1 %cmp51.not.i, label %if.else57.i, label %if.end49.i.f_audio_validate_opts.exit_crit_edge

if.end49.i.f_audio_validate_opts.exit_crit_edge:  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f_audio_validate_opts.exit

if.else57.i:                                      ; preds = %if.end49.i
  %c_volume_max.i = getelementptr inbounds %struct.f_uac1_opts, ptr %5, i32 0, i32 15
  %28 = ptrtoint ptr %c_volume_max.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %c_volume_max.i, align 4
  %conv58.i = sext i16 %29 to i32
  %c_volume_min.i = getelementptr inbounds %struct.f_uac1_opts, ptr %5, i32 0, i32 14
  %30 = ptrtoint ptr %c_volume_min.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %c_volume_min.i, align 2
  %conv59.i = sext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %31)
  %cmp60.not.i = icmp sgt i16 %29, %31
  br i1 %cmp60.not.i, label %if.else66.i, label %if.else57.i.f_audio_validate_opts.exit_crit_edge

if.else57.i.f_audio_validate_opts.exit_crit_edge: ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f_audio_validate_opts.exit

if.else66.i:                                      ; preds = %if.else57.i
  %p_volume_res.i = getelementptr inbounds %struct.f_uac1_opts, ptr %5, i32 0, i32 11
  %32 = ptrtoint ptr %p_volume_res.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %p_volume_res.i, align 2
  %conv67.i = sext i16 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %33)
  %cmp68.i = icmp slt i16 %33, 1
  br i1 %cmp68.i, label %if.else66.i.f_audio_validate_opts.exit_crit_edge, label %if.else74.i

if.else66.i.f_audio_validate_opts.exit_crit_edge: ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f_audio_validate_opts.exit

if.else74.i:                                      ; preds = %if.else66.i
  %c_volume_res.i = getelementptr inbounds %struct.f_uac1_opts, ptr %5, i32 0, i32 16
  %34 = ptrtoint ptr %c_volume_res.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %c_volume_res.i, align 2
  %conv75.i = sext i16 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %35)
  %cmp76.i = icmp slt i16 %35, 1
  br i1 %cmp76.i, label %if.else74.i.f_audio_validate_opts.exit_crit_edge, label %if.end85.i

if.else74.i.f_audio_validate_opts.exit_crit_edge: ; preds = %if.else74.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f_audio_validate_opts.exit

if.end85.i:                                       ; preds = %if.else74.i
  %sub.i = sub nsw i32 %conv.i, %conv50.i
  %rem.i = srem i32 %sub.i, %conv67.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool92.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool92.not.i, label %if.else97.i, label %if.end85.i.f_audio_validate_opts.exit_crit_edge

if.end85.i.f_audio_validate_opts.exit_crit_edge:  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f_audio_validate_opts.exit

if.else97.i:                                      ; preds = %if.end85.i
  %sub102.i = sub nsw i32 %conv58.i, %conv59.i
  %rem105.i = srem i32 %sub102.i, %conv75.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem105.i)
  %tobool106.not.i = icmp eq i32 %rem105.i, 0
  br i1 %tobool106.not.i, label %if.end, label %if.else97.i.f_audio_validate_opts.exit_crit_edge

if.else97.i.f_audio_validate_opts.exit_crit_edge: ; preds = %if.else97.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %f_audio_validate_opts.exit

f_audio_validate_opts.exit:                       ; preds = %if.else97.i.f_audio_validate_opts.exit_crit_edge, %if.end85.i.f_audio_validate_opts.exit_crit_edge, %if.else74.i.f_audio_validate_opts.exit_crit_edge, %if.else66.i.f_audio_validate_opts.exit_crit_edge, %if.else57.i.f_audio_validate_opts.exit_crit_edge, %if.end49.i.f_audio_validate_opts.exit_crit_edge, %if.else38.i.f_audio_validate_opts.exit_crit_edge, %if.else32.i.f_audio_validate_opts.exit_crit_edge, %if.else23.i.f_audio_validate_opts.exit_crit_edge, %if.else16.i.f_audio_validate_opts.exit_crit_edge, %if.else8.i.f_audio_validate_opts.exit_crit_edge, %if.else.i.f_audio_validate_opts.exit_crit_edge, %land.lhs.true.i.f_audio_validate_opts.exit_crit_edge
  %.str.64.sink.i = phi ptr [ @.str.25, %land.lhs.true.i.f_audio_validate_opts.exit_crit_edge ], [ @.str.31, %if.else.i.f_audio_validate_opts.exit_crit_edge ], [ @.str.34, %if.else8.i.f_audio_validate_opts.exit_crit_edge ], [ @.str.37, %if.else16.i.f_audio_validate_opts.exit_crit_edge ], [ @.str.40, %if.else23.i.f_audio_validate_opts.exit_crit_edge ], [ @.str.43, %if.else32.i.f_audio_validate_opts.exit_crit_edge ], [ @.str.46, %if.else38.i.f_audio_validate_opts.exit_crit_edge ], [ @.str.49, %if.end49.i.f_audio_validate_opts.exit_crit_edge ], [ @.str.52, %if.else57.i.f_audio_validate_opts.exit_crit_edge ], [ @.str.55, %if.else66.i.f_audio_validate_opts.exit_crit_edge ], [ @.str.58, %if.else74.i.f_audio_validate_opts.exit_crit_edge ], [ @.str.61, %if.end85.i.f_audio_validate_opts.exit_crit_edge ], [ @.str.64, %if.else97.i.f_audio_validate_opts.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull %.str.64.sink.i) #15
  br label %cleanup

if.end:                                           ; preds = %if.else97.i
  %36 = ptrtoint ptr %fi.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fi.i.i, align 4
  %call6 = tail call ptr @usb_gstrings_attach(ptr noundef %1, ptr noundef nonnull @uac1_strings, i32 noundef 14) #11
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %c_chmask.i513 = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %c_chmask.i513 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %c_chmask.i513, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.not.i = icmp ne i32 %40, 0
  %spec.select.i = zext i1 %cmp.not.i to i32
  %p_chmask.i514 = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 4
  %41 = ptrtoint ptr %p_chmask.i514 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %p_chmask.i514, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp1.not.i = icmp eq i32 %42, 0
  %inc3.i = select i1 %cmp.not.i, i32 2, i32 1
  %num_ifaces.1.i = select i1 %cmp1.not.i, i32 %spec.select.i, i32 %inc3.i
  %add.i = or i32 %num_ifaces.1.i, 8
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #16
  %tobool.not.i515 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i515, label %build_ac_header_desc.exit.thread, label %if.end14

build_ac_header_desc.exit.thread:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  store ptr null, ptr @ac_header_desc, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %conv.i516 = trunc i32 %add.i to i8
  %43 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv.i516, ptr %call9.i.i.i, align 128
  %bDescriptorType.i = getelementptr inbounds %struct.uac1_ac_header_descriptor, ptr %call9.i.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %bDescriptorType.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 36, ptr %bDescriptorType.i, align 1
  %bDescriptorSubtype.i = getelementptr inbounds %struct.uac1_ac_header_descriptor, ptr %call9.i.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %bDescriptorSubtype.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %bDescriptorSubtype.i, align 2
  %bcdADC.i = getelementptr inbounds %struct.uac1_ac_header_descriptor, ptr %call9.i.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %bcdADC.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 1, ptr %bcdADC.i, align 1
  %conv7.i = trunc i32 %num_ifaces.1.i to i8
  %bInCollection.i = getelementptr inbounds %struct.uac1_ac_header_descriptor, ptr %call9.i.i.i, i32 0, i32 5
  %47 = ptrtoint ptr %bInCollection.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv7.i, ptr %bInCollection.i, align 1
  store ptr %call9.i.i.i, ptr @ac_header_desc, align 4
  %c_mute_present = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 12
  %48 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %c_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool15.not = icmp eq i8 %49, 0
  br i1 %tobool15.not, label %lor.lhs.false, label %if.end14.if.then17_crit_edge

if.end14.if.then17_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end14
  %c_volume_present = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 13
  %50 = ptrtoint ptr %c_volume_present to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %c_volume_present, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool16.not = icmp eq i8 %51, 0
  br i1 %tobool16.not, label %lor.lhs.false.if.end22_crit_edge, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end14.if.then17_crit_edge
  %52 = ptrtoint ptr %c_chmask.i513 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %c_chmask.i513, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not4.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not4.i.i, label %if.then17.num_channels.exit.i_crit_edge, label %if.then17.while.body.i.i_crit_edge

if.then17.while.body.i.i_crit_edge:               ; preds = %if.then17
  br label %while.body.i.i

if.then17.num_channels.exit.i_crit_edge:          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %num_channels.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.then17.while.body.i.i_crit_edge
  %num.06.i.i = phi i32 [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %if.then17.while.body.i.i_crit_edge ]
  %chanmask.addr.05.i.i = phi i32 [ %shr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %53, %if.then17.while.body.i.i_crit_edge ]
  %and.i.i = and i32 %chanmask.addr.05.i.i, 1
  %add.i.i = add i32 %and.i.i, %num.06.i.i
  %shr.i.i = lshr i32 %chanmask.addr.05.i.i, 1
  %tobool.not.i.i = icmp ult i32 %chanmask.addr.05.i.i, 2
  br i1 %tobool.not.i.i, label %num_channels.exit.loopexit.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

num_channels.exit.loopexit.i:                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo.i = shl i32 %add.i.i, 1
  br label %num_channels.exit.i

num_channels.exit.i:                              ; preds = %num_channels.exit.loopexit.i, %if.then17.num_channels.exit.i_crit_edge
  %num.0.lcssa.i.i = phi i32 [ 0, %if.then17.num_channels.exit.i_crit_edge ], [ %phi.bo.i, %num_channels.exit.loopexit.i ]
  %add1.i = add i32 %num.0.lcssa.i.i, 9
  %call9.i.i.i519 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1.i, i32 noundef 3520) #16
  %tobool.not.i522 = icmp eq ptr %call9.i.i.i519, null
  br i1 %tobool.not.i522, label %num_channels.exit.i.fail_crit_edge, label %build_fu_desc.exit

num_channels.exit.i.fail_crit_edge:               ; preds = %num_channels.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

build_fu_desc.exit:                               ; preds = %num_channels.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i524 = trunc i32 %add1.i to i8
  %54 = ptrtoint ptr %call9.i.i.i519 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv.i524, ptr %call9.i.i.i519, align 128
  %bDescriptorType.i525 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %call9.i.i.i519, i32 0, i32 1
  %55 = ptrtoint ptr %bDescriptorType.i525 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 36, ptr %bDescriptorType.i525, align 1
  %bDescriptorSubtype.i526 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %call9.i.i.i519, i32 0, i32 2
  %56 = ptrtoint ptr %bDescriptorSubtype.i526 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 6, ptr %bDescriptorSubtype.i526, align 2
  %bControlSize.i = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %call9.i.i.i519, i32 0, i32 5
  %57 = ptrtoint ptr %bControlSize.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 2, ptr %bControlSize.i, align 1
  store ptr %call9.i.i.i519, ptr @out_feature_unit_desc, align 4
  br label %if.end22

if.end22:                                         ; preds = %build_fu_desc.exit, %lor.lhs.false.if.end22_crit_edge
  %p_mute_present = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 7
  %58 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %p_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool23.not = icmp eq i8 %59, 0
  br i1 %tobool23.not, label %lor.lhs.false24, label %if.end22.if.then26_crit_edge

if.end22.if.then26_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

lor.lhs.false24:                                  ; preds = %if.end22
  %p_volume_present = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 8
  %60 = ptrtoint ptr %p_volume_present to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %p_volume_present, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool25.not = icmp eq i8 %61, 0
  br i1 %tobool25.not, label %lor.lhs.false24.if.end31_crit_edge, label %lor.lhs.false24.if.then26_crit_edge

lor.lhs.false24.if.then26_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

lor.lhs.false24.if.end31_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then26:                                        ; preds = %lor.lhs.false24.if.then26_crit_edge, %if.end22.if.then26_crit_edge
  %62 = ptrtoint ptr %p_chmask.i514 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %p_chmask.i514, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not4.i.i527 = icmp eq i32 %63, 0
  br i1 %tobool.not4.i.i527, label %if.then26.num_channels.exit.i539_crit_edge, label %if.then26.while.body.i.i534_crit_edge

if.then26.while.body.i.i534_crit_edge:            ; preds = %if.then26
  br label %while.body.i.i534

if.then26.num_channels.exit.i539_crit_edge:       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %num_channels.exit.i539

while.body.i.i534:                                ; preds = %while.body.i.i534.while.body.i.i534_crit_edge, %if.then26.while.body.i.i534_crit_edge
  %num.06.i.i528 = phi i32 [ %add.i.i531, %while.body.i.i534.while.body.i.i534_crit_edge ], [ 0, %if.then26.while.body.i.i534_crit_edge ]
  %chanmask.addr.05.i.i529 = phi i32 [ %shr.i.i532, %while.body.i.i534.while.body.i.i534_crit_edge ], [ %63, %if.then26.while.body.i.i534_crit_edge ]
  %and.i.i530 = and i32 %chanmask.addr.05.i.i529, 1
  %add.i.i531 = add i32 %and.i.i530, %num.06.i.i528
  %shr.i.i532 = lshr i32 %chanmask.addr.05.i.i529, 1
  %tobool.not.i.i533 = icmp ult i32 %chanmask.addr.05.i.i529, 2
  br i1 %tobool.not.i.i533, label %num_channels.exit.loopexit.i536, label %while.body.i.i534.while.body.i.i534_crit_edge

while.body.i.i534.while.body.i.i534_crit_edge:    ; preds = %while.body.i.i534
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i534

num_channels.exit.loopexit.i536:                  ; preds = %while.body.i.i534
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo.i535 = shl i32 %add.i.i531, 1
  br label %num_channels.exit.i539

num_channels.exit.i539:                           ; preds = %num_channels.exit.loopexit.i536, %if.then26.num_channels.exit.i539_crit_edge
  %num.0.lcssa.i.i537 = phi i32 [ 0, %if.then26.num_channels.exit.i539_crit_edge ], [ %phi.bo.i535, %num_channels.exit.loopexit.i536 ]
  %add1.i538 = add i32 %num.0.lcssa.i.i537, 9
  %call9.i.i.i563 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1.i538, i32 noundef 3520) #16
  %tobool.not.i566 = icmp eq ptr %call9.i.i.i563, null
  br i1 %tobool.not.i566, label %build_fu_desc.exit573.thread, label %build_fu_desc.exit573

build_fu_desc.exit573.thread:                     ; preds = %num_channels.exit.i539
  call void @__sanitizer_cov_trace_pc() #13
  store ptr null, ptr @in_feature_unit_desc, align 4
  br label %err_free_fu

build_fu_desc.exit573:                            ; preds = %num_channels.exit.i539
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i568 = trunc i32 %add1.i538 to i8
  %64 = ptrtoint ptr %call9.i.i.i563 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv.i568, ptr %call9.i.i.i563, align 128
  %bDescriptorType.i569 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %call9.i.i.i563, i32 0, i32 1
  %65 = ptrtoint ptr %bDescriptorType.i569 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 36, ptr %bDescriptorType.i569, align 1
  %bDescriptorSubtype.i570 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %call9.i.i.i563, i32 0, i32 2
  %66 = ptrtoint ptr %bDescriptorSubtype.i570 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 6, ptr %bDescriptorSubtype.i570, align 2
  %bControlSize.i571 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %call9.i.i.i563, i32 0, i32 5
  %67 = ptrtoint ptr %bControlSize.i571 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 2, ptr %bControlSize.i571, align 1
  store ptr %call9.i.i.i563, ptr @in_feature_unit_desc, align 4
  br label %if.end31

if.end31:                                         ; preds = %build_fu_desc.exit573, %lor.lhs.false24.if.end31_crit_edge
  %68 = ptrtoint ptr %call6 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %call6, align 4
  store i8 %69, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ac_interface_desc, i32 0, i32 8), align 1
  %arrayidx32 = getelementptr %struct.usb_string, ptr %call6, i32 1
  %70 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx32, align 4
  store i8 %71, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 9), align 1
  %arrayidx34 = getelementptr %struct.usb_string, ptr %call6, i32 2
  %72 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx34, align 4
  store i8 %73, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 8), align 1
  %arrayidx36 = getelementptr %struct.usb_string, ptr %call6, i32 3
  %74 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx36, align 4
  store i8 %75, ptr getelementptr inbounds (%struct.uac1_output_terminal_descriptor, ptr @io_out_ot_desc, i32 0, i32 7), align 1
  %arrayidx38 = getelementptr %struct.usb_string, ptr %call6, i32 9
  %76 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx38, align 4
  store i8 %77, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_out_interface_alt_0_desc, i32 0, i32 8), align 1
  %arrayidx40 = getelementptr %struct.usb_string, ptr %call6, i32 10
  %78 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx40, align 4
  store i8 %79, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_out_interface_alt_1_desc, i32 0, i32 8), align 1
  %arrayidx42 = getelementptr %struct.usb_string, ptr %call6, i32 4
  %80 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx42, align 4
  store i8 %81, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 9), align 1
  %arrayidx44 = getelementptr %struct.usb_string, ptr %call6, i32 5
  %82 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx44, align 4
  store i8 %83, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 8), align 1
  %arrayidx46 = getelementptr %struct.usb_string, ptr %call6, i32 6
  %84 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx46, align 4
  store i8 %85, ptr getelementptr inbounds (%struct.uac1_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 7), align 1
  %arrayidx48 = getelementptr %struct.usb_string, ptr %call6, i32 11
  %86 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx48, align 4
  store i8 %87, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_in_interface_alt_0_desc, i32 0, i32 8), align 1
  %arrayidx50 = getelementptr %struct.usb_string, ptr %call6, i32 12
  %88 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx50, align 4
  store i8 %89, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_in_interface_alt_1_desc, i32 0, i32 8), align 1
  %90 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %c_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool53.not = icmp eq i8 %91, 0
  br i1 %tobool53.not, label %lor.lhs.false54, label %if.end31.if.then57_crit_edge

if.end31.if.then57_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

lor.lhs.false54:                                  ; preds = %if.end31
  %c_volume_present55 = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 13
  %92 = ptrtoint ptr %c_volume_present55 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %c_volume_present55, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool56.not = icmp eq i8 %93, 0
  br i1 %tobool56.not, label %lor.lhs.false54.if.end62_crit_edge, label %lor.lhs.false54.if.then57_crit_edge

lor.lhs.false54.if.then57_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

lor.lhs.false54.if.end62_crit_edge:               ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.then57:                                        ; preds = %lor.lhs.false54.if.then57_crit_edge, %if.end31.if.then57_crit_edge
  %94 = load ptr, ptr @out_feature_unit_desc, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %94, align 1
  %conv = zext i8 %96 to i32
  %add.ptr58 = getelementptr i8, ptr %94, i32 %conv
  %add.ptr59 = getelementptr i8, ptr %add.ptr58, i32 -1
  %arrayidx60 = getelementptr %struct.usb_string, ptr %call6, i32 8
  %97 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx60, align 4
  %99 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %add.ptr59, align 1
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %lor.lhs.false54.if.end62_crit_edge
  %100 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %p_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool64.not = icmp eq i8 %101, 0
  br i1 %tobool64.not, label %lor.lhs.false66, label %if.end62.if.then70_crit_edge

if.end62.if.then70_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then70

lor.lhs.false66:                                  ; preds = %if.end62
  %p_volume_present67 = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 8
  %102 = ptrtoint ptr %p_volume_present67 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %p_volume_present67, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool68.not = icmp eq i8 %103, 0
  br i1 %tobool68.not, label %lor.lhs.false66.if.end78_crit_edge, label %lor.lhs.false66.if.then70_crit_edge

lor.lhs.false66.if.then70_crit_edge:              ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then70

lor.lhs.false66.if.end78_crit_edge:               ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then70:                                        ; preds = %lor.lhs.false66.if.then70_crit_edge, %if.end62.if.then70_crit_edge
  %104 = load ptr, ptr @in_feature_unit_desc, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %104, align 1
  %conv73 = zext i8 %106 to i32
  %add.ptr74 = getelementptr i8, ptr %104, i32 %conv73
  %add.ptr75 = getelementptr i8, ptr %add.ptr74, i32 -1
  %arrayidx76 = getelementptr %struct.usb_string, ptr %call6, i32 7
  %107 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx76, align 4
  %109 = ptrtoint ptr %add.ptr75 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %add.ptr75, align 1
  br label %if.end78

if.end78:                                         ; preds = %if.then70, %lor.lhs.false66.if.end78_crit_edge
  %110 = ptrtoint ptr %c_chmask.i513 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %c_chmask.i513, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not4.i = icmp eq i32 %111, 0
  br i1 %tobool.not4.i, label %num_channels.exit.thread, label %if.end78.while.body.i_crit_edge

if.end78.while.body.i_crit_edge:                  ; preds = %if.end78
  br label %while.body.i

num_channels.exit.thread:                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  store i8 0, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 6), align 1
  store i16 0, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 7), align 1
  br label %num_channels.exit585

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end78.while.body.i_crit_edge
  %num.06.i = phi i32 [ %add.i574, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end78.while.body.i_crit_edge ]
  %chanmask.addr.05.i = phi i32 [ %shr.i, %while.body.i.while.body.i_crit_edge ], [ %111, %if.end78.while.body.i_crit_edge ]
  %and.i = and i32 %chanmask.addr.05.i, 1
  %add.i574 = add i32 %and.i, %num.06.i
  %shr.i = lshr i32 %chanmask.addr.05.i, 1
  %tobool.not.i575 = icmp ult i32 %chanmask.addr.05.i, 2
  br i1 %tobool.not.i575, label %while.body.i583.preheader, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i583.preheader:                        ; preds = %while.body.i
  %conv81 = trunc i32 %add.i574 to i8
  store i8 %conv81, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 6), align 1
  %conv83 = trunc i32 %111 to i16
  %112 = tail call i16 @llvm.bswap.i16(i16 %conv83)
  store i16 %112, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 7), align 1
  br label %while.body.i583

while.body.i583:                                  ; preds = %while.body.i583.while.body.i583_crit_edge, %while.body.i583.preheader
  %num.06.i577 = phi i32 [ %add.i580, %while.body.i583.while.body.i583_crit_edge ], [ 0, %while.body.i583.preheader ]
  %chanmask.addr.05.i578 = phi i32 [ %shr.i581, %while.body.i583.while.body.i583_crit_edge ], [ %111, %while.body.i583.preheader ]
  %and.i579 = and i32 %chanmask.addr.05.i578, 1
  %add.i580 = add i32 %and.i579, %num.06.i577
  %shr.i581 = lshr i32 %chanmask.addr.05.i578, 1
  %tobool.not.i582 = icmp ult i32 %chanmask.addr.05.i578, 2
  br i1 %tobool.not.i582, label %while.body.i583.num_channels.exit585_crit_edge, label %while.body.i583.while.body.i583_crit_edge

while.body.i583.while.body.i583_crit_edge:        ; preds = %while.body.i583
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i583

while.body.i583.num_channels.exit585_crit_edge:   ; preds = %while.body.i583
  call void @__sanitizer_cov_trace_pc() #13
  br label %num_channels.exit585

num_channels.exit585:                             ; preds = %while.body.i583.num_channels.exit585_crit_edge, %num_channels.exit.thread
  %num.0.lcssa.i584 = phi i32 [ 0, %num_channels.exit.thread ], [ %add.i580, %while.body.i583.num_channels.exit585_crit_edge ]
  %conv86 = trunc i32 %num.0.lcssa.i584 to i8
  store i8 %conv86, ptr getelementptr inbounds (%struct.uac_format_type_i_discrete_descriptor_1, ptr @as_out_type_i_desc, i32 0, i32 4), align 1
  %c_ssize = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 3
  %113 = ptrtoint ptr %c_ssize to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %c_ssize, align 4
  %conv87 = trunc i32 %114 to i8
  store i8 %conv87, ptr getelementptr inbounds (%struct.uac_format_type_i_discrete_descriptor_1, ptr @as_out_type_i_desc, i32 0, i32 5), align 1
  %conv89 = shl i8 %conv87, 3
  store i8 %conv89, ptr getelementptr inbounds (%struct.uac_format_type_i_discrete_descriptor_1, ptr @as_out_type_i_desc, i32 0, i32 6), align 1
  %115 = ptrtoint ptr %p_chmask.i514 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %p_chmask.i514, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not4.i586 = icmp eq i32 %116, 0
  br i1 %tobool.not4.i586, label %num_channels.exit595.thread, label %num_channels.exit585.while.body.i593_crit_edge

num_channels.exit585.while.body.i593_crit_edge:   ; preds = %num_channels.exit585
  br label %while.body.i593

num_channels.exit595.thread:                      ; preds = %num_channels.exit585
  call void @__sanitizer_cov_trace_pc() #13
  store i8 0, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 6), align 1
  store i16 0, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 7), align 1
  br label %num_channels.exit605

while.body.i593:                                  ; preds = %while.body.i593.while.body.i593_crit_edge, %num_channels.exit585.while.body.i593_crit_edge
  %num.06.i587 = phi i32 [ %add.i590, %while.body.i593.while.body.i593_crit_edge ], [ 0, %num_channels.exit585.while.body.i593_crit_edge ]
  %chanmask.addr.05.i588 = phi i32 [ %shr.i591, %while.body.i593.while.body.i593_crit_edge ], [ %116, %num_channels.exit585.while.body.i593_crit_edge ]
  %and.i589 = and i32 %chanmask.addr.05.i588, 1
  %add.i590 = add i32 %and.i589, %num.06.i587
  %shr.i591 = lshr i32 %chanmask.addr.05.i588, 1
  %tobool.not.i592 = icmp ult i32 %chanmask.addr.05.i588, 2
  br i1 %tobool.not.i592, label %while.body.i603.preheader, label %while.body.i593.while.body.i593_crit_edge

while.body.i593.while.body.i593_crit_edge:        ; preds = %while.body.i593
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i593

while.body.i603.preheader:                        ; preds = %while.body.i593
  %conv92 = trunc i32 %add.i590 to i8
  store i8 %conv92, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 6), align 1
  %conv94 = trunc i32 %116 to i16
  %117 = tail call i16 @llvm.bswap.i16(i16 %conv94)
  store i16 %117, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 7), align 1
  br label %while.body.i603

while.body.i603:                                  ; preds = %while.body.i603.while.body.i603_crit_edge, %while.body.i603.preheader
  %num.06.i597 = phi i32 [ %add.i600, %while.body.i603.while.body.i603_crit_edge ], [ 0, %while.body.i603.preheader ]
  %chanmask.addr.05.i598 = phi i32 [ %shr.i601, %while.body.i603.while.body.i603_crit_edge ], [ %116, %while.body.i603.preheader ]
  %and.i599 = and i32 %chanmask.addr.05.i598, 1
  %add.i600 = add i32 %and.i599, %num.06.i597
  %shr.i601 = lshr i32 %chanmask.addr.05.i598, 1
  %tobool.not.i602 = icmp ult i32 %chanmask.addr.05.i598, 2
  br i1 %tobool.not.i602, label %while.body.i603.num_channels.exit605_crit_edge, label %while.body.i603.while.body.i603_crit_edge

while.body.i603.while.body.i603_crit_edge:        ; preds = %while.body.i603
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i603

while.body.i603.num_channels.exit605_crit_edge:   ; preds = %while.body.i603
  call void @__sanitizer_cov_trace_pc() #13
  br label %num_channels.exit605

num_channels.exit605:                             ; preds = %while.body.i603.num_channels.exit605_crit_edge, %num_channels.exit595.thread
  %num.0.lcssa.i604 = phi i32 [ 0, %num_channels.exit595.thread ], [ %add.i600, %while.body.i603.num_channels.exit605_crit_edge ]
  %conv97 = trunc i32 %num.0.lcssa.i604 to i8
  store i8 %conv97, ptr getelementptr inbounds (%struct.uac_format_type_i_discrete_descriptor_1, ptr @as_in_type_i_desc, i32 0, i32 4), align 1
  %p_ssize = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 6
  %118 = ptrtoint ptr %p_ssize to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %p_ssize, align 4
  %conv98 = trunc i32 %119 to i8
  store i8 %conv98, ptr getelementptr inbounds (%struct.uac_format_type_i_discrete_descriptor_1, ptr @as_in_type_i_desc, i32 0, i32 5), align 1
  %conv101 = shl i8 %conv98, 3
  store i8 %conv101, ptr getelementptr inbounds (%struct.uac_format_type_i_discrete_descriptor_1, ptr @as_in_type_i_desc, i32 0, i32 6), align 1
  %120 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %c_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool103.not = icmp eq i8 %121, 0
  br i1 %tobool103.not, label %lor.lhs.false105, label %num_channels.exit605.if.then109_crit_edge

num_channels.exit605.if.then109_crit_edge:        ; preds = %num_channels.exit605
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then109

lor.lhs.false105:                                 ; preds = %num_channels.exit605
  %c_volume_present106 = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 13
  %122 = ptrtoint ptr %c_volume_present106 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %c_volume_present106, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool107.not = icmp eq i8 %123, 0
  br i1 %tobool107.not, label %lor.lhs.false105.if.end121_crit_edge, label %lor.lhs.false105.if.then109_crit_edge

lor.lhs.false105.if.then109_crit_edge:            ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then109

lor.lhs.false105.if.end121_crit_edge:             ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.then109:                                       ; preds = %lor.lhs.false105.if.then109_crit_edge, %num_channels.exit605.if.then109_crit_edge
  %124 = load ptr, ptr @out_feature_unit_desc, align 4
  %bmaControls = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %124, i32 0, i32 6
  %not.tobool103.not = xor i1 %tobool103.not, true
  %spec.select = zext i1 %not.tobool103.not to i32
  %c_volume_present115 = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 13
  %125 = ptrtoint ptr %c_volume_present115 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %c_volume_present115, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool116.not = icmp eq i8 %126, 0
  %or118 = or i32 %spec.select, 2
  %control.1 = select i1 %tobool116.not, i32 %spec.select, i32 %or118
  %conv120 = trunc i32 %control.1 to i16
  %127 = shl nuw nsw i16 %conv120, 8
  %128 = ptrtoint ptr %bmaControls to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %bmaControls, align 2
  br label %if.end121

if.end121:                                        ; preds = %if.then109, %lor.lhs.false105.if.end121_crit_edge
  %129 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %p_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool123.not = icmp eq i8 %130, 0
  br i1 %tobool123.not, label %lor.lhs.false125, label %if.end121.if.then129_crit_edge

if.end121.if.then129_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then129

lor.lhs.false125:                                 ; preds = %if.end121
  %p_volume_present126 = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 8
  %131 = ptrtoint ptr %p_volume_present126 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %p_volume_present126, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool127.not = icmp eq i8 %132, 0
  br i1 %tobool127.not, label %lor.lhs.false125.if.end145_crit_edge, label %lor.lhs.false125.if.then129_crit_edge

lor.lhs.false125.if.then129_crit_edge:            ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then129

lor.lhs.false125.if.end145_crit_edge:             ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145

if.then129:                                       ; preds = %lor.lhs.false125.if.then129_crit_edge, %if.end121.if.then129_crit_edge
  %133 = load ptr, ptr @in_feature_unit_desc, align 4
  %bmaControls131 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %133, i32 0, i32 6
  %not.tobool123.not = xor i1 %tobool123.not, true
  %spec.select512 = zext i1 %not.tobool123.not to i32
  %p_volume_present139 = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 8
  %134 = ptrtoint ptr %p_volume_present139 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %p_volume_present139, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool140.not = icmp eq i8 %135, 0
  %or142 = or i32 %spec.select512, 2
  %control133.1 = select i1 %tobool140.not, i32 %spec.select512, i32 %or142
  %conv144 = trunc i32 %control133.1 to i16
  %136 = shl nuw nsw i16 %conv144, 8
  %137 = ptrtoint ptr %bmaControls131 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %136, ptr %bmaControls131, align 2
  br label %if.end145

if.end145:                                        ; preds = %if.then129, %lor.lhs.false125.if.end145_crit_edge
  %c_srate = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 2
  %138 = ptrtoint ptr %c_srate to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %c_srate, align 4
  %rate.0.extract.shift = lshr i32 %139, 8
  %rate.0.extract.trunc = trunc i32 %rate.0.extract.shift to i24
  store i24 %rate.0.extract.trunc, ptr getelementptr inbounds (%struct.uac_format_type_i_discrete_descriptor_1, ptr @as_out_type_i_desc, i32 0, i32 8), align 1
  %p_srate = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 5
  %140 = ptrtoint ptr %p_srate to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %p_srate, align 4
  %rate.0.extract.shift374 = lshr i32 %141, 8
  %rate.0.extract.trunc375 = trunc i32 %rate.0.extract.shift374 to i24
  store i24 %rate.0.extract.trunc375, ptr getelementptr inbounds (%struct.uac_format_type_i_discrete_descriptor_1, ptr @as_in_type_i_desc, i32 0, i32 8), align 1
  %call146 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %cmp = icmp slt i32 %call146, 0
  br i1 %cmp, label %if.end145.err_free_fu_crit_edge, label %if.end149

if.end145.err_free_fu_crit_edge:                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_fu

if.end149:                                        ; preds = %if.end145
  %conv150 = trunc i32 %call146 to i8
  store i8 %conv150, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ac_interface_desc, i32 0, i32 2), align 1
  %ac_intf = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 1
  %142 = ptrtoint ptr %ac_intf to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv150, ptr %ac_intf, align 4
  %ac_alt = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 4
  %143 = ptrtoint ptr %ac_alt to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %ac_alt, align 1
  %144 = ptrtoint ptr %c_chmask.i513 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %c_chmask.i513, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp153.not = icmp eq i32 %145, 0
  br i1 %cmp153.not, label %if.end149.if.end166_crit_edge, label %if.then155

if.end149.if.end166_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end166

if.then155:                                       ; preds = %if.end149
  %call156 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %if.then155.err_free_fu_crit_edge, label %if.end160

if.then155.err_free_fu_crit_edge:                 ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_fu

if.end160:                                        ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #13
  %conv161 = trunc i32 %call156 to i8
  store i8 %conv161, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_out_interface_alt_0_desc, i32 0, i32 2), align 1
  store i8 %conv161, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_out_interface_alt_1_desc, i32 0, i32 2), align 1
  %146 = load ptr, ptr @ac_header_desc, align 4
  %baInterfaceNr = getelementptr inbounds %struct.uac1_ac_header_descriptor, ptr %146, i32 0, i32 6
  %147 = ptrtoint ptr %baInterfaceNr to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv161, ptr %baInterfaceNr, align 1
  %as_out_intf = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 3
  %148 = ptrtoint ptr %as_out_intf to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv161, ptr %as_out_intf, align 2
  %as_out_alt = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 6
  %149 = ptrtoint ptr %as_out_alt to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %as_out_alt, align 1
  br label %if.end166

if.end166:                                        ; preds = %if.end160, %if.end149.if.end166_crit_edge
  %ba_iface_id.0 = phi i32 [ 1, %if.end160 ], [ 0, %if.end149.if.end166_crit_edge ]
  %150 = ptrtoint ptr %p_chmask.i514 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %p_chmask.i514, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %cmp168.not = icmp eq i32 %151, 0
  br i1 %cmp168.not, label %if.end166.if.end183_crit_edge, label %if.then170

if.end166.if.end183_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end183

if.then170:                                       ; preds = %if.end166
  %call171 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %cmp172 = icmp slt i32 %call171, 0
  br i1 %cmp172, label %if.then170.err_free_fu_crit_edge, label %if.end175

if.then170.err_free_fu_crit_edge:                 ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_fu

if.end175:                                        ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #13
  %conv176 = trunc i32 %call171 to i8
  store i8 %conv176, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_in_interface_alt_0_desc, i32 0, i32 2), align 1
  store i8 %conv176, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_in_interface_alt_1_desc, i32 0, i32 2), align 1
  %152 = load ptr, ptr @ac_header_desc, align 4
  %arrayidx181 = getelementptr %struct.uac1_ac_header_descriptor, ptr %152, i32 0, i32 6, i32 %ba_iface_id.0
  %153 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv176, ptr %arrayidx181, align 1
  %as_in_intf = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 2
  %154 = ptrtoint ptr %as_in_intf to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv176, ptr %as_in_intf, align 1
  %as_in_alt = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 5
  %155 = ptrtoint ptr %as_in_alt to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %as_in_alt, align 4
  br label %if.end183

if.end183:                                        ; preds = %if.end175, %if.end166.if.end183_crit_edge
  %gadget184 = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 1
  %156 = ptrtoint ptr %gadget184 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %3, ptr %gadget184, align 4
  store i8 0, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ac_interface_desc, i32 0, i32 4), align 1
  %157 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %c_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool186.not = icmp eq i8 %158, 0
  br i1 %tobool186.not, label %lor.lhs.false188, label %if.end183.if.then200_crit_edge

if.end183.if.then200_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then200

lor.lhs.false188:                                 ; preds = %if.end183
  %c_volume_present189 = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 13
  %159 = ptrtoint ptr %c_volume_present189 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %c_volume_present189, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool190.not = icmp eq i8 %160, 0
  br i1 %tobool190.not, label %lor.lhs.false192, label %lor.lhs.false188.if.then200_crit_edge

lor.lhs.false188.if.then200_crit_edge:            ; preds = %lor.lhs.false188
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then200

lor.lhs.false192:                                 ; preds = %lor.lhs.false188
  %161 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %p_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool194.not = icmp eq i8 %162, 0
  br i1 %tobool194.not, label %lor.lhs.false196, label %lor.lhs.false192.if.then200_crit_edge

lor.lhs.false192.if.then200_crit_edge:            ; preds = %lor.lhs.false192
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then200

lor.lhs.false196:                                 ; preds = %lor.lhs.false192
  %p_volume_present197 = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 8
  %163 = ptrtoint ptr %p_volume_present197 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %p_volume_present197, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool198.not = icmp eq i8 %164, 0
  br i1 %tobool198.not, label %lor.lhs.false196.if.end207_crit_edge, label %lor.lhs.false196.if.then200_crit_edge

lor.lhs.false196.if.then200_crit_edge:            ; preds = %lor.lhs.false196
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then200

lor.lhs.false196.if.end207_crit_edge:             ; preds = %lor.lhs.false196
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end207

if.then200:                                       ; preds = %lor.lhs.false196.if.then200_crit_edge, %lor.lhs.false192.if.then200_crit_edge, %lor.lhs.false188.if.then200_crit_edge, %if.end183.if.then200_crit_edge
  %165 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %1, align 4
  %call202 = tail call ptr @usb_ep_autoconfig(ptr noundef %166, ptr noundef nonnull @ac_int_ep_desc) #11
  %tobool203.not = icmp eq ptr %call202, null
  br i1 %tobool203.not, label %if.then200.err_free_fu_crit_edge, label %if.end205

if.then200.err_free_fu_crit_edge:                 ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_fu

if.end205:                                        ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #13
  %int_ep = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 8
  %167 = ptrtoint ptr %int_ep to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call202, ptr %int_ep, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %call202, i32 0, i32 9
  %168 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @ac_int_ep_desc, ptr %desc, align 4
  store i8 1, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ac_interface_desc, i32 0, i32 4), align 1
  br label %if.end207

if.end207:                                        ; preds = %if.end205, %lor.lhs.false196.if.end207_crit_edge
  %169 = ptrtoint ptr %c_chmask.i513 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %c_chmask.i513, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp209.not = icmp eq i32 %170, 0
  br i1 %cmp209.not, label %if.end207.if.end219_crit_edge, label %if.then211

if.end207.if.end219_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end219

if.then211:                                       ; preds = %if.end207
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 4
  %call213 = tail call ptr @usb_ep_autoconfig(ptr noundef %172, ptr noundef nonnull @as_out_ep_desc) #11
  %tobool214.not = icmp eq ptr %call213, null
  br i1 %tobool214.not, label %if.then211.err_free_fu_crit_edge, label %if.end216

if.then211.err_free_fu_crit_edge:                 ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_fu

if.end216:                                        ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #13
  %out_ep = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 3
  %173 = ptrtoint ptr %out_ep to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %call213, ptr %out_ep, align 4
  %desc218 = getelementptr inbounds %struct.usb_ep, ptr %call213, i32 0, i32 9
  %174 = ptrtoint ptr %desc218 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @as_out_ep_desc, ptr %desc218, align 4
  br label %if.end219

if.end219:                                        ; preds = %if.end216, %if.end207.if.end219_crit_edge
  %175 = ptrtoint ptr %p_chmask.i514 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %p_chmask.i514, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp221.not = icmp eq i32 %176, 0
  br i1 %cmp221.not, label %if.end219.if.end231_crit_edge, label %if.then223

if.end219.if.end231_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end231

if.then223:                                       ; preds = %if.end219
  %177 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %1, align 4
  %call225 = tail call ptr @usb_ep_autoconfig(ptr noundef %178, ptr noundef nonnull @as_in_ep_desc) #11
  %tobool226.not = icmp eq ptr %call225, null
  br i1 %tobool226.not, label %if.then223.err_free_fu_crit_edge, label %if.end228

if.then223.err_free_fu_crit_edge:                 ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_fu

if.end228:                                        ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #13
  %in_ep = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 2
  %179 = ptrtoint ptr %in_ep to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call225, ptr %in_ep, align 4
  %desc230 = getelementptr inbounds %struct.usb_ep, ptr %call225, i32 0, i32 9
  %180 = ptrtoint ptr %desc230 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr @as_in_ep_desc, ptr %desc230, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.end228, %if.end219.if.end231_crit_edge
  tail call fastcc void @setup_descriptor(ptr noundef %37)
  %call232 = tail call i32 @usb_assign_descriptors(ptr noundef %f, ptr noundef nonnull @f_audio_desc, ptr noundef nonnull @f_audio_desc, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %if.end235, label %if.end231.err_free_fu_crit_edge

if.end231.err_free_fu_crit_edge:                  ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_fu

if.end235:                                        ; preds = %if.end231
  %181 = load i16, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @as_out_ep_desc, i32 0, i32 4), align 1
  %182 = tail call i16 @llvm.bswap.i16(i16 %181)
  %conv236 = zext i16 %182 to i32
  %out_ep_maxpsize = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 6
  %183 = ptrtoint ptr %out_ep_maxpsize to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %conv236, ptr %out_ep_maxpsize, align 4
  %184 = load i16, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @as_in_ep_desc, i32 0, i32 4), align 1
  %185 = tail call i16 @llvm.bswap.i16(i16 %184)
  %conv237 = zext i16 %185 to i32
  %in_ep_maxpsize = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 5
  %186 = ptrtoint ptr %in_ep_maxpsize to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %conv237, ptr %in_ep_maxpsize, align 4
  %187 = ptrtoint ptr %c_chmask.i513 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %c_chmask.i513, align 4
  %params = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 9
  %c_chmask239 = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 9, i32 4
  %189 = ptrtoint ptr %c_chmask239 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %c_chmask239, align 4
  %190 = ptrtoint ptr %c_srate to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %c_srate, align 4
  %c_srate242 = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 9, i32 5
  %192 = ptrtoint ptr %c_srate242 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %c_srate242, align 4
  %193 = ptrtoint ptr %c_ssize to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %c_ssize, align 4
  %c_ssize245 = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 9, i32 6
  %195 = ptrtoint ptr %c_ssize245 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %c_ssize245, align 4
  %196 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %p_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool247.not = icmp eq i8 %197, 0
  br i1 %tobool247.not, label %lor.lhs.false249, label %if.end235.if.then253_crit_edge

if.end235.if.then253_crit_edge:                   ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then253

lor.lhs.false249:                                 ; preds = %if.end235
  %p_volume_present250 = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 8
  %198 = ptrtoint ptr %p_volume_present250 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %p_volume_present250, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool251.not = icmp eq i8 %199, 0
  br i1 %tobool251.not, label %lor.lhs.false249.if.end272_crit_edge, label %lor.lhs.false249.if.then253_crit_edge

lor.lhs.false249.if.then253_crit_edge:            ; preds = %lor.lhs.false249
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then253

lor.lhs.false249.if.end272_crit_edge:             ; preds = %lor.lhs.false249
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end272

if.then253:                                       ; preds = %lor.lhs.false249.if.then253_crit_edge, %if.end235.if.then253_crit_edge
  %200 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %200, i32 0, i32 3
  %201 = ptrtoint ptr %bUnitID to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %bUnitID, align 1
  %conv254 = zext i8 %202 to i32
  %p_fu = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 9, i32 3
  %203 = ptrtoint ptr %p_fu to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %conv254, ptr %p_fu, align 4
  %204 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %p_mute_present, align 4, !range !314
  %mute_present = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 9, i32 3, i32 1
  %206 = ptrtoint ptr %mute_present to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %205, ptr %mute_present, align 4
  %p_volume_present261 = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 8
  %207 = ptrtoint ptr %p_volume_present261 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %p_volume_present261, align 1, !range !314
  %volume_present = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 9, i32 3, i32 2
  %209 = ptrtoint ptr %volume_present to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %208, ptr %volume_present, align 1
  %p_volume_min = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 9
  %210 = ptrtoint ptr %p_volume_min to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %p_volume_min, align 2
  %volume_min = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 9, i32 3, i32 3
  %212 = ptrtoint ptr %volume_min to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %211, ptr %volume_min, align 2
  %p_volume_max = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 10
  %213 = ptrtoint ptr %p_volume_max to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %p_volume_max, align 4
  %volume_max = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 9, i32 3, i32 4
  %215 = ptrtoint ptr %volume_max to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %214, ptr %volume_max, align 4
  %p_volume_res = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 11
  %216 = ptrtoint ptr %p_volume_res to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %p_volume_res, align 2
  %volume_res = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 9, i32 3, i32 5
  %218 = ptrtoint ptr %volume_res to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 %217, ptr %volume_res, align 2
  br label %if.end272

if.end272:                                        ; preds = %if.then253, %lor.lhs.false249.if.end272_crit_edge
  %219 = ptrtoint ptr %p_chmask.i514 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %p_chmask.i514, align 4
  %221 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %220, ptr %params, align 4
  %222 = ptrtoint ptr %p_srate to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %p_srate, align 4
  %p_srate278 = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 9, i32 1
  %224 = ptrtoint ptr %p_srate278 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %p_srate278, align 4
  %225 = ptrtoint ptr %p_ssize to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %p_ssize, align 4
  %p_ssize281 = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 9, i32 2
  %227 = ptrtoint ptr %p_ssize281 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %p_ssize281, align 4
  %228 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %c_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %229)
  %tobool283.not = icmp eq i8 %229, 0
  br i1 %tobool283.not, label %lor.lhs.false285, label %if.end272.if.then289_crit_edge

if.end272.if.then289_crit_edge:                   ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then289

lor.lhs.false285:                                 ; preds = %if.end272
  %c_volume_present286 = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 13
  %230 = ptrtoint ptr %c_volume_present286 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %c_volume_present286, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool287.not = icmp eq i8 %231, 0
  br i1 %tobool287.not, label %lor.lhs.false285.if.end315_crit_edge, label %lor.lhs.false285.if.then289_crit_edge

lor.lhs.false285.if.then289_crit_edge:            ; preds = %lor.lhs.false285
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then289

lor.lhs.false285.if.end315_crit_edge:             ; preds = %lor.lhs.false285
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end315

if.then289:                                       ; preds = %lor.lhs.false285.if.then289_crit_edge, %if.end272.if.then289_crit_edge
  %232 = load ptr, ptr @out_feature_unit_desc, align 4
  %bUnitID290 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %232, i32 0, i32 3
  %233 = ptrtoint ptr %bUnitID290 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %bUnitID290, align 1
  %conv291 = zext i8 %234 to i32
  %c_fu = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 9, i32 7
  %235 = ptrtoint ptr %c_fu to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %conv291, ptr %c_fu, align 4
  %236 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %c_mute_present, align 4, !range !314
  %mute_present298 = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 9, i32 7, i32 1
  %238 = ptrtoint ptr %mute_present298 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %237, ptr %mute_present298, align 4
  %c_volume_present300 = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 13
  %239 = ptrtoint ptr %c_volume_present300 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %c_volume_present300, align 1, !range !314
  %volume_present304 = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 9, i32 7, i32 2
  %241 = ptrtoint ptr %volume_present304 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %240, ptr %volume_present304, align 1
  %c_volume_min = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 14
  %242 = ptrtoint ptr %c_volume_min to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %c_volume_min, align 2
  %volume_min308 = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 9, i32 7, i32 3
  %244 = ptrtoint ptr %volume_min308 to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 %243, ptr %volume_min308, align 2
  %c_volume_max = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 15
  %245 = ptrtoint ptr %c_volume_max to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %c_volume_max, align 4
  %volume_max311 = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 9, i32 7, i32 4
  %247 = ptrtoint ptr %volume_max311 to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %246, ptr %volume_max311, align 4
  %c_volume_res = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 16
  %248 = ptrtoint ptr %c_volume_res to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %c_volume_res, align 2
  %volume_res314 = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 9, i32 7, i32 5
  %250 = ptrtoint ptr %volume_res314 to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 %249, ptr %volume_res314, align 2
  br label %if.end315

if.end315:                                        ; preds = %if.then289, %lor.lhs.false285.if.end315_crit_edge
  %req_number = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 17
  %251 = ptrtoint ptr %req_number to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %req_number, align 4
  %req_number317 = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 9, i32 8
  %253 = ptrtoint ptr %req_number317 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %252, ptr %req_number317, align 4
  %fb_max = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 9, i32 9
  %254 = ptrtoint ptr %fb_max to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 5, ptr %fb_max, align 4
  %255 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %c_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %tobool320.not = icmp eq i8 %256, 0
  br i1 %tobool320.not, label %lor.lhs.false322, label %if.end315.if.then334_crit_edge

if.end315.if.then334_crit_edge:                   ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then334

lor.lhs.false322:                                 ; preds = %if.end315
  %c_volume_present323 = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 13
  %257 = ptrtoint ptr %c_volume_present323 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %c_volume_present323, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %258)
  %tobool324.not = icmp eq i8 %258, 0
  br i1 %tobool324.not, label %lor.lhs.false326, label %lor.lhs.false322.if.then334_crit_edge

lor.lhs.false322.if.then334_crit_edge:            ; preds = %lor.lhs.false322
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then334

lor.lhs.false326:                                 ; preds = %lor.lhs.false322
  %259 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %p_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %260)
  %tobool328.not = icmp eq i8 %260, 0
  br i1 %tobool328.not, label %lor.lhs.false330, label %lor.lhs.false326.if.then334_crit_edge

lor.lhs.false326.if.then334_crit_edge:            ; preds = %lor.lhs.false326
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then334

lor.lhs.false330:                                 ; preds = %lor.lhs.false326
  %p_volume_present331 = getelementptr inbounds %struct.f_uac1_opts, ptr %37, i32 0, i32 8
  %261 = ptrtoint ptr %p_volume_present331 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %p_volume_present331, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %tobool332.not = icmp eq i8 %262, 0
  br i1 %tobool332.not, label %lor.lhs.false330.if.end335_crit_edge, label %lor.lhs.false330.if.then334_crit_edge

lor.lhs.false330.if.then334_crit_edge:            ; preds = %lor.lhs.false330
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then334

lor.lhs.false330.if.end335_crit_edge:             ; preds = %lor.lhs.false330
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end335

if.then334:                                       ; preds = %lor.lhs.false330.if.then334_crit_edge, %lor.lhs.false326.if.then334_crit_edge, %lor.lhs.false322.if.then334_crit_edge, %if.end315.if.then334_crit_edge
  %notify = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 7
  %263 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr @audio_notify, ptr %notify, align 4
  br label %if.end335

if.end335:                                        ; preds = %if.then334, %lor.lhs.false330.if.end335_crit_edge
  %call336 = tail call i32 @g_audio_setup(ptr noundef %f, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call336)
  %tobool337.not = icmp eq i32 %call336, 0
  br i1 %tobool337.not, label %if.end335.cleanup_crit_edge, label %err_card_register

if.end335.cleanup_crit_edge:                      ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_card_register:                                ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_free_all_descriptors(ptr noundef %f) #11
  br label %err_free_fu

err_free_fu:                                      ; preds = %err_card_register, %if.end231.err_free_fu_crit_edge, %if.then223.err_free_fu_crit_edge, %if.then211.err_free_fu_crit_edge, %if.then200.err_free_fu_crit_edge, %if.then170.err_free_fu_crit_edge, %if.then155.err_free_fu_crit_edge, %if.end145.err_free_fu_crit_edge, %build_fu_desc.exit573.thread
  %status.0 = phi i32 [ %call146, %if.end145.err_free_fu_crit_edge ], [ %call156, %if.then155.err_free_fu_crit_edge ], [ %call171, %if.then170.err_free_fu_crit_edge ], [ %call232, %if.end231.err_free_fu_crit_edge ], [ %call336, %err_card_register ], [ -19, %if.then223.err_free_fu_crit_edge ], [ -19, %if.then211.err_free_fu_crit_edge ], [ -19, %if.then200.err_free_fu_crit_edge ], [ -12, %build_fu_desc.exit573.thread ]
  %264 = load ptr, ptr @out_feature_unit_desc, align 4
  tail call void @kfree(ptr noundef %264) #11
  store ptr null, ptr @out_feature_unit_desc, align 4
  %265 = load ptr, ptr @in_feature_unit_desc, align 4
  tail call void @kfree(ptr noundef %265) #11
  br label %fail

fail:                                             ; preds = %err_free_fu, %num_channels.exit.i.fail_crit_edge
  %out_feature_unit_desc.sink = phi ptr [ @in_feature_unit_desc, %err_free_fu ], [ @out_feature_unit_desc, %num_channels.exit.i.fail_crit_edge ]
  %status.1 = phi i32 [ %status.0, %err_free_fu ], [ -12, %num_channels.exit.i.fail_crit_edge ]
  %266 = ptrtoint ptr %out_feature_unit_desc.sink to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr null, ptr %out_feature_unit_desc.sink, align 4
  %267 = load ptr, ptr @ac_header_desc, align 4
  tail call void @kfree(ptr noundef %267) #11
  store ptr null, ptr @ac_header_desc, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end335.cleanup_crit_edge, %build_ac_header_desc.exit.thread, %if.then8, %f_audio_validate_opts.exit
  %retval.0 = phi i32 [ %38, %if.then8 ], [ %status.1, %fail ], [ -22, %f_audio_validate_opts.exit ], [ 0, %if.end335.cleanup_crit_edge ], [ -12, %build_ac_header_desc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f_audio_unbind(ptr nocapture noundef readnone %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @g_audio_cleanup(ptr noundef %f) #11
  tail call void @usb_free_all_descriptors(ptr noundef %f) #11
  %0 = load ptr, ptr @out_feature_unit_desc, align 4
  tail call void @kfree(ptr noundef %0) #11
  store ptr null, ptr @out_feature_unit_desc, align 4
  %1 = load ptr, ptr @in_feature_unit_desc, align 4
  tail call void @kfree(ptr noundef %1) #11
  store ptr null, ptr @in_feature_unit_desc, align 4
  %2 = load ptr, ptr @ac_header_desc, align 4
  tail call void @kfree(ptr noundef %2) #11
  store ptr null, ptr @ac_header_desc, align 4
  %gadget = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 1
  %3 = ptrtoint ptr %gadget to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %gadget, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_audio_set_alt(ptr noundef %f, i32 noundef %intf, i32 noundef %alt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev3 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %alt)
  %cmp = icmp ugt i32 %alt, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef 831) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ac_intf = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %ac_intf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ac_intf, align 4
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %intf)
  %cmp5 = icmp eq i32 %conv, %intf
  br i1 %cmp5, label %if.then7, label %if.end22

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alt)
  %tobool.not = icmp eq i32 %alt, 0
  br i1 %tobool.not, label %if.end12, label %do.end11

do.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef 838) #15
  br label %cleanup

if.end12:                                         ; preds = %if.then7
  %int_ep = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 8
  %8 = ptrtoint ptr %int_ep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %int_ep, align 4
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.then14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 @usb_ep_disable(ptr noundef nonnull %9) #11
  %10 = ptrtoint ptr %int_ep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %int_ep, align 4
  %call18 = tail call i32 @config_ep_by_speed(ptr noundef %5, ptr noundef %f, ptr noundef %11) #11
  %12 = ptrtoint ptr %int_ep to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %int_ep, align 4
  %call20 = tail call i32 @usb_ep_enable(ptr noundef %13) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %as_out_intf = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 3
  %14 = ptrtoint ptr %as_out_intf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %as_out_intf, align 2
  %conv23 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv23, i32 %intf)
  %cmp24 = icmp eq i32 %conv23, %intf
  br i1 %cmp24, label %if.then26, label %if.else33

if.then26:                                        ; preds = %if.end22
  %conv27 = trunc i32 %alt to i8
  %as_out_alt = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 6
  %16 = ptrtoint ptr %as_out_alt to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv27, ptr %as_out_alt, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alt)
  %tobool28.not = icmp eq i32 %alt, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  %call30 = tail call i32 @u_audio_start_capture(ptr noundef %f) #11
  br label %cleanup

if.else:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @u_audio_stop_capture(ptr noundef %f) #11
  br label %cleanup

if.else33:                                        ; preds = %if.end22
  %as_in_intf = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 2
  %17 = ptrtoint ptr %as_in_intf to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %as_in_intf, align 1
  %conv34 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv34, i32 %intf)
  %cmp35 = icmp eq i32 %conv34, %intf
  br i1 %cmp35, label %if.then37, label %do.end49

if.then37:                                        ; preds = %if.else33
  %conv38 = trunc i32 %alt to i8
  %as_in_alt = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 5
  %19 = ptrtoint ptr %as_in_alt to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv38, ptr %as_in_alt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alt)
  %tobool39.not = icmp eq i32 %alt, 0
  br i1 %tobool39.not, label %if.else43, label %if.then40

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  %call42 = tail call i32 @u_audio_start_playback(ptr noundef %f) #11
  br label %cleanup

if.else43:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @u_audio_stop_playback(ptr noundef %f) #11
  br label %cleanup

do.end49:                                         ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef 867) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %if.else43, %if.then40, %if.else, %if.then29, %if.then14, %if.end12.cleanup_crit_edge, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end11 ], [ -22, %do.end49 ], [ 0, %if.then14 ], [ 0, %if.end12.cleanup_crit_edge ], [ %call30, %if.then29 ], [ 0, %if.else ], [ %call42, %if.then40 ], [ 0, %if.else43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_audio_get_alt(ptr nocapture noundef readonly %f, i32 noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev3 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  %ac_intf = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %ac_intf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ac_intf, align 4
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %intf)
  %cmp = icmp eq i32 %conv, %intf
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ac_alt = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 4
  %8 = ptrtoint ptr %ac_alt to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ac_alt, align 1
  %conv5 = zext i8 %9 to i32
  br label %cleanup

if.else:                                          ; preds = %entry
  %as_out_intf = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 3
  %10 = ptrtoint ptr %as_out_intf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %as_out_intf, align 2
  %conv6 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6, i32 %intf)
  %cmp7 = icmp eq i32 %conv6, %intf
  br i1 %cmp7, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %as_out_alt = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 6
  %12 = ptrtoint ptr %as_out_alt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %as_out_alt, align 1
  %conv10 = zext i8 %13 to i32
  br label %cleanup

if.else11:                                        ; preds = %if.else
  %as_in_intf = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 2
  %14 = ptrtoint ptr %as_in_intf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %as_in_intf, align 1
  %conv12 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12, i32 %intf)
  %cmp13 = icmp eq i32 %conv12, %intf
  br i1 %cmp13, label %if.then15, label %do.end

if.then15:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #13
  %as_in_alt = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 5
  %16 = ptrtoint ptr %as_in_alt to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %as_in_alt, align 4
  %conv16 = zext i8 %17 to i32
  br label %cleanup

do.end:                                           ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, i32 noundef 889, i32 noundef %intf) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then15, %if.then9, %if.then
  %retval.0 = phi i32 [ %conv5, %if.then ], [ %conv10, %if.then9 ], [ %conv16, %if.then15 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_audio_setup(ptr noundef %f, ptr noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
    i8 34, label %sw.bb
    i8 -94, label %sw.bb3
    i8 33, label %sw.bb5
    i8 -95, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @audio_set_endpoint_req.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@f_audio_setup, %audio_set_endpoint_req.exit)) #11
          to label %if.then.i [label %audio_set_endpoint_req.exit], !srcloc !315

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %19, i32 0, i32 11
  %bRequest.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %20 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bRequest.i, align 1
  %conv.i = zext i8 %21 to i32
  %conv5.i = zext i16 %11 to i32
  %conv6.i = zext i16 %14 to i32
  %conv7.i = zext i16 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @audio_set_endpoint_req.__UNIQUE_ID_ddebug240, ptr noundef %dev.i, ptr noundef nonnull @.str.95, i32 noundef %conv.i, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %conv7.i) #11
  br label %audio_set_endpoint_req.exit

audio_set_endpoint_req.exit:                      ; preds = %if.then.i, %sw.bb
  %bRequest8.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %22 = ptrtoint ptr %bRequest8.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bRequest8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cond.i = icmp eq i8 %23, 1
  %conv10.i = zext i16 %14 to i32
  br i1 %cond.i, label %audio_set_endpoint_req.exit.do.body21_crit_edge, label %audio_set_endpoint_req.exit.if.end50_crit_edge

audio_set_endpoint_req.exit.if.end50_crit_edge:   ; preds = %audio_set_endpoint_req.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

audio_set_endpoint_req.exit.do.body21_crit_edge:  ; preds = %audio_set_endpoint_req.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21

sw.bb3:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @audio_get_endpoint_req.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@f_audio_setup, %audio_get_endpoint_req.exit)) #11
          to label %if.then.i89 [label %audio_get_endpoint_req.exit], !srcloc !315

if.then.i89:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %dev.i85 = getelementptr inbounds %struct.usb_gadget, ptr %25, i32 0, i32 11
  %bRequest.i86 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %26 = ptrtoint ptr %bRequest.i86 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bRequest.i86, align 1
  %conv6.i87 = zext i8 %27 to i32
  %conv7.i88 = zext i16 %11 to i32
  %conv8.i = zext i16 %14 to i32
  %28 = and i16 %7, 255
  %conv9.i = zext i16 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @audio_get_endpoint_req.__UNIQUE_ID_ddebug241, ptr noundef %dev.i85, ptr noundef nonnull @.str.95, i32 noundef %conv6.i87, i32 noundef %conv7.i88, i32 noundef %conv8.i, i32 noundef %conv9.i) #11
  br label %audio_get_endpoint_req.exit

audio_get_endpoint_req.exit:                      ; preds = %if.then.i89, %sw.bb3
  %bRequest10.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %29 = ptrtoint ptr %bRequest10.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bRequest10.i, align 1
  %.off.i = add i8 %30, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 4
  %conv12.i = zext i16 %14 to i32
  br i1 %switch.i, label %audio_get_endpoint_req.exit.do.body21_crit_edge, label %audio_get_endpoint_req.exit.if.end50_crit_edge

audio_get_endpoint_req.exit.if.end50_crit_edge:   ; preds = %audio_get_endpoint_req.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

audio_get_endpoint_req.exit.do.body21_crit_edge:  ; preds = %audio_get_endpoint_req.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21

sw.bb5:                                           ; preds = %entry
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %31 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bRequest, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp = icmp eq i8 %32, 1
  br i1 %cmp, label %if.then, label %sw.bb5.if.end50_crit_edge

sw.bb5.if.end50_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then:                                          ; preds = %sw.bb5
  %fi.i.i = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %33 = ptrtoint ptr %fi.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fi.i.i, align 4
  %p_mute_present.i = getelementptr inbounds %struct.f_uac1_opts, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %p_mute_present.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %p_mute_present.i, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.land.lhs.true.i_crit_edge

if.then.land.lhs.true.i_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %if.then
  %p_volume_present.i = getelementptr inbounds %struct.f_uac1_opts, ptr %34, i32 0, i32 8
  %37 = ptrtoint ptr %p_volume_present.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %p_volume_present.i, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool9.not.i = icmp eq i8 %38, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.lor.lhs.false14.i_crit_edge, label %lor.lhs.false.i.land.lhs.true.i_crit_edge

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

lor.lhs.false.i.lor.lhs.false14.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false14.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %if.then.land.lhs.true.i_crit_edge
  %39 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID.i = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %bUnitID.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bUnitID.i, align 1
  %42 = trunc i16 %7 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %42)
  %cmp.i = icmp eq i8 %41, %42
  br i1 %cmp.i, label %land.lhs.true.i.if.then.i95_crit_edge, label %land.lhs.true.i.lor.lhs.false14.i_crit_edge

land.lhs.true.i.lor.lhs.false14.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false14.i

land.lhs.true.i.if.then.i95_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i95

lor.lhs.false14.i:                                ; preds = %land.lhs.true.i.lor.lhs.false14.i_crit_edge, %lor.lhs.false.i.lor.lhs.false14.i_crit_edge
  %c_mute_present.i = getelementptr inbounds %struct.f_uac1_opts, ptr %34, i32 0, i32 12
  %43 = ptrtoint ptr %c_mute_present.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %c_mute_present.i, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool15.not.i = icmp eq i8 %44, 0
  br i1 %tobool15.not.i, label %lor.lhs.false17.i, label %lor.lhs.false14.i.land.lhs.true20.i_crit_edge

lor.lhs.false14.i.land.lhs.true20.i_crit_edge:    ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true20.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false14.i
  %c_volume_present.i = getelementptr inbounds %struct.f_uac1_opts, ptr %34, i32 0, i32 13
  %45 = ptrtoint ptr %c_volume_present.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %c_volume_present.i, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool18.not.i = icmp eq i8 %46, 0
  br i1 %tobool18.not.i, label %lor.lhs.false17.i.do.end.i_crit_edge, label %lor.lhs.false17.i.land.lhs.true20.i_crit_edge

lor.lhs.false17.i.land.lhs.true20.i_crit_edge:    ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true20.i

lor.lhs.false17.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true20.i:                                ; preds = %lor.lhs.false17.i.land.lhs.true20.i_crit_edge, %lor.lhs.false14.i.land.lhs.true20.i_crit_edge
  %47 = load ptr, ptr @out_feature_unit_desc, align 4
  %bUnitID22.i = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %bUnitID22.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bUnitID22.i, align 1
  %50 = trunc i16 %7 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %50)
  %cmp24.i = icmp eq i8 %49, %50
  br i1 %cmp24.i, label %land.lhs.true20.i.if.then.i95_crit_edge, label %land.lhs.true20.i.do.end.i_crit_edge

land.lhs.true20.i.do.end.i_crit_edge:             ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true20.i.if.then.i95_crit_edge:          ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i95

if.then.i95:                                      ; preds = %land.lhs.true20.i.if.then.i95_crit_edge, %land.lhs.true.i.if.then.i95_crit_edge
  %setup_cr.i = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 7
  %51 = ptrtoint ptr %ctrl to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %ctrl, align 1
  %53 = ptrtoint ptr %setup_cr.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %52, ptr %setup_cr.i, align 2
  %context.i = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 8
  %54 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %f, ptr %context.i, align 4
  %complete.i = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 7
  %55 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @out_rq_cur_complete, ptr %complete.i, align 4
  %conv26.i = zext i16 %14 to i32
  br label %do.body21

do.end.i:                                         ; preds = %land.lhs.true20.i.do.end.i_crit_edge, %lor.lhs.false17.i.do.end.i_crit_edge
  %gadget.i = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 1
  %56 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %gadget.i, align 4
  %dev.i96 = getelementptr inbounds %struct.usb_gadget, ptr %57, i32 0, i32 11
  %conv4.mask.i = and i16 %7, 255
  %conv27.i = zext i16 %conv4.mask.i to i32
  %58 = and i16 %10, 255
  %conv28.i = zext i16 %58 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i96, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 668, i32 noundef %conv27.i, i32 noundef %conv28.i) #15
  br label %if.end50

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %16 to i32
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %60, i32 0, i32 11
  %bRequest13 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %61 = ptrtoint ptr %bRequest13 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bRequest13, align 1
  %conv14 = zext i8 %62 to i32
  %conv15 = zext i16 %11 to i32
  %conv16 = zext i16 %8 to i32
  %conv17 = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.87, i32 noundef %conv, i32 noundef %conv14, i32 noundef %conv15, i32 noundef %conv16, i32 noundef %conv17) #15
  br label %if.end50

sw.epilog:                                        ; preds = %entry
  %call10 = tail call fastcc i32 @ac_rq_in(ptr noundef %f, ptr noundef %ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10)
  %cmp18 = icmp sgt i32 %call10, -1
  br i1 %cmp18, label %sw.epilog.do.body21_crit_edge, label %sw.epilog.if.end50_crit_edge

sw.epilog.if.end50_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

sw.epilog.do.body21_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body21

do.body21:                                        ; preds = %sw.epilog.do.body21_crit_edge, %if.then.i95, %audio_get_endpoint_req.exit.do.body21_crit_edge, %audio_set_endpoint_req.exit.do.body21_crit_edge
  %value.0105 = phi i32 [ %call10, %sw.epilog.do.body21_crit_edge ], [ %conv26.i, %if.then.i95 ], [ %conv12.i, %audio_get_endpoint_req.exit.do.body21_crit_edge ], [ %conv10.i, %audio_set_endpoint_req.exit.do.body21_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @f_audio_setup.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@f_audio_setup, %do.end38)) #11
          to label %if.then26 [label %do.end38], !srcloc !315

if.then26:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 4
  %dev28 = getelementptr inbounds %struct.usb_gadget, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ctrl, align 1
  %conv30 = zext i8 %66 to i32
  %bRequest31 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %67 = ptrtoint ptr %bRequest31 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bRequest31, align 1
  %conv32 = zext i8 %68 to i32
  %conv33 = zext i16 %11 to i32
  %conv34 = zext i16 %8 to i32
  %conv35 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @f_audio_setup.__UNIQUE_ID_ddebug242, ptr noundef %dev28, ptr noundef nonnull @.str.90, i32 noundef %conv30, i32 noundef %conv32, i32 noundef %conv33, i32 noundef %conv34, i32 noundef %conv35) #11
  br label %do.end38

do.end38:                                         ; preds = %if.then26, %do.body21
  %zero = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 6
  %69 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %69)
  %bf.load = load i32, ptr %zero, align 4
  %bf.clear = and i32 %bf.load, -8193
  store i32 %bf.clear, ptr %zero, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 1
  %70 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %value.0105, ptr %length, align 4
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %3, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ep0, align 4
  %call40 = tail call i32 @usb_ep_queue(ptr noundef %74, ptr noundef %5, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.end46, label %do.end38.if.end50_crit_edge

do.end38.if.end50_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

do.end46:                                         ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %3, align 4
  %dev48 = getelementptr inbounds %struct.usb_gadget, ptr %76, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.92, i32 noundef %call40) #15
  br label %if.end50

if.end50:                                         ; preds = %do.end46, %do.end38.if.end50_crit_edge, %sw.epilog.if.end50_crit_edge, %do.end, %do.end.i, %sw.bb5.if.end50_crit_edge, %audio_get_endpoint_req.exit.if.end50_crit_edge, %audio_set_endpoint_req.exit.if.end50_crit_edge
  %value.1 = phi i32 [ %call40, %do.end46 ], [ %call40, %do.end38.if.end50_crit_edge ], [ %call10, %sw.epilog.if.end50_crit_edge ], [ -95, %do.end ], [ -95, %sw.bb5.if.end50_crit_edge ], [ -95, %audio_get_endpoint_req.exit.if.end50_crit_edge ], [ -95, %audio_set_endpoint_req.exit.if.end50_crit_edge ], [ -95, %do.end.i ]
  ret i32 %value.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f_audio_disable(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %as_out_alt = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %as_out_alt to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %as_out_alt, align 1
  %as_in_alt = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 5
  %1 = ptrtoint ptr %as_in_alt to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %as_in_alt, align 4
  tail call void @u_audio_stop_playback(ptr noundef %f) #11
  tail call void @u_audio_stop_capture(ptr noundef %f) #11
  %int_ep = getelementptr inbounds %struct.f_uac1, ptr %f, i32 0, i32 8
  %2 = ptrtoint ptr %int_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %int_ep, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @usb_ep_disable(ptr noundef nonnull %3) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f_audio_free(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi, align 4
  tail call void @kfree(ptr noundef %f) #11
  %lock = getelementptr inbounds %struct.f_uac1_opts, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uac1_opts, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcnt, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @setup_descriptor(ptr nocapture noundef readonly %opts) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %c_chmask = getelementptr inbounds %struct.f_uac1_opts, ptr %opts, i32 0, i32 1
  %0 = ptrtoint ptr %c_chmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_chmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store i8 1, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 3), align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i.0 = phi i32 [ 2, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %p_chmask = getelementptr inbounds %struct.f_uac1_opts, ptr %opts, i32 0, i32 4
  %2 = ptrtoint ptr %p_chmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p_chmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %inc4 = add nuw nsw i32 %i.0, 1
  %conv5 = trunc i32 %i.0 to i8
  store i8 %conv5, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 3), align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %i.1 = phi i32 [ %inc4, %if.then3 ], [ %i.0, %if.end.if.end6_crit_edge ]
  br i1 %cmp.not, label %if.end6.if.end13_crit_edge, label %if.then10

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %inc11 = add nuw nsw i32 %i.1, 1
  %conv12 = trunc i32 %i.1 to i8
  store i8 %conv12, ptr getelementptr inbounds (%struct.uac1_output_terminal_descriptor, ptr @io_out_ot_desc, i32 0, i32 3), align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end6.if.end13_crit_edge
  %i.2 = phi i32 [ %inc11, %if.then10 ], [ %i.1, %if.end6.if.end13_crit_edge ]
  br i1 %cmp1.not, label %if.end13.if.end20_crit_edge, label %if.then17

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %inc18 = add nuw nsw i32 %i.2, 1
  %conv19 = trunc i32 %i.2 to i8
  store i8 %conv19, ptr getelementptr inbounds (%struct.uac1_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 3), align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end13.if.end20_crit_edge
  %i.3 = phi i32 [ %inc18, %if.then17 ], [ %i.2, %if.end13.if.end20_crit_edge ]
  %c_mute_present = getelementptr inbounds %struct.f_uac1_opts, ptr %opts, i32 0, i32 12
  %4 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %c_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end20.if.then24_crit_edge

if.end20.if.then24_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.end20
  %c_volume_present = getelementptr inbounds %struct.f_uac1_opts, ptr %opts, i32 0, i32 13
  %6 = ptrtoint ptr %c_volume_present to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %c_volume_present, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool22.not = icmp eq i8 %7, 0
  br i1 %tobool22.not, label %lor.lhs.false.if.end27_crit_edge, label %lor.lhs.false.if.then24_crit_edge

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %if.end20.if.then24_crit_edge
  %inc25 = add nuw nsw i32 %i.3, 1
  %conv26 = trunc i32 %i.3 to i8
  %8 = load ptr, ptr @out_feature_unit_desc, align 4
  %bUnitID = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %bUnitID to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv26, ptr %bUnitID, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %lor.lhs.false.if.end27_crit_edge
  %i.4 = phi i32 [ %inc25, %if.then24 ], [ %i.3, %lor.lhs.false.if.end27_crit_edge ]
  %p_mute_present = getelementptr inbounds %struct.f_uac1_opts, ptr %opts, i32 0, i32 7
  %10 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %p_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool28.not = icmp eq i8 %11, 0
  br i1 %tobool28.not, label %lor.lhs.false30, label %if.end27.if.then33_crit_edge

if.end27.if.then33_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

lor.lhs.false30:                                  ; preds = %if.end27
  %p_volume_present = getelementptr inbounds %struct.f_uac1_opts, ptr %opts, i32 0, i32 8
  %12 = ptrtoint ptr %p_volume_present to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %p_volume_present, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool31.not = icmp eq i8 %13, 0
  br i1 %tobool31.not, label %lor.lhs.false30.if.end37_crit_edge, label %lor.lhs.false30.if.then33_crit_edge

lor.lhs.false30.if.then33_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

lor.lhs.false30.if.end37_crit_edge:               ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then33:                                        ; preds = %lor.lhs.false30.if.then33_crit_edge, %if.end27.if.then33_crit_edge
  %conv35 = trunc i32 %i.4 to i8
  %14 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID36 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %bUnitID36 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv35, ptr %bUnitID36, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %lor.lhs.false30.if.end37_crit_edge
  %16 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %p_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool39.not = icmp eq i8 %17, 0
  br i1 %tobool39.not, label %lor.lhs.false41, label %if.end37.if.then45_crit_edge

if.end37.if.then45_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45

lor.lhs.false41:                                  ; preds = %if.end37
  %p_volume_present42 = getelementptr inbounds %struct.f_uac1_opts, ptr %opts, i32 0, i32 8
  %18 = ptrtoint ptr %p_volume_present42 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %p_volume_present42, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool43.not = icmp eq i8 %19, 0
  br i1 %tobool43.not, label %if.else, label %lor.lhs.false41.if.then45_crit_edge

lor.lhs.false41.if.then45_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false41.if.then45_crit_edge, %if.end37.if.then45_crit_edge
  %20 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID46 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %bUnitID46 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bUnitID46, align 1
  store i8 %22, ptr getelementptr inbounds (%struct.uac1_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 6), align 1
  %23 = load i8, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 3), align 1
  %bSourceID = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %20, i32 0, i32 4
  %24 = ptrtoint ptr %bSourceID to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %bSourceID, align 1
  br label %if.end47

if.else:                                          ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #13
  %25 = load i8, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 3), align 1
  store i8 %25, ptr getelementptr inbounds (%struct.uac1_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 6), align 1
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then45
  %26 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %c_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool49.not = icmp eq i8 %27, 0
  br i1 %tobool49.not, label %lor.lhs.false51, label %if.end47.if.then55_crit_edge

if.end47.if.then55_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55

lor.lhs.false51:                                  ; preds = %if.end47
  %c_volume_present52 = getelementptr inbounds %struct.f_uac1_opts, ptr %opts, i32 0, i32 13
  %28 = ptrtoint ptr %c_volume_present52 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %c_volume_present52, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool53.not = icmp eq i8 %29, 0
  br i1 %tobool53.not, label %if.else58, label %lor.lhs.false51.if.then55_crit_edge

lor.lhs.false51.if.then55_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then55

if.then55:                                        ; preds = %lor.lhs.false51.if.then55_crit_edge, %if.end47.if.then55_crit_edge
  %30 = load ptr, ptr @out_feature_unit_desc, align 4
  %bUnitID56 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %bUnitID56 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bUnitID56, align 1
  store i8 %32, ptr getelementptr inbounds (%struct.uac1_output_terminal_descriptor, ptr @io_out_ot_desc, i32 0, i32 6), align 1
  %33 = load i8, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 3), align 1
  %bSourceID57 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %30, i32 0, i32 4
  %34 = ptrtoint ptr %bSourceID57 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %bSourceID57, align 1
  br label %if.end59

if.else58:                                        ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #13
  %35 = load i8, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 3), align 1
  store i8 %35, ptr getelementptr inbounds (%struct.uac1_output_terminal_descriptor, ptr @io_out_ot_desc, i32 0, i32 6), align 1
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %if.then55
  %36 = load i8, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 3), align 1
  store i8 %36, ptr getelementptr inbounds (%struct.uac1_as_header_descriptor, ptr @as_out_header_desc, i32 0, i32 3), align 1
  %37 = load i8, ptr getelementptr inbounds (%struct.uac1_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 3), align 1
  store i8 %37, ptr getelementptr inbounds (%struct.uac1_as_header_descriptor, ptr @as_in_header_desc, i32 0, i32 3), align 1
  %38 = load ptr, ptr @ac_header_desc, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 1
  %conv60 = zext i8 %40 to i16
  %41 = shl nuw i16 %conv60, 8
  %wTotalLength = getelementptr inbounds %struct.uac1_ac_header_descriptor, ptr %38, i32 0, i32 4
  %42 = ptrtoint ptr %wTotalLength to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %41, ptr %wTotalLength, align 1
  %43 = ptrtoint ptr %p_chmask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %p_chmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp62.not = icmp eq i32 %44, 0
  br i1 %cmp62.not, label %if.end59.if.end86_crit_edge, label %if.then64

if.end59.if.end86_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

if.then64:                                        ; preds = %if.end59
  %add69 = add nuw nsw i16 %conv60, 21
  %45 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %p_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool72.not = icmp eq i8 %46, 0
  br i1 %tobool72.not, label %lor.lhs.false74, label %if.then64.if.then78_crit_edge

if.then64.if.then78_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then78

lor.lhs.false74:                                  ; preds = %if.then64
  %p_volume_present75 = getelementptr inbounds %struct.f_uac1_opts, ptr %opts, i32 0, i32 8
  %47 = ptrtoint ptr %p_volume_present75 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %p_volume_present75, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool76.not = icmp eq i8 %48, 0
  br i1 %tobool76.not, label %lor.lhs.false74.if.end84_crit_edge, label %lor.lhs.false74.if.then78_crit_edge

lor.lhs.false74.if.then78_crit_edge:              ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then78

lor.lhs.false74.if.end84_crit_edge:               ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end84

if.then78:                                        ; preds = %lor.lhs.false74.if.then78_crit_edge, %if.then64.if.then78_crit_edge
  %49 = load ptr, ptr @in_feature_unit_desc, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 1
  %conv80 = zext i8 %51 to i16
  %add82 = add nuw nsw i16 %add69, %conv80
  br label %if.end84

if.end84:                                         ; preds = %if.then78, %lor.lhs.false74.if.end84_crit_edge
  %len.0 = phi i16 [ %add82, %if.then78 ], [ %add69, %lor.lhs.false74.if.end84_crit_edge ]
  %52 = tail call i16 @llvm.bswap.i16(i16 %len.0)
  %53 = ptrtoint ptr %wTotalLength to i32
  call void @__asan_storeN_noabort(i32 %53, i32 2)
  store i16 %52, ptr %wTotalLength, align 1
  br label %if.end86

if.end86:                                         ; preds = %if.end84, %if.end59.if.end86_crit_edge
  %54 = ptrtoint ptr %c_chmask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %c_chmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp88.not = icmp eq i32 %55, 0
  br i1 %cmp88.not, label %if.end114.thread, label %if.then90

if.end114.thread:                                 ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  store ptr @ac_interface_desc, ptr @f_audio_desc, align 4
  store ptr %38, ptr getelementptr inbounds ([22 x ptr], ptr @f_audio_desc, i32 0, i32 1), align 4
  br label %if.end137

if.then90:                                        ; preds = %if.end86
  %56 = ptrtoint ptr %wTotalLength to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %wTotalLength, align 1
  %58 = tail call i16 @llvm.bswap.i16(i16 %57)
  %add97 = add i16 %58, 21
  %59 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %c_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool100.not = icmp eq i8 %60, 0
  br i1 %tobool100.not, label %lor.lhs.false102, label %if.then90.if.then106_crit_edge

if.then90.if.then106_crit_edge:                   ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then106

lor.lhs.false102:                                 ; preds = %if.then90
  %c_volume_present103 = getelementptr inbounds %struct.f_uac1_opts, ptr %opts, i32 0, i32 13
  %61 = ptrtoint ptr %c_volume_present103 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %c_volume_present103, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool104.not = icmp eq i8 %62, 0
  br i1 %tobool104.not, label %lor.lhs.false102.if.end114_crit_edge, label %lor.lhs.false102.if.then106_crit_edge

lor.lhs.false102.if.then106_crit_edge:            ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then106

lor.lhs.false102.if.end114_crit_edge:             ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

if.then106:                                       ; preds = %lor.lhs.false102.if.then106_crit_edge, %if.then90.if.then106_crit_edge
  %63 = load ptr, ptr @out_feature_unit_desc, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %63, align 1
  %conv108 = zext i8 %65 to i16
  %add110 = add i16 %add97, %conv108
  br label %if.end114

if.end114:                                        ; preds = %if.then106, %lor.lhs.false102.if.end114_crit_edge
  %len91.0 = phi i16 [ %add110, %if.then106 ], [ %add97, %lor.lhs.false102.if.end114_crit_edge ]
  %66 = tail call i16 @llvm.bswap.i16(i16 %len91.0)
  %67 = ptrtoint ptr %wTotalLength to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %66, ptr %wTotalLength, align 1
  %68 = ptrtoint ptr %c_chmask to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr = load i32, ptr %c_chmask, align 4
  store ptr @ac_interface_desc, ptr @f_audio_desc, align 4
  store ptr %38, ptr getelementptr inbounds ([22 x ptr], ptr @f_audio_desc, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp119.not = icmp eq i32 %.pr, 0
  br i1 %cmp119.not, label %if.end114.if.end137_crit_edge, label %if.then121

if.end114.if.end137_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

if.then121:                                       ; preds = %if.end114
  store ptr @usb_out_it_desc, ptr getelementptr inbounds ([22 x ptr], ptr @f_audio_desc, i32 0, i32 2), align 4
  store ptr @io_out_ot_desc, ptr getelementptr inbounds ([22 x ptr], ptr @f_audio_desc, i32 0, i32 3), align 4
  %69 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %c_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool127.not = icmp eq i8 %70, 0
  br i1 %tobool127.not, label %lor.lhs.false129, label %if.then121.if.then133_crit_edge

if.then121.if.then133_crit_edge:                  ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then133

lor.lhs.false129:                                 ; preds = %if.then121
  %c_volume_present130 = getelementptr inbounds %struct.f_uac1_opts, ptr %opts, i32 0, i32 13
  %71 = ptrtoint ptr %c_volume_present130 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %c_volume_present130, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool131.not = icmp eq i8 %72, 0
  br i1 %tobool131.not, label %lor.lhs.false129.if.end137_crit_edge, label %lor.lhs.false129.if.then133_crit_edge

lor.lhs.false129.if.then133_crit_edge:            ; preds = %lor.lhs.false129
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then133

lor.lhs.false129.if.end137_crit_edge:             ; preds = %lor.lhs.false129
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

if.then133:                                       ; preds = %lor.lhs.false129.if.then133_crit_edge, %if.then121.if.then133_crit_edge
  %73 = load ptr, ptr @out_feature_unit_desc, align 4
  store ptr %73, ptr getelementptr inbounds ([22 x ptr], ptr @f_audio_desc, i32 0, i32 4), align 4
  br label %if.end137

if.end137:                                        ; preds = %if.then133, %lor.lhs.false129.if.end137_crit_edge, %if.end114.if.end137_crit_edge, %if.end114.thread
  %i.5 = phi i32 [ 5, %if.then133 ], [ 4, %lor.lhs.false129.if.end137_crit_edge ], [ 2, %if.end114.if.end137_crit_edge ], [ 2, %if.end114.thread ]
  %74 = ptrtoint ptr %p_chmask to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %p_chmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp139.not = icmp eq i32 %75, 0
  br i1 %cmp139.not, label %if.end137.if.end157_crit_edge, label %if.then141

if.end137.if.end157_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

if.then141:                                       ; preds = %if.end137
  %inc142 = add nuw nsw i32 %i.5, 1
  %arrayidx143 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %i.5
  %76 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @io_in_it_desc, ptr %arrayidx143, align 4
  %inc144 = add nuw nsw i32 %i.5, 2
  %arrayidx145 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %inc142
  %77 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @usb_in_ot_desc, ptr %arrayidx145, align 4
  %78 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %p_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool147.not = icmp eq i8 %79, 0
  br i1 %tobool147.not, label %lor.lhs.false149, label %if.then141.if.then153_crit_edge

if.then141.if.then153_crit_edge:                  ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then153

lor.lhs.false149:                                 ; preds = %if.then141
  %p_volume_present150 = getelementptr inbounds %struct.f_uac1_opts, ptr %opts, i32 0, i32 8
  %80 = ptrtoint ptr %p_volume_present150 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %p_volume_present150, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool151.not = icmp eq i8 %81, 0
  br i1 %tobool151.not, label %lor.lhs.false149.if.end157_crit_edge, label %lor.lhs.false149.if.then153_crit_edge

lor.lhs.false149.if.then153_crit_edge:            ; preds = %lor.lhs.false149
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then153

lor.lhs.false149.if.end157_crit_edge:             ; preds = %lor.lhs.false149
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end157

if.then153:                                       ; preds = %lor.lhs.false149.if.then153_crit_edge, %if.then141.if.then153_crit_edge
  %82 = load ptr, ptr @in_feature_unit_desc, align 4
  %inc154 = add nuw nsw i32 %i.5, 3
  %arrayidx155 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %inc144
  %83 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %arrayidx155, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then153, %lor.lhs.false149.if.end157_crit_edge, %if.end137.if.end157_crit_edge
  %i.6 = phi i32 [ %inc154, %if.then153 ], [ %inc144, %lor.lhs.false149.if.end157_crit_edge ], [ %i.5, %if.end137.if.end157_crit_edge ]
  %84 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %c_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool159.not = icmp eq i8 %85, 0
  br i1 %tobool159.not, label %lor.lhs.false161, label %if.end157.if.then173_crit_edge

if.end157.if.then173_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then173

lor.lhs.false161:                                 ; preds = %if.end157
  %c_volume_present162 = getelementptr inbounds %struct.f_uac1_opts, ptr %opts, i32 0, i32 13
  %86 = ptrtoint ptr %c_volume_present162 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %c_volume_present162, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool163.not = icmp eq i8 %87, 0
  br i1 %tobool163.not, label %lor.lhs.false165, label %lor.lhs.false161.if.then173_crit_edge

lor.lhs.false161.if.then173_crit_edge:            ; preds = %lor.lhs.false161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then173

lor.lhs.false165:                                 ; preds = %lor.lhs.false161
  %88 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %p_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool167.not = icmp eq i8 %89, 0
  br i1 %tobool167.not, label %lor.lhs.false169, label %lor.lhs.false165.if.then173_crit_edge

lor.lhs.false165.if.then173_crit_edge:            ; preds = %lor.lhs.false165
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then173

lor.lhs.false169:                                 ; preds = %lor.lhs.false165
  %p_volume_present170 = getelementptr inbounds %struct.f_uac1_opts, ptr %opts, i32 0, i32 8
  %90 = ptrtoint ptr %p_volume_present170 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %p_volume_present170, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool171.not = icmp eq i8 %91, 0
  br i1 %tobool171.not, label %lor.lhs.false169.if.end176_crit_edge, label %lor.lhs.false169.if.then173_crit_edge

lor.lhs.false169.if.then173_crit_edge:            ; preds = %lor.lhs.false169
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then173

lor.lhs.false169.if.end176_crit_edge:             ; preds = %lor.lhs.false169
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176

if.then173:                                       ; preds = %lor.lhs.false169.if.then173_crit_edge, %lor.lhs.false165.if.then173_crit_edge, %lor.lhs.false161.if.then173_crit_edge, %if.end157.if.then173_crit_edge
  %inc174 = add nuw nsw i32 %i.6, 1
  %arrayidx175 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %i.6
  %92 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @ac_int_ep_desc, ptr %arrayidx175, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.then173, %lor.lhs.false169.if.end176_crit_edge
  %i.7 = phi i32 [ %inc174, %if.then173 ], [ %i.6, %lor.lhs.false169.if.end176_crit_edge ]
  %93 = ptrtoint ptr %c_chmask to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %c_chmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp178.not = icmp eq i32 %94, 0
  br i1 %cmp178.not, label %if.end176.if.end193_crit_edge, label %if.then180

if.end176.if.end193_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end193

if.then180:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #13
  %inc181 = add nuw nsw i32 %i.7, 1
  %arrayidx182 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %i.7
  %95 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @as_out_interface_alt_0_desc, ptr %arrayidx182, align 4
  %inc183 = add nuw nsw i32 %i.7, 2
  %arrayidx184 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %inc181
  %96 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @as_out_interface_alt_1_desc, ptr %arrayidx184, align 4
  %inc185 = add nuw nsw i32 %i.7, 3
  %arrayidx186 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %inc183
  %97 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @as_out_header_desc, ptr %arrayidx186, align 4
  %inc187 = add nuw nsw i32 %i.7, 4
  %arrayidx188 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %inc185
  %98 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @as_out_type_i_desc, ptr %arrayidx188, align 4
  %inc189 = add nuw nsw i32 %i.7, 5
  %arrayidx190 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %inc187
  %99 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @as_out_ep_desc, ptr %arrayidx190, align 4
  %inc191 = add nuw nsw i32 %i.7, 6
  %arrayidx192 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %inc189
  %100 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @as_iso_out_desc, ptr %arrayidx192, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then180, %if.end176.if.end193_crit_edge
  %i.8 = phi i32 [ %inc191, %if.then180 ], [ %i.7, %if.end176.if.end193_crit_edge ]
  %101 = ptrtoint ptr %p_chmask to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %p_chmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp195.not = icmp eq i32 %102, 0
  br i1 %cmp195.not, label %if.end193.if.end210_crit_edge, label %if.then197

if.end193.if.end210_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end210

if.then197:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  %inc198 = add nuw nsw i32 %i.8, 1
  %arrayidx199 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %i.8
  %103 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @as_in_interface_alt_0_desc, ptr %arrayidx199, align 4
  %inc200 = add nuw nsw i32 %i.8, 2
  %arrayidx201 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %inc198
  %104 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @as_in_interface_alt_1_desc, ptr %arrayidx201, align 4
  %inc202 = add nuw nsw i32 %i.8, 3
  %arrayidx203 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %inc200
  %105 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @as_in_header_desc, ptr %arrayidx203, align 4
  %inc204 = add nuw nsw i32 %i.8, 4
  %arrayidx205 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %inc202
  %106 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @as_in_type_i_desc, ptr %arrayidx205, align 4
  %inc206 = add nuw nsw i32 %i.8, 5
  %arrayidx207 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %inc204
  %107 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @as_in_ep_desc, ptr %arrayidx207, align 4
  %inc208 = add nuw nsw i32 %i.8, 6
  %arrayidx209 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %inc206
  %108 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @as_iso_in_desc, ptr %arrayidx209, align 4
  br label %if.end210

if.end210:                                        ; preds = %if.then197, %if.end193.if.end210_crit_edge
  %i.9 = phi i32 [ %inc208, %if.then197 ], [ %i.8, %if.end193.if.end210_crit_edge ]
  %arrayidx211 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %i.9
  %109 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %arrayidx211, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audio_notify(ptr noundef %audio, i32 noundef %unit_id, i32 noundef %cs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %int_ep = getelementptr inbounds %struct.f_uac1, ptr %audio, i32 0, i32 8
  %0 = ptrtoint ptr %int_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %int_ep, align 4
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %int_count = getelementptr inbounds %struct.f_uac1, ptr %audio, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %int_count, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !316
  tail call void @llvm.prefetch.p0(ptr %int_count, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %int_count, ptr %int_count, i32 1, ptr elementtype(i32) %int_count) #11, !srcloc !317
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !318
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, 10
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i42 = tail call zeroext i1 @__kasan_check_write(ptr noundef %int_count, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %int_count, i32 1, i32 3, i32 1) #11
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %int_count, ptr %int_count, i32 1, ptr elementtype(i32) %int_count) #11, !srcloc !319
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %int_ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %int_ep, align 4
  %call6 = tail call ptr @usb_ep_alloc_request(ptr noundef %7, i32 noundef 2592) #11
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %if.end4.err_dec_int_count_crit_edge, label %if.end9

if.end4.err_dec_int_count_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_dec_int_count

if.end9:                                          ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2592, i32 noundef 2) #14
  %cmp11 = icmp eq ptr %call7.i, null
  br i1 %cmp11, label %if.end9.err_free_request_crit_edge, label %if.end13

if.end9.err_free_request_crit_edge:               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_request

if.end13:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -128, ptr %call7.i, align 8
  %conv = trunc i32 %unit_id to i8
  %bOriginator = getelementptr inbounds %struct.uac1_status_word, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %bOriginator to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %bOriginator, align 1
  %length = getelementptr inbounds %struct.usb_request, ptr %call6, i32 0, i32 1
  %11 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %length, align 4
  %12 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i, ptr %call6, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %call6, i32 0, i32 8
  %13 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %audio, ptr %context, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %call6, i32 0, i32 7
  %14 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @audio_notify_complete, ptr %complete, align 4
  %15 = ptrtoint ptr %int_ep to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %int_ep, align 4
  %call15 = tail call i32 @usb_ep_queue(ptr noundef %16, ptr noundef nonnull %call6, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %err_free_msg

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_free_msg:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %err_free_request

err_free_request:                                 ; preds = %err_free_msg, %if.end9.err_free_request_crit_edge
  %ret.0 = phi i32 [ %call15, %err_free_msg ], [ -12, %if.end9.err_free_request_crit_edge ]
  %17 = ptrtoint ptr %int_ep to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %int_ep, align 4
  tail call void @usb_ep_free_request(ptr noundef %18, ptr noundef nonnull %call6) #11
  br label %err_dec_int_count

err_dec_int_count:                                ; preds = %err_free_request, %if.end4.err_dec_int_count_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_free_request ], [ -12, %if.end4.err_dec_int_count_crit_edge ]
  %call.i.i43 = tail call zeroext i1 @__kasan_check_write(ptr noundef %int_count, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %int_count, i32 1, i32 3, i32 1) #11
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %int_count, ptr %int_count, i32 1, ptr elementtype(i32) %int_count) #11, !srcloc !319
  br label %cleanup

cleanup:                                          ; preds = %err_dec_int_count, %if.end13.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ %ret.1, %err_dec_int_count ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g_audio_setup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @audio_notify_complete(ptr noundef %_ep, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %int_count = getelementptr inbounds %struct.f_uac1, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %int_count, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %int_count, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %int_count, ptr %int_count, i32 1, ptr elementtype(i32) %int_count) #11, !srcloc !319
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %req, align 4
  tail call void @kfree(ptr noundef %4) #11
  tail call void @usb_ep_free_request(ptr noundef %_ep, ptr noundef %req) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @g_audio_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_start_capture(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @u_audio_stop_capture(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_start_playback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @u_audio_stop_playback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ac_rq_in(ptr noundef %f, ptr nocapture noundef readonly %ctrl) unnamed_addr #2 align 64 {
entry:
  %r.i127 = alloca i16, align 2
  %r.i78 = alloca i16, align 2
  %r.i = alloca i16, align 2
  %mute.i = alloca i32, align 4
  %c.i = alloca i16, align 2
  %volume.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %4 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %wIndex, align 1
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %6 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %wLength, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %9 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %wValue, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ac_rq_in.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ac_rq_in, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !315

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %13, i32 0, i32 11
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %14 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bRequest, align 1
  %conv6 = zext i8 %15 to i32
  %conv7 = zext i16 %11 to i32
  %conv8 = zext i16 %8 to i32
  %16 = and i16 %5, 255
  %conv9 = zext i16 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ac_rq_in.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.95, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bRequest10 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %17 = ptrtoint ptr %bRequest10 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bRequest10, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.117)
  switch i8 %18, label %do.end.cleanup_crit_edge [
    i8 -127, label %sw.bb
    i8 -126, label %sw.bb13
    i8 -125, label %sw.bb15
    i8 -124, label %sw.bb17
    i8 -1, label %sw.bb19
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %20 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config, align 4
  %cdev.i = getelementptr inbounds %struct.usb_configuration, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cdev.i, align 4
  %req1.i = getelementptr inbounds %struct.usb_composite_dev, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %req1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %req1.i, align 4
  %fi.i.i = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %26 = ptrtoint ptr %fi.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fi.i.i, align 4
  %28 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %wLength, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #11
  %31 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %wIndex, align 1
  %33 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %wValue, align 1
  %p_mute_present.i = getelementptr inbounds %struct.f_uac1_opts, ptr %27, i32 0, i32 7
  %35 = ptrtoint ptr %p_mute_present.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %p_mute_present.i, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %sw.bb.land.lhs.true.i_crit_edge

sw.bb.land.lhs.true.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %sw.bb
  %p_volume_present.i = getelementptr inbounds %struct.f_uac1_opts, ptr %27, i32 0, i32 8
  %37 = ptrtoint ptr %p_volume_present.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %p_volume_present.i, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool8.not.i = icmp eq i8 %38, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i.lor.lhs.false13.i_crit_edge, label %lor.lhs.false.i.land.lhs.true.i_crit_edge

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

lor.lhs.false.i.lor.lhs.false13.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false13.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %sw.bb.land.lhs.true.i_crit_edge
  %39 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID.i = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %bUnitID.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bUnitID.i, align 1
  %42 = trunc i16 %32 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %42)
  %cmp.i = icmp eq i8 %41, %42
  br i1 %cmp.i, label %land.lhs.true.i.if.then.i_crit_edge, label %land.lhs.true.i.lor.lhs.false13.i_crit_edge

land.lhs.true.i.lor.lhs.false13.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false13.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false13.i:                                ; preds = %land.lhs.true.i.lor.lhs.false13.i_crit_edge, %lor.lhs.false.i.lor.lhs.false13.i_crit_edge
  %c_mute_present.i = getelementptr inbounds %struct.f_uac1_opts, ptr %27, i32 0, i32 12
  %43 = ptrtoint ptr %c_mute_present.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %c_mute_present.i, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool14.not.i = icmp eq i8 %44, 0
  br i1 %tobool14.not.i, label %lor.lhs.false16.i, label %lor.lhs.false13.i.land.lhs.true19.i_crit_edge

lor.lhs.false13.i.land.lhs.true19.i_crit_edge:    ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true19.i

lor.lhs.false16.i:                                ; preds = %lor.lhs.false13.i
  %c_volume_present.i = getelementptr inbounds %struct.f_uac1_opts, ptr %27, i32 0, i32 13
  %45 = ptrtoint ptr %c_volume_present.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %c_volume_present.i, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool17.not.i = icmp eq i8 %46, 0
  br i1 %tobool17.not.i, label %lor.lhs.false16.i.do.end69.i_crit_edge, label %lor.lhs.false16.i.land.lhs.true19.i_crit_edge

lor.lhs.false16.i.land.lhs.true19.i_crit_edge:    ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true19.i

lor.lhs.false16.i.do.end69.i_crit_edge:           ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end69.i

land.lhs.true19.i:                                ; preds = %lor.lhs.false16.i.land.lhs.true19.i_crit_edge, %lor.lhs.false13.i.land.lhs.true19.i_crit_edge
  %47 = load ptr, ptr @out_feature_unit_desc, align 4
  %bUnitID21.i = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %bUnitID21.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bUnitID21.i, align 1
  %50 = trunc i16 %32 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %50)
  %cmp23.i = icmp eq i8 %49, %50
  br i1 %cmp23.i, label %land.lhs.true19.i.if.then.i_crit_edge, label %land.lhs.true19.i.do.end69.i_crit_edge

land.lhs.true19.i.do.end69.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end69.i

land.lhs.true19.i.if.then.i_crit_edge:            ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true19.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  br i1 %tobool.not.i, label %lor.lhs.false28.i, label %if.then.i.land.lhs.true32.i_crit_edge

if.then.i.land.lhs.true32.i_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true32.i

lor.lhs.false28.i:                                ; preds = %if.then.i
  %p_volume_present29.i = getelementptr inbounds %struct.f_uac1_opts, ptr %27, i32 0, i32 8
  %51 = ptrtoint ptr %p_volume_present29.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %p_volume_present29.i, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool30.not.i = icmp eq i8 %52, 0
  br i1 %tobool30.not.i, label %lor.lhs.false28.i.if.end.i_crit_edge, label %lor.lhs.false28.i.land.lhs.true32.i_crit_edge

lor.lhs.false28.i.land.lhs.true32.i_crit_edge:    ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true32.i

lor.lhs.false28.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true32.i:                                ; preds = %lor.lhs.false28.i.land.lhs.true32.i_crit_edge, %if.then.i.land.lhs.true32.i_crit_edge
  %53 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID34.i = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %bUnitID34.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bUnitID34.i, align 1
  %56 = trunc i16 %32 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %56)
  %cmp36.i = icmp eq i8 %55, %56
  %spec.select.i = zext i1 %cmp36.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true32.i, %lor.lhs.false28.i.if.end.i_crit_edge
  %is_playback.0.i = phi i32 [ 0, %lor.lhs.false28.i.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true32.i ]
  %trunc.i = trunc i16 %34 to i8
  %57 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.118)
  switch i8 %trunc.i, label %do.end.i [
    i8 1, label %if.then42.i
    i8 2, label %if.then51.i
  ]

if.then42.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mute.i) #11
  %58 = ptrtoint ptr %mute.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %mute.i, align 4, !annotation !313
  %call43.i = call i32 @u_audio_get_mute(ptr noundef %f, i32 noundef %is_playback.0.i, ptr noundef nonnull %mute.i) #11
  %59 = ptrtoint ptr %mute.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mute.i, align 4
  %conv44.i = trunc i32 %60 to i8
  %61 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %25, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv44.i, ptr %62, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp46.i = icmp ne i16 %29, 0
  %..i = zext i1 %cmp46.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mute.i) #11
  br label %cleanup

if.then51.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %c.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %volume.i) #11
  %64 = ptrtoint ptr %volume.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 -1, ptr %volume.i, align 2, !annotation !313
  %call52.i = call i32 @u_audio_get_volume(ptr noundef %f, i32 noundef %is_playback.0.i, ptr noundef nonnull %volume.i) #11
  %65 = ptrtoint ptr %volume.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %volume.i, align 2
  %67 = call i16 @llvm.bswap.i16(i16 %66) #11
  %68 = ptrtoint ptr %c.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %c.i, align 2
  %69 = call i16 @llvm.umin.i16(i16 %30, i16 2) #11
  %cond60.i = zext i16 %69 to i32
  %70 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %25, align 4
  %72 = call ptr @memcpy(ptr %71, ptr %c.i, i32 %cond60.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %volume.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %c.i)
  br label %cleanup

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %73 = and i16 %34, 255
  %conv39.i = zext i16 %73 to i32
  %gadget.i = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 1
  %74 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %gadget.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %75, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.105, i32 noundef 439, i32 noundef %conv39.i) #15
  br label %cleanup

do.end69.i:                                       ; preds = %land.lhs.true19.i.do.end69.i_crit_edge, %lor.lhs.false16.i.do.end69.i_crit_edge
  %gadget70.i = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 1
  %76 = ptrtoint ptr %gadget70.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %gadget70.i, align 4
  %dev71.i = getelementptr inbounds %struct.usb_gadget, ptr %77, i32 0, i32 11
  %conv3.mask.i = and i16 %32, 255
  %conv72.i = zext i16 %conv3.mask.i to i32
  %conv6.mask.i = and i16 %34, 255
  %conv73.i = zext i16 %conv6.mask.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev71.i, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.105, i32 noundef 444, i32 noundef %conv72.i, i32 noundef %conv73.i) #15
  br label %cleanup

sw.bb13:                                          ; preds = %do.end
  %78 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %config, align 4
  %cdev.i39 = getelementptr inbounds %struct.usb_configuration, ptr %79, i32 0, i32 9
  %80 = ptrtoint ptr %cdev.i39 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cdev.i39, align 4
  %req1.i40 = getelementptr inbounds %struct.usb_composite_dev, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %req1.i40 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %req1.i40, align 4
  %fi.i.i41 = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %84 = ptrtoint ptr %fi.i.i41 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fi.i.i41, align 4
  %86 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %wLength, align 1
  %88 = tail call i16 @llvm.bswap.i16(i16 %87) #11
  %89 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %89, i32 2)
  %90 = load i16, ptr %wIndex, align 1
  %91 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %91, i32 2)
  %92 = load i16, ptr %wValue, align 1
  %p_mute_present.i45 = getelementptr inbounds %struct.f_uac1_opts, ptr %85, i32 0, i32 7
  %93 = ptrtoint ptr %p_mute_present.i45 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %p_mute_present.i45, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i46 = icmp eq i8 %94, 0
  br i1 %tobool.not.i46, label %lor.lhs.false.i49, label %sw.bb13.land.lhs.true.i52_crit_edge

sw.bb13.land.lhs.true.i52_crit_edge:              ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i52

lor.lhs.false.i49:                                ; preds = %sw.bb13
  %p_volume_present.i47 = getelementptr inbounds %struct.f_uac1_opts, ptr %85, i32 0, i32 8
  %95 = ptrtoint ptr %p_volume_present.i47 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %p_volume_present.i47, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool8.not.i48 = icmp eq i8 %96, 0
  br i1 %tobool8.not.i48, label %lor.lhs.false.i49.lor.lhs.false13.i55_crit_edge, label %lor.lhs.false.i49.land.lhs.true.i52_crit_edge

lor.lhs.false.i49.land.lhs.true.i52_crit_edge:    ; preds = %lor.lhs.false.i49
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i52

lor.lhs.false.i49.lor.lhs.false13.i55_crit_edge:  ; preds = %lor.lhs.false.i49
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false13.i55

land.lhs.true.i52:                                ; preds = %lor.lhs.false.i49.land.lhs.true.i52_crit_edge, %sw.bb13.land.lhs.true.i52_crit_edge
  %97 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID.i50 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %bUnitID.i50 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %bUnitID.i50, align 1
  %100 = trunc i16 %90 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %99, i8 %100)
  %cmp.i51 = icmp eq i8 %99, %100
  br i1 %cmp.i51, label %land.lhs.true.i52.if.then.i62_crit_edge, label %land.lhs.true.i52.lor.lhs.false13.i55_crit_edge

land.lhs.true.i52.lor.lhs.false13.i55_crit_edge:  ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false13.i55

land.lhs.true.i52.if.then.i62_crit_edge:          ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i62

lor.lhs.false13.i55:                              ; preds = %land.lhs.true.i52.lor.lhs.false13.i55_crit_edge, %lor.lhs.false.i49.lor.lhs.false13.i55_crit_edge
  %c_mute_present.i53 = getelementptr inbounds %struct.f_uac1_opts, ptr %85, i32 0, i32 12
  %101 = ptrtoint ptr %c_mute_present.i53 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %c_mute_present.i53, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool14.not.i54 = icmp eq i8 %102, 0
  br i1 %tobool14.not.i54, label %lor.lhs.false16.i58, label %lor.lhs.false13.i55.land.lhs.true19.i61_crit_edge

lor.lhs.false13.i55.land.lhs.true19.i61_crit_edge: ; preds = %lor.lhs.false13.i55
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true19.i61

lor.lhs.false16.i58:                              ; preds = %lor.lhs.false13.i55
  %c_volume_present.i56 = getelementptr inbounds %struct.f_uac1_opts, ptr %85, i32 0, i32 13
  %103 = ptrtoint ptr %c_volume_present.i56 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %c_volume_present.i56, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool17.not.i57 = icmp eq i8 %104, 0
  br i1 %tobool17.not.i57, label %lor.lhs.false16.i58.do.end55.i_crit_edge, label %lor.lhs.false16.i58.land.lhs.true19.i61_crit_edge

lor.lhs.false16.i58.land.lhs.true19.i61_crit_edge: ; preds = %lor.lhs.false16.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true19.i61

lor.lhs.false16.i58.do.end55.i_crit_edge:         ; preds = %lor.lhs.false16.i58
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55.i

land.lhs.true19.i61:                              ; preds = %lor.lhs.false16.i58.land.lhs.true19.i61_crit_edge, %lor.lhs.false13.i55.land.lhs.true19.i61_crit_edge
  %105 = load ptr, ptr @out_feature_unit_desc, align 4
  %bUnitID21.i59 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %bUnitID21.i59 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %bUnitID21.i59, align 1
  %108 = trunc i16 %90 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %107, i8 %108)
  %cmp23.i60 = icmp eq i8 %107, %108
  br i1 %cmp23.i60, label %land.lhs.true19.i61.if.then.i62_crit_edge, label %land.lhs.true19.i61.do.end55.i_crit_edge

land.lhs.true19.i61.do.end55.i_crit_edge:         ; preds = %land.lhs.true19.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55.i

land.lhs.true19.i61.if.then.i62_crit_edge:        ; preds = %land.lhs.true19.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i62

if.then.i62:                                      ; preds = %land.lhs.true19.i61.if.then.i62_crit_edge, %land.lhs.true.i52.if.then.i62_crit_edge
  br i1 %tobool.not.i46, label %lor.lhs.false28.i65, label %if.then.i62.land.lhs.true32.i68_crit_edge

if.then.i62.land.lhs.true32.i68_crit_edge:        ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true32.i68

lor.lhs.false28.i65:                              ; preds = %if.then.i62
  %p_volume_present29.i63 = getelementptr inbounds %struct.f_uac1_opts, ptr %85, i32 0, i32 8
  %109 = ptrtoint ptr %p_volume_present29.i63 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %p_volume_present29.i63, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool30.not.i64 = icmp eq i8 %110, 0
  br i1 %tobool30.not.i64, label %lor.lhs.false28.i65.if.end.i69_crit_edge, label %lor.lhs.false28.i65.land.lhs.true32.i68_crit_edge

lor.lhs.false28.i65.land.lhs.true32.i68_crit_edge: ; preds = %lor.lhs.false28.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true32.i68

lor.lhs.false28.i65.if.end.i69_crit_edge:         ; preds = %lor.lhs.false28.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i69

land.lhs.true32.i68:                              ; preds = %lor.lhs.false28.i65.land.lhs.true32.i68_crit_edge, %if.then.i62.land.lhs.true32.i68_crit_edge
  %111 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID34.i66 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %bUnitID34.i66 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %bUnitID34.i66, align 1
  %114 = trunc i16 %90 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %113, i8 %114)
  %cmp36.i67 = icmp ne i8 %113, %114
  br label %if.end.i69

if.end.i69:                                       ; preds = %land.lhs.true32.i68, %lor.lhs.false28.i65.if.end.i69_crit_edge
  %tobool43.not.i = phi i1 [ true, %lor.lhs.false28.i65.if.end.i69_crit_edge ], [ %cmp36.i67, %land.lhs.true32.i68 ]
  %115 = and i16 %92, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %115)
  %cmp40.i = icmp eq i16 %115, 2
  br i1 %cmp40.i, label %if.then42.i70, label %do.end.i74

if.then42.i70:                                    ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %r.i)
  %p_volume_min.i = getelementptr inbounds %struct.f_uac1_opts, ptr %85, i32 0, i32 9
  %c_volume_min.i = getelementptr inbounds %struct.f_uac1_opts, ptr %85, i32 0, i32 14
  %min_db.0.in.i = select i1 %tobool43.not.i, ptr %c_volume_min.i, ptr %p_volume_min.i
  %116 = ptrtoint ptr %min_db.0.in.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %min_db.0.i = load i16, ptr %min_db.0.in.i, align 2
  %117 = tail call i16 @llvm.bswap.i16(i16 %min_db.0.i) #11
  %118 = ptrtoint ptr %r.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %r.i, align 2
  %119 = tail call i16 @llvm.umin.i16(i16 %88, i16 2) #11
  %cond.i = zext i16 %119 to i32
  %120 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %83, align 4
  %122 = call ptr @memcpy(ptr %121, ptr %r.i, i32 %cond.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %r.i)
  br label %cleanup

do.end.i74:                                       ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #13
  %conv39.i71 = zext i16 %115 to i32
  %gadget.i72 = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 1
  %123 = ptrtoint ptr %gadget.i72 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %gadget.i72, align 4
  %dev.i73 = getelementptr inbounds %struct.usb_gadget, ptr %124, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i73, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.108, i32 noundef 486, i32 noundef %conv39.i71) #15
  br label %cleanup

do.end55.i:                                       ; preds = %land.lhs.true19.i61.do.end55.i_crit_edge, %lor.lhs.false16.i58.do.end55.i_crit_edge
  %gadget56.i = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 1
  %125 = ptrtoint ptr %gadget56.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %gadget56.i, align 4
  %dev57.i = getelementptr inbounds %struct.usb_gadget, ptr %126, i32 0, i32 11
  %conv3.mask.i75 = and i16 %90, 255
  %conv58.i = zext i16 %conv3.mask.i75 to i32
  %conv6.mask.i76 = and i16 %92, 255
  %conv59.i = zext i16 %conv6.mask.i76 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev57.i, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.108, i32 noundef 491, i32 noundef %conv58.i, i32 noundef %conv59.i) #15
  br label %cleanup

sw.bb15:                                          ; preds = %do.end
  %127 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %config, align 4
  %cdev.i80 = getelementptr inbounds %struct.usb_configuration, ptr %128, i32 0, i32 9
  %129 = ptrtoint ptr %cdev.i80 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %cdev.i80, align 4
  %req1.i81 = getelementptr inbounds %struct.usb_composite_dev, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %req1.i81 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %req1.i81, align 4
  %fi.i.i82 = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %133 = ptrtoint ptr %fi.i.i82 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %fi.i.i82, align 4
  %135 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %135, i32 2)
  %136 = load i16, ptr %wLength, align 1
  %137 = tail call i16 @llvm.bswap.i16(i16 %136) #11
  %138 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %138, i32 2)
  %139 = load i16, ptr %wIndex, align 1
  %140 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %140, i32 2)
  %141 = load i16, ptr %wValue, align 1
  %p_mute_present.i86 = getelementptr inbounds %struct.f_uac1_opts, ptr %134, i32 0, i32 7
  %142 = ptrtoint ptr %p_mute_present.i86 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %p_mute_present.i86, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool.not.i87 = icmp eq i8 %143, 0
  br i1 %tobool.not.i87, label %lor.lhs.false.i90, label %sw.bb15.land.lhs.true.i93_crit_edge

sw.bb15.land.lhs.true.i93_crit_edge:              ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i93

lor.lhs.false.i90:                                ; preds = %sw.bb15
  %p_volume_present.i88 = getelementptr inbounds %struct.f_uac1_opts, ptr %134, i32 0, i32 8
  %144 = ptrtoint ptr %p_volume_present.i88 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %p_volume_present.i88, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool8.not.i89 = icmp eq i8 %145, 0
  br i1 %tobool8.not.i89, label %lor.lhs.false.i90.lor.lhs.false13.i96_crit_edge, label %lor.lhs.false.i90.land.lhs.true.i93_crit_edge

lor.lhs.false.i90.land.lhs.true.i93_crit_edge:    ; preds = %lor.lhs.false.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i93

lor.lhs.false.i90.lor.lhs.false13.i96_crit_edge:  ; preds = %lor.lhs.false.i90
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false13.i96

land.lhs.true.i93:                                ; preds = %lor.lhs.false.i90.land.lhs.true.i93_crit_edge, %sw.bb15.land.lhs.true.i93_crit_edge
  %146 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID.i91 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %146, i32 0, i32 3
  %147 = ptrtoint ptr %bUnitID.i91 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %bUnitID.i91, align 1
  %149 = trunc i16 %139 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %148, i8 %149)
  %cmp.i92 = icmp eq i8 %148, %149
  br i1 %cmp.i92, label %land.lhs.true.i93.if.then.i103_crit_edge, label %land.lhs.true.i93.lor.lhs.false13.i96_crit_edge

land.lhs.true.i93.lor.lhs.false13.i96_crit_edge:  ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false13.i96

land.lhs.true.i93.if.then.i103_crit_edge:         ; preds = %land.lhs.true.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i103

lor.lhs.false13.i96:                              ; preds = %land.lhs.true.i93.lor.lhs.false13.i96_crit_edge, %lor.lhs.false.i90.lor.lhs.false13.i96_crit_edge
  %c_mute_present.i94 = getelementptr inbounds %struct.f_uac1_opts, ptr %134, i32 0, i32 12
  %150 = ptrtoint ptr %c_mute_present.i94 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %c_mute_present.i94, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool14.not.i95 = icmp eq i8 %151, 0
  br i1 %tobool14.not.i95, label %lor.lhs.false16.i99, label %lor.lhs.false13.i96.land.lhs.true19.i102_crit_edge

lor.lhs.false13.i96.land.lhs.true19.i102_crit_edge: ; preds = %lor.lhs.false13.i96
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true19.i102

lor.lhs.false16.i99:                              ; preds = %lor.lhs.false13.i96
  %c_volume_present.i97 = getelementptr inbounds %struct.f_uac1_opts, ptr %134, i32 0, i32 13
  %152 = ptrtoint ptr %c_volume_present.i97 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %c_volume_present.i97, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool17.not.i98 = icmp eq i8 %153, 0
  br i1 %tobool17.not.i98, label %lor.lhs.false16.i99.do.end55.i125_crit_edge, label %lor.lhs.false16.i99.land.lhs.true19.i102_crit_edge

lor.lhs.false16.i99.land.lhs.true19.i102_crit_edge: ; preds = %lor.lhs.false16.i99
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true19.i102

lor.lhs.false16.i99.do.end55.i125_crit_edge:      ; preds = %lor.lhs.false16.i99
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55.i125

land.lhs.true19.i102:                             ; preds = %lor.lhs.false16.i99.land.lhs.true19.i102_crit_edge, %lor.lhs.false13.i96.land.lhs.true19.i102_crit_edge
  %154 = load ptr, ptr @out_feature_unit_desc, align 4
  %bUnitID21.i100 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %154, i32 0, i32 3
  %155 = ptrtoint ptr %bUnitID21.i100 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %bUnitID21.i100, align 1
  %157 = trunc i16 %139 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %156, i8 %157)
  %cmp23.i101 = icmp eq i8 %156, %157
  br i1 %cmp23.i101, label %land.lhs.true19.i102.if.then.i103_crit_edge, label %land.lhs.true19.i102.do.end55.i125_crit_edge

land.lhs.true19.i102.do.end55.i125_crit_edge:     ; preds = %land.lhs.true19.i102
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55.i125

land.lhs.true19.i102.if.then.i103_crit_edge:      ; preds = %land.lhs.true19.i102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i103

if.then.i103:                                     ; preds = %land.lhs.true19.i102.if.then.i103_crit_edge, %land.lhs.true.i93.if.then.i103_crit_edge
  br i1 %tobool.not.i87, label %lor.lhs.false28.i106, label %if.then.i103.land.lhs.true32.i109_crit_edge

if.then.i103.land.lhs.true32.i109_crit_edge:      ; preds = %if.then.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true32.i109

lor.lhs.false28.i106:                             ; preds = %if.then.i103
  %p_volume_present29.i104 = getelementptr inbounds %struct.f_uac1_opts, ptr %134, i32 0, i32 8
  %158 = ptrtoint ptr %p_volume_present29.i104 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %p_volume_present29.i104, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool30.not.i105 = icmp eq i8 %159, 0
  br i1 %tobool30.not.i105, label %lor.lhs.false28.i106.if.end.i112_crit_edge, label %lor.lhs.false28.i106.land.lhs.true32.i109_crit_edge

lor.lhs.false28.i106.land.lhs.true32.i109_crit_edge: ; preds = %lor.lhs.false28.i106
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true32.i109

lor.lhs.false28.i106.if.end.i112_crit_edge:       ; preds = %lor.lhs.false28.i106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i112

land.lhs.true32.i109:                             ; preds = %lor.lhs.false28.i106.land.lhs.true32.i109_crit_edge, %if.then.i103.land.lhs.true32.i109_crit_edge
  %160 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID34.i107 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %160, i32 0, i32 3
  %161 = ptrtoint ptr %bUnitID34.i107 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %bUnitID34.i107, align 1
  %163 = trunc i16 %139 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %162, i8 %163)
  %cmp36.i108 = icmp ne i8 %162, %163
  br label %if.end.i112

if.end.i112:                                      ; preds = %land.lhs.true32.i109, %lor.lhs.false28.i106.if.end.i112_crit_edge
  %tobool43.not.i110 = phi i1 [ true, %lor.lhs.false28.i106.if.end.i112_crit_edge ], [ %cmp36.i108, %land.lhs.true32.i109 ]
  %164 = and i16 %141, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %164)
  %cmp40.i111 = icmp eq i16 %164, 2
  br i1 %cmp40.i111, label %if.then42.i114, label %do.end.i118

if.then42.i114:                                   ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %r.i78)
  %p_volume_max.i = getelementptr inbounds %struct.f_uac1_opts, ptr %134, i32 0, i32 10
  %c_volume_max.i = getelementptr inbounds %struct.f_uac1_opts, ptr %134, i32 0, i32 15
  %max_db.0.in.i = select i1 %tobool43.not.i110, ptr %c_volume_max.i, ptr %p_volume_max.i
  %165 = ptrtoint ptr %max_db.0.in.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %max_db.0.i = load i16, ptr %max_db.0.in.i, align 4
  %166 = tail call i16 @llvm.bswap.i16(i16 %max_db.0.i) #11
  %167 = ptrtoint ptr %r.i78 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %166, ptr %r.i78, align 2
  %168 = tail call i16 @llvm.umin.i16(i16 %137, i16 2) #11
  %cond.i113 = zext i16 %168 to i32
  %169 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %132, align 4
  %171 = call ptr @memcpy(ptr %170, ptr %r.i78, i32 %cond.i113)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %r.i78)
  br label %cleanup

do.end.i118:                                      ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #13
  %conv39.i115 = zext i16 %164 to i32
  %gadget.i116 = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 1
  %172 = ptrtoint ptr %gadget.i116 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %gadget.i116, align 4
  %dev.i117 = getelementptr inbounds %struct.usb_gadget, ptr %173, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i117, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.111, i32 noundef 533, i32 noundef %conv39.i115) #15
  br label %cleanup

do.end55.i125:                                    ; preds = %land.lhs.true19.i102.do.end55.i125_crit_edge, %lor.lhs.false16.i99.do.end55.i125_crit_edge
  %gadget56.i119 = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 1
  %174 = ptrtoint ptr %gadget56.i119 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %gadget56.i119, align 4
  %dev57.i120 = getelementptr inbounds %struct.usb_gadget, ptr %175, i32 0, i32 11
  %conv3.mask.i121 = and i16 %139, 255
  %conv58.i122 = zext i16 %conv3.mask.i121 to i32
  %conv6.mask.i123 = and i16 %141, 255
  %conv59.i124 = zext i16 %conv6.mask.i123 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev57.i120, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.111, i32 noundef 538, i32 noundef %conv58.i122, i32 noundef %conv59.i124) #15
  br label %cleanup

sw.bb17:                                          ; preds = %do.end
  %176 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %config, align 4
  %cdev.i129 = getelementptr inbounds %struct.usb_configuration, ptr %177, i32 0, i32 9
  %178 = ptrtoint ptr %cdev.i129 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %cdev.i129, align 4
  %req1.i130 = getelementptr inbounds %struct.usb_composite_dev, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %req1.i130 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %req1.i130, align 4
  %fi.i.i131 = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %182 = ptrtoint ptr %fi.i.i131 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %fi.i.i131, align 4
  %184 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %184, i32 2)
  %185 = load i16, ptr %wLength, align 1
  %186 = tail call i16 @llvm.bswap.i16(i16 %185) #11
  %187 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %187, i32 2)
  %188 = load i16, ptr %wIndex, align 1
  %189 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %189, i32 2)
  %190 = load i16, ptr %wValue, align 1
  %p_mute_present.i135 = getelementptr inbounds %struct.f_uac1_opts, ptr %183, i32 0, i32 7
  %191 = ptrtoint ptr %p_mute_present.i135 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %p_mute_present.i135, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool.not.i136 = icmp eq i8 %192, 0
  br i1 %tobool.not.i136, label %lor.lhs.false.i139, label %sw.bb17.land.lhs.true.i142_crit_edge

sw.bb17.land.lhs.true.i142_crit_edge:             ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i142

lor.lhs.false.i139:                               ; preds = %sw.bb17
  %p_volume_present.i137 = getelementptr inbounds %struct.f_uac1_opts, ptr %183, i32 0, i32 8
  %193 = ptrtoint ptr %p_volume_present.i137 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %p_volume_present.i137, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool8.not.i138 = icmp eq i8 %194, 0
  br i1 %tobool8.not.i138, label %lor.lhs.false.i139.lor.lhs.false13.i145_crit_edge, label %lor.lhs.false.i139.land.lhs.true.i142_crit_edge

lor.lhs.false.i139.land.lhs.true.i142_crit_edge:  ; preds = %lor.lhs.false.i139
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i142

lor.lhs.false.i139.lor.lhs.false13.i145_crit_edge: ; preds = %lor.lhs.false.i139
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false13.i145

land.lhs.true.i142:                               ; preds = %lor.lhs.false.i139.land.lhs.true.i142_crit_edge, %sw.bb17.land.lhs.true.i142_crit_edge
  %195 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID.i140 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %195, i32 0, i32 3
  %196 = ptrtoint ptr %bUnitID.i140 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %bUnitID.i140, align 1
  %198 = trunc i16 %188 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %197, i8 %198)
  %cmp.i141 = icmp eq i8 %197, %198
  br i1 %cmp.i141, label %land.lhs.true.i142.if.then.i152_crit_edge, label %land.lhs.true.i142.lor.lhs.false13.i145_crit_edge

land.lhs.true.i142.lor.lhs.false13.i145_crit_edge: ; preds = %land.lhs.true.i142
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false13.i145

land.lhs.true.i142.if.then.i152_crit_edge:        ; preds = %land.lhs.true.i142
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i152

lor.lhs.false13.i145:                             ; preds = %land.lhs.true.i142.lor.lhs.false13.i145_crit_edge, %lor.lhs.false.i139.lor.lhs.false13.i145_crit_edge
  %c_mute_present.i143 = getelementptr inbounds %struct.f_uac1_opts, ptr %183, i32 0, i32 12
  %199 = ptrtoint ptr %c_mute_present.i143 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %c_mute_present.i143, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool14.not.i144 = icmp eq i8 %200, 0
  br i1 %tobool14.not.i144, label %lor.lhs.false16.i148, label %lor.lhs.false13.i145.land.lhs.true19.i151_crit_edge

lor.lhs.false13.i145.land.lhs.true19.i151_crit_edge: ; preds = %lor.lhs.false13.i145
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true19.i151

lor.lhs.false16.i148:                             ; preds = %lor.lhs.false13.i145
  %c_volume_present.i146 = getelementptr inbounds %struct.f_uac1_opts, ptr %183, i32 0, i32 13
  %201 = ptrtoint ptr %c_volume_present.i146 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %c_volume_present.i146, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool17.not.i147 = icmp eq i8 %202, 0
  br i1 %tobool17.not.i147, label %lor.lhs.false16.i148.do.end55.i174_crit_edge, label %lor.lhs.false16.i148.land.lhs.true19.i151_crit_edge

lor.lhs.false16.i148.land.lhs.true19.i151_crit_edge: ; preds = %lor.lhs.false16.i148
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true19.i151

lor.lhs.false16.i148.do.end55.i174_crit_edge:     ; preds = %lor.lhs.false16.i148
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55.i174

land.lhs.true19.i151:                             ; preds = %lor.lhs.false16.i148.land.lhs.true19.i151_crit_edge, %lor.lhs.false13.i145.land.lhs.true19.i151_crit_edge
  %203 = load ptr, ptr @out_feature_unit_desc, align 4
  %bUnitID21.i149 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %203, i32 0, i32 3
  %204 = ptrtoint ptr %bUnitID21.i149 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %bUnitID21.i149, align 1
  %206 = trunc i16 %188 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %205, i8 %206)
  %cmp23.i150 = icmp eq i8 %205, %206
  br i1 %cmp23.i150, label %land.lhs.true19.i151.if.then.i152_crit_edge, label %land.lhs.true19.i151.do.end55.i174_crit_edge

land.lhs.true19.i151.do.end55.i174_crit_edge:     ; preds = %land.lhs.true19.i151
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55.i174

land.lhs.true19.i151.if.then.i152_crit_edge:      ; preds = %land.lhs.true19.i151
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i152

if.then.i152:                                     ; preds = %land.lhs.true19.i151.if.then.i152_crit_edge, %land.lhs.true.i142.if.then.i152_crit_edge
  br i1 %tobool.not.i136, label %lor.lhs.false28.i155, label %if.then.i152.land.lhs.true32.i158_crit_edge

if.then.i152.land.lhs.true32.i158_crit_edge:      ; preds = %if.then.i152
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true32.i158

lor.lhs.false28.i155:                             ; preds = %if.then.i152
  %p_volume_present29.i153 = getelementptr inbounds %struct.f_uac1_opts, ptr %183, i32 0, i32 8
  %207 = ptrtoint ptr %p_volume_present29.i153 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %p_volume_present29.i153, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %208)
  %tobool30.not.i154 = icmp eq i8 %208, 0
  br i1 %tobool30.not.i154, label %lor.lhs.false28.i155.if.end.i161_crit_edge, label %lor.lhs.false28.i155.land.lhs.true32.i158_crit_edge

lor.lhs.false28.i155.land.lhs.true32.i158_crit_edge: ; preds = %lor.lhs.false28.i155
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true32.i158

lor.lhs.false28.i155.if.end.i161_crit_edge:       ; preds = %lor.lhs.false28.i155
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i161

land.lhs.true32.i158:                             ; preds = %lor.lhs.false28.i155.land.lhs.true32.i158_crit_edge, %if.then.i152.land.lhs.true32.i158_crit_edge
  %209 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID34.i156 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %209, i32 0, i32 3
  %210 = ptrtoint ptr %bUnitID34.i156 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %bUnitID34.i156, align 1
  %212 = trunc i16 %188 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %211, i8 %212)
  %cmp36.i157 = icmp ne i8 %211, %212
  br label %if.end.i161

if.end.i161:                                      ; preds = %land.lhs.true32.i158, %lor.lhs.false28.i155.if.end.i161_crit_edge
  %tobool43.not.i159 = phi i1 [ true, %lor.lhs.false28.i155.if.end.i161_crit_edge ], [ %cmp36.i157, %land.lhs.true32.i158 ]
  %213 = and i16 %190, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %213)
  %cmp40.i160 = icmp eq i16 %213, 2
  br i1 %cmp40.i160, label %if.then42.i163, label %do.end.i167

if.then42.i163:                                   ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %r.i127)
  %p_volume_res.i = getelementptr inbounds %struct.f_uac1_opts, ptr %183, i32 0, i32 11
  %c_volume_res.i = getelementptr inbounds %struct.f_uac1_opts, ptr %183, i32 0, i32 16
  %res_db.0.in.i = select i1 %tobool43.not.i159, ptr %c_volume_res.i, ptr %p_volume_res.i
  %214 = ptrtoint ptr %res_db.0.in.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %res_db.0.i = load i16, ptr %res_db.0.in.i, align 2
  %215 = tail call i16 @llvm.bswap.i16(i16 %res_db.0.i) #11
  %216 = ptrtoint ptr %r.i127 to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %215, ptr %r.i127, align 2
  %217 = tail call i16 @llvm.umin.i16(i16 %186, i16 2) #11
  %cond.i162 = zext i16 %217 to i32
  %218 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %181, align 4
  %220 = call ptr @memcpy(ptr %219, ptr %r.i127, i32 %cond.i162)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %r.i127)
  br label %cleanup

do.end.i167:                                      ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #13
  %conv39.i164 = zext i16 %213 to i32
  %gadget.i165 = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 1
  %221 = ptrtoint ptr %gadget.i165 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %gadget.i165, align 4
  %dev.i166 = getelementptr inbounds %struct.usb_gadget, ptr %222, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i166, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.114, i32 noundef 580, i32 noundef %conv39.i164) #15
  br label %cleanup

do.end55.i174:                                    ; preds = %land.lhs.true19.i151.do.end55.i174_crit_edge, %lor.lhs.false16.i148.do.end55.i174_crit_edge
  %gadget56.i168 = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 1
  %223 = ptrtoint ptr %gadget56.i168 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %gadget56.i168, align 4
  %dev57.i169 = getelementptr inbounds %struct.usb_gadget, ptr %224, i32 0, i32 11
  %conv3.mask.i170 = and i16 %188, 255
  %conv58.i171 = zext i16 %conv3.mask.i170 to i32
  %conv6.mask.i172 = and i16 %190, 255
  %conv59.i173 = zext i16 %conv6.mask.i172 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev57.i169, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.114, i32 noundef 585, i32 noundef %conv58.i171, i32 noundef %conv59.i173) #15
  br label %cleanup

sw.bb19:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv20 = zext i16 %8 to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.bb19, %do.end55.i174, %do.end.i167, %if.then42.i163, %do.end55.i125, %do.end.i118, %if.then42.i114, %do.end55.i, %do.end.i74, %if.then42.i70, %do.end69.i, %do.end.i, %if.then51.i, %if.then42.i, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end.cleanup_crit_edge ], [ %conv20, %sw.bb19 ], [ -95, %do.end69.i ], [ %..i, %if.then42.i ], [ %cond60.i, %if.then51.i ], [ -95, %do.end.i ], [ -95, %do.end55.i ], [ %cond.i, %if.then42.i70 ], [ -95, %do.end.i74 ], [ -95, %do.end55.i125 ], [ %cond.i113, %if.then42.i114 ], [ -95, %do.end.i118 ], [ -95, %do.end55.i174 ], [ %cond.i162, %if.then42.i163 ], [ -95, %do.end.i167 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @out_rq_cur_complete(ptr noundef %ep, ptr nocapture noundef readonly %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %config = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev1, align 4
  %fi.i = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %fi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fi.i, align 4
  %wIndex = getelementptr inbounds %struct.f_uac1, ptr %1, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %wIndex, align 1
  %wValue = getelementptr inbounds %struct.f_uac1, ptr %1, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %wValue, align 1
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %if.end15, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @out_rq_cur_complete.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@out_rq_cur_complete, %cleanup84)) #11
          to label %if.then13 [label %cleanup84], !srcloc !315

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @out_rq_cur_complete.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.100, i32 noundef %17) #11
  br label %cleanup84

if.end15:                                         ; preds = %entry
  %p_mute_present = getelementptr inbounds %struct.f_uac1_opts, ptr %7, i32 0, i32 7
  %18 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %p_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool16.not = icmp eq i8 %19, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %if.end15.land.lhs.true_crit_edge

if.end15.land.lhs.true_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end15
  %p_volume_present = getelementptr inbounds %struct.f_uac1_opts, ptr %7, i32 0, i32 8
  %20 = ptrtoint ptr %p_volume_present to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %p_volume_present, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool18.not = icmp eq i8 %21, 0
  br i1 %tobool18.not, label %lor.lhs.false.lor.lhs.false24_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

lor.lhs.false.lor.lhs.false24_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false24

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.end15.land.lhs.true_crit_edge
  %22 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %bUnitID to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bUnitID, align 1
  %25 = trunc i16 %9 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %25)
  %cmp22 = icmp eq i8 %24, %25
  br i1 %cmp22, label %land.lhs.true.if.then36_crit_edge, label %land.lhs.true.lor.lhs.false24_crit_edge

land.lhs.true.lor.lhs.false24_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false24

land.lhs.true.if.then36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

lor.lhs.false24:                                  ; preds = %land.lhs.true.lor.lhs.false24_crit_edge, %lor.lhs.false.lor.lhs.false24_crit_edge
  %c_mute_present = getelementptr inbounds %struct.f_uac1_opts, ptr %7, i32 0, i32 12
  %26 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %c_mute_present, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool25.not = icmp eq i8 %27, 0
  br i1 %tobool25.not, label %lor.lhs.false27, label %lor.lhs.false24.land.lhs.true30_crit_edge

lor.lhs.false24.land.lhs.true30_crit_edge:        ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true30

lor.lhs.false27:                                  ; preds = %lor.lhs.false24
  %c_volume_present = getelementptr inbounds %struct.f_uac1_opts, ptr %7, i32 0, i32 13
  %28 = ptrtoint ptr %c_volume_present to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %c_volume_present, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool28.not = icmp eq i8 %29, 0
  br i1 %tobool28.not, label %lor.lhs.false27.do.end77_crit_edge, label %lor.lhs.false27.land.lhs.true30_crit_edge

lor.lhs.false27.land.lhs.true30_crit_edge:        ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true30

lor.lhs.false27.do.end77_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end77

land.lhs.true30:                                  ; preds = %lor.lhs.false27.land.lhs.true30_crit_edge, %lor.lhs.false24.land.lhs.true30_crit_edge
  %30 = load ptr, ptr @out_feature_unit_desc, align 4
  %bUnitID32 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %bUnitID32 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bUnitID32, align 1
  %33 = trunc i16 %9 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %33)
  %cmp34 = icmp eq i8 %32, %33
  br i1 %cmp34, label %land.lhs.true30.if.then36_crit_edge, label %land.lhs.true30.do.end77_crit_edge

land.lhs.true30.do.end77_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end77

land.lhs.true30.if.then36_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

if.then36:                                        ; preds = %land.lhs.true30.if.then36_crit_edge, %land.lhs.true.if.then36_crit_edge
  br i1 %tobool16.not, label %lor.lhs.false40, label %if.then36.land.lhs.true44_crit_edge

if.then36.land.lhs.true44_crit_edge:              ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true44

lor.lhs.false40:                                  ; preds = %if.then36
  %p_volume_present41 = getelementptr inbounds %struct.f_uac1_opts, ptr %7, i32 0, i32 8
  %34 = ptrtoint ptr %p_volume_present41 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %p_volume_present41, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool42.not = icmp eq i8 %35, 0
  br i1 %tobool42.not, label %lor.lhs.false40.if.end51_crit_edge, label %lor.lhs.false40.land.lhs.true44_crit_edge

lor.lhs.false40.land.lhs.true44_crit_edge:        ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true44

lor.lhs.false40.if.end51_crit_edge:               ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

land.lhs.true44:                                  ; preds = %lor.lhs.false40.land.lhs.true44_crit_edge, %if.then36.land.lhs.true44_crit_edge
  %36 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID46 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %bUnitID46 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bUnitID46, align 1
  %39 = trunc i16 %9 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %39)
  %cmp48 = icmp eq i8 %38, %39
  %spec.select = zext i1 %cmp48 to i32
  br label %if.end51

if.end51:                                         ; preds = %land.lhs.true44, %lor.lhs.false40.if.end51_crit_edge
  %is_playback.0 = phi i32 [ 0, %lor.lhs.false40.if.end51_crit_edge ], [ %spec.select, %land.lhs.true44 ]
  %trunc = trunc i16 %11 to i8
  %40 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.119)
  switch i8 %trunc, label %do.end67 [
    i8 1, label %if.then55
    i8 2, label %if.then61
  ]

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %req, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  %conv56 = zext i8 %44 to i32
  %call57 = tail call i32 @u_audio_set_mute(ptr noundef %1, i32 noundef %is_playback.0, i32 noundef %conv56) #11
  br label %cleanup84

if.then61:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %req, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %46, align 2
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  %call63 = tail call i32 @u_audio_set_volume(ptr noundef %1, i32 noundef %is_playback.0, i16 noundef signext %49) #11
  br label %cleanup84

do.end67:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %50 = and i16 %11, 255
  %conv52 = zext i16 %50 to i32
  %gadget68 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 1
  %51 = ptrtoint ptr %gadget68 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %gadget68, align 4
  %dev69 = getelementptr inbounds %struct.usb_gadget, ptr %52, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev69, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.99, i32 noundef 633, i32 noundef %conv52) #15
  %call71 = tail call i32 @usb_ep_set_halt(ptr noundef %ep) #11
  br label %cleanup84

do.end77:                                         ; preds = %land.lhs.true30.do.end77_crit_edge, %lor.lhs.false27.do.end77_crit_edge
  %gadget78 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 1
  %53 = ptrtoint ptr %gadget78 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %gadget78, align 4
  %dev79 = getelementptr inbounds %struct.usb_gadget, ptr %54, i32 0, i32 11
  %conv4.mask = and i16 %9, 255
  %conv80 = zext i16 %conv4.mask to i32
  %conv7.mask = and i16 %11, 255
  %conv81 = zext i16 %conv7.mask to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev79, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.99, i32 noundef 639, i32 noundef %conv80, i32 noundef %conv81) #15
  %call82 = tail call i32 @usb_ep_set_halt(ptr noundef %ep) #11
  br label %cleanup84

cleanup84:                                        ; preds = %do.end77, %do.end67, %if.then61, %if.then55, %if.then13, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_set_mute(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_set_volume(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_get_mute(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_get_volume(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !11, !13, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !54, !55, !57, !58, !60, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !87, !89, !91, !92, !93, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !224, !225, !226, !228, !229, !231, !232, !234, !235, !236, !237, !239, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !256, !257, !259, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !275, !276, !278, !279, !280, !282, !283, !285, !286, !287, !289, !290, !292, !293, !294, !296, !297, !299, !300, !301, !303}
!llvm.module.flags = !{!304, !305, !306, !307, !308, !309, !310, !311}
!llvm.ident = !{!312}

!0 = !{ptr @__UNIQUE_ID_alias243, !1, !"__UNIQUE_ID_alias243", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1570, i32 1}
!2 = !{ptr @__initcall__kmod_usb_f_uac1__244_1570_uac1mod_init6, !1, !"__initcall__kmod_usb_f_uac1__244_1570_uac1mod_init6", i1 false, i1 false}
!3 = !{ptr @__exitcall_uac1mod_exit, !1, !"__exitcall_uac1mod_exit", i1 false, i1 false}
!4 = !{ptr @__UNIQUE_ID_file245, !5, !"__UNIQUE_ID_file245", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1571, i32 1}
!6 = !{ptr @__UNIQUE_ID_license246, !5, !"__UNIQUE_ID_license246", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author247, !8, !"__UNIQUE_ID_author247", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1572, i32 1}
!9 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @uac1usb_func, !1, !"uac1usb_func", i1 false, i1 false}
!11 = !{ptr @f_audio_alloc_inst.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1483, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1486, i32 54}
!16 = !{ptr @f_uac1_func_type, !17, !"f_uac1_func_type", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1461, i32 38}
!18 = !{ptr @f_uac1_item_ops, !19, !"f_uac1_item_ops", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1362, i32 40}
!20 = !{ptr @f_uac1_attrs, !21, !"f_uac1_attrs", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1437, i32 35}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1417, i32 1}
!24 = !{ptr @f_uac1_opts_attr_c_chmask, !23, !"f_uac1_opts_attr_c_chmask", i1 false, i1 false}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1370, i32 30}
!27 = distinct !{null, !28, !"u32_fmt", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1370, i32 20}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1418, i32 1}
!31 = !{ptr @f_uac1_opts_attr_c_srate, !30, !"f_uac1_opts_attr_c_srate", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1419, i32 1}
!34 = !{ptr @f_uac1_opts_attr_c_ssize, !33, !"f_uac1_opts_attr_c_ssize", i1 false, i1 false}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1420, i32 1}
!37 = !{ptr @f_uac1_opts_attr_p_chmask, !36, !"f_uac1_opts_attr_p_chmask", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1421, i32 1}
!40 = !{ptr @f_uac1_opts_attr_p_srate, !39, !"f_uac1_opts_attr_p_srate", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1422, i32 1}
!43 = !{ptr @f_uac1_opts_attr_p_ssize, !42, !"f_uac1_opts_attr_p_ssize", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1423, i32 1}
!46 = !{ptr @f_uac1_opts_attr_req_number, !45, !"f_uac1_opts_attr_req_number", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1425, i32 1}
!49 = !{ptr @f_uac1_opts_attr_p_mute_present, !48, !"f_uac1_opts_attr_p_mute_present", i1 false, i1 false}
!50 = distinct !{null, !51, !"bool_fmt", i1 false, i1 false}
!51 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1372, i32 20}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1426, i32 1}
!54 = !{ptr @f_uac1_opts_attr_p_volume_present, !53, !"f_uac1_opts_attr_p_volume_present", i1 false, i1 false}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1427, i32 1}
!57 = !{ptr @f_uac1_opts_attr_p_volume_min, !56, !"f_uac1_opts_attr_p_volume_min", i1 false, i1 false}
!58 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1371, i32 30}
!60 = distinct !{null, !61, !"s16_fmt", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1371, i32 20}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1428, i32 1}
!64 = !{ptr @f_uac1_opts_attr_p_volume_max, !63, !"f_uac1_opts_attr_p_volume_max", i1 false, i1 false}
!65 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1429, i32 1}
!67 = !{ptr @f_uac1_opts_attr_p_volume_res, !66, !"f_uac1_opts_attr_p_volume_res", i1 false, i1 false}
!68 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1431, i32 1}
!70 = !{ptr @f_uac1_opts_attr_c_mute_present, !69, !"f_uac1_opts_attr_c_mute_present", i1 false, i1 false}
!71 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1432, i32 1}
!73 = !{ptr @f_uac1_opts_attr_c_volume_present, !72, !"f_uac1_opts_attr_c_volume_present", i1 false, i1 false}
!74 = !{ptr @.str.19, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1433, i32 1}
!76 = !{ptr @f_uac1_opts_attr_c_volume_min, !75, !"f_uac1_opts_attr_c_volume_min", i1 false, i1 false}
!77 = !{ptr @.str.20, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1434, i32 1}
!79 = !{ptr @f_uac1_opts_attr_c_volume_max, !78, !"f_uac1_opts_attr_c_volume_max", i1 false, i1 false}
!80 = !{ptr @.str.21, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1435, i32 1}
!82 = !{ptr @f_uac1_opts_attr_c_volume_res, !81, !"f_uac1_opts_attr_c_volume_res", i1 false, i1 false}
!83 = !{ptr @.str.22, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1558, i32 28}
!85 = !{ptr @.str.23, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1328, i32 32}
!87 = !{ptr @.str.24, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1328, i32 44}
!89 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1063, i32 3}
!91 = !{ptr @.str.26, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @f_audio_validate_opts._entry, !90, !"_entry", i1 false, i1 false}
!96 = !{ptr @f_audio_validate_opts._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.31, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1066, i32 3}
!99 = !{ptr @f_audio_validate_opts._entry.30, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @f_audio_validate_opts._entry_ptr.32, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1069, i32 3}
!103 = !{ptr @f_audio_validate_opts._entry.33, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @f_audio_validate_opts._entry_ptr.35, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1072, i32 3}
!107 = !{ptr @f_audio_validate_opts._entry.36, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @f_audio_validate_opts._entry_ptr.38, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.40, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1075, i32 3}
!111 = !{ptr @f_audio_validate_opts._entry.39, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @f_audio_validate_opts._entry_ptr.41, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1078, i32 3}
!115 = !{ptr @f_audio_validate_opts._entry.42, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @f_audio_validate_opts._entry_ptr.44, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1081, i32 3}
!119 = !{ptr @f_audio_validate_opts._entry.45, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @f_audio_validate_opts._entry_ptr.47, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1086, i32 3}
!123 = !{ptr @f_audio_validate_opts._entry.48, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @f_audio_validate_opts._entry_ptr.50, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1089, i32 3}
!127 = !{ptr @f_audio_validate_opts._entry.51, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @f_audio_validate_opts._entry_ptr.53, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1092, i32 3}
!131 = !{ptr @f_audio_validate_opts._entry.54, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @f_audio_validate_opts._entry_ptr.56, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1095, i32 3}
!135 = !{ptr @f_audio_validate_opts._entry.57, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @f_audio_validate_opts._entry_ptr.59, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1100, i32 3}
!139 = !{ptr @f_audio_validate_opts._entry.60, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @f_audio_validate_opts._entry_ptr.62, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 1103, i32 3}
!143 = !{ptr @f_audio_validate_opts._entry.63, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @f_audio_validate_opts._entry_ptr.65, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @uac1_strings, !146, !"uac1_strings", i1 false, i1 false}
!146 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 327, i32 35}
!147 = !{ptr @str_uac1, !148, !"str_uac1", i1 false, i1 false}
!148 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 322, i32 34}
!149 = !{ptr @.str.66, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 306, i32 18}
!151 = !{ptr @.str.67, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 307, i32 23}
!153 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 308, i32 32}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 309, i32 22}
!157 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 310, i32 21}
!159 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 311, i32 30}
!161 = !{ptr @.str.72, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 312, i32 22}
!163 = !{ptr @.str.73, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 313, i32 18}
!165 = !{ptr @.str.74, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 314, i32 19}
!167 = !{ptr @.str.75, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 315, i32 27}
!169 = !{ptr @.str.76, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 316, i32 27}
!171 = !{ptr @.str.77, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 317, i32 26}
!173 = !{ptr @.str.78, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 318, i32 26}
!175 = !{ptr @strings_uac1, !176, !"strings_uac1", i1 false, i1 false}
!176 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 305, i32 26}
!177 = !{ptr @ac_header_desc, !178, !"ac_header_desc", i1 false, i1 false}
!178 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 80, i32 42}
!179 = !{ptr @out_feature_unit_desc, !180, !"out_feature_unit_desc", i1 false, i1 false}
!180 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 123, i32 44}
!181 = !{ptr @in_feature_unit_desc, !182, !"in_feature_unit_desc", i1 false, i1 false}
!182 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 122, i32 44}
!183 = !{ptr @ac_interface_desc, !184, !"ac_interface_desc", i1 false, i1 false}
!184 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 71, i32 40}
!185 = !{ptr @usb_out_it_desc, !186, !"usb_out_it_desc", i1 false, i1 false}
!186 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 82, i32 45}
!187 = !{ptr @io_out_ot_desc, !188, !"io_out_ot_desc", i1 false, i1 false}
!188 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 92, i32 47}
!189 = !{ptr @as_out_interface_alt_0_desc, !190, !"as_out_interface_alt_0_desc", i1 false, i1 false}
!190 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 136, i32 40}
!191 = !{ptr @as_out_interface_alt_1_desc, !192, !"as_out_interface_alt_1_desc", i1 false, i1 false}
!192 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 145, i32 40}
!193 = !{ptr @io_in_it_desc, !194, !"io_in_it_desc", i1 false, i1 false}
!194 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 102, i32 45}
!195 = !{ptr @usb_in_ot_desc, !196, !"usb_in_ot_desc", i1 false, i1 false}
!196 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 112, i32 47}
!197 = !{ptr @as_in_interface_alt_0_desc, !198, !"as_in_interface_alt_0_desc", i1 false, i1 false}
!198 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 154, i32 40}
!199 = !{ptr @as_in_interface_alt_1_desc, !200, !"as_in_interface_alt_1_desc", i1 false, i1 false}
!200 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 163, i32 40}
!201 = !{ptr @as_out_type_i_desc, !202, !"as_out_type_i_desc", i1 false, i1 false}
!202 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 193, i32 55}
!203 = !{ptr @as_in_type_i_desc, !204, !"as_in_type_i_desc", i1 false, i1 false}
!204 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 224, i32 55}
!205 = !{ptr @ac_int_ep_desc, !206, !"ac_int_ep_desc", i1 false, i1 false}
!206 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 126, i32 39}
!207 = !{ptr @as_out_ep_desc, !208, !"as_out_ep_desc", i1 false, i1 false}
!208 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 204, i32 39}
!209 = !{ptr @as_in_ep_desc, !210, !"as_in_ep_desc", i1 false, i1 false}
!210 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 235, i32 39}
!211 = !{ptr @as_out_header_desc, !212, !"as_out_header_desc", i1 false, i1 false}
!212 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 173, i32 41}
!213 = !{ptr @as_in_header_desc, !214, !"as_in_header_desc", i1 false, i1 false}
!214 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 182, i32 41}
!215 = !{ptr @as_iso_out_desc, !216, !"as_iso_out_desc", i1 false, i1 false}
!216 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 215, i32 43}
!217 = !{ptr @as_iso_in_desc, !218, !"as_iso_in_desc", i1 false, i1 false}
!218 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 246, i32 43}
!219 = !{ptr @f_audio_desc, !220, !"f_audio_desc", i1 false, i1 false}
!220 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 255, i32 38}
!221 = !{ptr @.str.79, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 831, i32 3}
!223 = !{ptr @.str.80, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @f_audio_set_alt._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @f_audio_set_alt._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @f_audio_set_alt._entry.81, !227, !"_entry", i1 false, i1 false}
!227 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 838, i32 4}
!228 = !{ptr @f_audio_set_alt._entry_ptr.82, !227, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @f_audio_set_alt._entry.83, !230, !"_entry", i1 false, i1 false}
!230 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 867, i32 3}
!231 = !{ptr @f_audio_set_alt._entry_ptr.84, !230, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.85, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 888, i32 3}
!234 = !{ptr @.str.86, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @f_audio_get_alt._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @f_audio_get_alt._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.87, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 799, i32 3}
!239 = !{ptr @.str.88, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @f_audio_setup._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @f_audio_setup._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.89, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 806, i32 3}
!244 = !{ptr @.str.90, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @f_audio_setup.__UNIQUE_ID_ddebug242, !243, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!246 = !{ptr @.str.92, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 813, i32 4}
!248 = !{ptr @f_audio_setup._entry.91, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @f_audio_setup._entry_ptr.93, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.94, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 715, i32 2}
!252 = !{ptr @.str.95, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @audio_set_endpoint_req.__UNIQUE_ID_ddebug240, !251, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!254 = !{ptr @.str.96, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 751, i32 2}
!256 = !{ptr @audio_get_endpoint_req.__UNIQUE_ID_ddebug241, !255, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!257 = !{ptr @.str.97, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 666, i32 3}
!259 = !{ptr @.str.98, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @out_rq_cur._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @out_rq_cur._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.99, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 605, i32 3}
!264 = !{ptr @.str.100, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @out_rq_cur_complete.__UNIQUE_ID_ddebug238, !263, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!266 = !{ptr @.str.101, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 631, i32 4}
!268 = !{ptr @out_rq_cur_complete._entry, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @out_rq_cur_complete._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @out_rq_cur_complete._entry.102, !271, !"_entry", i1 false, i1 false}
!271 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 637, i32 3}
!272 = !{ptr @out_rq_cur_complete._entry_ptr.103, !271, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.104, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 682, i32 2}
!275 = !{ptr @ac_rq_in.__UNIQUE_ID_ddebug239, !274, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!276 = !{ptr @.str.105, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 437, i32 4}
!278 = !{ptr @in_rq_cur._entry, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @in_rq_cur._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @in_rq_cur._entry.106, !281, !"_entry", i1 false, i1 false}
!281 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 442, i32 3}
!282 = !{ptr @in_rq_cur._entry_ptr.107, !281, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.108, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 484, i32 4}
!285 = !{ptr @in_rq_min._entry, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @in_rq_min._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @in_rq_min._entry.109, !288, !"_entry", i1 false, i1 false}
!288 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 489, i32 3}
!289 = !{ptr @in_rq_min._entry_ptr.110, !288, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.111, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 531, i32 4}
!292 = !{ptr @in_rq_max._entry, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @in_rq_max._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @in_rq_max._entry.112, !295, !"_entry", i1 false, i1 false}
!295 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 536, i32 3}
!296 = !{ptr @in_rq_max._entry_ptr.113, !295, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.114, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 578, i32 4}
!299 = !{ptr @in_rq_res._entry, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @in_rq_res._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @in_rq_res._entry.115, !302, !"_entry", i1 false, i1 false}
!302 = !{!"../drivers/usb/gadget/function/f_uac1.c", i32 583, i32 3}
!303 = !{ptr @in_rq_res._entry_ptr.116, !302, !"_entry_ptr", i1 false, i1 false}
!304 = !{i32 1, !"wchar_size", i32 2}
!305 = !{i32 1, !"min_enum_size", i32 4}
!306 = !{i32 8, !"branch-target-enforcement", i32 0}
!307 = !{i32 8, !"sign-return-address", i32 0}
!308 = !{i32 8, !"sign-return-address-all", i32 0}
!309 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!310 = !{i32 7, !"uwtable", i32 1}
!311 = !{i32 7, !"frame-pointer", i32 2}
!312 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!313 = !{!"auto-init"}
!314 = !{i8 0, i8 2}
!315 = !{i64 2149019411, i64 2149019416, i64 2149019429, i64 2149019473, i64 2149019507, i64 2149019528}
!316 = !{i64 2148491469}
!317 = !{i64 2148406754, i64 2148406786, i64 2148406815, i64 2148406849, i64 2148406880, i64 2148406903}
!318 = !{i64 2148491698}
!319 = !{i64 2148408499, i64 2148408525, i64 2148408554, i64 2148408588, i64 2148408619, i64 2148408642}
