; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/f_uac2.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_uac2.c"
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
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.uac_clock_source_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.uac2_input_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i32, i8, i16, i8 }>
%struct.uac2_output_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i16, i8 }>
%struct.uac2_as_header_descriptor = type <{ i8, i8, i8, i8, i8, i8, i32, i8, i32, i8 }>
%struct.uac2_format_type_i_descriptor = type { i8, i8, i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.uac2_ac_header_descriptor = type <{ i8, i8, i8, i16, i8, i16, i8 }>
%struct.uac2_iso_endpoint_descriptor = type { i8, i8, i8, i8, i8, i8, i16 }
%struct.atomic_t = type { i32 }
%struct.f_uac2_opts = type { %struct.usb_function_instance, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i8, i8, i16, i16, i16, i32, i32, i8, %struct.mutex, i32 }
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
%struct.uac2_feature_unit_descriptor = type { i8, i8, i8, i8, i8, [0 x i8] }
%struct.f_uac2 = type { %struct.g_audio, i8, i8, i8, i8, i8, i8, %struct.usb_ctrlrequest, ptr, %struct.atomic_t }
%struct.g_audio = type { %struct.usb_function, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.uac_params }
%struct.uac_params = type { i32, i32, i32, %struct.uac_fu_params, i32, i32, i32, %struct.uac_fu_params, i32, i32 }
%struct.uac_fu_params = type { i32, i8, i8, i16, i16, i16 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.cntrl_range_lay3 = type <{ i16, i32, i32, i32 }>
%struct.cntrl_range_lay2 = type { i16, i16, i16, i16 }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.uac2_interrupt_data_msg = type { i8, i8, i16, i16 }

@__UNIQUE_ID_alias251 = internal constant [30 x i8] c"usb_f_uac2.alias=usbfunc:uac2\00", section ".modinfo", align 1
@uac2usb_func = internal global { %struct.usb_function_driver, [40 x i8] } { %struct.usb_function_driver { ptr @.str, ptr null, %struct.list_head zeroinitializer, ptr @afunc_alloc_inst, ptr @afunc_alloc }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_usb_f_uac2__252_1994_uac2mod_init6 = internal global ptr @uac2mod_init, section ".initcall6.init", align 4
@__exitcall_uac2mod_exit = internal global ptr @uac2mod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file253 = internal constant [55 x i8] c"usb_f_uac2.file=drivers/usb/gadget/function/usb_f_uac2\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [23 x i8] c"usb_f_uac2.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [34 x i8] c"usb_f_uac2.author=Yadwinder Singh\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [34 x i8] c"usb_f_uac2.author=Jaswinder Singh\00", section ".modinfo", align 1
@__UNIQUE_ID_author257 = internal constant [33 x i8] c"usb_f_uac2.author=Ruslan Bilovol\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uac2\00", [27 x i8] zeroinitializer }, align 32
@afunc_alloc_inst.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&opts->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@f_uac2_func_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @f_uac2_item_ops, ptr null, ptr @f_uac2_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@f_uac2_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @f_uac2_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@f_uac2_attrs = internal global { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr @f_uac2_opts_attr_p_chmask, ptr @f_uac2_opts_attr_p_srate, ptr @f_uac2_opts_attr_p_ssize, ptr @f_uac2_opts_attr_c_chmask, ptr @f_uac2_opts_attr_c_srate, ptr @f_uac2_opts_attr_c_ssize, ptr @f_uac2_opts_attr_c_sync, ptr @f_uac2_opts_attr_req_number, ptr @f_uac2_opts_attr_fb_max, ptr @f_uac2_opts_attr_p_mute_present, ptr @f_uac2_opts_attr_p_volume_present, ptr @f_uac2_opts_attr_p_volume_min, ptr @f_uac2_opts_attr_p_volume_max, ptr @f_uac2_opts_attr_p_volume_res, ptr @f_uac2_opts_attr_c_mute_present, ptr @f_uac2_opts_attr_c_volume_present, ptr @f_uac2_opts_attr_c_volume_min, ptr @f_uac2_opts_attr_c_volume_max, ptr @f_uac2_opts_attr_c_volume_res, ptr null], [48 x i8] zeroinitializer }, align 32
@f_uac2_opts_attr_p_chmask = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.3, ptr null, i16 420, ptr @f_uac2_opts_p_chmask_show, ptr @f_uac2_opts_p_chmask_store }, [44 x i8] zeroinitializer }, align 32
@f_uac2_opts_attr_p_srate = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.5, ptr null, i16 420, ptr @f_uac2_opts_p_srate_show, ptr @f_uac2_opts_p_srate_store }, [44 x i8] zeroinitializer }, align 32
@f_uac2_opts_attr_p_ssize = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.6, ptr null, i16 420, ptr @f_uac2_opts_p_ssize_show, ptr @f_uac2_opts_p_ssize_store }, [44 x i8] zeroinitializer }, align 32
@f_uac2_opts_attr_c_chmask = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.7, ptr null, i16 420, ptr @f_uac2_opts_c_chmask_show, ptr @f_uac2_opts_c_chmask_store }, [44 x i8] zeroinitializer }, align 32
@f_uac2_opts_attr_c_srate = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.8, ptr null, i16 420, ptr @f_uac2_opts_c_srate_show, ptr @f_uac2_opts_c_srate_store }, [44 x i8] zeroinitializer }, align 32
@f_uac2_opts_attr_c_ssize = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.9, ptr null, i16 420, ptr @f_uac2_opts_c_ssize_show, ptr @f_uac2_opts_c_ssize_store }, [44 x i8] zeroinitializer }, align 32
@f_uac2_opts_attr_c_sync = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.10, ptr null, i16 420, ptr @f_uac2_opts_c_sync_show, ptr @f_uac2_opts_c_sync_store }, [44 x i8] zeroinitializer }, align 32
@f_uac2_opts_attr_req_number = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.15, ptr null, i16 420, ptr @f_uac2_opts_req_number_show, ptr @f_uac2_opts_req_number_store }, [44 x i8] zeroinitializer }, align 32
@f_uac2_opts_attr_fb_max = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.16, ptr null, i16 420, ptr @f_uac2_opts_fb_max_show, ptr @f_uac2_opts_fb_max_store }, [44 x i8] zeroinitializer }, align 32
@f_uac2_opts_attr_p_mute_present = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.17, ptr null, i16 420, ptr @f_uac2_opts_p_mute_present_show, ptr @f_uac2_opts_p_mute_present_store }, [44 x i8] zeroinitializer }, align 32
@f_uac2_opts_attr_p_volume_present = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.18, ptr null, i16 420, ptr @f_uac2_opts_p_volume_present_show, ptr @f_uac2_opts_p_volume_present_store }, [44 x i8] zeroinitializer }, align 32
@f_uac2_opts_attr_p_volume_min = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.19, ptr null, i16 420, ptr @f_uac2_opts_p_volume_min_show, ptr @f_uac2_opts_p_volume_min_store }, [44 x i8] zeroinitializer }, align 32
@f_uac2_opts_attr_p_volume_max = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.21, ptr null, i16 420, ptr @f_uac2_opts_p_volume_max_show, ptr @f_uac2_opts_p_volume_max_store }, [44 x i8] zeroinitializer }, align 32
@f_uac2_opts_attr_p_volume_res = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.22, ptr null, i16 420, ptr @f_uac2_opts_p_volume_res_show, ptr @f_uac2_opts_p_volume_res_store }, [44 x i8] zeroinitializer }, align 32
@f_uac2_opts_attr_c_mute_present = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.23, ptr null, i16 420, ptr @f_uac2_opts_c_mute_present_show, ptr @f_uac2_opts_c_mute_present_store }, [44 x i8] zeroinitializer }, align 32
@f_uac2_opts_attr_c_volume_present = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.24, ptr null, i16 420, ptr @f_uac2_opts_c_volume_present_show, ptr @f_uac2_opts_c_volume_present_store }, [44 x i8] zeroinitializer }, align 32
@f_uac2_opts_attr_c_volume_min = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.25, ptr null, i16 420, ptr @f_uac2_opts_c_volume_min_show, ptr @f_uac2_opts_c_volume_min_store }, [44 x i8] zeroinitializer }, align 32
@f_uac2_opts_attr_c_volume_max = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.26, ptr null, i16 420, ptr @f_uac2_opts_c_volume_max_show, ptr @f_uac2_opts_c_volume_max_store }, [44 x i8] zeroinitializer }, align 32
@f_uac2_opts_attr_c_volume_res = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.27, ptr null, i16 420, ptr @f_uac2_opts_c_volume_res_show, ptr @f_uac2_opts_c_volume_res_store }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"p_chmask\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"p_srate\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"p_ssize\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"c_chmask\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"c_srate\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"c_ssize\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"c_sync\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"async\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adaptive\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"req_number\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fb_max\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"p_mute_present\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"p_volume_present\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p_volume_min\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%hd\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p_volume_max\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"p_volume_res\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"c_mute_present\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c_volume_present\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"c_volume_min\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"c_volume_max\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"c_volume_res\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"uac2_func\00", [22 x i8] zeroinitializer }, align 32
@fn_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @str_fn, ptr null], [24 x i8] zeroinitializer }, align 32
@out_feature_unit_desc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@in_feature_unit_desc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@iad_desc = internal global { %struct.usb_interface_assoc_descriptor, [24 x i8] } { %struct.usb_interface_assoc_descriptor { i8 8, i8 11, i8 0, i8 3, i8 1, i8 0, i8 32, i8 0 }, [24 x i8] zeroinitializer }, align 32
@std_ac_if_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 1, i8 1, i8 32, i8 0 }, [23 x i8] zeroinitializer }, align 32
@in_clk_src_desc = internal global { %struct.uac_clock_source_descriptor, [24 x i8] } { %struct.uac_clock_source_descriptor { i8 8, i8 36, i8 10, i8 0, i8 1, i8 1, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@out_clk_src_desc = internal global { %struct.uac_clock_source_descriptor, [24 x i8] } { %struct.uac_clock_source_descriptor { i8 8, i8 36, i8 10, i8 0, i8 1, i8 1, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@usb_out_it_desc = internal global { %struct.uac2_input_terminal_descriptor, [47 x i8] } { %struct.uac2_input_terminal_descriptor <{ i8 17, i8 36, i8 2, i8 0, i16 257, i8 0, i8 0, i8 0, i32 0, i8 0, i16 768, i8 0 }>, [47 x i8] zeroinitializer }, align 32
@io_in_it_desc = internal global { %struct.uac2_input_terminal_descriptor, [47 x i8] } { %struct.uac2_input_terminal_descriptor <{ i8 17, i8 36, i8 2, i8 0, i16 258, i8 0, i8 0, i8 0, i32 0, i8 0, i16 768, i8 0 }>, [47 x i8] zeroinitializer }, align 32
@usb_in_ot_desc = internal global { %struct.uac2_output_terminal_descriptor, [20 x i8] } { %struct.uac2_output_terminal_descriptor <{ i8 12, i8 36, i8 3, i8 0, i16 257, i8 0, i8 0, i8 0, i16 768, i8 0 }>, [20 x i8] zeroinitializer }, align 32
@io_out_ot_desc = internal global { %struct.uac2_output_terminal_descriptor, [20 x i8] } { %struct.uac2_output_terminal_descriptor <{ i8 12, i8 36, i8 3, i8 0, i16 259, i8 0, i8 0, i8 0, i16 768, i8 0 }>, [20 x i8] zeroinitializer }, align 32
@std_as_out_if0_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 1, i8 2, i8 32, i8 0 }, [23 x i8] zeroinitializer }, align 32
@std_as_out_if1_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 1, i8 1, i8 1, i8 2, i8 32, i8 0 }, [23 x i8] zeroinitializer }, align 32
@std_as_in_if0_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 1, i8 2, i8 32, i8 0 }, [23 x i8] zeroinitializer }, align 32
@std_as_in_if1_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 1, i8 1, i8 1, i8 2, i8 32, i8 0 }, [23 x i8] zeroinitializer }, align 32
@as_out_hdr_desc = internal global { %struct.uac2_as_header_descriptor, [16 x i8] } { %struct.uac2_as_header_descriptor <{ i8 16, i8 36, i8 1, i8 0, i8 0, i8 1, i32 16777216, i8 0, i32 0, i8 0 }>, [16 x i8] zeroinitializer }, align 32
@as_in_hdr_desc = internal global { %struct.uac2_as_header_descriptor, [16 x i8] } { %struct.uac2_as_header_descriptor <{ i8 16, i8 36, i8 1, i8 0, i8 0, i8 1, i32 16777216, i8 0, i32 0, i8 0 }>, [16 x i8] zeroinitializer }, align 32
@as_out_fmt1_desc = internal global { %struct.uac2_format_type_i_descriptor, [26 x i8] } { %struct.uac2_format_type_i_descriptor { i8 6, i8 36, i8 2, i8 1, i8 0, i8 0 }, [26 x i8] zeroinitializer }, align 32
@as_in_fmt1_desc = internal global { %struct.uac2_format_type_i_descriptor, [26 x i8] } { %struct.uac2_format_type_i_descriptor { i8 6, i8 36, i8 2, i8 1, i8 0, i8 0 }, [26 x i8] zeroinitializer }, align 32
@clksrc_in = internal global { [8 x i8], [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%uHz\00", [27 x i8] zeroinitializer }, align 32
@clksrc_out = internal global { [8 x i8], [24 x i8] } zeroinitializer, align 32
@afunc_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.32, i32 1045, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s:%d Error!\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"afunc_bind\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/usb/gadget/function/f_uac2.c\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@afunc_bind._entry_ptr = internal global ptr @afunc_bind._entry, section ".printk_index", align 4
@afunc_bind._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.32, i32 1057, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@afunc_bind._entry_ptr.36 = internal global ptr @afunc_bind._entry.35, section ".printk_index", align 4
@fs_epout_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 0, i16 0, i8 1, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hs_epout_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 0, i16 0, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_epout_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 0, i16 0, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@afunc_bind._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.32, i32 1086, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@afunc_bind._entry_ptr.38 = internal global ptr @afunc_bind._entry.37, section ".printk_index", align 4
@fs_ep_int_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 1536, i8 1, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@afunc_bind._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.32, i32 1098, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@afunc_bind._entry_ptr.40 = internal global ptr @afunc_bind._entry.39, section ".printk_index", align 4
@fs_epin_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 5, i16 0, i8 1, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@afunc_bind._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.32, i32 1110, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@afunc_bind._entry_ptr.42 = internal global ptr @afunc_bind._entry.41, section ".printk_index", align 4
@afunc_bind._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.32, i32 1117, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@afunc_bind._entry_ptr.44 = internal global ptr @afunc_bind._entry.43, section ".printk_index", align 4
@hs_epin_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 5, i16 0, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@afunc_bind._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.32, i32 1124, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@afunc_bind._entry_ptr.46 = internal global ptr @afunc_bind._entry.45, section ".printk_index", align 4
@afunc_bind._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.32, i32 1131, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@afunc_bind._entry_ptr.48 = internal global ptr @afunc_bind._entry.47, section ".printk_index", align 4
@ss_epin_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 5, i16 0, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@afunc_bind._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.32, i32 1138, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@afunc_bind._entry_ptr.50 = internal global ptr @afunc_bind._entry.49, section ".printk_index", align 4
@afunc_bind._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.32, i32 1145, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@afunc_bind._entry_ptr.52 = internal global ptr @afunc_bind._entry.51, section ".printk_index", align 4
@afunc_bind._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.32, i32 1152, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@afunc_bind._entry_ptr.54 = internal global ptr @afunc_bind._entry.53, section ".printk_index", align 4
@fs_epin_fback_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 17, i16 768, i8 1, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@afunc_bind._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.32, i32 1161, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@afunc_bind._entry_ptr.56 = internal global ptr @afunc_bind._entry.55, section ".printk_index", align 4
@afunc_bind._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.32, i32 1171, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@afunc_bind._entry_ptr.58 = internal global ptr @afunc_bind._entry.57, section ".printk_index", align 4
@ss_epin_desc_comp = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@ss_epout_desc_comp = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@hs_ep_int_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 3, i16 1536, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hs_epin_fback_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 17, i16 1024, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_epin_fback_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 17, i16 1024, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_ep_int_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 1536, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@fs_audio_desc = internal global { [26 x ptr], [56 x i8] } { [26 x ptr] [ptr @iad_desc, ptr @std_ac_if_desc, ptr @ac_hdr_desc, ptr @in_clk_src_desc, ptr @out_clk_src_desc, ptr @usb_out_it_desc, ptr @out_feature_unit_desc, ptr @io_in_it_desc, ptr @usb_in_ot_desc, ptr @in_feature_unit_desc, ptr @io_out_ot_desc, ptr @fs_ep_int_desc, ptr @std_as_out_if0_desc, ptr @std_as_out_if1_desc, ptr @as_out_hdr_desc, ptr @as_out_fmt1_desc, ptr @fs_epout_desc, ptr @as_iso_out_desc, ptr @fs_epin_fback_desc, ptr @std_as_in_if0_desc, ptr @std_as_in_if1_desc, ptr @as_in_hdr_desc, ptr @as_in_fmt1_desc, ptr @fs_epin_desc, ptr @as_iso_in_desc, ptr null], [56 x i8] zeroinitializer }, align 32
@hs_audio_desc = internal global { [26 x ptr], [56 x i8] } { [26 x ptr] [ptr @iad_desc, ptr @std_ac_if_desc, ptr @ac_hdr_desc, ptr @in_clk_src_desc, ptr @out_clk_src_desc, ptr @usb_out_it_desc, ptr @out_feature_unit_desc, ptr @io_in_it_desc, ptr @usb_in_ot_desc, ptr @in_feature_unit_desc, ptr @io_out_ot_desc, ptr @hs_ep_int_desc, ptr @std_as_out_if0_desc, ptr @std_as_out_if1_desc, ptr @as_out_hdr_desc, ptr @as_out_fmt1_desc, ptr @hs_epout_desc, ptr @as_iso_out_desc, ptr @hs_epin_fback_desc, ptr @std_as_in_if0_desc, ptr @std_as_in_if1_desc, ptr @as_in_hdr_desc, ptr @as_in_fmt1_desc, ptr @hs_epin_desc, ptr @as_iso_in_desc, ptr null], [56 x i8] zeroinitializer }, align 32
@ss_audio_desc = internal global { [29 x ptr], [44 x i8] } { [29 x ptr] [ptr @iad_desc, ptr @std_ac_if_desc, ptr @ac_hdr_desc, ptr @in_clk_src_desc, ptr @out_clk_src_desc, ptr @usb_out_it_desc, ptr @out_feature_unit_desc, ptr @io_in_it_desc, ptr @usb_in_ot_desc, ptr @in_feature_unit_desc, ptr @io_out_ot_desc, ptr @ss_ep_int_desc, ptr @std_as_out_if0_desc, ptr @std_as_out_if1_desc, ptr @as_out_hdr_desc, ptr @as_out_fmt1_desc, ptr @ss_epout_desc, ptr @ss_epout_desc_comp, ptr @as_iso_out_desc, ptr @ss_epin_fback_desc, ptr @ss_epin_fback_desc_comp, ptr @std_as_in_if0_desc, ptr @std_as_in_if1_desc, ptr @as_in_hdr_desc, ptr @as_in_fmt1_desc, ptr @ss_epin_desc, ptr @ss_epin_desc_comp, ptr @as_iso_in_desc, ptr null], [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"UAC2 PCM\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UAC2_Gadget\00", [20 x i8] zeroinitializer }, align 32
@afunc_validate_opts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.32, i32 901, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error: no playback and capture channels\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"afunc_validate_opts\00", [44 x i8] zeroinitializer }, align 32
@afunc_validate_opts._entry_ptr = internal global ptr @afunc_validate_opts._entry, section ".printk_index", align 4
@afunc_validate_opts._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.32, i32 904, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error: unsupported playback channels mask\0A\00", [53 x i8] zeroinitializer }, align 32
@afunc_validate_opts._entry_ptr.65 = internal global ptr @afunc_validate_opts._entry.63, section ".printk_index", align 4
@afunc_validate_opts._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.32, i32 907, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error: unsupported capture channels mask\0A\00", [54 x i8] zeroinitializer }, align 32
@afunc_validate_opts._entry_ptr.68 = internal global ptr @afunc_validate_opts._entry.66, section ".printk_index", align 4
@afunc_validate_opts._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.32, i32 910, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error: incorrect playback sample size\0A\00", [57 x i8] zeroinitializer }, align 32
@afunc_validate_opts._entry_ptr.71 = internal global ptr @afunc_validate_opts._entry.69, section ".printk_index", align 4
@afunc_validate_opts._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.62, ptr @.str.32, i32 913, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error: incorrect capture sample size\0A\00", [58 x i8] zeroinitializer }, align 32
@afunc_validate_opts._entry_ptr.74 = internal global ptr @afunc_validate_opts._entry.72, section ".printk_index", align 4
@afunc_validate_opts._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.62, ptr @.str.32, i32 916, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error: incorrect playback sampling rate\0A\00", [55 x i8] zeroinitializer }, align 32
@afunc_validate_opts._entry_ptr.77 = internal global ptr @afunc_validate_opts._entry.75, section ".printk_index", align 4
@afunc_validate_opts._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.62, ptr @.str.32, i32 919, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error: incorrect capture sampling rate\0A\00", [56 x i8] zeroinitializer }, align 32
@afunc_validate_opts._entry_ptr.80 = internal global ptr @afunc_validate_opts._entry.78, section ".printk_index", align 4
@afunc_validate_opts._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.62, ptr @.str.32, i32 924, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error: incorrect playback volume max/min\0A\00", [54 x i8] zeroinitializer }, align 32
@afunc_validate_opts._entry_ptr.83 = internal global ptr @afunc_validate_opts._entry.81, section ".printk_index", align 4
@afunc_validate_opts._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.62, ptr @.str.32, i32 927, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error: incorrect capture volume max/min\0A\00", [55 x i8] zeroinitializer }, align 32
@afunc_validate_opts._entry_ptr.86 = internal global ptr @afunc_validate_opts._entry.84, section ".printk_index", align 4
@afunc_validate_opts._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.62, ptr @.str.32, i32 930, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Error: negative/zero playback volume resolution\0A\00", [47 x i8] zeroinitializer }, align 32
@afunc_validate_opts._entry_ptr.89 = internal global ptr @afunc_validate_opts._entry.87, section ".printk_index", align 4
@afunc_validate_opts._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.62, ptr @.str.32, i32 933, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Error: negative/zero capture volume resolution\0A\00", [48 x i8] zeroinitializer }, align 32
@afunc_validate_opts._entry_ptr.92 = internal global ptr @afunc_validate_opts._entry.90, section ".printk_index", align 4
@afunc_validate_opts._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.62, ptr @.str.32, i32 938, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Error: incorrect playback volume resolution\0A\00", [51 x i8] zeroinitializer }, align 32
@afunc_validate_opts._entry_ptr.95 = internal global ptr @afunc_validate_opts._entry.93, section ".printk_index", align 4
@afunc_validate_opts._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.62, ptr @.str.32, i32 941, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Error: incorrect capture volume resolution\0A\00", [52 x i8] zeroinitializer }, align 32
@afunc_validate_opts._entry_ptr.98 = internal global ptr @afunc_validate_opts._entry.96, section ".printk_index", align 4
@str_fn = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @strings_fn }, [24 x i8] zeroinitializer }, align 32
@strings_fn = internal global { [15 x %struct.usb_string], [40 x i8] } { [15 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.99 }, %struct.usb_string { i8 0, ptr @.str.100 }, %struct.usb_string { i8 0, ptr @clksrc_in }, %struct.usb_string { i8 0, ptr @clksrc_out }, %struct.usb_string { i8 0, ptr @.str.101 }, %struct.usb_string { i8 0, ptr @.str.102 }, %struct.usb_string { i8 0, ptr @.str.103 }, %struct.usb_string { i8 0, ptr @.str.104 }, %struct.usb_string { i8 0, ptr @.str.105 }, %struct.usb_string { i8 0, ptr @.str.106 }, %struct.usb_string { i8 0, ptr @.str.107 }, %struct.usb_string { i8 0, ptr @.str.108 }, %struct.usb_string { i8 0, ptr @.str.109 }, %struct.usb_string { i8 0, ptr @.str.110 }, %struct.usb_string zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Source/Sink\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Topology Control\00", [47 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"USBH Out\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"USBD Out\00", [23 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"USBH In\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"USBD In\00", [24 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Playback Volume\00", [16 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Playback Inactive\00", [46 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Playback Active\00", [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Capture Inactive\00", [47 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Active\00", [17 x i8] zeroinitializer }, align 32
@ac_hdr_desc = internal global { %struct.uac2_ac_header_descriptor, [23 x i8] } { %struct.uac2_ac_header_descriptor <{ i8 9, i8 36, i8 1, i16 2, i8 8, i16 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_epin_fback_desc_comp = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 1024 }, [26 x i8] zeroinitializer }, align 32
@as_iso_out_desc = internal global { %struct.uac2_iso_endpoint_descriptor, [24 x i8] } { %struct.uac2_iso_endpoint_descriptor { i8 8, i8 37, i8 1, i8 0, i8 0, i8 0, i16 0 }, [24 x i8] zeroinitializer }, align 32
@as_iso_in_desc = internal global { %struct.uac2_iso_endpoint_descriptor, [24 x i8] } { %struct.uac2_iso_endpoint_descriptor { i8 8, i8 37, i8 1, i8 0, i8 0, i8 0, i16 0 }, [24 x i8] zeroinitializer }, align 32
@afunc_set_alt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.111, ptr @.str.32, i32 1338, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"afunc_set_alt\00", [18 x i8] zeroinitializer }, align 32
@afunc_set_alt._entry_ptr = internal global ptr @afunc_set_alt._entry, section ".printk_index", align 4
@afunc_set_alt._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.111, ptr @.str.32, i32 1345, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@afunc_set_alt._entry_ptr.113 = internal global ptr @afunc_set_alt._entry.112, section ".printk_index", align 4
@afunc_set_alt._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.111, ptr @.str.32, i32 1374, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@afunc_set_alt._entry_ptr.115 = internal global ptr @afunc_set_alt._entry.114, section ".printk_index", align 4
@afunc_get_alt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.32, i32 1396, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:%d Invalid Interface %d!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"afunc_get_alt\00", [18 x i8] zeroinitializer }, align 32
@afunc_get_alt._entry_ptr = internal global ptr @afunc_get_alt._entry, section ".printk_index", align 4
@afunc_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.118, ptr @.str.32, i32 1701, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"afunc_setup\00", [20 x i8] zeroinitializer }, align 32
@afunc_setup._entry_ptr = internal global ptr @afunc_setup._entry, section ".printk_index", align 4
@afunc_setup._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.118, ptr @.str.32, i32 1709, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@afunc_setup._entry_ptr.120 = internal global ptr @afunc_setup._entry.119, section ".printk_index", align 4
@setup_rq_inf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.121, ptr @.str.32, i32 1672, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"setup_rq_inf\00", [19 x i8] zeroinitializer }, align 32
@setup_rq_inf._entry_ptr = internal global ptr @setup_rq_inf._entry, section ".printk_index", align 4
@in_rq_cur._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.32, i32 1450, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:%d control_selector=%d TODO!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in_rq_cur\00", [22 x i8] zeroinitializer }, align 32
@in_rq_cur._entry_ptr = internal global ptr @in_rq_cur._entry, section ".printk_index", align 4
@in_rq_cur._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.32, i32 1480, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@in_rq_cur._entry_ptr.125 = internal global ptr @in_rq_cur._entry.124, section ".printk_index", align 4
@in_rq_cur._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.123, ptr @.str.32, i32 1485, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d entity_id=%d control_selector=%d TODO!\0A\00", [50 x i8] zeroinitializer }, align 32
@in_rq_cur._entry_ptr.128 = internal global ptr @in_rq_cur._entry.126, section ".printk_index", align 4
@in_rq_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.129, ptr @.str.32, i32 1528, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"in_rq_range\00", [20 x i8] zeroinitializer }, align 32
@in_rq_range._entry_ptr = internal global ptr @in_rq_range._entry, section ".printk_index", align 4
@in_rq_range._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.129, ptr @.str.32, i32 1561, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@in_rq_range._entry_ptr.131 = internal global ptr @in_rq_range._entry.130, section ".printk_index", align 4
@in_rq_range._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.129, ptr @.str.32, i32 1566, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@in_rq_range._entry_ptr.133 = internal global ptr @in_rq_range._entry.132, section ".printk_index", align 4
@out_rq_cur._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.134, ptr @.str.32, i32 1657, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"out_rq_cur\00", [21 x i8] zeroinitializer }, align 32
@out_rq_cur._entry_ptr = internal global ptr @out_rq_cur._entry, section ".printk_index", align 4
@out_rq_cur_complete.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.135, ptr @.str.136, ptr @.str.32, ptr @.str.137, i8 1, i8 -113, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usb_f_uac2\00", [21 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"out_rq_cur_complete\00", [44 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"completion err %d\0A\00", [45 x i8] zeroinitializer }, align 32
@out_rq_cur_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.136, ptr @.str.32, i32 1625, ptr @.str.33, ptr @.str.34 }, [40 x i8] zeroinitializer }, align 32
@out_rq_cur_complete._entry_ptr = internal global ptr @out_rq_cur_complete._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.142 = private unnamed_addr constant [13 x i8] c"uac2usb_func\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1994, i32 1 }
@___asan_gen_.148 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1909, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1912, i32 54 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"f_uac2_func_type\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1887, i32 38 }
@___asan_gen_.160 = private unnamed_addr constant [16 x i8] c"f_uac2_item_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1730, i32 40 }
@___asan_gen_.163 = private unnamed_addr constant [13 x i8] c"f_uac2_attrs\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1861, i32 35 }
@___asan_gen_.166 = private unnamed_addr constant [26 x i8] c"f_uac2_opts_attr_p_chmask\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [25 x i8] c"f_uac2_opts_attr_p_srate\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [25 x i8] c"f_uac2_opts_attr_p_ssize\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [26 x i8] c"f_uac2_opts_attr_c_chmask\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [25 x i8] c"f_uac2_opts_attr_c_srate\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [25 x i8] c"f_uac2_opts_attr_c_ssize\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [24 x i8] c"f_uac2_opts_attr_c_sync\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [28 x i8] c"f_uac2_opts_attr_req_number\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [24 x i8] c"f_uac2_opts_attr_fb_max\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [32 x i8] c"f_uac2_opts_attr_p_mute_present\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [34 x i8] c"f_uac2_opts_attr_p_volume_present\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [30 x i8] c"f_uac2_opts_attr_p_volume_min\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [30 x i8] c"f_uac2_opts_attr_p_volume_max\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [30 x i8] c"f_uac2_opts_attr_p_volume_res\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [32 x i8] c"f_uac2_opts_attr_c_mute_present\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [34 x i8] c"f_uac2_opts_attr_c_volume_present\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [30 x i8] c"f_uac2_opts_attr_c_volume_min\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [30 x i8] c"f_uac2_opts_attr_c_volume_max\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [30 x i8] c"f_uac2_opts_attr_c_volume_res\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1839, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1738, i32 30 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1840, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1841, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1842, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1843, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1845, i32 1 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1844, i32 1 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1846, i32 1 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1859, i32 1 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1848, i32 1 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1849, i32 1 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1850, i32 1 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1739, i32 30 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1851, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1852, i32 1 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1854, i32 1 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1855, i32 1 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1856, i32 1 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1857, i32 1 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1858, i32 1 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1982, i32 28 }
@___asan_gen_.301 = private unnamed_addr constant [11 x i8] c"fn_strings\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 133, i32 35 }
@___asan_gen_.304 = private unnamed_addr constant [22 x i8] c"out_feature_unit_desc\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 242, i32 45 }
@___asan_gen_.307 = private unnamed_addr constant [21 x i8] c"in_feature_unit_desc\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 241, i32 45 }
@___asan_gen_.310 = private unnamed_addr constant [9 x i8] c"iad_desc\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 138, i32 46 }
@___asan_gen_.313 = private unnamed_addr constant [15 x i8] c"std_ac_if_desc\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 150, i32 40 }
@___asan_gen_.316 = private unnamed_addr constant [16 x i8] c"in_clk_src_desc\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 162, i32 43 }
@___asan_gen_.319 = private unnamed_addr constant [17 x i8] c"out_clk_src_desc\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 174, i32 43 }
@___asan_gen_.322 = private unnamed_addr constant [16 x i8] c"usb_out_it_desc\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 186, i32 46 }
@___asan_gen_.325 = private unnamed_addr constant [14 x i8] c"io_in_it_desc\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 200, i32 46 }
@___asan_gen_.328 = private unnamed_addr constant [15 x i8] c"usb_in_ot_desc\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 214, i32 47 }
@___asan_gen_.331 = private unnamed_addr constant [15 x i8] c"io_out_ot_desc\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 228, i32 47 }
@___asan_gen_.334 = private unnamed_addr constant [20 x i8] c"std_as_out_if0_desc\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 286, i32 40 }
@___asan_gen_.337 = private unnamed_addr constant [20 x i8] c"std_as_out_if1_desc\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 298, i32 40 }
@___asan_gen_.340 = private unnamed_addr constant [19 x i8] c"std_as_in_if0_desc\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 420, i32 40 }
@___asan_gen_.343 = private unnamed_addr constant [19 x i8] c"std_as_in_if1_desc\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 432, i32 40 }
@___asan_gen_.346 = private unnamed_addr constant [16 x i8] c"as_out_hdr_desc\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 310, i32 41 }
@___asan_gen_.349 = private unnamed_addr constant [15 x i8] c"as_in_hdr_desc\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 444, i32 41 }
@___asan_gen_.352 = private unnamed_addr constant [17 x i8] c"as_out_fmt1_desc\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 323, i32 45 }
@___asan_gen_.355 = private unnamed_addr constant [16 x i8] c"as_in_fmt1_desc\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 457, i32 45 }
@___asan_gen_.358 = private unnamed_addr constant [10 x i8] c"clksrc_in\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 107, i32 13 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1040, i32 41 }
@___asan_gen_.364 = private unnamed_addr constant [11 x i8] c"clksrc_out\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 108, i32 13 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1045, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1057, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant [14 x i8] c"fs_epout_desc\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 331, i32 39 }
@___asan_gen_.391 = private unnamed_addr constant [14 x i8] c"hs_epout_desc\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 341, i32 39 }
@___asan_gen_.394 = private unnamed_addr constant [14 x i8] c"ss_epout_desc\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 350, i32 39 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1086, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant [15 x i8] c"fs_ep_int_desc\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 256, i32 39 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1098, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant [13 x i8] c"fs_epin_desc\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 465, i32 39 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1110, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1117, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant [13 x i8] c"hs_epin_desc\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 475, i32 39 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1124, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1131, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant [13 x i8] c"ss_epin_desc\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 484, i32 39 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1138, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1145, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1152, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant [19 x i8] c"fs_epin_fback_desc\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 381, i32 39 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1160, i32 5 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1171, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant [18 x i8] c"ss_epin_desc_comp\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 494, i32 41 }
@___asan_gen_.448 = private unnamed_addr constant [19 x i8] c"ss_epout_desc_comp\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 360, i32 41 }
@___asan_gen_.451 = private unnamed_addr constant [15 x i8] c"hs_ep_int_desc\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 266, i32 39 }
@___asan_gen_.454 = private unnamed_addr constant [19 x i8] c"hs_epin_fback_desc\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 391, i32 39 }
@___asan_gen_.457 = private unnamed_addr constant [19 x i8] c"ss_epin_fback_desc\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 400, i32 39 }
@___asan_gen_.460 = private unnamed_addr constant [15 x i8] c"ss_ep_int_desc\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 275, i32 39 }
@___asan_gen_.463 = private unnamed_addr constant [14 x i8] c"fs_audio_desc\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 514, i32 38 }
@___asan_gen_.466 = private unnamed_addr constant [14 x i8] c"hs_audio_desc\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 549, i32 38 }
@___asan_gen_.469 = private unnamed_addr constant [14 x i8] c"ss_audio_desc\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 584, i32 38 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1239, i32 29 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1239, i32 41 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 901, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 904, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 907, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 910, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 913, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 916, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 919, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 924, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 927, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 930, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 933, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 938, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 941, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant [7 x i8] c"str_fn\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 128, i32 34 }
@___asan_gen_.562 = private unnamed_addr constant [11 x i8] c"strings_fn\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 110, i32 26 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 111, i32 18 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 112, i32 20 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 115, i32 19 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 116, i32 18 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 117, i32 19 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 118, i32 18 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 119, i32 18 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 120, i32 19 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 121, i32 24 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 122, i32 24 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 123, i32 23 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 124, i32 23 }
@___asan_gen_.601 = private unnamed_addr constant [12 x i8] c"ac_hdr_desc\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 244, i32 41 }
@___asan_gen_.604 = private unnamed_addr constant [24 x i8] c"ss_epin_fback_desc_comp\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 410, i32 41 }
@___asan_gen_.607 = private unnamed_addr constant [16 x i8] c"as_iso_out_desc\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 369, i32 44 }
@___asan_gen_.610 = private unnamed_addr constant [15 x i8] c"as_iso_in_desc\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 503, i32 44 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1338, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1345, i32 4 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1374, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1394, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1700, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1708, i32 4 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1671, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1448, i32 4 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1478, i32 4 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1483, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1526, i32 4 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1559, i32 4 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1564, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1655, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1597, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.695 = private constant [40 x i8] c"../drivers/usb/gadget/function/f_uac2.c\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.695, i32 1623, i32 4 }
@llvm.compiler.used = appending global [235 x ptr] [ptr @__UNIQUE_ID_alias251, ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__exitcall_uac2mod_exit, ptr @__initcall__kmod_usb_f_uac2__252_1994_uac2mod_init6, ptr @afunc_bind._entry, ptr @afunc_bind._entry.35, ptr @afunc_bind._entry.37, ptr @afunc_bind._entry.39, ptr @afunc_bind._entry.41, ptr @afunc_bind._entry.43, ptr @afunc_bind._entry.45, ptr @afunc_bind._entry.47, ptr @afunc_bind._entry.49, ptr @afunc_bind._entry.51, ptr @afunc_bind._entry.53, ptr @afunc_bind._entry.55, ptr @afunc_bind._entry.57, ptr @afunc_bind._entry_ptr, ptr @afunc_bind._entry_ptr.36, ptr @afunc_bind._entry_ptr.38, ptr @afunc_bind._entry_ptr.40, ptr @afunc_bind._entry_ptr.42, ptr @afunc_bind._entry_ptr.44, ptr @afunc_bind._entry_ptr.46, ptr @afunc_bind._entry_ptr.48, ptr @afunc_bind._entry_ptr.50, ptr @afunc_bind._entry_ptr.52, ptr @afunc_bind._entry_ptr.54, ptr @afunc_bind._entry_ptr.56, ptr @afunc_bind._entry_ptr.58, ptr @afunc_get_alt._entry, ptr @afunc_get_alt._entry_ptr, ptr @afunc_set_alt._entry, ptr @afunc_set_alt._entry.112, ptr @afunc_set_alt._entry.114, ptr @afunc_set_alt._entry_ptr, ptr @afunc_set_alt._entry_ptr.113, ptr @afunc_set_alt._entry_ptr.115, ptr @afunc_setup._entry, ptr @afunc_setup._entry.119, ptr @afunc_setup._entry_ptr, ptr @afunc_setup._entry_ptr.120, ptr @afunc_validate_opts._entry, ptr @afunc_validate_opts._entry.63, ptr @afunc_validate_opts._entry.66, ptr @afunc_validate_opts._entry.69, ptr @afunc_validate_opts._entry.72, ptr @afunc_validate_opts._entry.75, ptr @afunc_validate_opts._entry.78, ptr @afunc_validate_opts._entry.81, ptr @afunc_validate_opts._entry.84, ptr @afunc_validate_opts._entry.87, ptr @afunc_validate_opts._entry.90, ptr @afunc_validate_opts._entry.93, ptr @afunc_validate_opts._entry.96, ptr @afunc_validate_opts._entry_ptr, ptr @afunc_validate_opts._entry_ptr.65, ptr @afunc_validate_opts._entry_ptr.68, ptr @afunc_validate_opts._entry_ptr.71, ptr @afunc_validate_opts._entry_ptr.74, ptr @afunc_validate_opts._entry_ptr.77, ptr @afunc_validate_opts._entry_ptr.80, ptr @afunc_validate_opts._entry_ptr.83, ptr @afunc_validate_opts._entry_ptr.86, ptr @afunc_validate_opts._entry_ptr.89, ptr @afunc_validate_opts._entry_ptr.92, ptr @afunc_validate_opts._entry_ptr.95, ptr @afunc_validate_opts._entry_ptr.98, ptr @in_rq_cur._entry, ptr @in_rq_cur._entry.124, ptr @in_rq_cur._entry.126, ptr @in_rq_cur._entry_ptr, ptr @in_rq_cur._entry_ptr.125, ptr @in_rq_cur._entry_ptr.128, ptr @in_rq_range._entry, ptr @in_rq_range._entry.130, ptr @in_rq_range._entry.132, ptr @in_rq_range._entry_ptr, ptr @in_rq_range._entry_ptr.131, ptr @in_rq_range._entry_ptr.133, ptr @out_rq_cur._entry, ptr @out_rq_cur._entry_ptr, ptr @out_rq_cur_complete._entry, ptr @out_rq_cur_complete._entry_ptr, ptr @setup_rq_inf._entry, ptr @setup_rq_inf._entry_ptr, ptr @uac2mod_exit, ptr @uac2usb_func, ptr @.str, ptr @afunc_alloc_inst.__key, ptr @.str.1, ptr @.str.2, ptr @f_uac2_func_type, ptr @f_uac2_item_ops, ptr @f_uac2_attrs, ptr @f_uac2_opts_attr_p_chmask, ptr @f_uac2_opts_attr_p_srate, ptr @f_uac2_opts_attr_p_ssize, ptr @f_uac2_opts_attr_c_chmask, ptr @f_uac2_opts_attr_c_srate, ptr @f_uac2_opts_attr_c_ssize, ptr @f_uac2_opts_attr_c_sync, ptr @f_uac2_opts_attr_req_number, ptr @f_uac2_opts_attr_fb_max, ptr @f_uac2_opts_attr_p_mute_present, ptr @f_uac2_opts_attr_p_volume_present, ptr @f_uac2_opts_attr_p_volume_min, ptr @f_uac2_opts_attr_p_volume_max, ptr @f_uac2_opts_attr_p_volume_res, ptr @f_uac2_opts_attr_c_mute_present, ptr @f_uac2_opts_attr_c_volume_present, ptr @f_uac2_opts_attr_c_volume_min, ptr @f_uac2_opts_attr_c_volume_max, ptr @f_uac2_opts_attr_c_volume_res, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @fn_strings, ptr @out_feature_unit_desc, ptr @in_feature_unit_desc, ptr @iad_desc, ptr @std_ac_if_desc, ptr @in_clk_src_desc, ptr @out_clk_src_desc, ptr @usb_out_it_desc, ptr @io_in_it_desc, ptr @usb_in_ot_desc, ptr @io_out_ot_desc, ptr @std_as_out_if0_desc, ptr @std_as_out_if1_desc, ptr @std_as_in_if0_desc, ptr @std_as_in_if1_desc, ptr @as_out_hdr_desc, ptr @as_in_hdr_desc, ptr @as_out_fmt1_desc, ptr @as_in_fmt1_desc, ptr @clksrc_in, ptr @.str.29, ptr @clksrc_out, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @fs_epout_desc, ptr @hs_epout_desc, ptr @ss_epout_desc, ptr @fs_ep_int_desc, ptr @fs_epin_desc, ptr @hs_epin_desc, ptr @ss_epin_desc, ptr @fs_epin_fback_desc, ptr @ss_epin_desc_comp, ptr @ss_epout_desc_comp, ptr @hs_ep_int_desc, ptr @hs_epin_fback_desc, ptr @ss_epin_fback_desc, ptr @ss_ep_int_desc, ptr @fs_audio_desc, ptr @hs_audio_desc, ptr @ss_audio_desc, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @str_fn, ptr @strings_fn, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @ac_hdr_desc, ptr @ss_epin_fback_desc_comp, ptr @as_iso_out_desc, ptr @as_iso_in_desc, ptr @.str.111, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.127, ptr @.str.129, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137], section "llvm.metadata"
@0 = internal global [185 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uac2usb_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_alloc_inst.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_func_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_attrs to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_opts_attr_p_chmask to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_opts_attr_p_srate to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_opts_attr_p_ssize to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_opts_attr_c_chmask to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_opts_attr_c_srate to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_opts_attr_c_ssize to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_opts_attr_c_sync to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_opts_attr_req_number to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_opts_attr_fb_max to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_opts_attr_p_mute_present to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_opts_attr_p_volume_present to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_opts_attr_p_volume_min to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_opts_attr_p_volume_max to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_opts_attr_p_volume_res to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_opts_attr_c_mute_present to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_opts_attr_c_volume_present to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_opts_attr_c_volume_min to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_opts_attr_c_volume_max to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uac2_opts_attr_c_volume_res to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fn_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_feature_unit_desc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_feature_unit_desc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iad_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @std_ac_if_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_clk_src_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_clk_src_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_out_it_desc to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_in_it_desc to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_in_ot_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_out_ot_desc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @std_as_out_if0_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @std_as_out_if1_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @std_as_in_if0_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @std_as_in_if1_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_out_hdr_desc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_in_hdr_desc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_out_fmt1_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_in_fmt1_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clksrc_in to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clksrc_out to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_bind._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_epout_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_epout_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_epout_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_bind._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_ep_int_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_bind._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_epin_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_bind._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_bind._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_epin_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_bind._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_bind._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_epin_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_bind._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_bind._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_bind._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_epin_fback_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_bind._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_bind._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_epin_desc_comp to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_epout_desc_comp to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_ep_int_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_epin_fback_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_epin_fback_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_ep_int_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_audio_desc to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_audio_desc to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_audio_desc to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_validate_opts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_validate_opts._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_validate_opts._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_validate_opts._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_validate_opts._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_validate_opts._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_validate_opts._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_validate_opts._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_validate_opts._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_validate_opts._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_validate_opts._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_validate_opts._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_validate_opts._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str_fn to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strings_fn to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac_hdr_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_epin_fback_desc_comp to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_iso_out_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as_iso_in_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_set_alt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_set_alt._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_set_alt._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_get_alt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afunc_setup._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_rq_inf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_rq_cur._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_rq_cur._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_rq_cur._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_rq_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_rq_range._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_rq_range._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_rq_cur._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_rq_cur_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uac2mod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_function_unregister(ptr noundef nonnull @uac2usb_func) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uac2mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_function_register(ptr noundef nonnull @uac2usb_func) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @afunc_alloc_inst() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 252) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %call7.i.i, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @afunc_alloc_inst.__key) #12
  %free_func_inst = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %free_func_inst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @afunc_free_inst, ptr %free_func_inst, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @f_uac2_func_type) #12
  %p_chmask = getelementptr inbounds %struct.f_uac2_opts, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %p_chmask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %p_chmask, align 4
  %p_srate = getelementptr inbounds %struct.f_uac2_opts, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %p_srate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 48000, ptr %p_srate, align 8
  %p_ssize = getelementptr inbounds %struct.f_uac2_opts, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %p_ssize to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %p_ssize, align 4
  %c_chmask = getelementptr inbounds %struct.f_uac2_opts, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %c_chmask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %c_chmask, align 8
  %c_srate = getelementptr inbounds %struct.f_uac2_opts, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %c_srate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 64000, ptr %c_srate, align 4
  %c_ssize = getelementptr inbounds %struct.f_uac2_opts, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %c_ssize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %c_ssize, align 8
  %c_sync = getelementptr inbounds %struct.f_uac2_opts, ptr %call7.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %c_sync to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %c_sync, align 4
  %p_mute_present = getelementptr inbounds %struct.f_uac2_opts, ptr %call7.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %p_mute_present, align 8
  %p_volume_present = getelementptr inbounds %struct.f_uac2_opts, ptr %call7.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %p_volume_present to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %p_volume_present, align 1
  %p_volume_min = getelementptr inbounds %struct.f_uac2_opts, ptr %call7.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %p_volume_min to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -25600, ptr %p_volume_min, align 2
  %p_volume_max = getelementptr inbounds %struct.f_uac2_opts, ptr %call7.i.i, i32 0, i32 11
  %12 = ptrtoint ptr %p_volume_max to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %p_volume_max, align 4
  %p_volume_res = getelementptr inbounds %struct.f_uac2_opts, ptr %call7.i.i, i32 0, i32 12
  %13 = ptrtoint ptr %p_volume_res to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 256, ptr %p_volume_res, align 2
  %c_mute_present = getelementptr inbounds %struct.f_uac2_opts, ptr %call7.i.i, i32 0, i32 13
  %14 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %c_mute_present, align 8
  %c_volume_present = getelementptr inbounds %struct.f_uac2_opts, ptr %call7.i.i, i32 0, i32 14
  %15 = ptrtoint ptr %c_volume_present to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %c_volume_present, align 1
  %c_volume_min = getelementptr inbounds %struct.f_uac2_opts, ptr %call7.i.i, i32 0, i32 15
  %16 = ptrtoint ptr %c_volume_min to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -25600, ptr %c_volume_min, align 2
  %c_volume_max = getelementptr inbounds %struct.f_uac2_opts, ptr %call7.i.i, i32 0, i32 16
  %17 = ptrtoint ptr %c_volume_max to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %c_volume_max, align 4
  %c_volume_res = getelementptr inbounds %struct.f_uac2_opts, ptr %call7.i.i, i32 0, i32 17
  %18 = ptrtoint ptr %c_volume_res to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 256, ptr %c_volume_res, align 2
  %req_number = getelementptr inbounds %struct.f_uac2_opts, ptr %call7.i.i, i32 0, i32 18
  %19 = ptrtoint ptr %req_number to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %req_number, align 8
  %fb_max = getelementptr inbounds %struct.f_uac2_opts, ptr %call7.i.i, i32 0, i32 19
  %20 = ptrtoint ptr %fb_max to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 5, ptr %fb_max, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %do.body ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @afunc_alloc(ptr noundef %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 220) #15
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %fi, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac2_opts, ptr %fi, i32 0, i32 22
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %refcnt, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #12
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.28, ptr %call7.i.i, align 8
  %bind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 9
  %4 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @afunc_bind, ptr %bind, align 4
  %unbind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 10
  %5 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @afunc_unbind, ptr %unbind, align 8
  %set_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 13
  %6 = ptrtoint ptr %set_alt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @afunc_set_alt, ptr %set_alt, align 4
  %get_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 14
  %7 = ptrtoint ptr %get_alt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @afunc_get_alt, ptr %get_alt, align 8
  %disable = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 15
  %8 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @afunc_disable, ptr %disable, align 4
  %setup = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 16
  %9 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @afunc_setup, ptr %setup, align 8
  %free_func = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %free_func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @afunc_free, ptr %free_func, align 4
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
define internal void @afunc_free_inst(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
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
define internal void @f_uac2_attr_release(ptr noundef %item) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_put_function_instance(ptr noundef %item) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_chmask_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %p_chmask = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %p_chmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p_chmask, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_chmask_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #12
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !383
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 22
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
  %p_chmask = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 1
  %5 = ptrtoint ptr %p_chmask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %p_chmask, align 4
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
define internal i32 @f_uac2_opts_p_srate_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %p_srate = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %p_srate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p_srate, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_srate_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #12
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !383
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 22
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
  %p_srate = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 2
  %5 = ptrtoint ptr %p_srate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %p_srate, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_ssize_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %p_ssize = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %p_ssize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p_ssize, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_ssize_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #12
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !383
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 22
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
  %p_ssize = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 3
  %5 = ptrtoint ptr %p_ssize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %p_ssize, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_chmask_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %c_chmask = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %c_chmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_chmask, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_chmask_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #12
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !383
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 22
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
  %c_chmask = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 4
  %5 = ptrtoint ptr %c_chmask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %c_chmask, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_srate_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %c_srate = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %c_srate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_srate, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_srate_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #12
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !383
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 22
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
  %c_srate = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 5
  %5 = ptrtoint ptr %c_srate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %c_srate, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_ssize_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %c_ssize = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 6
  %0 = ptrtoint ptr %c_ssize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_ssize, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_ssize_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #12
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !383
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 22
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
  %c_ssize = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 6
  %5 = ptrtoint ptr %c_ssize to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %c_ssize, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_sync_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %c_sync = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 7
  %0 = ptrtoint ptr %c_sync to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_sync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %switch.selectcmp = icmp eq i32 %1, 8
  %switch.select = select i1 %switch.selectcmp, ptr @.str.12, ptr @.str.13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %switch.selectcmp6 = icmp eq i32 %1, 4
  %switch.select7 = select i1 %switch.selectcmp6, ptr @.str.11, ptr %switch.select
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.14, ptr noundef nonnull %switch.select7)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_sync_store(ptr noundef %item, ptr nocapture noundef readonly %page, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 22
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
  %call1 = tail call i32 @strncmp(ptr noundef %page, ptr noundef nonnull dereferenceable(6) @.str.11, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.end.sink.split_crit_edge, label %if.else

if.end.end.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end.sink.split

if.else:                                          ; preds = %if.end
  %call4 = tail call i32 @strncmp(ptr noundef %page, ptr noundef nonnull dereferenceable(9) @.str.12, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else.end.sink.split_crit_edge, label %if.else.end_crit_edge

if.else.end_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.else.end.sink.split_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %end.sink.split

end.sink.split:                                   ; preds = %if.else.end.sink.split_crit_edge, %if.end.end.sink.split_crit_edge
  %.sink = phi i32 [ 4, %if.end.end.sink.split_crit_edge ], [ 8, %if.else.end.sink.split_crit_edge ]
  %c_sync = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 7
  %2 = ptrtoint ptr %c_sync to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %c_sync, align 4
  br label %end

end:                                              ; preds = %end.sink.split, %if.else.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ -16, %entry.end_crit_edge ], [ -22, %if.else.end_crit_edge ], [ %len, %end.sink.split ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %ret.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_req_number_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %req_number = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 18
  %0 = ptrtoint ptr %req_number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req_number, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_req_number_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #12
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !383
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 22
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
  %req_number = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 18
  %5 = ptrtoint ptr %req_number to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %req_number, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_fb_max_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %fb_max = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 19
  %0 = ptrtoint ptr %fb_max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fb_max, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_fb_max_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #12
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !383
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 22
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
  %fb_max = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 19
  %5 = ptrtoint ptr %fb_max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fb_max, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_mute_present_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %p_mute_present = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 8
  %0 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p_mute_present, align 4, !range !384
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %2)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_mute_present_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num) #12
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %num, align 1, !annotation !383
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 22
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
  %call1 = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %num) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num, align 1, !range !384
  %p_mute_present = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 8
  %5 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %p_mute_present, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_volume_present_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %p_volume_present = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 9
  %0 = ptrtoint ptr %p_volume_present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p_volume_present, align 1, !range !384
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %2)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_volume_present_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num) #12
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %num, align 1, !annotation !383
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 22
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
  %call1 = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %num) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num, align 1, !range !384
  %p_volume_present = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 9
  %5 = ptrtoint ptr %p_volume_present to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %p_volume_present, align 1
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_volume_min_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %p_volume_min = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 10
  %0 = ptrtoint ptr %p_volume_min to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %p_volume_min, align 2
  %conv = sext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.20, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_volume_min_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num) #12
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %num, align 2, !annotation !383
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 22
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
  %call1 = call i32 @kstrtos16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num, align 2
  %p_volume_min = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 10
  %5 = ptrtoint ptr %p_volume_min to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %p_volume_min, align 2
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtos16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_volume_max_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %p_volume_max = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 11
  %0 = ptrtoint ptr %p_volume_max to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %p_volume_max, align 4
  %conv = sext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.20, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_volume_max_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num) #12
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %num, align 2, !annotation !383
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 22
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
  %call1 = call i32 @kstrtos16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num, align 2
  %p_volume_max = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 11
  %5 = ptrtoint ptr %p_volume_max to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %p_volume_max, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_volume_res_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %p_volume_res = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 12
  %0 = ptrtoint ptr %p_volume_res to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %p_volume_res, align 2
  %conv = sext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.20, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_volume_res_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num) #12
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %num, align 2, !annotation !383
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 22
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
  %call1 = call i32 @kstrtos16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num, align 2
  %p_volume_res = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 12
  %5 = ptrtoint ptr %p_volume_res to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %p_volume_res, align 2
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_mute_present_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %c_mute_present = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 13
  %0 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %c_mute_present, align 4, !range !384
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %2)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_mute_present_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num) #12
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %num, align 1, !annotation !383
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 22
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
  %call1 = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %num) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num, align 1, !range !384
  %c_mute_present = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 13
  %5 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %c_mute_present, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_volume_present_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %c_volume_present = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 14
  %0 = ptrtoint ptr %c_volume_present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %c_volume_present, align 1, !range !384
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %2)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_volume_present_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num) #12
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %num, align 1, !annotation !383
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 22
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
  %call1 = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %num) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num, align 1, !range !384
  %c_volume_present = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 14
  %5 = ptrtoint ptr %c_volume_present to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %c_volume_present, align 1
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_volume_min_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %c_volume_min = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 15
  %0 = ptrtoint ptr %c_volume_min to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %c_volume_min, align 2
  %conv = sext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.20, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_volume_min_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num) #12
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %num, align 2, !annotation !383
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 22
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
  %call1 = call i32 @kstrtos16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num, align 2
  %c_volume_min = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 15
  %5 = ptrtoint ptr %c_volume_min to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %c_volume_min, align 2
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_volume_max_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %c_volume_max = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 16
  %0 = ptrtoint ptr %c_volume_max to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %c_volume_max, align 4
  %conv = sext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.20, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_volume_max_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num) #12
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %num, align 2, !annotation !383
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 22
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
  %call1 = call i32 @kstrtos16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num, align 2
  %c_volume_max = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 16
  %5 = ptrtoint ptr %c_volume_max to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %c_volume_max, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_volume_res_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %c_volume_res = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 17
  %0 = ptrtoint ptr %c_volume_res to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %c_volume_res, align 2
  %conv = sext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.20, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_volume_res_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num) #12
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %num, align 2, !annotation !383
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 22
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
  %call1 = call i32 @kstrtos16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num, align 2
  %c_volume_res = getelementptr inbounds %struct.f_uac2_opts, ptr %item, i32 0, i32 17
  %5 = ptrtoint ptr %c_volume_res to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %c_volume_res, align 2
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afunc_bind(ptr noundef %cfg, ptr noundef %fn) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev2 = getelementptr inbounds %struct.usb_configuration, ptr %cfg, i32 0, i32 9
  %0 = ptrtoint ptr %cdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev2, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev4 = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 11
  %fi.i = getelementptr inbounds %struct.usb_function, ptr %fn, i32 0, i32 24
  %4 = ptrtoint ptr %fi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fi.i, align 4
  %p_chmask.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %p_chmask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p_chmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %c_chmask.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %c_chmask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %c_chmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1.not.i = icmp eq i32 %9, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.afunc_validate_opts.exit_crit_edge, label %land.lhs.true.i.if.else8.i_crit_edge

land.lhs.true.i.if.else8.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else8.i

land.lhs.true.i.afunc_validate_opts.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afunc_validate_opts.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %7)
  %tobool3.not.i = icmp ult i32 %7, 134217728
  br i1 %tobool3.not.i, label %if.else.i.if.else8.i_crit_edge, label %if.else.i.afunc_validate_opts.exit_crit_edge

if.else.i.afunc_validate_opts.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afunc_validate_opts.exit

if.else.i.if.else8.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else8.i

if.else8.i:                                       ; preds = %if.else.i.if.else8.i_crit_edge, %land.lhs.true.i.if.else8.i_crit_edge
  %c_chmask9.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %c_chmask9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %c_chmask9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %11)
  %tobool11.not.i = icmp ult i32 %11, 134217728
  br i1 %tobool11.not.i, label %if.else16.i, label %if.else8.i.afunc_validate_opts.exit_crit_edge

if.else8.i.afunc_validate_opts.exit_crit_edge:    ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afunc_validate_opts.exit

if.else16.i:                                      ; preds = %if.else8.i
  %p_ssize.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %p_ssize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %p_ssize.i, align 4
  %14 = add i32 %13, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %14)
  %15 = icmp ult i32 %14, -4
  br i1 %15, label %if.else16.i.afunc_validate_opts.exit_crit_edge, label %if.else23.i

if.else16.i.afunc_validate_opts.exit_crit_edge:   ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afunc_validate_opts.exit

if.else23.i:                                      ; preds = %if.else16.i
  %c_ssize.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 6
  %16 = ptrtoint ptr %c_ssize.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %c_ssize.i, align 4
  %18 = add i32 %17, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %18)
  %19 = icmp ult i32 %18, -4
  br i1 %19, label %if.else23.i.afunc_validate_opts.exit_crit_edge, label %if.else32.i

if.else23.i.afunc_validate_opts.exit_crit_edge:   ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afunc_validate_opts.exit

if.else32.i:                                      ; preds = %if.else23.i
  %p_srate.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 2
  %20 = ptrtoint ptr %p_srate.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %p_srate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool33.not.i = icmp eq i32 %21, 0
  br i1 %tobool33.not.i, label %if.else32.i.afunc_validate_opts.exit_crit_edge, label %if.else38.i

if.else32.i.afunc_validate_opts.exit_crit_edge:   ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afunc_validate_opts.exit

if.else38.i:                                      ; preds = %if.else32.i
  %c_srate.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 5
  %22 = ptrtoint ptr %c_srate.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %c_srate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool39.not.i = icmp eq i32 %23, 0
  br i1 %tobool39.not.i, label %if.else38.i.afunc_validate_opts.exit_crit_edge, label %if.end49.i

if.else38.i.afunc_validate_opts.exit_crit_edge:   ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afunc_validate_opts.exit

if.end49.i:                                       ; preds = %if.else38.i
  %p_volume_max.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 11
  %24 = ptrtoint ptr %p_volume_max.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %p_volume_max.i, align 4
  %conv.i = sext i16 %25 to i32
  %p_volume_min.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 10
  %26 = ptrtoint ptr %p_volume_min.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %p_volume_min.i, align 2
  %conv50.i = sext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp51.not.i = icmp sgt i16 %25, %27
  br i1 %cmp51.not.i, label %if.else57.i, label %if.end49.i.afunc_validate_opts.exit_crit_edge

if.end49.i.afunc_validate_opts.exit_crit_edge:    ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afunc_validate_opts.exit

if.else57.i:                                      ; preds = %if.end49.i
  %c_volume_max.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 16
  %28 = ptrtoint ptr %c_volume_max.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %c_volume_max.i, align 4
  %conv58.i = sext i16 %29 to i32
  %c_volume_min.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 15
  %30 = ptrtoint ptr %c_volume_min.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %c_volume_min.i, align 2
  %conv59.i = sext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %31)
  %cmp60.not.i = icmp sgt i16 %29, %31
  br i1 %cmp60.not.i, label %if.else66.i, label %if.else57.i.afunc_validate_opts.exit_crit_edge

if.else57.i.afunc_validate_opts.exit_crit_edge:   ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afunc_validate_opts.exit

if.else66.i:                                      ; preds = %if.else57.i
  %p_volume_res.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 12
  %32 = ptrtoint ptr %p_volume_res.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %p_volume_res.i, align 2
  %conv67.i = sext i16 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %33)
  %cmp68.i = icmp slt i16 %33, 1
  br i1 %cmp68.i, label %if.else66.i.afunc_validate_opts.exit_crit_edge, label %if.else74.i

if.else66.i.afunc_validate_opts.exit_crit_edge:   ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afunc_validate_opts.exit

if.else74.i:                                      ; preds = %if.else66.i
  %c_volume_res.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 17
  %34 = ptrtoint ptr %c_volume_res.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %c_volume_res.i, align 2
  %conv75.i = sext i16 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %35)
  %cmp76.i = icmp slt i16 %35, 1
  br i1 %cmp76.i, label %if.else74.i.afunc_validate_opts.exit_crit_edge, label %if.end85.i

if.else74.i.afunc_validate_opts.exit_crit_edge:   ; preds = %if.else74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afunc_validate_opts.exit

if.end85.i:                                       ; preds = %if.else74.i
  %sub.i = sub nsw i32 %conv.i, %conv50.i
  %rem.i = srem i32 %sub.i, %conv67.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool92.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool92.not.i, label %if.else97.i, label %if.end85.i.afunc_validate_opts.exit_crit_edge

if.end85.i.afunc_validate_opts.exit_crit_edge:    ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afunc_validate_opts.exit

if.else97.i:                                      ; preds = %if.end85.i
  %sub102.i = sub nsw i32 %conv58.i, %conv59.i
  %rem105.i = srem i32 %sub102.i, %conv75.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem105.i)
  %tobool106.not.i = icmp eq i32 %rem105.i, 0
  br i1 %tobool106.not.i, label %if.end, label %if.else97.i.afunc_validate_opts.exit_crit_edge

if.else97.i.afunc_validate_opts.exit_crit_edge:   ; preds = %if.else97.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %afunc_validate_opts.exit

afunc_validate_opts.exit:                         ; preds = %if.else97.i.afunc_validate_opts.exit_crit_edge, %if.end85.i.afunc_validate_opts.exit_crit_edge, %if.else74.i.afunc_validate_opts.exit_crit_edge, %if.else66.i.afunc_validate_opts.exit_crit_edge, %if.else57.i.afunc_validate_opts.exit_crit_edge, %if.end49.i.afunc_validate_opts.exit_crit_edge, %if.else38.i.afunc_validate_opts.exit_crit_edge, %if.else32.i.afunc_validate_opts.exit_crit_edge, %if.else23.i.afunc_validate_opts.exit_crit_edge, %if.else16.i.afunc_validate_opts.exit_crit_edge, %if.else8.i.afunc_validate_opts.exit_crit_edge, %if.else.i.afunc_validate_opts.exit_crit_edge, %land.lhs.true.i.afunc_validate_opts.exit_crit_edge
  %.str.97.sink.i = phi ptr [ @.str.61, %land.lhs.true.i.afunc_validate_opts.exit_crit_edge ], [ @.str.64, %if.else.i.afunc_validate_opts.exit_crit_edge ], [ @.str.67, %if.else8.i.afunc_validate_opts.exit_crit_edge ], [ @.str.70, %if.else16.i.afunc_validate_opts.exit_crit_edge ], [ @.str.73, %if.else23.i.afunc_validate_opts.exit_crit_edge ], [ @.str.76, %if.else32.i.afunc_validate_opts.exit_crit_edge ], [ @.str.79, %if.else38.i.afunc_validate_opts.exit_crit_edge ], [ @.str.82, %if.end49.i.afunc_validate_opts.exit_crit_edge ], [ @.str.85, %if.else57.i.afunc_validate_opts.exit_crit_edge ], [ @.str.88, %if.else66.i.afunc_validate_opts.exit_crit_edge ], [ @.str.91, %if.else74.i.afunc_validate_opts.exit_crit_edge ], [ @.str.94, %if.end85.i.afunc_validate_opts.exit_crit_edge ], [ @.str.97, %if.else97.i.afunc_validate_opts.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull %.str.97.sink.i) #16
  br label %cleanup

if.end:                                           ; preds = %if.else97.i
  %call7 = tail call ptr @usb_gstrings_attach(ptr noundef %1, ptr noundef nonnull @fn_strings, i32 noundef 15) #12
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %37 = ptrtoint ptr %c_chmask9.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %c_chmask9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.not = icmp eq i32 %38, 0
  br i1 %cmp.not, label %if.end11.if.end20_crit_edge, label %land.lhs.true

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end11
  %c_mute_present = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 13
  %39 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %c_mute_present, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool12.not = icmp eq i8 %40, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %land.lhs.true.while.body.i.i.preheader_crit_edge

land.lhs.true.while.body.i.i.preheader_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.preheader

lor.lhs.false:                                    ; preds = %land.lhs.true
  %c_volume_present = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 14
  %41 = ptrtoint ptr %c_volume_present to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %c_volume_present, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool13.not = icmp eq i8 %42, 0
  br i1 %tobool13.not, label %lor.lhs.false.if.end20_crit_edge, label %lor.lhs.false.while.body.i.i.preheader_crit_edge

lor.lhs.false.while.body.i.i.preheader_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.preheader

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

while.body.i.i.preheader:                         ; preds = %lor.lhs.false.while.body.i.i.preheader_crit_edge, %land.lhs.true.while.body.i.i.preheader_crit_edge
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.i.i.preheader
  %num.06.i.i = phi i32 [ %add.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.i.i.preheader ]
  %chanmask.addr.05.i.i = phi i32 [ %shr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %38, %while.body.i.i.preheader ]
  %and.i.i = and i32 %chanmask.addr.05.i.i, 1
  %add.i.i = add i32 %and.i.i, %num.06.i.i
  %shr.i.i = lshr i32 %chanmask.addr.05.i.i, 1
  %tobool.not.i.i = icmp ult i32 %chanmask.addr.05.i.i, 2
  br i1 %tobool.not.i.i, label %num_channels.exit.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

num_channels.exit.i:                              ; preds = %while.body.i.i
  %phi.bo.i = shl i32 %add.i.i, 2
  %add1.i = add i32 %phi.bo.i, 10
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1.i, i32 noundef 3520) #17
  %tobool.not.i719 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i719, label %build_fu_desc.exit.thread, label %build_fu_desc.exit

build_fu_desc.exit.thread:                        ; preds = %num_channels.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  store ptr null, ptr @out_feature_unit_desc, align 4
  br label %cleanup

build_fu_desc.exit:                               ; preds = %num_channels.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i720 = trunc i32 %add1.i to i8
  %43 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv.i720, ptr %call9.i.i.i, align 128
  %bDescriptorType.i = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %call9.i.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %bDescriptorType.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 36, ptr %bDescriptorType.i, align 1
  %bDescriptorSubtype.i = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %call9.i.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %bDescriptorSubtype.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 6, ptr %bDescriptorSubtype.i, align 2
  store ptr %call9.i.i.i, ptr @out_feature_unit_desc, align 4
  br label %if.end20

if.end20:                                         ; preds = %build_fu_desc.exit, %lor.lhs.false.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  %46 = ptrtoint ptr %p_chmask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %p_chmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp21.not = icmp eq i32 %47, 0
  br i1 %cmp21.not, label %if.end20.if.end32_crit_edge, label %land.lhs.true22

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

land.lhs.true22:                                  ; preds = %if.end20
  %p_mute_present = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 8
  %48 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %p_mute_present, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool23.not = icmp eq i8 %49, 0
  br i1 %tobool23.not, label %lor.lhs.false24, label %land.lhs.true22.while.body.i.i728.preheader_crit_edge

land.lhs.true22.while.body.i.i728.preheader_crit_edge: ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i728.preheader

lor.lhs.false24:                                  ; preds = %land.lhs.true22
  %p_volume_present = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 9
  %50 = ptrtoint ptr %p_volume_present to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %p_volume_present, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool25.not = icmp eq i8 %51, 0
  br i1 %tobool25.not, label %lor.lhs.false24.if.end32_crit_edge, label %lor.lhs.false24.while.body.i.i728.preheader_crit_edge

lor.lhs.false24.while.body.i.i728.preheader_crit_edge: ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i728.preheader

lor.lhs.false24.if.end32_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

while.body.i.i728.preheader:                      ; preds = %lor.lhs.false24.while.body.i.i728.preheader_crit_edge, %land.lhs.true22.while.body.i.i728.preheader_crit_edge
  br label %while.body.i.i728

while.body.i.i728:                                ; preds = %while.body.i.i728.while.body.i.i728_crit_edge, %while.body.i.i728.preheader
  %num.06.i.i722 = phi i32 [ %add.i.i725, %while.body.i.i728.while.body.i.i728_crit_edge ], [ 0, %while.body.i.i728.preheader ]
  %chanmask.addr.05.i.i723 = phi i32 [ %shr.i.i726, %while.body.i.i728.while.body.i.i728_crit_edge ], [ %47, %while.body.i.i728.preheader ]
  %and.i.i724 = and i32 %chanmask.addr.05.i.i723, 1
  %add.i.i725 = add i32 %and.i.i724, %num.06.i.i722
  %shr.i.i726 = lshr i32 %chanmask.addr.05.i.i723, 1
  %tobool.not.i.i727 = icmp ult i32 %chanmask.addr.05.i.i723, 2
  br i1 %tobool.not.i.i727, label %num_channels.exit.i733, label %while.body.i.i728.while.body.i.i728_crit_edge

while.body.i.i728.while.body.i.i728_crit_edge:    ; preds = %while.body.i.i728
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i728

num_channels.exit.i733:                           ; preds = %while.body.i.i728
  %phi.bo.i729 = shl i32 %add.i.i725, 2
  %add1.i732 = add i32 %phi.bo.i729, 10
  %call9.i.i.i757 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1.i732, i32 noundef 3520) #17
  %tobool.not.i760 = icmp eq ptr %call9.i.i.i757, null
  br i1 %tobool.not.i760, label %build_fu_desc.exit766.thread, label %build_fu_desc.exit766

build_fu_desc.exit766.thread:                     ; preds = %num_channels.exit.i733
  call void @__sanitizer_cov_trace_pc() #14
  store ptr null, ptr @in_feature_unit_desc, align 4
  br label %err_free_fu

build_fu_desc.exit766:                            ; preds = %num_channels.exit.i733
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i762 = trunc i32 %add1.i732 to i8
  %52 = ptrtoint ptr %call9.i.i.i757 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv.i762, ptr %call9.i.i.i757, align 128
  %bDescriptorType.i763 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %call9.i.i.i757, i32 0, i32 1
  %53 = ptrtoint ptr %bDescriptorType.i763 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 36, ptr %bDescriptorType.i763, align 1
  %bDescriptorSubtype.i764 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %call9.i.i.i757, i32 0, i32 2
  %54 = ptrtoint ptr %bDescriptorSubtype.i764 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 6, ptr %bDescriptorSubtype.i764, align 2
  store ptr %call9.i.i.i757, ptr @in_feature_unit_desc, align 4
  br label %if.end32

if.end32:                                         ; preds = %build_fu_desc.exit766, %lor.lhs.false24.if.end32_crit_edge, %if.end20.if.end32_crit_edge
  %55 = ptrtoint ptr %call7 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %call7, align 4
  store i8 %56, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @iad_desc, i32 0, i32 7), align 1
  %arrayidx33 = getelementptr %struct.usb_string, ptr %call7, i32 1
  %57 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx33, align 4
  store i8 %58, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_ac_if_desc, i32 0, i32 8), align 1
  %arrayidx35 = getelementptr %struct.usb_string, ptr %call7, i32 2
  %59 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx35, align 4
  store i8 %60, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @in_clk_src_desc, i32 0, i32 7), align 1
  %arrayidx37 = getelementptr %struct.usb_string, ptr %call7, i32 3
  %61 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx37, align 4
  store i8 %62, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @out_clk_src_desc, i32 0, i32 7), align 1
  %arrayidx39 = getelementptr %struct.usb_string, ptr %call7, i32 4
  %63 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx39, align 4
  store i8 %64, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 11), align 1
  %arrayidx41 = getelementptr %struct.usb_string, ptr %call7, i32 5
  %65 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx41, align 4
  store i8 %66, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 11), align 1
  %arrayidx43 = getelementptr %struct.usb_string, ptr %call7, i32 6
  %67 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx43, align 4
  store i8 %68, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 9), align 1
  %arrayidx45 = getelementptr %struct.usb_string, ptr %call7, i32 7
  %69 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx45, align 4
  store i8 %70, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @io_out_ot_desc, i32 0, i32 9), align 1
  %arrayidx47 = getelementptr %struct.usb_string, ptr %call7, i32 10
  %71 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx47, align 4
  store i8 %72, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_as_out_if0_desc, i32 0, i32 8), align 1
  %arrayidx49 = getelementptr %struct.usb_string, ptr %call7, i32 11
  %73 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx49, align 4
  store i8 %74, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_as_out_if1_desc, i32 0, i32 8), align 1
  %arrayidx51 = getelementptr %struct.usb_string, ptr %call7, i32 12
  %75 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx51, align 4
  store i8 %76, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_as_in_if0_desc, i32 0, i32 8), align 1
  %arrayidx53 = getelementptr %struct.usb_string, ptr %call7, i32 13
  %77 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx53, align 4
  store i8 %78, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_as_in_if1_desc, i32 0, i32 8), align 1
  %79 = ptrtoint ptr %c_chmask9.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %c_chmask9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp56.not = icmp eq i32 %80, 0
  br i1 %cmp56.not, label %if.end32.if.end67_crit_edge, label %land.lhs.true57

if.end32.if.end67_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

land.lhs.true57:                                  ; preds = %if.end32
  %c_mute_present58 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 13
  %81 = ptrtoint ptr %c_mute_present58 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %c_mute_present58, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool59.not = icmp eq i8 %82, 0
  br i1 %tobool59.not, label %lor.lhs.false60, label %land.lhs.true57.if.then63_crit_edge

land.lhs.true57.if.then63_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63

lor.lhs.false60:                                  ; preds = %land.lhs.true57
  %c_volume_present61 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 14
  %83 = ptrtoint ptr %c_volume_present61 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %c_volume_present61, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool62.not = icmp eq i8 %84, 0
  br i1 %tobool62.not, label %lor.lhs.false60.if.end67_crit_edge, label %lor.lhs.false60.if.then63_crit_edge

lor.lhs.false60.if.then63_crit_edge:              ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63

lor.lhs.false60.if.end67_crit_edge:               ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then63:                                        ; preds = %lor.lhs.false60.if.then63_crit_edge, %land.lhs.true57.if.then63_crit_edge
  %85 = load ptr, ptr @out_feature_unit_desc, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %85, align 1
  %conv = zext i8 %87 to i32
  %add.ptr = getelementptr i8, ptr %85, i32 %conv
  %add.ptr64 = getelementptr i8, ptr %add.ptr, i32 -1
  %arrayidx65 = getelementptr %struct.usb_string, ptr %call7, i32 9
  %88 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx65, align 4
  %90 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %add.ptr64, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %lor.lhs.false60.if.end67_crit_edge, %if.end32.if.end67_crit_edge
  %91 = ptrtoint ptr %p_chmask.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %p_chmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp69.not = icmp eq i32 %92, 0
  br i1 %cmp69.not, label %if.end67.if.end87_crit_edge, label %land.lhs.true71

if.end67.if.end87_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

land.lhs.true71:                                  ; preds = %if.end67
  %p_mute_present72 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 8
  %93 = ptrtoint ptr %p_mute_present72 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %p_mute_present72, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool73.not = icmp eq i8 %94, 0
  br i1 %tobool73.not, label %lor.lhs.false75, label %land.lhs.true71.if.then79_crit_edge

land.lhs.true71.if.then79_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then79

lor.lhs.false75:                                  ; preds = %land.lhs.true71
  %p_volume_present76 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 9
  %95 = ptrtoint ptr %p_volume_present76 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %p_volume_present76, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool77.not = icmp eq i8 %96, 0
  br i1 %tobool77.not, label %lor.lhs.false75.if.end87_crit_edge, label %lor.lhs.false75.if.then79_crit_edge

lor.lhs.false75.if.then79_crit_edge:              ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then79

lor.lhs.false75.if.end87_crit_edge:               ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then79:                                        ; preds = %lor.lhs.false75.if.then79_crit_edge, %land.lhs.true71.if.then79_crit_edge
  %97 = load ptr, ptr @in_feature_unit_desc, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %97, align 1
  %conv82 = zext i8 %99 to i32
  %add.ptr83 = getelementptr i8, ptr %97, i32 %conv82
  %add.ptr84 = getelementptr i8, ptr %add.ptr83, i32 -1
  %arrayidx85 = getelementptr %struct.usb_string, ptr %call7, i32 8
  %100 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx85, align 4
  %102 = ptrtoint ptr %add.ptr84 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %add.ptr84, align 1
  br label %if.end87

if.end87:                                         ; preds = %if.then79, %lor.lhs.false75.if.end87_crit_edge, %if.end67.if.end87_crit_edge
  %103 = ptrtoint ptr %c_chmask9.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %c_chmask9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not4.i = icmp eq i32 %104, 0
  br i1 %tobool.not4.i, label %if.end87.num_channels.exit_crit_edge, label %if.end87.while.body.i_crit_edge

if.end87.while.body.i_crit_edge:                  ; preds = %if.end87
  br label %while.body.i

if.end87.num_channels.exit_crit_edge:             ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %num_channels.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end87.while.body.i_crit_edge
  %num.06.i = phi i32 [ %add.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end87.while.body.i_crit_edge ]
  %chanmask.addr.05.i = phi i32 [ %shr.i, %while.body.i.while.body.i_crit_edge ], [ %104, %if.end87.while.body.i_crit_edge ]
  %and.i = and i32 %chanmask.addr.05.i, 1
  %add.i = add i32 %and.i, %num.06.i
  %shr.i = lshr i32 %chanmask.addr.05.i, 1
  %tobool.not.i767 = icmp ult i32 %chanmask.addr.05.i, 2
  br i1 %tobool.not.i767, label %while.body.i.num_channels.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.num_channels.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %num_channels.exit

num_channels.exit:                                ; preds = %while.body.i.num_channels.exit_crit_edge, %if.end87.num_channels.exit_crit_edge
  %num.0.lcssa.i = phi i32 [ 0, %if.end87.num_channels.exit_crit_edge ], [ %add.i, %while.body.i.num_channels.exit_crit_edge ]
  %conv90 = trunc i32 %num.0.lcssa.i to i8
  store i8 %conv90, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 7), align 1
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  store i32 %105, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 8), align 1
  %106 = ptrtoint ptr %p_chmask.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %p_chmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not4.i768 = icmp eq i32 %107, 0
  br i1 %tobool.not4.i768, label %num_channels.exit.num_channels.exit777_crit_edge, label %num_channels.exit.while.body.i775_crit_edge

num_channels.exit.while.body.i775_crit_edge:      ; preds = %num_channels.exit
  br label %while.body.i775

num_channels.exit.num_channels.exit777_crit_edge: ; preds = %num_channels.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %num_channels.exit777

while.body.i775:                                  ; preds = %while.body.i775.while.body.i775_crit_edge, %num_channels.exit.while.body.i775_crit_edge
  %num.06.i769 = phi i32 [ %add.i772, %while.body.i775.while.body.i775_crit_edge ], [ 0, %num_channels.exit.while.body.i775_crit_edge ]
  %chanmask.addr.05.i770 = phi i32 [ %shr.i773, %while.body.i775.while.body.i775_crit_edge ], [ %107, %num_channels.exit.while.body.i775_crit_edge ]
  %and.i771 = and i32 %chanmask.addr.05.i770, 1
  %add.i772 = add i32 %and.i771, %num.06.i769
  %shr.i773 = lshr i32 %chanmask.addr.05.i770, 1
  %tobool.not.i774 = icmp ult i32 %chanmask.addr.05.i770, 2
  br i1 %tobool.not.i774, label %while.body.i775.num_channels.exit777_crit_edge, label %while.body.i775.while.body.i775_crit_edge

while.body.i775.while.body.i775_crit_edge:        ; preds = %while.body.i775
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i775

while.body.i775.num_channels.exit777_crit_edge:   ; preds = %while.body.i775
  call void @__sanitizer_cov_trace_pc() #14
  br label %num_channels.exit777

num_channels.exit777:                             ; preds = %while.body.i775.num_channels.exit777_crit_edge, %num_channels.exit.num_channels.exit777_crit_edge
  %num.0.lcssa.i776 = phi i32 [ 0, %num_channels.exit.num_channels.exit777_crit_edge ], [ %add.i772, %while.body.i775.num_channels.exit777_crit_edge ]
  %conv94 = trunc i32 %num.0.lcssa.i776 to i8
  store i8 %conv94, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 7), align 1
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  store i32 %108, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 8), align 1
  br i1 %tobool.not4.i, label %num_channels.exit777.num_channels.exit787_crit_edge, label %num_channels.exit777.while.body.i785_crit_edge

num_channels.exit777.while.body.i785_crit_edge:   ; preds = %num_channels.exit777
  br label %while.body.i785

num_channels.exit777.num_channels.exit787_crit_edge: ; preds = %num_channels.exit777
  call void @__sanitizer_cov_trace_pc() #14
  br label %num_channels.exit787

while.body.i785:                                  ; preds = %while.body.i785.while.body.i785_crit_edge, %num_channels.exit777.while.body.i785_crit_edge
  %num.06.i779 = phi i32 [ %add.i782, %while.body.i785.while.body.i785_crit_edge ], [ 0, %num_channels.exit777.while.body.i785_crit_edge ]
  %chanmask.addr.05.i780 = phi i32 [ %shr.i783, %while.body.i785.while.body.i785_crit_edge ], [ %104, %num_channels.exit777.while.body.i785_crit_edge ]
  %and.i781 = and i32 %chanmask.addr.05.i780, 1
  %add.i782 = add i32 %and.i781, %num.06.i779
  %shr.i783 = lshr i32 %chanmask.addr.05.i780, 1
  %tobool.not.i784 = icmp ult i32 %chanmask.addr.05.i780, 2
  br i1 %tobool.not.i784, label %while.body.i785.num_channels.exit787_crit_edge, label %while.body.i785.while.body.i785_crit_edge

while.body.i785.while.body.i785_crit_edge:        ; preds = %while.body.i785
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i785

while.body.i785.num_channels.exit787_crit_edge:   ; preds = %while.body.i785
  call void @__sanitizer_cov_trace_pc() #14
  br label %num_channels.exit787

num_channels.exit787:                             ; preds = %while.body.i785.num_channels.exit787_crit_edge, %num_channels.exit777.num_channels.exit787_crit_edge
  %num.0.lcssa.i786 = phi i32 [ 0, %num_channels.exit777.num_channels.exit787_crit_edge ], [ %add.i782, %while.body.i785.num_channels.exit787_crit_edge ]
  %conv98 = trunc i32 %num.0.lcssa.i786 to i8
  store i8 %conv98, ptr getelementptr inbounds (%struct.uac2_as_header_descriptor, ptr @as_out_hdr_desc, i32 0, i32 7), align 1
  store i32 %105, ptr getelementptr inbounds (%struct.uac2_as_header_descriptor, ptr @as_out_hdr_desc, i32 0, i32 8), align 1
  br i1 %tobool.not4.i768, label %num_channels.exit787.num_channels.exit797_crit_edge, label %num_channels.exit787.while.body.i795_crit_edge

num_channels.exit787.while.body.i795_crit_edge:   ; preds = %num_channels.exit787
  br label %while.body.i795

num_channels.exit787.num_channels.exit797_crit_edge: ; preds = %num_channels.exit787
  call void @__sanitizer_cov_trace_pc() #14
  br label %num_channels.exit797

while.body.i795:                                  ; preds = %while.body.i795.while.body.i795_crit_edge, %num_channels.exit787.while.body.i795_crit_edge
  %num.06.i789 = phi i32 [ %add.i792, %while.body.i795.while.body.i795_crit_edge ], [ 0, %num_channels.exit787.while.body.i795_crit_edge ]
  %chanmask.addr.05.i790 = phi i32 [ %shr.i793, %while.body.i795.while.body.i795_crit_edge ], [ %107, %num_channels.exit787.while.body.i795_crit_edge ]
  %and.i791 = and i32 %chanmask.addr.05.i790, 1
  %add.i792 = add i32 %and.i791, %num.06.i789
  %shr.i793 = lshr i32 %chanmask.addr.05.i790, 1
  %tobool.not.i794 = icmp ult i32 %chanmask.addr.05.i790, 2
  br i1 %tobool.not.i794, label %while.body.i795.num_channels.exit797_crit_edge, label %while.body.i795.while.body.i795_crit_edge

while.body.i795.while.body.i795_crit_edge:        ; preds = %while.body.i795
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i795

while.body.i795.num_channels.exit797_crit_edge:   ; preds = %while.body.i795
  call void @__sanitizer_cov_trace_pc() #14
  br label %num_channels.exit797

num_channels.exit797:                             ; preds = %while.body.i795.num_channels.exit797_crit_edge, %num_channels.exit787.num_channels.exit797_crit_edge
  %num.0.lcssa.i796 = phi i32 [ 0, %num_channels.exit787.num_channels.exit797_crit_edge ], [ %add.i792, %while.body.i795.num_channels.exit797_crit_edge ]
  %conv102 = trunc i32 %num.0.lcssa.i796 to i8
  store i8 %conv102, ptr getelementptr inbounds (%struct.uac2_as_header_descriptor, ptr @as_in_hdr_desc, i32 0, i32 7), align 1
  store i32 %108, ptr getelementptr inbounds (%struct.uac2_as_header_descriptor, ptr @as_in_hdr_desc, i32 0, i32 8), align 1
  %109 = ptrtoint ptr %c_ssize.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %c_ssize.i, align 4
  %conv104 = trunc i32 %110 to i8
  store i8 %conv104, ptr getelementptr inbounds (%struct.uac2_format_type_i_descriptor, ptr @as_out_fmt1_desc, i32 0, i32 4), align 1
  %conv106 = shl i8 %conv104, 3
  store i8 %conv106, ptr getelementptr inbounds (%struct.uac2_format_type_i_descriptor, ptr @as_out_fmt1_desc, i32 0, i32 5), align 1
  %111 = ptrtoint ptr %p_ssize.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %p_ssize.i, align 4
  %conv107 = trunc i32 %112 to i8
  store i8 %conv107, ptr getelementptr inbounds (%struct.uac2_format_type_i_descriptor, ptr @as_in_fmt1_desc, i32 0, i32 4), align 1
  %conv110 = shl i8 %conv107, 3
  store i8 %conv110, ptr getelementptr inbounds (%struct.uac2_format_type_i_descriptor, ptr @as_in_fmt1_desc, i32 0, i32 5), align 1
  br i1 %tobool.not4.i, label %num_channels.exit797.if.end133_crit_edge, label %land.lhs.true114

num_channels.exit797.if.end133_crit_edge:         ; preds = %num_channels.exit797
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

land.lhs.true114:                                 ; preds = %num_channels.exit797
  %c_mute_present115 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 13
  %113 = ptrtoint ptr %c_mute_present115 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %c_mute_present115, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool116.not = icmp eq i8 %114, 0
  br i1 %tobool116.not, label %lor.lhs.false118, label %land.lhs.true114.if.then122_crit_edge

land.lhs.true114.if.then122_crit_edge:            ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then122

lor.lhs.false118:                                 ; preds = %land.lhs.true114
  %c_volume_present119 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 14
  %115 = ptrtoint ptr %c_volume_present119 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %c_volume_present119, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool120.not = icmp eq i8 %116, 0
  br i1 %tobool120.not, label %lor.lhs.false118.if.end133_crit_edge, label %lor.lhs.false118.if.then122_crit_edge

lor.lhs.false118.if.then122_crit_edge:            ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then122

lor.lhs.false118.if.end133_crit_edge:             ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

if.then122:                                       ; preds = %lor.lhs.false118.if.then122_crit_edge, %land.lhs.true114.if.then122_crit_edge
  %spec.select = phi i32 [ 0, %lor.lhs.false118.if.then122_crit_edge ], [ 50331648, %land.lhs.true114.if.then122_crit_edge ]
  %117 = load ptr, ptr @out_feature_unit_desc, align 4
  %bmaControls = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %117, i32 0, i32 5
  %c_volume_present128 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 14
  %118 = ptrtoint ptr %c_volume_present128 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %c_volume_present128, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool129.not = icmp eq i8 %119, 0
  %120 = or i32 %spec.select, 201326592
  %121 = select i1 %tobool129.not, i32 %spec.select, i32 %120
  %122 = ptrtoint ptr %bmaControls to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %bmaControls, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then122, %lor.lhs.false118.if.end133_crit_edge, %num_channels.exit797.if.end133_crit_edge
  %123 = ptrtoint ptr %p_chmask.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %p_chmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp135.not = icmp eq i32 %124, 0
  br i1 %cmp135.not, label %if.end133.if.end160_crit_edge, label %land.lhs.true137

if.end133.if.end160_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end160

land.lhs.true137:                                 ; preds = %if.end133
  %p_mute_present138 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 8
  %125 = ptrtoint ptr %p_mute_present138 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %p_mute_present138, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool139.not = icmp eq i8 %126, 0
  br i1 %tobool139.not, label %lor.lhs.false141, label %land.lhs.true137.if.then145_crit_edge

land.lhs.true137.if.then145_crit_edge:            ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then145

lor.lhs.false141:                                 ; preds = %land.lhs.true137
  %p_volume_present142 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 9
  %127 = ptrtoint ptr %p_volume_present142 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %p_volume_present142, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool143.not = icmp eq i8 %128, 0
  br i1 %tobool143.not, label %lor.lhs.false141.if.end160_crit_edge, label %lor.lhs.false141.if.then145_crit_edge

lor.lhs.false141.if.then145_crit_edge:            ; preds = %lor.lhs.false141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then145

lor.lhs.false141.if.end160_crit_edge:             ; preds = %lor.lhs.false141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end160

if.then145:                                       ; preds = %lor.lhs.false141.if.then145_crit_edge, %land.lhs.true137.if.then145_crit_edge
  %spec.select718 = phi i32 [ 0, %lor.lhs.false141.if.then145_crit_edge ], [ 50331648, %land.lhs.true137.if.then145_crit_edge ]
  %129 = load ptr, ptr @in_feature_unit_desc, align 4
  %bmaControls147 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %129, i32 0, i32 5
  %p_volume_present155 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 9
  %130 = ptrtoint ptr %p_volume_present155 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %p_volume_present155, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool156.not = icmp eq i8 %131, 0
  %132 = or i32 %spec.select718, 201326592
  %133 = select i1 %tobool156.not, i32 %spec.select718, i32 %132
  %134 = ptrtoint ptr %bmaControls147 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %bmaControls147, align 4
  br label %if.end160

if.end160:                                        ; preds = %if.then145, %lor.lhs.false141.if.end160_crit_edge, %if.end133.if.end160_crit_edge
  %135 = ptrtoint ptr %p_srate.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %p_srate.i, align 4
  %call161 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @clksrc_in, i32 noundef 8, ptr noundef nonnull @.str.29, i32 noundef %136)
  %137 = ptrtoint ptr %c_srate.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %c_srate.i, align 4
  %call162 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @clksrc_out, i32 noundef 8, ptr noundef nonnull @.str.29, i32 noundef %138)
  %call163 = tail call i32 @usb_interface_id(ptr noundef %cfg, ptr noundef %fn) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %cmp164 = icmp slt i32 %call163, 0
  br i1 %cmp164, label %do.end, label %if.end167

do.end:                                           ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1045) #16
  br label %err_free_fu

if.end167:                                        ; preds = %if.end160
  %conv168 = trunc i32 %call163 to i8
  store i8 %conv168, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @iad_desc, i32 0, i32 2), align 1
  store i8 %conv168, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_ac_if_desc, i32 0, i32 2), align 1
  %ac_intf = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 1
  %139 = ptrtoint ptr %ac_intf to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv168, ptr %ac_intf, align 4
  %ac_alt = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 4
  %140 = ptrtoint ptr %ac_alt to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %ac_alt, align 1
  %141 = ptrtoint ptr %c_chmask9.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %c_chmask9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp172.not = icmp eq i32 %142, 0
  br i1 %cmp172.not, label %if.end167.if.end190_crit_edge, label %if.then174

if.end167.if.end190_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end190

if.then174:                                       ; preds = %if.end167
  %call175 = tail call i32 @usb_interface_id(ptr noundef %cfg, ptr noundef %fn) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %cmp176 = icmp slt i32 %call175, 0
  br i1 %cmp176, label %do.end181, label %if.end182

do.end181:                                        ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1057) #16
  br label %err_free_fu

if.end182:                                        ; preds = %if.then174
  %conv183 = trunc i32 %call175 to i8
  store i8 %conv183, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_as_out_if0_desc, i32 0, i32 2), align 1
  store i8 %conv183, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_as_out_if1_desc, i32 0, i32 2), align 1
  %as_out_intf = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 3
  %143 = ptrtoint ptr %as_out_intf to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv183, ptr %as_out_intf, align 2
  %as_out_alt = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 6
  %144 = ptrtoint ptr %as_out_alt to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %as_out_alt, align 1
  %c_sync = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 7
  %145 = ptrtoint ptr %c_sync to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %c_sync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %146)
  %cmp186 = icmp eq i32 %146, 4
  br i1 %cmp186, label %if.then188, label %if.else

if.then188:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #14
  store i8 5, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epout_desc, i32 0, i32 3), align 1
  store i8 5, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epout_desc, i32 0, i32 3), align 1
  store i8 5, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epout_desc, i32 0, i32 3), align 1
  %147 = load i8, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_as_out_if1_desc, i32 0, i32 4), align 1
  %inc = add i8 %147, 1
  store i8 %inc, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_as_out_if1_desc, i32 0, i32 4), align 1
  br label %if.end190

if.else:                                          ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #14
  store i8 9, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epout_desc, i32 0, i32 3), align 1
  store i8 9, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epout_desc, i32 0, i32 3), align 1
  store i8 9, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epout_desc, i32 0, i32 3), align 1
  br label %if.end190

if.end190:                                        ; preds = %if.else, %if.then188, %if.end167.if.end190_crit_edge
  %148 = ptrtoint ptr %p_chmask.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %p_chmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp192.not = icmp eq i32 %149, 0
  br i1 %cmp192.not, label %if.end190.if.end206_crit_edge, label %if.then194

if.end190.if.end206_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end206

if.then194:                                       ; preds = %if.end190
  %call195 = tail call i32 @usb_interface_id(ptr noundef %cfg, ptr noundef %fn) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %cmp196 = icmp slt i32 %call195, 0
  br i1 %cmp196, label %do.end201, label %if.end202

do.end201:                                        ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1086) #16
  br label %err_free_fu

if.end202:                                        ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #14
  %conv203 = trunc i32 %call195 to i8
  store i8 %conv203, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_as_in_if0_desc, i32 0, i32 2), align 1
  store i8 %conv203, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_as_in_if1_desc, i32 0, i32 2), align 1
  %as_in_intf = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 2
  %150 = ptrtoint ptr %as_in_intf to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv203, ptr %as_in_intf, align 1
  %as_in_alt = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 5
  %151 = ptrtoint ptr %as_in_alt to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %as_in_alt, align 4
  br label %if.end206

if.end206:                                        ; preds = %if.end202, %if.end190.if.end206_crit_edge
  %152 = ptrtoint ptr %c_chmask9.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %c_chmask9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp208.not = icmp eq i32 %153, 0
  br i1 %cmp208.not, label %if.end206.lor.lhs.false218_crit_edge, label %land.lhs.true210

if.end206.lor.lhs.false218_crit_edge:             ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false218

land.lhs.true210:                                 ; preds = %if.end206
  %c_mute_present211 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 13
  %154 = ptrtoint ptr %c_mute_present211 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %c_mute_present211, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool212.not = icmp eq i8 %155, 0
  br i1 %tobool212.not, label %lor.lhs.false214, label %land.lhs.true210.if.then230_crit_edge

land.lhs.true210.if.then230_crit_edge:            ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then230

lor.lhs.false214:                                 ; preds = %land.lhs.true210
  %c_volume_present215 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 14
  %156 = ptrtoint ptr %c_volume_present215 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %c_volume_present215, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool216.not = icmp eq i8 %157, 0
  br i1 %tobool216.not, label %lor.lhs.false214.lor.lhs.false218_crit_edge, label %lor.lhs.false214.if.then230_crit_edge

lor.lhs.false214.if.then230_crit_edge:            ; preds = %lor.lhs.false214
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then230

lor.lhs.false214.lor.lhs.false218_crit_edge:      ; preds = %lor.lhs.false214
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false218

lor.lhs.false218:                                 ; preds = %lor.lhs.false214.lor.lhs.false218_crit_edge, %if.end206.lor.lhs.false218_crit_edge
  %158 = ptrtoint ptr %p_chmask.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %p_chmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp220.not = icmp eq i32 %159, 0
  br i1 %cmp220.not, label %lor.lhs.false218.if.end239_crit_edge, label %land.lhs.true222

lor.lhs.false218.if.end239_crit_edge:             ; preds = %lor.lhs.false218
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end239

land.lhs.true222:                                 ; preds = %lor.lhs.false218
  %p_mute_present223 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 8
  %160 = ptrtoint ptr %p_mute_present223 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %p_mute_present223, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool224.not = icmp eq i8 %161, 0
  br i1 %tobool224.not, label %lor.lhs.false226, label %land.lhs.true222.if.then230_crit_edge

land.lhs.true222.if.then230_crit_edge:            ; preds = %land.lhs.true222
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then230

lor.lhs.false226:                                 ; preds = %land.lhs.true222
  %p_volume_present227 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 9
  %162 = ptrtoint ptr %p_volume_present227 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %p_volume_present227, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool228.not = icmp eq i8 %163, 0
  br i1 %tobool228.not, label %lor.lhs.false226.if.end239thread-pre-split_crit_edge, label %lor.lhs.false226.if.then230_crit_edge

lor.lhs.false226.if.then230_crit_edge:            ; preds = %lor.lhs.false226
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then230

lor.lhs.false226.if.end239thread-pre-split_crit_edge: ; preds = %lor.lhs.false226
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end239thread-pre-split

if.then230:                                       ; preds = %lor.lhs.false226.if.then230_crit_edge, %land.lhs.true222.if.then230_crit_edge, %lor.lhs.false214.if.then230_crit_edge, %land.lhs.true210.if.then230_crit_edge
  %call231 = tail call ptr @usb_ep_autoconfig(ptr noundef %3, ptr noundef nonnull @fs_ep_int_desc) #12
  %int_ep = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 8
  %164 = ptrtoint ptr %int_ep to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %call231, ptr %int_ep, align 4
  %tobool233.not = icmp eq ptr %call231, null
  br i1 %tobool233.not, label %do.end237, label %if.end238

do.end237:                                        ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1098) #16
  br label %err_free_fu

if.end238:                                        ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #14
  store i8 1, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_ac_if_desc, i32 0, i32 4), align 1
  br label %if.end239thread-pre-split

if.end239thread-pre-split:                        ; preds = %if.end238, %lor.lhs.false226.if.end239thread-pre-split_crit_edge
  %165 = ptrtoint ptr %p_chmask.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %chmask.0.i.pr = load i32, ptr %p_chmask.i, align 4
  br label %if.end239

if.end239:                                        ; preds = %if.end239thread-pre-split, %lor.lhs.false218.if.end239_crit_edge
  %chmask.0.i = phi i32 [ %chmask.0.i.pr, %if.end239thread-pre-split ], [ 0, %lor.lhs.false218.if.end239_crit_edge ]
  %166 = ptrtoint ptr %p_ssize.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %ssize.0.i = load i32, ptr %p_ssize.i, align 4
  %167 = ptrtoint ptr %p_srate.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %srate.0.i = load i32, ptr %p_srate.i, align 4
  %fb_max.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 19
  %168 = ptrtoint ptr %fb_max.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %fb_max.i, align 4
  %add.i804 = add i32 %169, 1000
  %mul.i = mul i32 %add.i804, %srate.0.i
  %div.i = sdiv i32 %mul.i, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chmask.0.i)
  %tobool.not4.i.i805 = icmp eq i32 %chmask.0.i, 0
  br i1 %tobool.not4.i.i805, label %if.end239.if.end247_crit_edge, label %if.end239.while.body.i.i812_crit_edge

if.end239.while.body.i.i812_crit_edge:            ; preds = %if.end239
  br label %while.body.i.i812

if.end239.if.end247_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end247

while.body.i.i812:                                ; preds = %while.body.i.i812.while.body.i.i812_crit_edge, %if.end239.while.body.i.i812_crit_edge
  %num.06.i.i806 = phi i32 [ %add.i.i809, %while.body.i.i812.while.body.i.i812_crit_edge ], [ 0, %if.end239.while.body.i.i812_crit_edge ]
  %chanmask.addr.05.i.i807 = phi i32 [ %shr.i.i810, %while.body.i.i812.while.body.i.i812_crit_edge ], [ %chmask.0.i, %if.end239.while.body.i.i812_crit_edge ]
  %and.i.i808 = and i32 %chanmask.addr.05.i.i807, 1
  %add.i.i809 = add i32 %and.i.i808, %num.06.i.i806
  %shr.i.i810 = lshr i32 %chanmask.addr.05.i.i807, 1
  %tobool.not.i.i811 = icmp ult i32 %chanmask.addr.05.i.i807, 2
  br i1 %tobool.not.i.i811, label %while.body.i.i812.if.end247_crit_edge, label %while.body.i.i812.while.body.i.i812_crit_edge

while.body.i.i812.while.body.i.i812_crit_edge:    ; preds = %while.body.i.i812
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i812

while.body.i.i812.if.end247_crit_edge:            ; preds = %while.body.i.i812
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end247

if.end247:                                        ; preds = %while.body.i.i812.if.end247_crit_edge, %if.end239.if.end247_crit_edge
  %num.0.lcssa.i.i813 = phi i32 [ 0, %if.end239.if.end247_crit_edge ], [ %add.i.i809, %while.body.i.i812.if.end247_crit_edge ]
  %mul4.i = mul i32 %num.0.lcssa.i.i813, %ssize.0.i
  %170 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epin_desc, i32 0, i32 5), align 1
  %conv.i814 = zext i8 %170 to i32
  %sub.i815 = add nsw i32 %conv.i814, -1
  %div570.i = lshr i32 1000, %sub.i815
  %add6.i = add nsw i32 %div.i, -1
  %sub7.i = add nsw i32 %div570.i, %add6.i
  %div13.i = udiv i32 %sub7.i, %div570.i
  %mul14.i = mul i32 %mul4.i, %div13.i
  %conv36.i = and i32 %mul14.i, 65535
  %171 = tail call i32 @llvm.umin.i32(i32 %conv36.i, i32 1023) #12
  %conv42.i = trunc i32 %171 to i16
  %172 = tail call i16 @llvm.bswap.i16(i16 %conv42.i) #12
  store i16 %172, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epin_desc, i32 0, i32 4), align 1
  %173 = ptrtoint ptr %c_ssize.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %ssize.0.i824 = load i32, ptr %c_ssize.i, align 4
  %174 = ptrtoint ptr %c_srate.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %srate.0.i825 = load i32, ptr %c_srate.i, align 4
  %175 = ptrtoint ptr %c_chmask9.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %chmask.0.i826 = load i32, ptr %c_chmask9.i, align 4
  %c_sync.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 7
  %176 = ptrtoint ptr %c_sync.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %c_sync.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %177)
  %cmp.i827 = icmp eq i32 %177, 4
  br i1 %cmp.i827, label %if.then3.i, label %if.else16.i850

if.then3.i:                                       ; preds = %if.end247
  %mul.i830 = mul i32 %srate.0.i825, %add.i804
  %div.i831 = sdiv i32 %mul.i830, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chmask.0.i826)
  %tobool.not4.i.i832 = icmp eq i32 %chmask.0.i826, 0
  br i1 %tobool.not4.i.i832, label %if.then3.i.num_channels.exit.i849_crit_edge, label %if.then3.i.while.body.i.i839_crit_edge

if.then3.i.while.body.i.i839_crit_edge:           ; preds = %if.then3.i
  br label %while.body.i.i839

if.then3.i.num_channels.exit.i849_crit_edge:      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %num_channels.exit.i849

while.body.i.i839:                                ; preds = %while.body.i.i839.while.body.i.i839_crit_edge, %if.then3.i.while.body.i.i839_crit_edge
  %num.06.i.i833 = phi i32 [ %add.i.i836, %while.body.i.i839.while.body.i.i839_crit_edge ], [ 0, %if.then3.i.while.body.i.i839_crit_edge ]
  %chanmask.addr.05.i.i834 = phi i32 [ %shr.i.i837, %while.body.i.i839.while.body.i.i839_crit_edge ], [ %chmask.0.i826, %if.then3.i.while.body.i.i839_crit_edge ]
  %and.i.i835 = and i32 %chanmask.addr.05.i.i834, 1
  %add.i.i836 = add i32 %and.i.i835, %num.06.i.i833
  %shr.i.i837 = lshr i32 %chanmask.addr.05.i.i834, 1
  %tobool.not.i.i838 = icmp ult i32 %chanmask.addr.05.i.i834, 2
  br i1 %tobool.not.i.i838, label %while.body.i.i839.num_channels.exit.i849_crit_edge, label %while.body.i.i839.while.body.i.i839_crit_edge

while.body.i.i839.while.body.i.i839_crit_edge:    ; preds = %while.body.i.i839
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i839

while.body.i.i839.num_channels.exit.i849_crit_edge: ; preds = %while.body.i.i839
  call void @__sanitizer_cov_trace_pc() #14
  br label %num_channels.exit.i849

num_channels.exit.i849:                           ; preds = %while.body.i.i839.num_channels.exit.i849_crit_edge, %if.then3.i.num_channels.exit.i849_crit_edge
  %num.0.lcssa.i.i840 = phi i32 [ 0, %if.then3.i.num_channels.exit.i849_crit_edge ], [ %add.i.i836, %while.body.i.i839.num_channels.exit.i849_crit_edge ]
  %mul4.i841 = mul i32 %num.0.lcssa.i.i840, %ssize.0.i824
  %178 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epout_desc, i32 0, i32 5), align 1
  %conv.i842 = zext i8 %178 to i32
  %sub.i843 = add nsw i32 %conv.i842, -1
  %div570.i844 = lshr i32 1000, %sub.i843
  %add6.i845 = add nsw i32 %div.i831, -1
  %sub7.i846 = add nsw i32 %add6.i845, %div570.i844
  %div13.i847 = udiv i32 %sub7.i846, %div570.i844
  %mul14.i848 = mul i32 %mul4.i841, %div13.i847
  br label %if.end255

if.else16.i850:                                   ; preds = %if.end247
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chmask.0.i826)
  %tobool.not4.i71.i = icmp eq i32 %chmask.0.i826, 0
  br i1 %tobool.not4.i71.i, label %if.else16.i850.num_channels.exit80.i_crit_edge, label %if.else16.i850.while.body.i78.i_crit_edge

if.else16.i850.while.body.i78.i_crit_edge:        ; preds = %if.else16.i850
  br label %while.body.i78.i

if.else16.i850.num_channels.exit80.i_crit_edge:   ; preds = %if.else16.i850
  call void @__sanitizer_cov_trace_pc() #14
  br label %num_channels.exit80.i

while.body.i78.i:                                 ; preds = %while.body.i78.i.while.body.i78.i_crit_edge, %if.else16.i850.while.body.i78.i_crit_edge
  %num.06.i72.i = phi i32 [ %add.i75.i, %while.body.i78.i.while.body.i78.i_crit_edge ], [ 0, %if.else16.i850.while.body.i78.i_crit_edge ]
  %chanmask.addr.05.i73.i = phi i32 [ %shr.i76.i, %while.body.i78.i.while.body.i78.i_crit_edge ], [ %chmask.0.i826, %if.else16.i850.while.body.i78.i_crit_edge ]
  %and.i74.i = and i32 %chanmask.addr.05.i73.i, 1
  %add.i75.i = add i32 %and.i74.i, %num.06.i72.i
  %shr.i76.i = lshr i32 %chanmask.addr.05.i73.i, 1
  %tobool.not.i77.i = icmp ult i32 %chanmask.addr.05.i73.i, 2
  br i1 %tobool.not.i77.i, label %while.body.i78.i.num_channels.exit80.i_crit_edge, label %while.body.i78.i.while.body.i78.i_crit_edge

while.body.i78.i.while.body.i78.i_crit_edge:      ; preds = %while.body.i78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i78.i

while.body.i78.i.num_channels.exit80.i_crit_edge: ; preds = %while.body.i78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %num_channels.exit80.i

num_channels.exit80.i:                            ; preds = %while.body.i78.i.num_channels.exit80.i_crit_edge, %if.else16.i850.num_channels.exit80.i_crit_edge
  %num.0.lcssa.i79.i = phi i32 [ 0, %if.else16.i850.num_channels.exit80.i_crit_edge ], [ %add.i75.i, %while.body.i78.i.num_channels.exit80.i_crit_edge ]
  %mul18.i = mul i32 %num.0.lcssa.i79.i, %ssize.0.i824
  %179 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epout_desc, i32 0, i32 5), align 1
  %conv20.i = zext i8 %179 to i32
  %sub21.i = add nsw i32 %conv20.i, -1
  %div2369.i = lshr i32 1000, %sub21.i
  %add24.i = add i32 %srate.0.i825, -1
  %sub25.i = add i32 %add24.i, %div2369.i
  %div31.i = udiv i32 %sub25.i, %div2369.i
  %add32.i = add i32 %div31.i, 1
  %mul33.i = mul i32 %mul18.i, %add32.i
  br label %if.end255

if.end255:                                        ; preds = %num_channels.exit80.i, %num_channels.exit.i849
  %max_size_bw.0.in.i = phi i32 [ %mul14.i848, %num_channels.exit.i849 ], [ %mul33.i, %num_channels.exit80.i ]
  %conv36.i851 = and i32 %max_size_bw.0.in.i, 65535
  %180 = tail call i32 @llvm.umin.i32(i32 %conv36.i851, i32 1023) #12
  %conv42.i852 = trunc i32 %180 to i16
  %181 = tail call i16 @llvm.bswap.i16(i16 %conv42.i852) #12
  store i16 %181, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epout_desc, i32 0, i32 4), align 1
  br i1 %tobool.not4.i.i805, label %if.end255.if.end263_crit_edge, label %if.end255.while.body.i.i876_crit_edge

if.end255.while.body.i.i876_crit_edge:            ; preds = %if.end255
  br label %while.body.i.i876

if.end255.if.end263_crit_edge:                    ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end263

while.body.i.i876:                                ; preds = %while.body.i.i876.while.body.i.i876_crit_edge, %if.end255.while.body.i.i876_crit_edge
  %num.06.i.i870 = phi i32 [ %add.i.i873, %while.body.i.i876.while.body.i.i876_crit_edge ], [ 0, %if.end255.while.body.i.i876_crit_edge ]
  %chanmask.addr.05.i.i871 = phi i32 [ %shr.i.i874, %while.body.i.i876.while.body.i.i876_crit_edge ], [ %chmask.0.i, %if.end255.while.body.i.i876_crit_edge ]
  %and.i.i872 = and i32 %chanmask.addr.05.i.i871, 1
  %add.i.i873 = add i32 %and.i.i872, %num.06.i.i870
  %shr.i.i874 = lshr i32 %chanmask.addr.05.i.i871, 1
  %tobool.not.i.i875 = icmp ult i32 %chanmask.addr.05.i.i871, 2
  br i1 %tobool.not.i.i875, label %while.body.i.i876.if.end263_crit_edge, label %while.body.i.i876.while.body.i.i876_crit_edge

while.body.i.i876.while.body.i.i876_crit_edge:    ; preds = %while.body.i.i876
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i876

while.body.i.i876.if.end263_crit_edge:            ; preds = %while.body.i.i876
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end263

if.end263:                                        ; preds = %while.body.i.i876.if.end263_crit_edge, %if.end255.if.end263_crit_edge
  %num.0.lcssa.i.i877 = phi i32 [ 0, %if.end255.if.end263_crit_edge ], [ %add.i.i873, %while.body.i.i876.if.end263_crit_edge ]
  %mul4.i878 = mul i32 %num.0.lcssa.i.i877, %ssize.0.i
  %182 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epin_desc, i32 0, i32 5), align 1
  %conv.i879 = zext i8 %182 to i32
  %sub.i880 = add nsw i32 %conv.i879, -1
  %div570.i881 = lshr i32 8000, %sub.i880
  %sub7.i883 = add nsw i32 %div570.i881, %add6.i
  %div13.i884 = udiv i32 %sub7.i883, %div570.i881
  %mul14.i885 = mul i32 %mul4.i878, %div13.i884
  %conv36.i888 = and i32 %mul14.i885, 65535
  %183 = tail call i32 @llvm.umin.i32(i32 %conv36.i888, i32 1024) #12
  %conv42.i889 = trunc i32 %183 to i16
  %184 = tail call i16 @llvm.bswap.i16(i16 %conv42.i889) #12
  store i16 %184, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epin_desc, i32 0, i32 4), align 1
  br i1 %cmp.i827, label %if.then3.i908, label %if.else16.i927

if.then3.i908:                                    ; preds = %if.end263
  %mul.i905 = mul i32 %srate.0.i825, %add.i804
  %div.i906 = sdiv i32 %mul.i905, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chmask.0.i826)
  %tobool.not4.i.i907 = icmp eq i32 %chmask.0.i826, 0
  br i1 %tobool.not4.i.i907, label %if.then3.i908.num_channels.exit.i925_crit_edge, label %if.then3.i908.while.body.i.i915_crit_edge

if.then3.i908.while.body.i.i915_crit_edge:        ; preds = %if.then3.i908
  br label %while.body.i.i915

if.then3.i908.num_channels.exit.i925_crit_edge:   ; preds = %if.then3.i908
  call void @__sanitizer_cov_trace_pc() #14
  br label %num_channels.exit.i925

while.body.i.i915:                                ; preds = %while.body.i.i915.while.body.i.i915_crit_edge, %if.then3.i908.while.body.i.i915_crit_edge
  %num.06.i.i909 = phi i32 [ %add.i.i912, %while.body.i.i915.while.body.i.i915_crit_edge ], [ 0, %if.then3.i908.while.body.i.i915_crit_edge ]
  %chanmask.addr.05.i.i910 = phi i32 [ %shr.i.i913, %while.body.i.i915.while.body.i.i915_crit_edge ], [ %chmask.0.i826, %if.then3.i908.while.body.i.i915_crit_edge ]
  %and.i.i911 = and i32 %chanmask.addr.05.i.i910, 1
  %add.i.i912 = add i32 %and.i.i911, %num.06.i.i909
  %shr.i.i913 = lshr i32 %chanmask.addr.05.i.i910, 1
  %tobool.not.i.i914 = icmp ult i32 %chanmask.addr.05.i.i910, 2
  br i1 %tobool.not.i.i914, label %while.body.i.i915.num_channels.exit.i925_crit_edge, label %while.body.i.i915.while.body.i.i915_crit_edge

while.body.i.i915.while.body.i.i915_crit_edge:    ; preds = %while.body.i.i915
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i915

while.body.i.i915.num_channels.exit.i925_crit_edge: ; preds = %while.body.i.i915
  call void @__sanitizer_cov_trace_pc() #14
  br label %num_channels.exit.i925

num_channels.exit.i925:                           ; preds = %while.body.i.i915.num_channels.exit.i925_crit_edge, %if.then3.i908.num_channels.exit.i925_crit_edge
  %num.0.lcssa.i.i916 = phi i32 [ 0, %if.then3.i908.num_channels.exit.i925_crit_edge ], [ %add.i.i912, %while.body.i.i915.num_channels.exit.i925_crit_edge ]
  %mul4.i917 = mul i32 %num.0.lcssa.i.i916, %ssize.0.i824
  %185 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epout_desc, i32 0, i32 5), align 1
  %conv.i918 = zext i8 %185 to i32
  %sub.i919 = add nsw i32 %conv.i918, -1
  %div570.i920 = lshr i32 8000, %sub.i919
  %add6.i921 = add nsw i32 %div.i906, -1
  %sub7.i922 = add nsw i32 %add6.i921, %div570.i920
  %div13.i923 = udiv i32 %sub7.i922, %div570.i920
  %mul14.i924 = mul i32 %mul4.i917, %div13.i923
  br label %if.end271

if.else16.i927:                                   ; preds = %if.end263
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chmask.0.i826)
  %tobool.not4.i71.i926 = icmp eq i32 %chmask.0.i826, 0
  br i1 %tobool.not4.i71.i926, label %if.else16.i927.num_channels.exit80.i945_crit_edge, label %if.else16.i927.while.body.i78.i934_crit_edge

if.else16.i927.while.body.i78.i934_crit_edge:     ; preds = %if.else16.i927
  br label %while.body.i78.i934

if.else16.i927.num_channels.exit80.i945_crit_edge: ; preds = %if.else16.i927
  call void @__sanitizer_cov_trace_pc() #14
  br label %num_channels.exit80.i945

while.body.i78.i934:                              ; preds = %while.body.i78.i934.while.body.i78.i934_crit_edge, %if.else16.i927.while.body.i78.i934_crit_edge
  %num.06.i72.i928 = phi i32 [ %add.i75.i931, %while.body.i78.i934.while.body.i78.i934_crit_edge ], [ 0, %if.else16.i927.while.body.i78.i934_crit_edge ]
  %chanmask.addr.05.i73.i929 = phi i32 [ %shr.i76.i932, %while.body.i78.i934.while.body.i78.i934_crit_edge ], [ %chmask.0.i826, %if.else16.i927.while.body.i78.i934_crit_edge ]
  %and.i74.i930 = and i32 %chanmask.addr.05.i73.i929, 1
  %add.i75.i931 = add i32 %and.i74.i930, %num.06.i72.i928
  %shr.i76.i932 = lshr i32 %chanmask.addr.05.i73.i929, 1
  %tobool.not.i77.i933 = icmp ult i32 %chanmask.addr.05.i73.i929, 2
  br i1 %tobool.not.i77.i933, label %while.body.i78.i934.num_channels.exit80.i945_crit_edge, label %while.body.i78.i934.while.body.i78.i934_crit_edge

while.body.i78.i934.while.body.i78.i934_crit_edge: ; preds = %while.body.i78.i934
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i78.i934

while.body.i78.i934.num_channels.exit80.i945_crit_edge: ; preds = %while.body.i78.i934
  call void @__sanitizer_cov_trace_pc() #14
  br label %num_channels.exit80.i945

num_channels.exit80.i945:                         ; preds = %while.body.i78.i934.num_channels.exit80.i945_crit_edge, %if.else16.i927.num_channels.exit80.i945_crit_edge
  %num.0.lcssa.i79.i935 = phi i32 [ 0, %if.else16.i927.num_channels.exit80.i945_crit_edge ], [ %add.i75.i931, %while.body.i78.i934.num_channels.exit80.i945_crit_edge ]
  %mul18.i936 = mul i32 %num.0.lcssa.i79.i935, %ssize.0.i824
  %186 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epout_desc, i32 0, i32 5), align 1
  %conv20.i937 = zext i8 %186 to i32
  %sub21.i938 = add nsw i32 %conv20.i937, -1
  %div2369.i939 = lshr i32 8000, %sub21.i938
  %add24.i940 = add i32 %srate.0.i825, -1
  %sub25.i941 = add i32 %add24.i940, %div2369.i939
  %div31.i942 = udiv i32 %sub25.i941, %div2369.i939
  %add32.i943 = add i32 %div31.i942, 1
  %mul33.i944 = mul i32 %mul18.i936, %add32.i943
  br label %if.end271

if.end271:                                        ; preds = %num_channels.exit80.i945, %num_channels.exit.i925
  %max_size_bw.0.in.i946 = phi i32 [ %mul14.i924, %num_channels.exit.i925 ], [ %mul33.i944, %num_channels.exit80.i945 ]
  %conv36.i947 = and i32 %max_size_bw.0.in.i946, 65535
  %187 = tail call i32 @llvm.umin.i32(i32 %conv36.i947, i32 1024) #12
  %conv42.i948 = trunc i32 %187 to i16
  %188 = tail call i16 @llvm.bswap.i16(i16 %conv42.i948) #12
  store i16 %188, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epout_desc, i32 0, i32 4), align 1
  br i1 %tobool.not4.i.i805, label %if.end271.if.end279_crit_edge, label %if.end271.while.body.i.i972_crit_edge

if.end271.while.body.i.i972_crit_edge:            ; preds = %if.end271
  br label %while.body.i.i972

if.end271.if.end279_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end279

while.body.i.i972:                                ; preds = %while.body.i.i972.while.body.i.i972_crit_edge, %if.end271.while.body.i.i972_crit_edge
  %num.06.i.i966 = phi i32 [ %add.i.i969, %while.body.i.i972.while.body.i.i972_crit_edge ], [ 0, %if.end271.while.body.i.i972_crit_edge ]
  %chanmask.addr.05.i.i967 = phi i32 [ %shr.i.i970, %while.body.i.i972.while.body.i.i972_crit_edge ], [ %chmask.0.i, %if.end271.while.body.i.i972_crit_edge ]
  %and.i.i968 = and i32 %chanmask.addr.05.i.i967, 1
  %add.i.i969 = add i32 %and.i.i968, %num.06.i.i966
  %shr.i.i970 = lshr i32 %chanmask.addr.05.i.i967, 1
  %tobool.not.i.i971 = icmp ult i32 %chanmask.addr.05.i.i967, 2
  br i1 %tobool.not.i.i971, label %while.body.i.i972.if.end279_crit_edge, label %while.body.i.i972.while.body.i.i972_crit_edge

while.body.i.i972.while.body.i.i972_crit_edge:    ; preds = %while.body.i.i972
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i972

while.body.i.i972.if.end279_crit_edge:            ; preds = %while.body.i.i972
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end279

if.end279:                                        ; preds = %while.body.i.i972.if.end279_crit_edge, %if.end271.if.end279_crit_edge
  %num.0.lcssa.i.i973 = phi i32 [ 0, %if.end271.if.end279_crit_edge ], [ %add.i.i969, %while.body.i.i972.if.end279_crit_edge ]
  %mul4.i974 = mul i32 %num.0.lcssa.i.i973, %ssize.0.i
  %189 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epin_desc, i32 0, i32 5), align 1
  %conv.i975 = zext i8 %189 to i32
  %sub.i976 = add nsw i32 %conv.i975, -1
  %div570.i977 = lshr i32 8000, %sub.i976
  %sub7.i979 = add nsw i32 %div570.i977, %add6.i
  %div13.i980 = udiv i32 %sub7.i979, %div570.i977
  %mul14.i981 = mul i32 %mul4.i974, %div13.i980
  %conv36.i984 = and i32 %mul14.i981, 65535
  %190 = tail call i32 @llvm.umin.i32(i32 %conv36.i984, i32 1024) #12
  %conv42.i985 = trunc i32 %190 to i16
  %191 = tail call i16 @llvm.bswap.i16(i16 %conv42.i985) #12
  store i16 %191, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epin_desc, i32 0, i32 4), align 1
  br i1 %cmp.i827, label %if.then3.i1004, label %if.else16.i1023

if.then3.i1004:                                   ; preds = %if.end279
  %mul.i1001 = mul i32 %srate.0.i825, %add.i804
  %div.i1002 = sdiv i32 %mul.i1001, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chmask.0.i826)
  %tobool.not4.i.i1003 = icmp eq i32 %chmask.0.i826, 0
  br i1 %tobool.not4.i.i1003, label %if.then3.i1004.num_channels.exit.i1021_crit_edge, label %if.then3.i1004.while.body.i.i1011_crit_edge

if.then3.i1004.while.body.i.i1011_crit_edge:      ; preds = %if.then3.i1004
  br label %while.body.i.i1011

if.then3.i1004.num_channels.exit.i1021_crit_edge: ; preds = %if.then3.i1004
  call void @__sanitizer_cov_trace_pc() #14
  br label %num_channels.exit.i1021

while.body.i.i1011:                               ; preds = %while.body.i.i1011.while.body.i.i1011_crit_edge, %if.then3.i1004.while.body.i.i1011_crit_edge
  %num.06.i.i1005 = phi i32 [ %add.i.i1008, %while.body.i.i1011.while.body.i.i1011_crit_edge ], [ 0, %if.then3.i1004.while.body.i.i1011_crit_edge ]
  %chanmask.addr.05.i.i1006 = phi i32 [ %shr.i.i1009, %while.body.i.i1011.while.body.i.i1011_crit_edge ], [ %chmask.0.i826, %if.then3.i1004.while.body.i.i1011_crit_edge ]
  %and.i.i1007 = and i32 %chanmask.addr.05.i.i1006, 1
  %add.i.i1008 = add i32 %and.i.i1007, %num.06.i.i1005
  %shr.i.i1009 = lshr i32 %chanmask.addr.05.i.i1006, 1
  %tobool.not.i.i1010 = icmp ult i32 %chanmask.addr.05.i.i1006, 2
  br i1 %tobool.not.i.i1010, label %while.body.i.i1011.num_channels.exit.i1021_crit_edge, label %while.body.i.i1011.while.body.i.i1011_crit_edge

while.body.i.i1011.while.body.i.i1011_crit_edge:  ; preds = %while.body.i.i1011
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i1011

while.body.i.i1011.num_channels.exit.i1021_crit_edge: ; preds = %while.body.i.i1011
  call void @__sanitizer_cov_trace_pc() #14
  br label %num_channels.exit.i1021

num_channels.exit.i1021:                          ; preds = %while.body.i.i1011.num_channels.exit.i1021_crit_edge, %if.then3.i1004.num_channels.exit.i1021_crit_edge
  %num.0.lcssa.i.i1012 = phi i32 [ 0, %if.then3.i1004.num_channels.exit.i1021_crit_edge ], [ %add.i.i1008, %while.body.i.i1011.num_channels.exit.i1021_crit_edge ]
  %mul4.i1013 = mul i32 %num.0.lcssa.i.i1012, %ssize.0.i824
  %192 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epout_desc, i32 0, i32 5), align 1
  %conv.i1014 = zext i8 %192 to i32
  %sub.i1015 = add nsw i32 %conv.i1014, -1
  %div570.i1016 = lshr i32 8000, %sub.i1015
  %add6.i1017 = add nsw i32 %div.i1002, -1
  %sub7.i1018 = add nsw i32 %add6.i1017, %div570.i1016
  %div13.i1019 = udiv i32 %sub7.i1018, %div570.i1016
  %mul14.i1020 = mul i32 %mul4.i1013, %div13.i1019
  br label %if.end287

if.else16.i1023:                                  ; preds = %if.end279
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chmask.0.i826)
  %tobool.not4.i71.i1022 = icmp eq i32 %chmask.0.i826, 0
  br i1 %tobool.not4.i71.i1022, label %if.else16.i1023.num_channels.exit80.i1041_crit_edge, label %if.else16.i1023.while.body.i78.i1030_crit_edge

if.else16.i1023.while.body.i78.i1030_crit_edge:   ; preds = %if.else16.i1023
  br label %while.body.i78.i1030

if.else16.i1023.num_channels.exit80.i1041_crit_edge: ; preds = %if.else16.i1023
  call void @__sanitizer_cov_trace_pc() #14
  br label %num_channels.exit80.i1041

while.body.i78.i1030:                             ; preds = %while.body.i78.i1030.while.body.i78.i1030_crit_edge, %if.else16.i1023.while.body.i78.i1030_crit_edge
  %num.06.i72.i1024 = phi i32 [ %add.i75.i1027, %while.body.i78.i1030.while.body.i78.i1030_crit_edge ], [ 0, %if.else16.i1023.while.body.i78.i1030_crit_edge ]
  %chanmask.addr.05.i73.i1025 = phi i32 [ %shr.i76.i1028, %while.body.i78.i1030.while.body.i78.i1030_crit_edge ], [ %chmask.0.i826, %if.else16.i1023.while.body.i78.i1030_crit_edge ]
  %and.i74.i1026 = and i32 %chanmask.addr.05.i73.i1025, 1
  %add.i75.i1027 = add i32 %and.i74.i1026, %num.06.i72.i1024
  %shr.i76.i1028 = lshr i32 %chanmask.addr.05.i73.i1025, 1
  %tobool.not.i77.i1029 = icmp ult i32 %chanmask.addr.05.i73.i1025, 2
  br i1 %tobool.not.i77.i1029, label %while.body.i78.i1030.num_channels.exit80.i1041_crit_edge, label %while.body.i78.i1030.while.body.i78.i1030_crit_edge

while.body.i78.i1030.while.body.i78.i1030_crit_edge: ; preds = %while.body.i78.i1030
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i78.i1030

while.body.i78.i1030.num_channels.exit80.i1041_crit_edge: ; preds = %while.body.i78.i1030
  call void @__sanitizer_cov_trace_pc() #14
  br label %num_channels.exit80.i1041

num_channels.exit80.i1041:                        ; preds = %while.body.i78.i1030.num_channels.exit80.i1041_crit_edge, %if.else16.i1023.num_channels.exit80.i1041_crit_edge
  %num.0.lcssa.i79.i1031 = phi i32 [ 0, %if.else16.i1023.num_channels.exit80.i1041_crit_edge ], [ %add.i75.i1027, %while.body.i78.i1030.num_channels.exit80.i1041_crit_edge ]
  %mul18.i1032 = mul i32 %num.0.lcssa.i79.i1031, %ssize.0.i824
  %193 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epout_desc, i32 0, i32 5), align 1
  %conv20.i1033 = zext i8 %193 to i32
  %sub21.i1034 = add nsw i32 %conv20.i1033, -1
  %div2369.i1035 = lshr i32 8000, %sub21.i1034
  %add24.i1036 = add i32 %srate.0.i825, -1
  %sub25.i1037 = add i32 %add24.i1036, %div2369.i1035
  %div31.i1038 = udiv i32 %sub25.i1037, %div2369.i1035
  %add32.i1039 = add i32 %div31.i1038, 1
  %mul33.i1040 = mul i32 %mul18.i1032, %add32.i1039
  br label %if.end287

if.end287:                                        ; preds = %num_channels.exit80.i1041, %num_channels.exit.i1021
  %max_size_bw.0.in.i1042 = phi i32 [ %mul14.i1020, %num_channels.exit.i1021 ], [ %mul33.i1040, %num_channels.exit80.i1041 ]
  %conv36.i1043 = and i32 %max_size_bw.0.in.i1042, 65535
  %194 = tail call i32 @llvm.umin.i32(i32 %conv36.i1043, i32 1024) #12
  %conv42.i1044 = trunc i32 %194 to i16
  %195 = tail call i16 @llvm.bswap.i16(i16 %conv42.i1044) #12
  store i16 %195, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epout_desc, i32 0, i32 4), align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chmask.0.i826)
  %cmp289.not = icmp eq i32 %chmask.0.i826, 0
  br i1 %cmp289.not, label %if.end287.if.end313_crit_edge, label %if.then291

if.end287.if.end313_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end313

if.then291:                                       ; preds = %if.end287
  %call292 = tail call ptr @usb_ep_autoconfig(ptr noundef %3, ptr noundef nonnull @fs_epout_desc) #12
  %out_ep = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 3
  %196 = ptrtoint ptr %out_ep to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %call292, ptr %out_ep, align 4
  %tobool294.not = icmp eq ptr %call292, null
  br i1 %tobool294.not, label %do.end298, label %if.end299

do.end298:                                        ; preds = %if.then291
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1152) #16
  br label %err_free_fu

if.end299:                                        ; preds = %if.then291
  %197 = ptrtoint ptr %c_sync.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %c_sync.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %198)
  %cmp301 = icmp eq i32 %198, 4
  br i1 %cmp301, label %if.then303, label %if.end299.if.end313_crit_edge

if.end299.if.end313_crit_edge:                    ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end313

if.then303:                                       ; preds = %if.end299
  %call304 = tail call ptr @usb_ep_autoconfig(ptr noundef %3, ptr noundef nonnull @fs_epin_fback_desc) #12
  %in_ep_fback = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 4
  %199 = ptrtoint ptr %in_ep_fback to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %call304, ptr %in_ep_fback, align 4
  %tobool306.not = icmp eq ptr %call304, null
  br i1 %tobool306.not, label %do.end310, label %if.then303.if.end313_crit_edge

if.then303.if.end313_crit_edge:                   ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end313

do.end310:                                        ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1161) #16
  br label %err_free_fu

if.end313:                                        ; preds = %if.then303.if.end313_crit_edge, %if.end299.if.end313_crit_edge, %if.end287.if.end313_crit_edge
  %200 = ptrtoint ptr %p_chmask.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %p_chmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %cmp315.not = icmp eq i32 %201, 0
  br i1 %cmp315.not, label %if.end313.if.end326_crit_edge, label %if.then317

if.end313.if.end326_crit_edge:                    ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end326

if.then317:                                       ; preds = %if.end313
  %call318 = tail call ptr @usb_ep_autoconfig(ptr noundef %3, ptr noundef nonnull @fs_epin_desc) #12
  %in_ep = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 2
  %202 = ptrtoint ptr %in_ep to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %call318, ptr %in_ep, align 4
  %tobool320.not = icmp eq ptr %call318, null
  br i1 %tobool320.not, label %do.end324, label %if.then317.if.end326_crit_edge

if.then317.if.end326_crit_edge:                   ; preds = %if.then317
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end326

do.end324:                                        ; preds = %if.then317
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1171) #16
  br label %err_free_fu

if.end326:                                        ; preds = %if.then317.if.end326_crit_edge, %if.end313.if.end326_crit_edge
  %203 = load i16, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epin_desc, i32 0, i32 4), align 1
  %204 = tail call i16 @llvm.bswap.i16(i16 %203)
  %205 = load i16, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epin_desc, i32 0, i32 4), align 1
  %206 = tail call i16 @llvm.bswap.i16(i16 %205)
  %207 = tail call i16 @llvm.umax.i16(i16 %204, i16 %206)
  %in_ep_maxpsize = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 5
  %208 = load i16, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epout_desc, i32 0, i32 4), align 1
  %209 = tail call i16 @llvm.bswap.i16(i16 %208)
  %210 = load i16, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epout_desc, i32 0, i32 4), align 1
  %211 = tail call i16 @llvm.bswap.i16(i16 %210)
  %212 = tail call i16 @llvm.umax.i16(i16 %209, i16 %211)
  %out_ep_maxpsize = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 6
  %213 = load i16, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epin_desc, i32 0, i32 4), align 1
  %214 = tail call i16 @llvm.bswap.i16(i16 %213)
  %215 = tail call i16 @llvm.umax.i16(i16 %207, i16 %214)
  %216 = zext i16 %215 to i32
  %217 = ptrtoint ptr %in_ep_maxpsize to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %in_ep_maxpsize, align 4
  %218 = load i16, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epout_desc, i32 0, i32 4), align 1
  %219 = tail call i16 @llvm.bswap.i16(i16 %218)
  %220 = tail call i16 @llvm.umax.i16(i16 %212, i16 %219)
  %221 = zext i16 %220 to i32
  %222 = ptrtoint ptr %out_ep_maxpsize to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %out_ep_maxpsize, align 4
  store i16 %213, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @ss_epin_desc_comp, i32 0, i32 4), align 1
  store i16 %218, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @ss_epout_desc_comp, i32 0, i32 4), align 1
  %223 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_ep_int_desc, i32 0, i32 2), align 1
  store i8 %223, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_ep_int_desc, i32 0, i32 2), align 1
  %224 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epout_desc, i32 0, i32 2), align 1
  store i8 %224, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epout_desc, i32 0, i32 2), align 1
  %225 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epin_fback_desc, i32 0, i32 2), align 1
  store i8 %225, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epin_fback_desc, i32 0, i32 2), align 1
  %226 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epin_desc, i32 0, i32 2), align 1
  store i8 %226, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epin_desc, i32 0, i32 2), align 1
  store i8 %224, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epout_desc, i32 0, i32 2), align 1
  store i8 %225, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epin_fback_desc, i32 0, i32 2), align 1
  store i8 %226, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epin_desc, i32 0, i32 2), align 1
  store i8 %223, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_ep_int_desc, i32 0, i32 2), align 1
  %227 = ptrtoint ptr %c_chmask9.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %c_chmask9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %cmp.not.i = icmp eq i32 %228, 0
  br i1 %cmp.not.i, label %if.end326.if.end.i1049_crit_edge, label %if.then.i

if.end326.if.end.i1049_crit_edge:                 ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i1049

if.then.i:                                        ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #14
  store i8 1, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 3), align 1
  br label %if.end.i1049

if.end.i1049:                                     ; preds = %if.then.i, %if.end326.if.end.i1049_crit_edge
  %i.0.i = phi i32 [ 2, %if.then.i ], [ 1, %if.end326.if.end.i1049_crit_edge ]
  %229 = ptrtoint ptr %p_chmask.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %p_chmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %cmp1.not.i = icmp eq i32 %230, 0
  br i1 %cmp1.not.i, label %if.end.i1049.if.end6.i_crit_edge, label %if.then3.i1050

if.end.i1049.if.end6.i_crit_edge:                 ; preds = %if.end.i1049
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then3.i1050:                                   ; preds = %if.end.i1049
  call void @__sanitizer_cov_trace_pc() #14
  %inc4.i = add nuw nsw i32 %i.0.i, 1
  %conv5.i = trunc i32 %i.0.i to i8
  store i8 %conv5.i, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 3), align 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i1050, %if.end.i1049.if.end6.i_crit_edge
  %i.1.i = phi i32 [ %inc4.i, %if.then3.i1050 ], [ %i.0.i, %if.end.i1049.if.end6.i_crit_edge ]
  br i1 %cmp.not.i, label %if.end6.i.if.end13.i_crit_edge, label %if.then10.i

if.end6.i.if.end13.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc11.i = add nuw nsw i32 %i.1.i, 1
  %conv12.i = trunc i32 %i.1.i to i8
  store i8 %conv12.i, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @io_out_ot_desc, i32 0, i32 3), align 1
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end6.i.if.end13.i_crit_edge
  %i.2.i = phi i32 [ %inc11.i, %if.then10.i ], [ %i.1.i, %if.end6.i.if.end13.i_crit_edge ]
  br i1 %cmp1.not.i, label %if.end13.i.if.end20.i_crit_edge, label %if.then17.i

if.end13.i.if.end20.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc18.i = add nuw nsw i32 %i.2.i, 1
  %conv19.i = trunc i32 %i.2.i to i8
  store i8 %conv19.i, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 3), align 1
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.end13.i.if.end20.i_crit_edge
  %i.3.i = phi i32 [ %inc18.i, %if.then17.i ], [ %i.2.i, %if.end13.i.if.end20.i_crit_edge ]
  br i1 %cmp.not.i, label %if.end20.i.if.end30.i_crit_edge, label %land.lhs.true.i1052

if.end20.i.if.end30.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

land.lhs.true.i1052:                              ; preds = %if.end20.i
  %c_mute_present.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 13
  %231 = ptrtoint ptr %c_mute_present.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %c_mute_present.i, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool.not.i1051 = icmp eq i8 %232, 0
  br i1 %tobool.not.i1051, label %lor.lhs.false.i, label %land.lhs.true.i1052.if.then27.i_crit_edge

land.lhs.true.i1052.if.then27.i_crit_edge:        ; preds = %land.lhs.true.i1052
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i1052
  %c_volume_present.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 14
  %233 = ptrtoint ptr %c_volume_present.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %c_volume_present.i, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %234)
  %tobool25.not.i = icmp eq i8 %234, 0
  br i1 %tobool25.not.i, label %lor.lhs.false.i.if.end30.i_crit_edge, label %lor.lhs.false.i.if.then27.i_crit_edge

lor.lhs.false.i.if.then27.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27.i

lor.lhs.false.i.if.end30.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

if.then27.i:                                      ; preds = %lor.lhs.false.i.if.then27.i_crit_edge, %land.lhs.true.i1052.if.then27.i_crit_edge
  %inc28.i = add nuw nsw i32 %i.3.i, 1
  %conv29.i = trunc i32 %i.3.i to i8
  %235 = load ptr, ptr @out_feature_unit_desc, align 4
  %bUnitID.i = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %235, i32 0, i32 3
  %236 = ptrtoint ptr %bUnitID.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %conv29.i, ptr %bUnitID.i, align 1
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i, %lor.lhs.false.i.if.end30.i_crit_edge, %if.end20.i.if.end30.i_crit_edge
  %i.4.i = phi i32 [ %inc28.i, %if.then27.i ], [ %i.3.i, %lor.lhs.false.i.if.end30.i_crit_edge ], [ %i.3.i, %if.end20.i.if.end30.i_crit_edge ]
  %237 = ptrtoint ptr %p_chmask.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %p_chmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %cmp32.not.i = icmp eq i32 %238, 0
  br i1 %cmp32.not.i, label %if.end30.i.if.end44.i_crit_edge, label %land.lhs.true34.i

if.end30.i.if.end44.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i

land.lhs.true34.i:                                ; preds = %if.end30.i
  %p_mute_present.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 8
  %239 = ptrtoint ptr %p_mute_present.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %p_mute_present.i, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool35.not.i = icmp eq i8 %240, 0
  br i1 %tobool35.not.i, label %lor.lhs.false37.i, label %land.lhs.true34.i.if.then40.i_crit_edge

land.lhs.true34.i.if.then40.i_crit_edge:          ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then40.i

lor.lhs.false37.i:                                ; preds = %land.lhs.true34.i
  %p_volume_present.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 9
  %241 = ptrtoint ptr %p_volume_present.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %p_volume_present.i, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %242)
  %tobool38.not.i = icmp eq i8 %242, 0
  br i1 %tobool38.not.i, label %lor.lhs.false37.i.if.end44.i_crit_edge, label %lor.lhs.false37.i.if.then40.i_crit_edge

lor.lhs.false37.i.if.then40.i_crit_edge:          ; preds = %lor.lhs.false37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then40.i

lor.lhs.false37.i.if.end44.i_crit_edge:           ; preds = %lor.lhs.false37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i

if.then40.i:                                      ; preds = %lor.lhs.false37.i.if.then40.i_crit_edge, %land.lhs.true34.i.if.then40.i_crit_edge
  %inc41.i = add nuw nsw i32 %i.4.i, 1
  %conv42.i1053 = trunc i32 %i.4.i to i8
  %243 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID43.i = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %243, i32 0, i32 3
  %244 = ptrtoint ptr %bUnitID43.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %conv42.i1053, ptr %bUnitID43.i, align 1
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then40.i, %lor.lhs.false37.i.if.end44.i_crit_edge, %if.end30.i.if.end44.i_crit_edge
  %i.5.i = phi i32 [ %inc41.i, %if.then40.i ], [ %i.4.i, %lor.lhs.false37.i.if.end44.i_crit_edge ], [ %i.4.i, %if.end30.i.if.end44.i_crit_edge ]
  %245 = ptrtoint ptr %c_chmask9.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %c_chmask9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %cmp46.not.i = icmp eq i32 %246, 0
  br i1 %cmp46.not.i, label %if.end44.i.if.end51.i_crit_edge, label %if.then48.i

if.end44.i.if.end51.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i

if.then48.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc49.i = add nuw nsw i32 %i.5.i, 1
  %conv50.i1054 = trunc i32 %i.5.i to i8
  store i8 %conv50.i1054, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @out_clk_src_desc, i32 0, i32 3), align 1
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then48.i, %if.end44.i.if.end51.i_crit_edge
  %i.6.i = phi i32 [ %inc49.i, %if.then48.i ], [ %i.5.i, %if.end44.i.if.end51.i_crit_edge ]
  %247 = ptrtoint ptr %p_chmask.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %p_chmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %cmp53.not.i = icmp eq i32 %248, 0
  br i1 %cmp53.not.i, label %if.end58.thread.i, label %land.lhs.true62.i

if.end58.thread.i:                                ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #14
  %249 = load i8, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @out_clk_src_desc, i32 0, i32 3), align 1
  store i8 %249, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 6), align 1
  br label %if.else.i1055

land.lhs.true62.i:                                ; preds = %if.end51.i
  %conv57.i = trunc i32 %i.6.i to i8
  store i8 %conv57.i, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @in_clk_src_desc, i32 0, i32 3), align 1
  %250 = load i8, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @out_clk_src_desc, i32 0, i32 3), align 1
  store i8 %250, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 6), align 1
  %p_mute_present63.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 8
  %251 = ptrtoint ptr %p_mute_present63.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %p_mute_present63.i, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %tobool64.not.i = icmp eq i8 %252, 0
  br i1 %tobool64.not.i, label %lor.lhs.false66.i, label %land.lhs.true62.i.if.then70.i_crit_edge

land.lhs.true62.i.if.then70.i_crit_edge:          ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then70.i

lor.lhs.false66.i:                                ; preds = %land.lhs.true62.i
  %p_volume_present67.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 9
  %253 = ptrtoint ptr %p_volume_present67.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %p_volume_present67.i, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %254)
  %tobool68.not.i = icmp eq i8 %254, 0
  br i1 %tobool68.not.i, label %lor.lhs.false66.i.if.else.i1055_crit_edge, label %lor.lhs.false66.i.if.then70.i_crit_edge

lor.lhs.false66.i.if.then70.i_crit_edge:          ; preds = %lor.lhs.false66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then70.i

lor.lhs.false66.i.if.else.i1055_crit_edge:        ; preds = %lor.lhs.false66.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i1055

if.then70.i:                                      ; preds = %lor.lhs.false66.i.if.then70.i_crit_edge, %land.lhs.true62.i.if.then70.i_crit_edge
  %255 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID71.i = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %255, i32 0, i32 3
  %256 = ptrtoint ptr %bUnitID71.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %bUnitID71.i, align 1
  store i8 %257, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 6), align 1
  %258 = load i8, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 3), align 1
  %bSourceID.i = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %255, i32 0, i32 4
  %259 = ptrtoint ptr %bSourceID.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %258, ptr %bSourceID.i, align 1
  br label %if.end72.i

if.else.i1055:                                    ; preds = %lor.lhs.false66.i.if.else.i1055_crit_edge, %if.end58.thread.i
  %260 = phi i8 [ %249, %if.end58.thread.i ], [ %250, %lor.lhs.false66.i.if.else.i1055_crit_edge ]
  %261 = load i8, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 3), align 1
  store i8 %261, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 6), align 1
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.else.i1055, %if.then70.i
  %262 = phi i8 [ %260, %if.else.i1055 ], [ %250, %if.then70.i ]
  %263 = load i8, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @in_clk_src_desc, i32 0, i32 3), align 1
  store i8 %263, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 7), align 1
  store i8 %263, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 6), align 1
  store i8 %262, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @io_out_ot_desc, i32 0, i32 7), align 1
  %264 = ptrtoint ptr %c_chmask9.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %c_chmask9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %cmp74.not.i = icmp eq i32 %265, 0
  br i1 %cmp74.not.i, label %if.end72.i.if.else87.i_crit_edge, label %land.lhs.true76.i

if.end72.i.if.else87.i_crit_edge:                 ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else87.i

land.lhs.true76.i:                                ; preds = %if.end72.i
  %c_mute_present77.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 13
  %266 = ptrtoint ptr %c_mute_present77.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %c_mute_present77.i, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool78.not.i = icmp eq i8 %267, 0
  br i1 %tobool78.not.i, label %lor.lhs.false80.i, label %land.lhs.true76.i.if.then84.i_crit_edge

land.lhs.true76.i.if.then84.i_crit_edge:          ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then84.i

lor.lhs.false80.i:                                ; preds = %land.lhs.true76.i
  %c_volume_present81.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 14
  %268 = ptrtoint ptr %c_volume_present81.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %c_volume_present81.i, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %tobool82.not.i = icmp eq i8 %269, 0
  br i1 %tobool82.not.i, label %lor.lhs.false80.i.if.else87.i_crit_edge, label %lor.lhs.false80.i.if.then84.i_crit_edge

lor.lhs.false80.i.if.then84.i_crit_edge:          ; preds = %lor.lhs.false80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then84.i

lor.lhs.false80.i.if.else87.i_crit_edge:          ; preds = %lor.lhs.false80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else87.i

if.then84.i:                                      ; preds = %lor.lhs.false80.i.if.then84.i_crit_edge, %land.lhs.true76.i.if.then84.i_crit_edge
  %270 = load ptr, ptr @out_feature_unit_desc, align 4
  %bUnitID85.i = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %270, i32 0, i32 3
  %271 = ptrtoint ptr %bUnitID85.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %bUnitID85.i, align 1
  store i8 %272, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @io_out_ot_desc, i32 0, i32 6), align 1
  %273 = load i8, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 3), align 1
  %bSourceID86.i = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %270, i32 0, i32 4
  %274 = ptrtoint ptr %bSourceID86.i to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %273, ptr %bSourceID86.i, align 1
  br label %if.end88.i

if.else87.i:                                      ; preds = %lor.lhs.false80.i.if.else87.i_crit_edge, %if.end72.i.if.else87.i_crit_edge
  %275 = load i8, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 3), align 1
  store i8 %275, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @io_out_ot_desc, i32 0, i32 6), align 1
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.else87.i, %if.then84.i
  %276 = load i8, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 3), align 1
  store i8 %276, ptr getelementptr inbounds (%struct.uac2_as_header_descriptor, ptr @as_out_hdr_desc, i32 0, i32 3), align 1
  %277 = load i8, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 3), align 1
  store i8 %277, ptr getelementptr inbounds (%struct.uac2_as_header_descriptor, ptr @as_in_hdr_desc, i32 0, i32 3), align 1
  store i8 1, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @iad_desc, i32 0, i32 3), align 1
  store i16 2304, ptr getelementptr inbounds (%struct.uac2_ac_header_descriptor, ptr @ac_hdr_desc, i32 0, i32 5), align 1
  %278 = ptrtoint ptr %p_chmask.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %p_chmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %cmp90.not.i = icmp eq i32 %279, 0
  br i1 %cmp90.not.i, label %if.end88.i.if.end119.i_crit_edge, label %land.lhs.true101.i

if.end88.i.if.end119.i_crit_edge:                 ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119.i

land.lhs.true101.i:                               ; preds = %if.end88.i
  %p_mute_present102.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 8
  %280 = ptrtoint ptr %p_mute_present102.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %p_mute_present102.i, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %281)
  %tobool103.not.i = icmp eq i8 %281, 0
  br i1 %tobool103.not.i, label %lor.lhs.false105.i, label %land.lhs.true101.i.if.then109.i_crit_edge

land.lhs.true101.i.if.then109.i_crit_edge:        ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then109.i

lor.lhs.false105.i:                               ; preds = %land.lhs.true101.i
  %p_volume_present106.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 9
  %282 = ptrtoint ptr %p_volume_present106.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %p_volume_present106.i, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %tobool107.not.i = icmp eq i8 %283, 0
  br i1 %tobool107.not.i, label %lor.lhs.false105.i.if.end114.i_crit_edge, label %lor.lhs.false105.i.if.then109.i_crit_edge

lor.lhs.false105.i.if.then109.i_crit_edge:        ; preds = %lor.lhs.false105.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then109.i

lor.lhs.false105.i.if.end114.i_crit_edge:         ; preds = %lor.lhs.false105.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114.i

if.then109.i:                                     ; preds = %lor.lhs.false105.i.if.then109.i_crit_edge, %land.lhs.true101.i.if.then109.i_crit_edge
  %284 = load ptr, ptr @in_feature_unit_desc, align 4
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %284, align 1
  %conv110.i = zext i8 %286 to i16
  %phi.bo.i1056 = add nuw nsw i16 %conv110.i, 46
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.then109.i, %lor.lhs.false105.i.if.end114.i_crit_edge
  %len.0.i = phi i16 [ %phi.bo.i1056, %if.then109.i ], [ 46, %lor.lhs.false105.i.if.end114.i_crit_edge ]
  %287 = tail call i16 @llvm.bswap.i16(i16 %len.0.i) #12
  store i16 %287, ptr getelementptr inbounds (%struct.uac2_ac_header_descriptor, ptr @ac_hdr_desc, i32 0, i32 5), align 1
  store i8 2, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @iad_desc, i32 0, i32 3), align 1
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.end114.i, %if.end88.i.if.end119.i_crit_edge
  %288 = ptrtoint ptr %c_chmask9.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %c_chmask9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %289)
  %cmp121.not.i = icmp eq i32 %289, 0
  br i1 %cmp121.not.i, label %if.end119.i.setup_descriptor.exit_crit_edge, label %if.then123.i

if.end119.i.setup_descriptor.exit_crit_edge:      ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %setup_descriptor.exit

if.then123.i:                                     ; preds = %if.end119.i
  %290 = load i16, ptr getelementptr inbounds (%struct.uac2_ac_header_descriptor, ptr @ac_hdr_desc, i32 0, i32 5), align 1
  %291 = tail call i16 @llvm.bswap.i16(i16 %290) #12
  %add129.i = add i16 %291, 25
  %c_mute_present135.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 13
  %292 = ptrtoint ptr %c_mute_present135.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %c_mute_present135.i, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %293)
  %tobool136.not.i = icmp eq i8 %293, 0
  br i1 %tobool136.not.i, label %lor.lhs.false138.i, label %if.then123.i.if.then142.i_crit_edge

if.then123.i.if.then142.i_crit_edge:              ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then142.i

lor.lhs.false138.i:                               ; preds = %if.then123.i
  %c_volume_present139.i = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 14
  %294 = ptrtoint ptr %c_volume_present139.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %c_volume_present139.i, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %295)
  %tobool140.not.i = icmp eq i8 %295, 0
  br i1 %tobool140.not.i, label %lor.lhs.false138.i.if.end148.i_crit_edge, label %lor.lhs.false138.i.if.then142.i_crit_edge

lor.lhs.false138.i.if.then142.i_crit_edge:        ; preds = %lor.lhs.false138.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then142.i

lor.lhs.false138.i.if.end148.i_crit_edge:         ; preds = %lor.lhs.false138.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end148.i

if.then142.i:                                     ; preds = %lor.lhs.false138.i.if.then142.i_crit_edge, %if.then123.i.if.then142.i_crit_edge
  %296 = load ptr, ptr @out_feature_unit_desc, align 4
  %297 = ptrtoint ptr %296 to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %296, align 1
  %conv144.i = zext i8 %298 to i16
  %add146.i = add i16 %add129.i, %conv144.i
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.then142.i, %lor.lhs.false138.i.if.end148.i_crit_edge
  %len124.0.i = phi i16 [ %add146.i, %if.then142.i ], [ %add129.i, %lor.lhs.false138.i.if.end148.i_crit_edge ]
  %add150.i = add i16 %len124.0.i, 12
  %299 = tail call i16 @llvm.bswap.i16(i16 %add150.i) #12
  store i16 %299, ptr getelementptr inbounds (%struct.uac2_ac_header_descriptor, ptr @ac_hdr_desc, i32 0, i32 5), align 1
  %300 = load i8, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @iad_desc, i32 0, i32 3), align 1
  %inc152.i = add i8 %300, 1
  store i8 %inc152.i, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @iad_desc, i32 0, i32 3), align 1
  br label %setup_descriptor.exit

setup_descriptor.exit:                            ; preds = %if.end148.i, %if.end119.i.setup_descriptor.exit_crit_edge
  tail call fastcc void @setup_headers(ptr noundef %5, ptr noundef nonnull @fs_audio_desc, i32 noundef 2) #12
  tail call fastcc void @setup_headers(ptr noundef %5, ptr noundef nonnull @hs_audio_desc, i32 noundef 3) #12
  tail call fastcc void @setup_headers(ptr noundef %5, ptr noundef nonnull @ss_audio_desc, i32 noundef 5) #12
  %call372 = tail call i32 @usb_assign_descriptors(ptr noundef %fn, ptr noundef nonnull @fs_audio_desc, ptr noundef nonnull @hs_audio_desc, ptr noundef nonnull @ss_audio_desc, ptr noundef nonnull @ss_audio_desc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call372)
  %tobool373.not = icmp eq i32 %call372, 0
  br i1 %tobool373.not, label %if.end375, label %setup_descriptor.exit.err_free_fu_crit_edge

setup_descriptor.exit.err_free_fu_crit_edge:      ; preds = %setup_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_fu

if.end375:                                        ; preds = %setup_descriptor.exit
  %gadget376 = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 1
  %301 = ptrtoint ptr %gadget376 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %3, ptr %gadget376, align 4
  %302 = ptrtoint ptr %p_chmask.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %p_chmask.i, align 4
  %params = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 9
  %304 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %303, ptr %params, align 4
  %305 = ptrtoint ptr %p_srate.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %p_srate.i, align 4
  %p_srate381 = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 9, i32 1
  %307 = ptrtoint ptr %p_srate381 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %306, ptr %p_srate381, align 4
  %308 = ptrtoint ptr %p_ssize.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %p_ssize.i, align 4
  %p_ssize384 = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 9, i32 2
  %310 = ptrtoint ptr %p_ssize384 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %309, ptr %p_ssize384, align 4
  %311 = load i32, ptr %p_chmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %cmp386.not = icmp eq i32 %311, 0
  br i1 %cmp386.not, label %if.end375.if.end415_crit_edge, label %land.lhs.true388

if.end375.if.end415_crit_edge:                    ; preds = %if.end375
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end415

land.lhs.true388:                                 ; preds = %if.end375
  %p_mute_present389 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 8
  %312 = ptrtoint ptr %p_mute_present389 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %p_mute_present389, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %313)
  %tobool390.not = icmp eq i8 %313, 0
  br i1 %tobool390.not, label %lor.lhs.false392, label %land.lhs.true388.if.then396_crit_edge

land.lhs.true388.if.then396_crit_edge:            ; preds = %land.lhs.true388
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then396

lor.lhs.false392:                                 ; preds = %land.lhs.true388
  %p_volume_present393 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 9
  %314 = ptrtoint ptr %p_volume_present393 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %p_volume_present393, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %315)
  %tobool394.not = icmp eq i8 %315, 0
  br i1 %tobool394.not, label %lor.lhs.false392.if.end415_crit_edge, label %lor.lhs.false392.if.then396_crit_edge

lor.lhs.false392.if.then396_crit_edge:            ; preds = %lor.lhs.false392
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then396

lor.lhs.false392.if.end415_crit_edge:             ; preds = %lor.lhs.false392
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end415

if.then396:                                       ; preds = %lor.lhs.false392.if.then396_crit_edge, %land.lhs.true388.if.then396_crit_edge
  %316 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %316, i32 0, i32 3
  %317 = ptrtoint ptr %bUnitID to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %bUnitID, align 1
  %conv397 = zext i8 %318 to i32
  %p_fu = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 9, i32 3
  %319 = ptrtoint ptr %p_fu to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %conv397, ptr %p_fu, align 4
  %320 = ptrtoint ptr %p_mute_present389 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %p_mute_present389, align 4, !range !384
  %mute_present = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 9, i32 3, i32 1
  %322 = ptrtoint ptr %mute_present to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 %321, ptr %mute_present, align 4
  %p_volume_present404 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 9
  %323 = ptrtoint ptr %p_volume_present404 to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %p_volume_present404, align 1, !range !384
  %volume_present = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 9, i32 3, i32 2
  %325 = ptrtoint ptr %volume_present to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 %324, ptr %volume_present, align 1
  %326 = ptrtoint ptr %p_volume_min.i to i32
  call void @__asan_load2_noabort(i32 %326)
  %327 = load i16, ptr %p_volume_min.i, align 2
  %volume_min = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 9, i32 3, i32 3
  %328 = ptrtoint ptr %volume_min to i32
  call void @__asan_store2_noabort(i32 %328)
  store i16 %327, ptr %volume_min, align 2
  %329 = ptrtoint ptr %p_volume_max.i to i32
  call void @__asan_load2_noabort(i32 %329)
  %330 = load i16, ptr %p_volume_max.i, align 4
  %volume_max = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 9, i32 3, i32 4
  %331 = ptrtoint ptr %volume_max to i32
  call void @__asan_store2_noabort(i32 %331)
  store i16 %330, ptr %volume_max, align 4
  %332 = ptrtoint ptr %p_volume_res.i to i32
  call void @__asan_load2_noabort(i32 %332)
  %333 = load i16, ptr %p_volume_res.i, align 2
  %volume_res = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 9, i32 3, i32 5
  %334 = ptrtoint ptr %volume_res to i32
  call void @__asan_store2_noabort(i32 %334)
  store i16 %333, ptr %volume_res, align 2
  br label %if.end415

if.end415:                                        ; preds = %if.then396, %lor.lhs.false392.if.end415_crit_edge, %if.end375.if.end415_crit_edge
  %335 = ptrtoint ptr %c_chmask9.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %c_chmask9.i, align 4
  %c_chmask418 = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 9, i32 4
  %337 = ptrtoint ptr %c_chmask418 to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %336, ptr %c_chmask418, align 4
  %338 = ptrtoint ptr %c_srate.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %c_srate.i, align 4
  %c_srate421 = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 9, i32 5
  %340 = ptrtoint ptr %c_srate421 to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 %339, ptr %c_srate421, align 4
  %341 = ptrtoint ptr %c_ssize.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %c_ssize.i, align 4
  %c_ssize424 = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 9, i32 6
  %343 = ptrtoint ptr %c_ssize424 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %342, ptr %c_ssize424, align 4
  %344 = load i32, ptr %c_chmask9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %344)
  %cmp426.not = icmp eq i32 %344, 0
  br i1 %cmp426.not, label %if.end415.if.end462_crit_edge, label %land.lhs.true428

if.end415.if.end462_crit_edge:                    ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end462

land.lhs.true428:                                 ; preds = %if.end415
  %c_mute_present429 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 13
  %345 = ptrtoint ptr %c_mute_present429 to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %c_mute_present429, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %346)
  %tobool430.not = icmp eq i8 %346, 0
  br i1 %tobool430.not, label %lor.lhs.false432, label %land.lhs.true428.if.then436_crit_edge

land.lhs.true428.if.then436_crit_edge:            ; preds = %land.lhs.true428
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then436

lor.lhs.false432:                                 ; preds = %land.lhs.true428
  %c_volume_present433 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 14
  %347 = ptrtoint ptr %c_volume_present433 to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %c_volume_present433, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %348)
  %tobool434.not = icmp eq i8 %348, 0
  br i1 %tobool434.not, label %lor.lhs.false432.if.end462_crit_edge, label %lor.lhs.false432.if.then436_crit_edge

lor.lhs.false432.if.then436_crit_edge:            ; preds = %lor.lhs.false432
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then436

lor.lhs.false432.if.end462_crit_edge:             ; preds = %lor.lhs.false432
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end462

if.then436:                                       ; preds = %lor.lhs.false432.if.then436_crit_edge, %land.lhs.true428.if.then436_crit_edge
  %349 = load ptr, ptr @out_feature_unit_desc, align 4
  %bUnitID437 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %349, i32 0, i32 3
  %350 = ptrtoint ptr %bUnitID437 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %bUnitID437, align 1
  %conv438 = zext i8 %351 to i32
  %c_fu = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 9, i32 7
  %352 = ptrtoint ptr %c_fu to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 %conv438, ptr %c_fu, align 4
  %353 = ptrtoint ptr %c_mute_present429 to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %c_mute_present429, align 4, !range !384
  %mute_present445 = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 9, i32 7, i32 1
  %355 = ptrtoint ptr %mute_present445 to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 %354, ptr %mute_present445, align 4
  %c_volume_present447 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 14
  %356 = ptrtoint ptr %c_volume_present447 to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %c_volume_present447, align 1, !range !384
  %volume_present451 = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 9, i32 7, i32 2
  %358 = ptrtoint ptr %volume_present451 to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 %357, ptr %volume_present451, align 1
  %359 = ptrtoint ptr %c_volume_min.i to i32
  call void @__asan_load2_noabort(i32 %359)
  %360 = load i16, ptr %c_volume_min.i, align 2
  %volume_min455 = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 9, i32 7, i32 3
  %361 = ptrtoint ptr %volume_min455 to i32
  call void @__asan_store2_noabort(i32 %361)
  store i16 %360, ptr %volume_min455, align 2
  %362 = ptrtoint ptr %c_volume_max.i to i32
  call void @__asan_load2_noabort(i32 %362)
  %363 = load i16, ptr %c_volume_max.i, align 4
  %volume_max458 = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 9, i32 7, i32 4
  %364 = ptrtoint ptr %volume_max458 to i32
  call void @__asan_store2_noabort(i32 %364)
  store i16 %363, ptr %volume_max458, align 4
  %365 = ptrtoint ptr %c_volume_res.i to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %c_volume_res.i, align 2
  %volume_res461 = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 9, i32 7, i32 5
  %367 = ptrtoint ptr %volume_res461 to i32
  call void @__asan_store2_noabort(i32 %367)
  store i16 %366, ptr %volume_res461, align 2
  br label %if.end462

if.end462:                                        ; preds = %if.then436, %lor.lhs.false432.if.end462_crit_edge, %if.end415.if.end462_crit_edge
  %req_number = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 18
  %368 = ptrtoint ptr %req_number to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %req_number, align 4
  %req_number464 = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 9, i32 8
  %370 = ptrtoint ptr %req_number464 to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 %369, ptr %req_number464, align 4
  %371 = ptrtoint ptr %fb_max.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %fb_max.i, align 4
  %fb_max466 = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 9, i32 9
  %373 = ptrtoint ptr %fb_max466 to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 %372, ptr %fb_max466, align 4
  %374 = ptrtoint ptr %c_chmask9.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %c_chmask9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %375)
  %cmp468.not = icmp eq i32 %375, 0
  br i1 %cmp468.not, label %if.end462.lor.lhs.false478_crit_edge, label %land.lhs.true470

if.end462.lor.lhs.false478_crit_edge:             ; preds = %if.end462
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false478

land.lhs.true470:                                 ; preds = %if.end462
  %c_mute_present471 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 13
  %376 = ptrtoint ptr %c_mute_present471 to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %c_mute_present471, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %377)
  %tobool472.not = icmp eq i8 %377, 0
  br i1 %tobool472.not, label %lor.lhs.false474, label %land.lhs.true470.if.then490_crit_edge

land.lhs.true470.if.then490_crit_edge:            ; preds = %land.lhs.true470
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then490

lor.lhs.false474:                                 ; preds = %land.lhs.true470
  %c_volume_present475 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 14
  %378 = ptrtoint ptr %c_volume_present475 to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %c_volume_present475, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %379)
  %tobool476.not = icmp eq i8 %379, 0
  br i1 %tobool476.not, label %lor.lhs.false474.lor.lhs.false478_crit_edge, label %lor.lhs.false474.if.then490_crit_edge

lor.lhs.false474.if.then490_crit_edge:            ; preds = %lor.lhs.false474
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then490

lor.lhs.false474.lor.lhs.false478_crit_edge:      ; preds = %lor.lhs.false474
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false478

lor.lhs.false478:                                 ; preds = %lor.lhs.false474.lor.lhs.false478_crit_edge, %if.end462.lor.lhs.false478_crit_edge
  %380 = ptrtoint ptr %p_chmask.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %p_chmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %381)
  %cmp480.not = icmp eq i32 %381, 0
  br i1 %cmp480.not, label %lor.lhs.false478.if.end491_crit_edge, label %land.lhs.true482

lor.lhs.false478.if.end491_crit_edge:             ; preds = %lor.lhs.false478
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end491

land.lhs.true482:                                 ; preds = %lor.lhs.false478
  %p_mute_present483 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 8
  %382 = ptrtoint ptr %p_mute_present483 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %p_mute_present483, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %383)
  %tobool484.not = icmp eq i8 %383, 0
  br i1 %tobool484.not, label %lor.lhs.false486, label %land.lhs.true482.if.then490_crit_edge

land.lhs.true482.if.then490_crit_edge:            ; preds = %land.lhs.true482
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then490

lor.lhs.false486:                                 ; preds = %land.lhs.true482
  %p_volume_present487 = getelementptr inbounds %struct.f_uac2_opts, ptr %5, i32 0, i32 9
  %384 = ptrtoint ptr %p_volume_present487 to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %p_volume_present487, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %385)
  %tobool488.not = icmp eq i8 %385, 0
  br i1 %tobool488.not, label %lor.lhs.false486.if.end491_crit_edge, label %lor.lhs.false486.if.then490_crit_edge

lor.lhs.false486.if.then490_crit_edge:            ; preds = %lor.lhs.false486
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then490

lor.lhs.false486.if.end491_crit_edge:             ; preds = %lor.lhs.false486
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end491

if.then490:                                       ; preds = %lor.lhs.false486.if.then490_crit_edge, %land.lhs.true482.if.then490_crit_edge, %lor.lhs.false474.if.then490_crit_edge, %land.lhs.true470.if.then490_crit_edge
  %notify = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 7
  %386 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %386)
  store ptr @afunc_notify, ptr %notify, align 4
  br label %if.end491

if.end491:                                        ; preds = %if.then490, %lor.lhs.false486.if.end491_crit_edge, %lor.lhs.false478.if.end491_crit_edge
  %call492 = tail call i32 @g_audio_setup(ptr noundef %fn, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call492)
  %tobool493.not = icmp eq i32 %call492, 0
  br i1 %tobool493.not, label %if.end491.cleanup_crit_edge, label %err_free_descs

if.end491.cleanup_crit_edge:                      ; preds = %if.end491
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_free_descs:                                   ; preds = %if.end491
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_free_all_descriptors(ptr noundef %fn) #12
  %387 = ptrtoint ptr %gadget376 to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr null, ptr %gadget376, align 4
  br label %err_free_fu

err_free_fu:                                      ; preds = %err_free_descs, %setup_descriptor.exit.err_free_fu_crit_edge, %do.end324, %do.end310, %do.end298, %do.end237, %do.end201, %do.end181, %do.end, %build_fu_desc.exit766.thread
  %ret.0 = phi i32 [ %call163, %do.end ], [ %call175, %do.end181 ], [ %call195, %do.end201 ], [ %call372, %setup_descriptor.exit.err_free_fu_crit_edge ], [ %call492, %err_free_descs ], [ -19, %do.end324 ], [ -19, %do.end310 ], [ -19, %do.end298 ], [ -19, %do.end237 ], [ -12, %build_fu_desc.exit766.thread ]
  %388 = load ptr, ptr @out_feature_unit_desc, align 4
  tail call void @kfree(ptr noundef %388) #12
  store ptr null, ptr @out_feature_unit_desc, align 4
  %389 = load ptr, ptr @in_feature_unit_desc, align 4
  tail call void @kfree(ptr noundef %389) #12
  store ptr null, ptr @in_feature_unit_desc, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free_fu, %if.end491.cleanup_crit_edge, %build_fu_desc.exit.thread, %if.then9, %afunc_validate_opts.exit
  %retval.0 = phi i32 [ %36, %if.then9 ], [ %ret.0, %err_free_fu ], [ -22, %afunc_validate_opts.exit ], [ 0, %if.end491.cleanup_crit_edge ], [ -12, %build_fu_desc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afunc_unbind(ptr nocapture noundef readnone %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @g_audio_cleanup(ptr noundef %f) #12
  tail call void @usb_free_all_descriptors(ptr noundef %f) #12
  %gadget = getelementptr inbounds %struct.g_audio, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %gadget to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %gadget, align 4
  %1 = load ptr, ptr @out_feature_unit_desc, align 4
  tail call void @kfree(ptr noundef %1) #12
  store ptr null, ptr @out_feature_unit_desc, align 4
  %2 = load ptr, ptr @in_feature_unit_desc, align 4
  tail call void @kfree(ptr noundef %2) #12
  store ptr null, ptr @in_feature_unit_desc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afunc_set_alt(ptr noundef %fn, i32 noundef %intf, i32 noundef %alt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %fn, i32 0, i32 6
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
  %dev4 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %alt)
  %cmp = icmp ugt i32 %alt, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.111, i32 noundef 1338) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %ac_intf = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.111, i32 noundef 1345) #16
  br label %cleanup

if.end12:                                         ; preds = %if.then7
  %int_ep = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 8
  %8 = ptrtoint ptr %int_ep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %int_ep, align 4
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.then14

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %call16 = tail call i32 @usb_ep_disable(ptr noundef nonnull %9) #12
  %10 = ptrtoint ptr %int_ep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %int_ep, align 4
  %call18 = tail call i32 @config_ep_by_speed(ptr noundef %5, ptr noundef %fn, ptr noundef %11) #12
  %12 = ptrtoint ptr %int_ep to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %int_ep, align 4
  %call20 = tail call i32 @usb_ep_enable(ptr noundef %13) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %as_out_intf = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 3
  %14 = ptrtoint ptr %as_out_intf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %as_out_intf, align 2
  %conv23 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv23, i32 %intf)
  %cmp24 = icmp eq i32 %conv23, %intf
  br i1 %cmp24, label %if.then26, label %if.else33

if.then26:                                        ; preds = %if.end22
  %conv27 = trunc i32 %alt to i8
  %as_out_alt = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 6
  %16 = ptrtoint ptr %as_out_alt to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv27, ptr %as_out_alt, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alt)
  %tobool28.not = icmp eq i32 %alt, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %call30 = tail call i32 @u_audio_start_capture(ptr noundef %fn) #12
  br label %cleanup

if.else:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @u_audio_stop_capture(ptr noundef %fn) #12
  br label %cleanup

if.else33:                                        ; preds = %if.end22
  %as_in_intf = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 2
  %17 = ptrtoint ptr %as_in_intf to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %as_in_intf, align 1
  %conv34 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv34, i32 %intf)
  %cmp35 = icmp eq i32 %conv34, %intf
  br i1 %cmp35, label %if.then37, label %do.end49

if.then37:                                        ; preds = %if.else33
  %conv38 = trunc i32 %alt to i8
  %as_in_alt = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 5
  %19 = ptrtoint ptr %as_in_alt to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv38, ptr %as_in_alt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alt)
  %tobool39.not = icmp eq i32 %alt, 0
  br i1 %tobool39.not, label %if.else43, label %if.then40

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  %call42 = tail call i32 @u_audio_start_playback(ptr noundef %fn) #12
  br label %cleanup

if.else43:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @u_audio_stop_playback(ptr noundef %fn) #12
  br label %cleanup

do.end49:                                         ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.111, i32 noundef 1374) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %if.else43, %if.then40, %if.else, %if.then29, %if.then14, %if.end12.cleanup_crit_edge, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end11 ], [ -22, %do.end49 ], [ 0, %if.then14 ], [ 0, %if.end12.cleanup_crit_edge ], [ %call30, %if.then29 ], [ 0, %if.else ], [ %call42, %if.then40 ], [ 0, %if.else43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afunc_get_alt(ptr nocapture noundef readonly %fn, i32 noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ac_intf = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 1
  %0 = ptrtoint ptr %ac_intf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ac_intf, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %intf)
  %cmp = icmp eq i32 %conv, %intf
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ac_alt = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 4
  %2 = ptrtoint ptr %ac_alt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ac_alt, align 1
  %conv3 = zext i8 %3 to i32
  br label %cleanup

if.else:                                          ; preds = %entry
  %as_out_intf = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 3
  %4 = ptrtoint ptr %as_out_intf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %as_out_intf, align 2
  %conv4 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4, i32 %intf)
  %cmp5 = icmp eq i32 %conv4, %intf
  br i1 %cmp5, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %as_out_alt = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 6
  %6 = ptrtoint ptr %as_out_alt to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %as_out_alt, align 1
  %conv8 = zext i8 %7 to i32
  br label %cleanup

if.else9:                                         ; preds = %if.else
  %as_in_intf = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 2
  %8 = ptrtoint ptr %as_in_intf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %as_in_intf, align 1
  %conv10 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10, i32 %intf)
  %cmp11 = icmp eq i32 %conv10, %intf
  br i1 %cmp11, label %if.then13, label %do.end

if.then13:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #14
  %as_in_alt = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 5
  %10 = ptrtoint ptr %as_in_alt to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %as_in_alt, align 4
  %conv14 = zext i8 %11 to i32
  br label %cleanup

do.end:                                           ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #14
  %gadget = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 1
  %12 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gadget, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %13, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117, i32 noundef 1396, i32 noundef %intf) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then13, %if.then7, %if.then
  %retval.0 = phi i32 [ %conv3, %if.then ], [ %conv8, %if.then7 ], [ %conv14, %if.then13 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afunc_disable(ptr noundef %fn) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %as_in_alt = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 5
  %0 = ptrtoint ptr %as_in_alt to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %as_in_alt, align 4
  %as_out_alt = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 6
  %1 = ptrtoint ptr %as_out_alt to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %as_out_alt, align 1
  tail call void @u_audio_stop_capture(ptr noundef %fn) #12
  tail call void @u_audio_stop_playback(ptr noundef %fn) #12
  %int_ep = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 8
  %2 = ptrtoint ptr %int_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %int_ep, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call i32 @usb_ep_disable(ptr noundef nonnull %3) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afunc_setup(ptr noundef %fn, ptr nocapture noundef readonly %cr) #2 align 64 {
entry:
  %r.i.i.i = alloca %struct.cntrl_range_lay3, align 2
  %r91.i.i.i = alloca %struct.cntrl_range_lay2, align 2
  %c.sroa.0.i.i.i = alloca i32, align 4
  %mute.i.i.i = alloca i32, align 4
  %c120.sroa.0.i.i.i = alloca i16, align 2
  %volume.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %fn, i32 0, i32 6
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
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %cr, i32 0, i32 4
  %6 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %wLength, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %9 = ptrtoint ptr %cr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cr, align 1
  %conv = zext i8 %10 to i32
  %and = and i32 %conv, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and)
  %cmp.not = icmp eq i32 %and, 32
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and6 = and i32 %conv, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and6)
  %cmp7 = icmp eq i32 %and6, 1
  br i1 %cmp7, label %if.then9, label %do.end

if.then9:                                         ; preds = %if.end
  %wIndex.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %cr, i32 0, i32 3
  %11 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %wIndex.i, align 1
  %13 = lshr i16 %12, 8
  %ac_intf.i = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 1
  %14 = ptrtoint ptr %ac_intf.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ac_intf.i, align 4
  %16 = zext i8 %15 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %16)
  %cmp.not.i = icmp eq i16 %13, %16
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %gadget.i = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 1
  %17 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gadget.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %18, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.121, i32 noundef 1672) #16
  br label %cleanup

if.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %tobool.not.i = icmp sgt i8 %10, -1
  %bRequest.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %cr, i32 0, i32 1
  %19 = ptrtoint ptr %bRequest.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bRequest.i, align 1
  br i1 %tobool.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i8 %20, label %if.then8.i.cleanup_crit_edge [
    i8 1, label %if.then.i.i
    i8 2, label %if.then6.i.i
  ]

if.then8.i.cleanup_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then8.i
  %fi.i.i.i.i = getelementptr inbounds %struct.usb_function, ptr %fn, i32 0, i32 24
  %22 = ptrtoint ptr %fi.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fi.i.i.i.i, align 4
  %wValue.i.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %cr, i32 0, i32 2
  %24 = ptrtoint ptr %wValue.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %wValue.i.i.i, align 1
  %p_srate7.i.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %p_srate7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %p_srate7.i.i.i, align 4
  %c_srate8.i.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %23, i32 0, i32 5
  %28 = ptrtoint ptr %c_srate8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %c_srate8.i.i.i, align 4
  %30 = and i16 %12, 255
  %conv9.i.i.i = zext i16 %30 to i32
  %31 = load i8, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @in_clk_src_desc, i32 0, i32 3), align 1
  %32 = trunc i16 %12 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %32)
  %cmp.i.i.i = icmp eq i8 %31, %32
  br i1 %cmp.i.i.i, label %if.then.i.i.if.then.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.then.i.i.if.then.i.i.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.then.i.i
  %33 = load i8, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @out_clk_src_desc, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %32)
  %cmp14.i.i.i = icmp eq i8 %33, %32
  br i1 %cmp14.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, label %if.else53.i.i.i

lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.i.i.if.then.i.i.i_crit_edge, %if.then.i.i.if.then.i.i.i_crit_edge
  %trunc200.i.i.i = trunc i16 %25 to i8
  %34 = zext i8 %trunc200.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %trunc200.i.i.i, label %do.end.i.i.i [
    i8 1, label %if.then19.i.i.i
    i8 2, label %if.then39.i.i.i
  ]

if.then19.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c.sroa.0.i.i.i)
  %35 = ptrtoint ptr %c.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %c.sroa.0.i.i.i, align 4
  br i1 %cmp.i.i.i, label %if.then24.i.i.i, label %if.else.i.i.i

if.then24.i.i.i:                                  ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  %37 = ptrtoint ptr %c.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %c.sroa.0.i.i.i, align 4
  br label %if.end31.i.i.i

if.else.i.i.i:                                    ; preds = %if.then19.i.i.i
  %38 = load i8, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @out_clk_src_desc, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %32)
  %cmp27.i.i.i = icmp eq i8 %38, %32
  br i1 %cmp27.i.i.i, label %if.then29.i.i.i, label %if.else.i.i.i.if.end31.i.i.i_crit_edge

if.else.i.i.i.if.end31.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i.i.i

if.then29.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %39 = tail call i32 @llvm.bswap.i32(i32 %29) #12
  %40 = ptrtoint ptr %c.sroa.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %c.sroa.0.i.i.i, align 4
  br label %if.end31.i.i.i

if.end31.i.i.i:                                   ; preds = %if.then29.i.i.i, %if.else.i.i.i.if.end31.i.i.i_crit_edge, %if.then24.i.i.i
  %41 = tail call i16 @llvm.umin.i16(i16 %8, i16 4) #12
  %cond.i.i.i = zext i16 %41 to i32
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %5, align 4
  %44 = call ptr @memcpy(ptr %43, ptr %c.sroa.0.i.i.i, i32 %cond.i.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c.sroa.0.i.i.i)
  br label %if.then14

if.then39.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %46, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp43.i.i.i = icmp ne i16 %7, 0
  %..i.i.i = zext i1 %cmp43.i.i.i to i32
  br label %if.then14

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = and i16 %25, 255
  %conv16.i.i.i = zext i16 %48 to i32
  %gadget.i.i.i = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 1
  %49 = ptrtoint ptr %gadget.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %gadget.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %50, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123, i32 noundef 1450, i32 noundef %conv16.i.i.i) #16
  br label %cleanup

if.else53.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i
  %p_chmask.i.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %23, i32 0, i32 1
  %51 = ptrtoint ptr %p_chmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %p_chmask.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp54.not.i.i.i = icmp eq i32 %52, 0
  br i1 %cmp54.not.i.i.i, label %if.else53.i.i.i.lor.lhs.false65.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.else53.i.i.i.lor.lhs.false65.i.i.i_crit_edge:  ; preds = %if.else53.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false65.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.else53.i.i.i
  %p_mute_present.i.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %23, i32 0, i32 8
  %53 = ptrtoint ptr %p_mute_present.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %p_mute_present.i.i.i, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i.i.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false57.i.i.i, label %land.lhs.true.i.i.i.land.lhs.true60.i.i.i_crit_edge

land.lhs.true.i.i.i.land.lhs.true60.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true60.i.i.i

lor.lhs.false57.i.i.i:                            ; preds = %land.lhs.true.i.i.i
  %p_volume_present.i.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %23, i32 0, i32 9
  %55 = ptrtoint ptr %p_volume_present.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %p_volume_present.i.i.i, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool58.not.i.i.i = icmp eq i8 %56, 0
  br i1 %tobool58.not.i.i.i, label %lor.lhs.false57.i.i.i.lor.lhs.false65.i.i.i_crit_edge, label %lor.lhs.false57.i.i.i.land.lhs.true60.i.i.i_crit_edge

lor.lhs.false57.i.i.i.land.lhs.true60.i.i.i_crit_edge: ; preds = %lor.lhs.false57.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true60.i.i.i

lor.lhs.false57.i.i.i.lor.lhs.false65.i.i.i_crit_edge: ; preds = %lor.lhs.false57.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false65.i.i.i

land.lhs.true60.i.i.i:                            ; preds = %lor.lhs.false57.i.i.i.land.lhs.true60.i.i.i_crit_edge, %land.lhs.true.i.i.i.land.lhs.true60.i.i.i_crit_edge
  %57 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID.i.i.i = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %bUnitID.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bUnitID.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %32)
  %cmp63.i.i.i = icmp eq i8 %59, %32
  br i1 %cmp63.i.i.i, label %land.lhs.true60.i.i.i.land.lhs.true84.i.i.i_crit_edge, label %land.lhs.true60.i.i.i.lor.lhs.false65.i.i.i_crit_edge

land.lhs.true60.i.i.i.lor.lhs.false65.i.i.i_crit_edge: ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false65.i.i.i

land.lhs.true60.i.i.i.land.lhs.true84.i.i.i_crit_edge: ; preds = %land.lhs.true60.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true84.i.i.i

lor.lhs.false65.i.i.i:                            ; preds = %land.lhs.true60.i.i.i.lor.lhs.false65.i.i.i_crit_edge, %lor.lhs.false57.i.i.i.lor.lhs.false65.i.i.i_crit_edge, %if.else53.i.i.i.lor.lhs.false65.i.i.i_crit_edge
  %c_chmask.i.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %23, i32 0, i32 4
  %60 = ptrtoint ptr %c_chmask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %c_chmask.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp66.not.i.i.i = icmp eq i32 %61, 0
  br i1 %cmp66.not.i.i.i, label %lor.lhs.false65.i.i.i.do.end143.i.i.i_crit_edge, label %land.lhs.true68.i.i.i

lor.lhs.false65.i.i.i.do.end143.i.i.i_crit_edge:  ; preds = %lor.lhs.false65.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end143.i.i.i

land.lhs.true68.i.i.i:                            ; preds = %lor.lhs.false65.i.i.i
  %c_mute_present.i.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %23, i32 0, i32 13
  %62 = ptrtoint ptr %c_mute_present.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %c_mute_present.i.i.i, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool69.not.i.i.i = icmp eq i8 %63, 0
  br i1 %tobool69.not.i.i.i, label %lor.lhs.false71.i.i.i, label %land.lhs.true68.i.i.i.land.lhs.true74.i.i.i_crit_edge

land.lhs.true68.i.i.i.land.lhs.true74.i.i.i_crit_edge: ; preds = %land.lhs.true68.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true74.i.i.i

lor.lhs.false71.i.i.i:                            ; preds = %land.lhs.true68.i.i.i
  %c_volume_present.i.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %23, i32 0, i32 14
  %64 = ptrtoint ptr %c_volume_present.i.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %c_volume_present.i.i.i, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool72.not.i.i.i = icmp eq i8 %65, 0
  br i1 %tobool72.not.i.i.i, label %lor.lhs.false71.i.i.i.do.end143.i.i.i_crit_edge, label %lor.lhs.false71.i.i.i.land.lhs.true74.i.i.i_crit_edge

lor.lhs.false71.i.i.i.land.lhs.true74.i.i.i_crit_edge: ; preds = %lor.lhs.false71.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true74.i.i.i

lor.lhs.false71.i.i.i.do.end143.i.i.i_crit_edge:  ; preds = %lor.lhs.false71.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end143.i.i.i

land.lhs.true74.i.i.i:                            ; preds = %lor.lhs.false71.i.i.i.land.lhs.true74.i.i.i_crit_edge, %land.lhs.true68.i.i.i.land.lhs.true74.i.i.i_crit_edge
  %66 = load ptr, ptr @out_feature_unit_desc, align 4
  %bUnitID76.i.i.i = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %bUnitID76.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bUnitID76.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %32)
  %cmp78.i.i.i = icmp eq i8 %68, %32
  br i1 %cmp78.i.i.i, label %if.then80.i.i.i, label %land.lhs.true74.i.i.i.do.end143.i.i.i_crit_edge

land.lhs.true74.i.i.i.do.end143.i.i.i_crit_edge:  ; preds = %land.lhs.true74.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end143.i.i.i

if.then80.i.i.i:                                  ; preds = %land.lhs.true74.i.i.i
  br i1 %cmp54.not.i.i.i, label %if.then80.i.i.i.if.end99.i.i.i_crit_edge, label %if.then80.i.i.i.land.lhs.true84.i.i.i_crit_edge

if.then80.i.i.i.land.lhs.true84.i.i.i_crit_edge:  ; preds = %if.then80.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true84.i.i.i

if.then80.i.i.i.if.end99.i.i.i_crit_edge:         ; preds = %if.then80.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99.i.i.i

land.lhs.true84.i.i.i:                            ; preds = %if.then80.i.i.i.land.lhs.true84.i.i.i_crit_edge, %land.lhs.true60.i.i.i.land.lhs.true84.i.i.i_crit_edge
  %p_mute_present85.i.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %23, i32 0, i32 8
  %69 = ptrtoint ptr %p_mute_present85.i.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %p_mute_present85.i.i.i, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool86.not.i.i.i = icmp eq i8 %70, 0
  br i1 %tobool86.not.i.i.i, label %lor.lhs.false88.i.i.i, label %land.lhs.true84.i.i.i.land.lhs.true92.i.i.i_crit_edge

land.lhs.true84.i.i.i.land.lhs.true92.i.i.i_crit_edge: ; preds = %land.lhs.true84.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true92.i.i.i

lor.lhs.false88.i.i.i:                            ; preds = %land.lhs.true84.i.i.i
  %p_volume_present89.i.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %23, i32 0, i32 9
  %71 = ptrtoint ptr %p_volume_present89.i.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %p_volume_present89.i.i.i, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool90.not.i.i.i = icmp eq i8 %72, 0
  br i1 %tobool90.not.i.i.i, label %lor.lhs.false88.i.i.i.if.end99.i.i.i_crit_edge, label %lor.lhs.false88.i.i.i.land.lhs.true92.i.i.i_crit_edge

lor.lhs.false88.i.i.i.land.lhs.true92.i.i.i_crit_edge: ; preds = %lor.lhs.false88.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true92.i.i.i

lor.lhs.false88.i.i.i.if.end99.i.i.i_crit_edge:   ; preds = %lor.lhs.false88.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99.i.i.i

land.lhs.true92.i.i.i:                            ; preds = %lor.lhs.false88.i.i.i.land.lhs.true92.i.i.i_crit_edge, %land.lhs.true84.i.i.i.land.lhs.true92.i.i.i_crit_edge
  %73 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID94.i.i.i = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %bUnitID94.i.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bUnitID94.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %75, i8 %32)
  %cmp96.i.i.i = icmp eq i8 %75, %32
  %spec.select.i.i.i = zext i1 %cmp96.i.i.i to i32
  br label %if.end99.i.i.i

if.end99.i.i.i:                                   ; preds = %land.lhs.true92.i.i.i, %lor.lhs.false88.i.i.i.if.end99.i.i.i_crit_edge, %if.then80.i.i.i.if.end99.i.i.i_crit_edge
  %is_playback.0.i.i.i = phi i32 [ 0, %lor.lhs.false88.i.i.i.if.end99.i.i.i_crit_edge ], [ 0, %if.then80.i.i.i.if.end99.i.i.i_crit_edge ], [ %spec.select.i.i.i, %land.lhs.true92.i.i.i ]
  %trunc.i.i.i = trunc i16 %25 to i8
  %76 = zext i8 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %trunc.i.i.i, label %do.end134.i.i.i [
    i8 1, label %if.then103.i.i.i
    i8 2, label %if.then119.i.i.i
  ]

if.then103.i.i.i:                                 ; preds = %if.end99.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mute.i.i.i) #12
  %77 = ptrtoint ptr %mute.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %mute.i.i.i, align 4, !annotation !383
  %call104.i.i.i = call i32 @u_audio_get_mute(ptr noundef %fn, i32 noundef %is_playback.0.i.i.i, ptr noundef nonnull %mute.i.i.i) #12
  %78 = ptrtoint ptr %mute.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mute.i.i.i, align 4
  %conv105.i.i.i = trunc i32 %79 to i8
  %80 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %5, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv105.i.i.i, ptr %81, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp109.i.i.i = icmp ne i16 %7, 0
  %.199.i.i.i = zext i1 %cmp109.i.i.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mute.i.i.i) #12
  br label %if.then14

if.then119.i.i.i:                                 ; preds = %if.end99.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %c120.sroa.0.i.i.i)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %volume.i.i.i) #12
  %83 = ptrtoint ptr %volume.i.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 -1, ptr %volume.i.i.i, align 2, !annotation !383
  %call121.i.i.i = call i32 @u_audio_get_volume(ptr noundef %fn, i32 noundef %is_playback.0.i.i.i, ptr noundef nonnull %volume.i.i.i) #12
  %84 = ptrtoint ptr %volume.i.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %volume.i.i.i, align 2
  %86 = call i16 @llvm.bswap.i16(i16 %85) #12
  %87 = ptrtoint ptr %c120.sroa.0.i.i.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %c120.sroa.0.i.i.i, align 2
  %88 = call i16 @llvm.umin.i16(i16 %8, i16 2) #12
  %cond129.i.i.i = zext i16 %88 to i32
  %89 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %5, align 4
  %91 = call ptr @memcpy(ptr %90, ptr %c120.sroa.0.i.i.i, i32 %cond129.i.i.i)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %volume.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %c120.sroa.0.i.i.i)
  br label %if.then14

do.end134.i.i.i:                                  ; preds = %if.end99.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv6.mask198.i.i.i = and i16 %25, 255
  %conv100.i.i.i = zext i16 %conv6.mask198.i.i.i to i32
  %gadget135.i.i.i = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 1
  %92 = ptrtoint ptr %gadget135.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %gadget135.i.i.i, align 4
  %dev136.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %93, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev136.i.i.i, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123, i32 noundef 1480, i32 noundef %conv100.i.i.i) #16
  br label %cleanup

do.end143.i.i.i:                                  ; preds = %land.lhs.true74.i.i.i.do.end143.i.i.i_crit_edge, %lor.lhs.false71.i.i.i.do.end143.i.i.i_crit_edge, %lor.lhs.false65.i.i.i.do.end143.i.i.i_crit_edge
  %gadget144.i.i.i = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 1
  %94 = ptrtoint ptr %gadget144.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %gadget144.i.i.i, align 4
  %dev145.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %95, i32 0, i32 11
  %conv6.mask.i.i.i = and i16 %25, 255
  %conv147.i.i.i = zext i16 %conv6.mask.i.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev145.i.i.i, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.123, i32 noundef 1485, i32 noundef %conv9.i.i.i, i32 noundef %conv147.i.i.i) #16
  br label %cleanup

if.then6.i.i:                                     ; preds = %if.then8.i
  %fi.i.i16.i.i = getelementptr inbounds %struct.usb_function, ptr %fn, i32 0, i32 24
  %96 = ptrtoint ptr %fi.i.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fi.i.i16.i.i, align 4
  %wValue.i19.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %cr, i32 0, i32 2
  %98 = ptrtoint ptr %wValue.i19.i.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %wValue.i19.i.i, align 1
  %p_srate7.i20.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %97, i32 0, i32 2
  %100 = ptrtoint ptr %p_srate7.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %p_srate7.i20.i.i, align 4
  %c_srate8.i21.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %97, i32 0, i32 5
  %102 = ptrtoint ptr %c_srate8.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %c_srate8.i21.i.i, align 4
  %104 = and i16 %12, 255
  %conv9.i22.i.i = zext i16 %104 to i32
  %105 = load i8, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @in_clk_src_desc, i32 0, i32 3), align 1
  %106 = trunc i16 %12 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %105, i8 %106)
  %cmp.i23.i.i = icmp eq i8 %105, %106
  br i1 %cmp.i23.i.i, label %if.then.i26.i.i, label %lor.lhs.false.i25.i.i

lor.lhs.false.i25.i.i:                            ; preds = %if.then6.i.i
  %107 = load i8, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @out_clk_src_desc, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %107, i8 %106)
  %cmp14.i24.i.i = icmp eq i8 %107, %106
  br i1 %cmp14.i24.i.i, label %if.then.thread.i.i.i, label %if.else40.i.i.i

if.then.i26.i.i:                                  ; preds = %if.then6.i.i
  %108 = and i16 %99, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %108)
  %cmp17.i.i.i = icmp eq i16 %108, 1
  br i1 %cmp17.i.i.i, label %if.then24.i27.i.i, label %if.then.i26.i.i.do.end.i35.i.i_crit_edge

if.then.i26.i.i.do.end.i35.i.i_crit_edge:         ; preds = %if.then.i26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i35.i.i

if.then.thread.i.i.i:                             ; preds = %lor.lhs.false.i25.i.i
  %109 = and i16 %99, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %109)
  %cmp17184.i.i.i = icmp eq i16 %109, 1
  br i1 %cmp17184.i.i.i, label %if.then29.i30.i.i, label %if.then.thread.i.i.i.do.end.i35.i.i_crit_edge

if.then.thread.i.i.i.do.end.i35.i.i_crit_edge:    ; preds = %if.then.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i35.i.i

if.then24.i27.i.i:                                ; preds = %if.then.i26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %r.i.i.i)
  %r.i.i.i.2.r.i.i.i.2.r.i.i.2.r.i.i.2.r.i.2.r.i.2.r.2.r.2.r.2..sroa_idx = getelementptr inbounds i8, ptr %r.i.i.i, i32 2
  %r.i.i.i.6.r.i.i.i.6.r.i.i.6.r.i.i.6.r.i.6.r.i.6.r.6.r.6.r.6..sroa_idx56 = getelementptr inbounds i8, ptr %r.i.i.i, i32 6
  %r.i.i.i.10.r.i.i.i.10.r.i.i.10.r.i.i.10.r.i.10.r.i.10.r.10.r.10.r.10..sroa_idx57 = getelementptr inbounds i8, ptr %r.i.i.i, i32 10
  %110 = tail call i32 @llvm.bswap.i32(i32 %101) #12
  %111 = call ptr @memset(ptr %r.i.i.i.2.r.i.i.i.2.r.i.i.2.r.i.i.2.r.i.2.r.i.2.r.2.r.2.r.2..sroa_idx, i32 255, i32 12)
  br label %cleanup.thread.i.i.i

if.then29.i30.i.i:                                ; preds = %if.then.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %r.i.i.i)
  %r.i.i.i.2.r.i.i.i.2.r.i.i.2.r.i.i.2.r.i.2.r.i.2..sroa_idx = getelementptr inbounds i8, ptr %r.i.i.i, i32 2
  %112 = call ptr @memset(ptr %r.i.i.i.2.r.i.i.i.2.r.i.i.2.r.i.i.2.r.i.2.r.i.2..sroa_idx, i32 255, i32 12)
  %r.i.i.i.10.r.i.i.i.10.r.i.i.10.r.i.i.10.r.i.10.r.i.10.r.10.r.10.r.10..sroa_idx = getelementptr inbounds i8, ptr %r.i.i.i, i32 10
  %r.i.i.i.6.r.i.i.i.6.r.i.i.6.r.i.i.6.r.i.6.r.i.6.r.6.r.6.r.6..sroa_idx = getelementptr inbounds i8, ptr %r.i.i.i, i32 6
  %113 = tail call i32 @llvm.bswap.i32(i32 %103) #12
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %if.then29.i30.i.i, %if.then24.i27.i.i
  %r.10.r.10..sroa_idx192.i.i.i = phi ptr [ %r.i.i.i.10.r.i.i.i.10.r.i.i.10.r.i.i.10.r.i.10.r.i.10.r.10.r.10.r.10..sroa_idx57, %if.then24.i27.i.i ], [ %r.i.i.i.10.r.i.i.i.10.r.i.i.10.r.i.i.10.r.i.10.r.i.10.r.10.r.10.r.10..sroa_idx, %if.then29.i30.i.i ]
  %r.6.r.6..sroa_idx190.i.i.i = phi ptr [ %r.i.i.i.6.r.i.i.i.6.r.i.i.6.r.i.i.6.r.i.6.r.i.6.r.6.r.6.r.6..sroa_idx56, %if.then24.i27.i.i ], [ %r.i.i.i.6.r.i.i.i.6.r.i.i.6.r.i.i.6.r.i.6.r.i.6.r.6.r.6.r.6..sroa_idx, %if.then29.i30.i.i ]
  %r.2.r.2..sroa_idx188.i.i.i = phi ptr [ %r.i.i.i.2.r.i.i.i.2.r.i.i.2.r.i.i.2.r.i.2.r.i.2.r.2.r.2.r.2..sroa_idx, %if.then24.i27.i.i ], [ %r.i.i.i.2.r.i.i.i.2.r.i.i.2.r.i.i.2.r.i.2.r.i.2..sroa_idx, %if.then29.i30.i.i ]
  %storemerge.i.i.i = phi i32 [ %110, %if.then24.i27.i.i ], [ %113, %if.then29.i30.i.i ]
  %114 = ptrtoint ptr %r.2.r.2..sroa_idx188.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %114, i32 4)
  store i32 %storemerge.i.i.i, ptr %r.2.r.2..sroa_idx188.i.i.i, align 2
  %115 = ptrtoint ptr %r.6.r.6..sroa_idx190.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %115, i32 4)
  store i32 %storemerge.i.i.i, ptr %r.6.r.6..sroa_idx190.i.i.i, align 2
  %116 = ptrtoint ptr %r.10.r.10..sroa_idx192.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %116, i32 4)
  store i32 0, ptr %r.10.r.10..sroa_idx192.i.i.i, align 2
  %117 = ptrtoint ptr %r.i.i.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 256, ptr %r.i.i.i, align 2
  %118 = tail call i16 @llvm.umin.i16(i16 %8, i16 14) #12
  %cond.i31.i.i = zext i16 %118 to i32
  %119 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %5, align 4
  %121 = call ptr @memcpy(ptr %120, ptr %r.i.i.i, i32 %cond.i31.i.i)
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %r.i.i.i)
  br label %if.then14

do.end.i35.i.i:                                   ; preds = %if.then.thread.i.i.i.do.end.i35.i.i_crit_edge, %if.then.i26.i.i.do.end.i35.i.i_crit_edge
  %122 = phi i16 [ %109, %if.then.thread.i.i.i.do.end.i35.i.i_crit_edge ], [ %108, %if.then.i26.i.i.do.end.i35.i.i_crit_edge ]
  %conv16.i32.i.i = zext i16 %122 to i32
  %gadget.i33.i.i = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 1
  %123 = ptrtoint ptr %gadget.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %gadget.i33.i.i, align 4
  %dev.i34.i.i = getelementptr inbounds %struct.usb_gadget, ptr %124, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i34.i.i, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.129, i32 noundef 1528, i32 noundef %conv16.i32.i.i) #16
  br label %cleanup

if.else40.i.i.i:                                  ; preds = %lor.lhs.false.i25.i.i
  %p_chmask.i36.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %97, i32 0, i32 1
  %125 = ptrtoint ptr %p_chmask.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %p_chmask.i36.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp41.not.i.i.i = icmp eq i32 %126, 0
  br i1 %cmp41.not.i.i.i, label %if.else40.i.i.i.lor.lhs.false52.i.i.i_crit_edge, label %land.lhs.true.i39.i.i

if.else40.i.i.i.lor.lhs.false52.i.i.i_crit_edge:  ; preds = %if.else40.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false52.i.i.i

land.lhs.true.i39.i.i:                            ; preds = %if.else40.i.i.i
  %p_mute_present.i37.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %97, i32 0, i32 8
  %127 = ptrtoint ptr %p_mute_present.i37.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %p_mute_present.i37.i.i, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool.not.i38.i.i = icmp eq i8 %128, 0
  br i1 %tobool.not.i38.i.i, label %lor.lhs.false44.i.i.i, label %land.lhs.true.i39.i.i.land.lhs.true47.i.i.i_crit_edge

land.lhs.true.i39.i.i.land.lhs.true47.i.i.i_crit_edge: ; preds = %land.lhs.true.i39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true47.i.i.i

lor.lhs.false44.i.i.i:                            ; preds = %land.lhs.true.i39.i.i
  %p_volume_present.i40.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %97, i32 0, i32 9
  %129 = ptrtoint ptr %p_volume_present.i40.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %p_volume_present.i40.i.i, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool45.not.i.i.i = icmp eq i8 %130, 0
  br i1 %tobool45.not.i.i.i, label %lor.lhs.false44.i.i.i.lor.lhs.false52.i.i.i_crit_edge, label %lor.lhs.false44.i.i.i.land.lhs.true47.i.i.i_crit_edge

lor.lhs.false44.i.i.i.land.lhs.true47.i.i.i_crit_edge: ; preds = %lor.lhs.false44.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true47.i.i.i

lor.lhs.false44.i.i.i.lor.lhs.false52.i.i.i_crit_edge: ; preds = %lor.lhs.false44.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false52.i.i.i

land.lhs.true47.i.i.i:                            ; preds = %lor.lhs.false44.i.i.i.land.lhs.true47.i.i.i_crit_edge, %land.lhs.true.i39.i.i.land.lhs.true47.i.i.i_crit_edge
  %131 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID.i41.i.i = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %bUnitID.i41.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %bUnitID.i41.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %133, i8 %106)
  %cmp50.i.i.i = icmp eq i8 %133, %106
  br i1 %cmp50.i.i.i, label %land.lhs.true47.i.i.i.land.lhs.true71.i.i.i_crit_edge, label %land.lhs.true47.i.i.i.lor.lhs.false52.i.i.i_crit_edge

land.lhs.true47.i.i.i.lor.lhs.false52.i.i.i_crit_edge: ; preds = %land.lhs.true47.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false52.i.i.i

land.lhs.true47.i.i.i.land.lhs.true71.i.i.i_crit_edge: ; preds = %land.lhs.true47.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true71.i.i.i

lor.lhs.false52.i.i.i:                            ; preds = %land.lhs.true47.i.i.i.lor.lhs.false52.i.i.i_crit_edge, %lor.lhs.false44.i.i.i.lor.lhs.false52.i.i.i_crit_edge, %if.else40.i.i.i.lor.lhs.false52.i.i.i_crit_edge
  %c_chmask.i42.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %97, i32 0, i32 4
  %134 = ptrtoint ptr %c_chmask.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %c_chmask.i42.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp53.not.i.i.i = icmp eq i32 %135, 0
  br i1 %cmp53.not.i.i.i, label %lor.lhs.false52.i.i.i.do.end117.i.i.i_crit_edge, label %land.lhs.true55.i.i.i

lor.lhs.false52.i.i.i.do.end117.i.i.i_crit_edge:  ; preds = %lor.lhs.false52.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end117.i.i.i

land.lhs.true55.i.i.i:                            ; preds = %lor.lhs.false52.i.i.i
  %c_mute_present.i43.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %97, i32 0, i32 13
  %136 = ptrtoint ptr %c_mute_present.i43.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %c_mute_present.i43.i.i, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool56.not.i.i.i = icmp eq i8 %137, 0
  br i1 %tobool56.not.i.i.i, label %lor.lhs.false58.i.i.i, label %land.lhs.true55.i.i.i.land.lhs.true61.i.i.i_crit_edge

land.lhs.true55.i.i.i.land.lhs.true61.i.i.i_crit_edge: ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true61.i.i.i

lor.lhs.false58.i.i.i:                            ; preds = %land.lhs.true55.i.i.i
  %c_volume_present.i44.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %97, i32 0, i32 14
  %138 = ptrtoint ptr %c_volume_present.i44.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %c_volume_present.i44.i.i, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool59.not.i.i.i = icmp eq i8 %139, 0
  br i1 %tobool59.not.i.i.i, label %lor.lhs.false58.i.i.i.do.end117.i.i.i_crit_edge, label %lor.lhs.false58.i.i.i.land.lhs.true61.i.i.i_crit_edge

lor.lhs.false58.i.i.i.land.lhs.true61.i.i.i_crit_edge: ; preds = %lor.lhs.false58.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true61.i.i.i

lor.lhs.false58.i.i.i.do.end117.i.i.i_crit_edge:  ; preds = %lor.lhs.false58.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end117.i.i.i

land.lhs.true61.i.i.i:                            ; preds = %lor.lhs.false58.i.i.i.land.lhs.true61.i.i.i_crit_edge, %land.lhs.true55.i.i.i.land.lhs.true61.i.i.i_crit_edge
  %140 = load ptr, ptr @out_feature_unit_desc, align 4
  %bUnitID63.i.i.i = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %140, i32 0, i32 3
  %141 = ptrtoint ptr %bUnitID63.i.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %bUnitID63.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %142, i8 %106)
  %cmp65.i.i.i = icmp eq i8 %142, %106
  br i1 %cmp65.i.i.i, label %if.then67.i.i.i, label %land.lhs.true61.i.i.i.do.end117.i.i.i_crit_edge

land.lhs.true61.i.i.i.do.end117.i.i.i_crit_edge:  ; preds = %land.lhs.true61.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end117.i.i.i

if.then67.i.i.i:                                  ; preds = %land.lhs.true61.i.i.i
  br i1 %cmp41.not.i.i.i, label %if.then67.i.i.i.if.end86.i.i.i_crit_edge, label %if.then67.i.i.i.land.lhs.true71.i.i.i_crit_edge

if.then67.i.i.i.land.lhs.true71.i.i.i_crit_edge:  ; preds = %if.then67.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true71.i.i.i

if.then67.i.i.i.if.end86.i.i.i_crit_edge:         ; preds = %if.then67.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86.i.i.i

land.lhs.true71.i.i.i:                            ; preds = %if.then67.i.i.i.land.lhs.true71.i.i.i_crit_edge, %land.lhs.true47.i.i.i.land.lhs.true71.i.i.i_crit_edge
  %p_mute_present72.i.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %97, i32 0, i32 8
  %143 = ptrtoint ptr %p_mute_present72.i.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %p_mute_present72.i.i.i, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool73.not.i.i.i = icmp eq i8 %144, 0
  br i1 %tobool73.not.i.i.i, label %lor.lhs.false75.i.i.i, label %land.lhs.true71.i.i.i.land.lhs.true79.i.i.i_crit_edge

land.lhs.true71.i.i.i.land.lhs.true79.i.i.i_crit_edge: ; preds = %land.lhs.true71.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true79.i.i.i

lor.lhs.false75.i.i.i:                            ; preds = %land.lhs.true71.i.i.i
  %p_volume_present76.i.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %97, i32 0, i32 9
  %145 = ptrtoint ptr %p_volume_present76.i.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %p_volume_present76.i.i.i, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool77.not.i.i.i = icmp eq i8 %146, 0
  br i1 %tobool77.not.i.i.i, label %lor.lhs.false75.i.i.i.if.end86.i.i.i_crit_edge, label %lor.lhs.false75.i.i.i.land.lhs.true79.i.i.i_crit_edge

lor.lhs.false75.i.i.i.land.lhs.true79.i.i.i_crit_edge: ; preds = %lor.lhs.false75.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true79.i.i.i

lor.lhs.false75.i.i.i.if.end86.i.i.i_crit_edge:   ; preds = %lor.lhs.false75.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86.i.i.i

land.lhs.true79.i.i.i:                            ; preds = %lor.lhs.false75.i.i.i.land.lhs.true79.i.i.i_crit_edge, %land.lhs.true71.i.i.i.land.lhs.true79.i.i.i_crit_edge
  %147 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID81.i.i.i = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %147, i32 0, i32 3
  %148 = ptrtoint ptr %bUnitID81.i.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %bUnitID81.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %149, i8 %106)
  %cmp83.i.i.i = icmp ne i8 %149, %106
  br label %if.end86.i.i.i

if.end86.i.i.i:                                   ; preds = %land.lhs.true79.i.i.i, %lor.lhs.false75.i.i.i.if.end86.i.i.i_crit_edge, %if.then67.i.i.i.if.end86.i.i.i_crit_edge
  %tobool92.not.i.i.i = phi i1 [ true, %lor.lhs.false75.i.i.i.if.end86.i.i.i_crit_edge ], [ true, %if.then67.i.i.i.if.end86.i.i.i_crit_edge ], [ %cmp83.i.i.i, %land.lhs.true79.i.i.i ]
  %conv6.mask177.i.i.i = and i16 %99, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %conv6.mask177.i.i.i)
  %cmp88.i.i.i = icmp eq i16 %conv6.mask177.i.i.i, 2
  br i1 %cmp88.i.i.i, label %if.then90.i.i.i, label %do.end109.i.i.i

if.then90.i.i.i:                                  ; preds = %if.end86.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %r91.i.i.i)
  %p_volume_max.i.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %97, i32 0, i32 11
  %p_volume_min.i.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %97, i32 0, i32 10
  %p_volume_res.i.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %97, i32 0, i32 12
  %c_volume_max.i.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %97, i32 0, i32 16
  %c_volume_min.i.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %97, i32 0, i32 15
  %c_volume_res.i.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %97, i32 0, i32 17
  %max_db.0.in.i.i.i = select i1 %tobool92.not.i.i.i, ptr %c_volume_max.i.i.i, ptr %p_volume_max.i.i.i
  %min_db.0.in.i.i.i = select i1 %tobool92.not.i.i.i, ptr %c_volume_min.i.i.i, ptr %p_volume_min.i.i.i
  %res_db.0.in.i.i.i = select i1 %tobool92.not.i.i.i, ptr %c_volume_res.i.i.i, ptr %p_volume_res.i.i.i
  %150 = ptrtoint ptr %res_db.0.in.i.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %res_db.0.i.i.i = load i16, ptr %res_db.0.in.i.i.i, align 2
  %151 = ptrtoint ptr %min_db.0.in.i.i.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %min_db.0.i.i.i = load i16, ptr %min_db.0.in.i.i.i, align 2
  %152 = ptrtoint ptr %max_db.0.in.i.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %max_db.0.i.i.i = load i16, ptr %max_db.0.in.i.i.i, align 4
  %153 = tail call i16 @llvm.bswap.i16(i16 %max_db.0.i.i.i) #12
  %r91.i.i.i.4.r91.i.i.i.4.r91.i.i.4.r91.i.i.4.r91.i.4.r91.i.4.r91.4.r91.4.r91.4..sroa_idx = getelementptr inbounds i8, ptr %r91.i.i.i, i32 4
  %154 = ptrtoint ptr %r91.i.i.i.4.r91.i.i.i.4.r91.i.i.4.r91.i.i.4.r91.i.4.r91.i.4.r91.4.r91.4.r91.4..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %153, ptr %r91.i.i.i.4.r91.i.i.i.4.r91.i.i.4.r91.i.i.4.r91.i.4.r91.i.4.r91.4.r91.4.r91.4..sroa_idx, align 2
  %155 = tail call i16 @llvm.bswap.i16(i16 %min_db.0.i.i.i) #12
  %r91.i.i.i.2.r91.i.i.i.2.r91.i.i.2.r91.i.i.2.r91.i.2.r91.i.2.r91.2.r91.2.r91.2..sroa_idx = getelementptr inbounds i8, ptr %r91.i.i.i, i32 2
  %156 = ptrtoint ptr %r91.i.i.i.2.r91.i.i.i.2.r91.i.i.2.r91.i.i.2.r91.i.2.r91.i.2.r91.2.r91.2.r91.2..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %155, ptr %r91.i.i.i.2.r91.i.i.i.2.r91.i.i.2.r91.i.i.2.r91.i.2.r91.i.2.r91.2.r91.2.r91.2..sroa_idx, align 2
  %157 = tail call i16 @llvm.bswap.i16(i16 %res_db.0.i.i.i) #12
  %r91.i.i.i.6.r91.i.i.i.6.r91.i.i.6.r91.i.i.6.r91.i.6.r91.i.6.r91.6.r91.6.r91.6..sroa_idx = getelementptr inbounds i8, ptr %r91.i.i.i, i32 6
  %158 = ptrtoint ptr %r91.i.i.i.6.r91.i.i.i.6.r91.i.i.6.r91.i.i.6.r91.i.6.r91.i.6.r91.6.r91.6.r91.6..sroa_idx to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %157, ptr %r91.i.i.i.6.r91.i.i.i.6.r91.i.i.6.r91.i.i.6.r91.i.6.r91.i.6.r91.6.r91.6.r91.6..sroa_idx, align 2
  %159 = ptrtoint ptr %r91.i.i.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 256, ptr %r91.i.i.i, align 2
  %160 = tail call i16 @llvm.umin.i16(i16 %8, i16 8) #12
  %cond104.i.i.i = zext i16 %160 to i32
  %161 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %5, align 4
  %163 = call ptr @memcpy(ptr %162, ptr %r91.i.i.i, i32 %cond104.i.i.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %r91.i.i.i)
  br label %if.then14

do.end109.i.i.i:                                  ; preds = %if.end86.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv87.i.i.i = zext i16 %conv6.mask177.i.i.i to i32
  %gadget110.i.i.i = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 1
  %164 = ptrtoint ptr %gadget110.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %gadget110.i.i.i, align 4
  %dev111.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %165, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev111.i.i.i, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.129, i32 noundef 1561, i32 noundef %conv87.i.i.i) #16
  br label %cleanup

do.end117.i.i.i:                                  ; preds = %land.lhs.true61.i.i.i.do.end117.i.i.i_crit_edge, %lor.lhs.false58.i.i.i.do.end117.i.i.i_crit_edge, %lor.lhs.false52.i.i.i.do.end117.i.i.i_crit_edge
  %gadget118.i.i.i = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 1
  %166 = ptrtoint ptr %gadget118.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %gadget118.i.i.i, align 4
  %dev119.i.i.i = getelementptr inbounds %struct.usb_gadget, ptr %167, i32 0, i32 11
  %conv6.mask.i45.i.i = and i16 %99, 255
  %conv121.i.i.i = zext i16 %conv6.mask.i45.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev119.i.i.i, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.129, i32 noundef 1566, i32 noundef %conv9.i22.i.i, i32 noundef %conv121.i.i.i) #16
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp11.i = icmp eq i8 %20, 1
  br i1 %cmp11.i, label %if.then13.i, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then13.i:                                      ; preds = %if.else.i
  %fi.i.i.i = getelementptr inbounds %struct.usb_function, ptr %fn, i32 0, i32 24
  %168 = ptrtoint ptr %fi.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %fi.i.i.i, align 4
  %wValue.i.i = getelementptr inbounds %struct.usb_ctrlrequest, ptr %cr, i32 0, i32 2
  %170 = ptrtoint ptr %wValue.i.i to i32
  call void @__asan_loadN_noabort(i32 %170, i32 2)
  %171 = load i16, ptr %wValue.i.i, align 1
  %172 = and i16 %12, 255
  %conv8.i.i = zext i16 %172 to i32
  %173 = load i8, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @in_clk_src_desc, i32 0, i32 3), align 1
  %174 = trunc i16 %12 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %173, i8 %174)
  %cmp.i.i = icmp eq i8 %173, %174
  br i1 %cmp.i.i, label %if.then13.i.if.then.i27.i_crit_edge, label %lor.lhs.false.i.i

if.then13.i.if.then.i27.i_crit_edge:              ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i27.i

lor.lhs.false.i.i:                                ; preds = %if.then13.i
  %175 = load i8, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @out_clk_src_desc, i32 0, i32 3), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %175, i8 %174)
  %cmp13.i.i = icmp eq i8 %175, %174
  br i1 %cmp13.i.i, label %lor.lhs.false.i.i.if.then.i27.i_crit_edge, label %if.else.i.i

lor.lhs.false.i.i.if.then.i27.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i27.i

if.then.i27.i:                                    ; preds = %lor.lhs.false.i.i.if.then.i27.i_crit_edge, %if.then13.i.if.then.i27.i_crit_edge
  %176 = and i16 %171, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %176)
  %cmp16.i.i = icmp eq i16 %176, 1
  %conv19.i.i = zext i16 %8 to i32
  br i1 %cmp16.i.i, label %if.then.i27.i.if.then14_crit_edge, label %if.then.i27.i.cleanup_crit_edge

if.then.i27.i.cleanup_crit_edge:                  ; preds = %if.then.i27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i27.i.if.then14_crit_edge:                ; preds = %if.then.i27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  %p_chmask.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %169, i32 0, i32 1
  %177 = ptrtoint ptr %p_chmask.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %p_chmask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp20.not.i.i = icmp eq i32 %178, 0
  br i1 %cmp20.not.i.i, label %if.else.i.i.lor.lhs.false31.i.i_crit_edge, label %land.lhs.true.i.i

if.else.i.i.lor.lhs.false31.i.i_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false31.i.i

land.lhs.true.i.i:                                ; preds = %if.else.i.i
  %p_mute_present.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %169, i32 0, i32 8
  %179 = ptrtoint ptr %p_mute_present.i.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %p_mute_present.i.i, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool.not.i.i = icmp eq i8 %180, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false23.i.i, label %land.lhs.true.i.i.land.lhs.true26.i.i_crit_edge

land.lhs.true.i.i.land.lhs.true26.i.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true26.i.i

lor.lhs.false23.i.i:                              ; preds = %land.lhs.true.i.i
  %p_volume_present.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %169, i32 0, i32 9
  %181 = ptrtoint ptr %p_volume_present.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %p_volume_present.i.i, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool24.not.i.i = icmp eq i8 %182, 0
  br i1 %tobool24.not.i.i, label %lor.lhs.false23.i.i.lor.lhs.false31.i.i_crit_edge, label %lor.lhs.false23.i.i.land.lhs.true26.i.i_crit_edge

lor.lhs.false23.i.i.land.lhs.true26.i.i_crit_edge: ; preds = %lor.lhs.false23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true26.i.i

lor.lhs.false23.i.i.lor.lhs.false31.i.i_crit_edge: ; preds = %lor.lhs.false23.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false31.i.i

land.lhs.true26.i.i:                              ; preds = %lor.lhs.false23.i.i.land.lhs.true26.i.i_crit_edge, %land.lhs.true.i.i.land.lhs.true26.i.i_crit_edge
  %183 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID.i.i = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %183, i32 0, i32 3
  %184 = ptrtoint ptr %bUnitID.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %bUnitID.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %185, i8 %174)
  %cmp29.i.i = icmp eq i8 %185, %174
  br i1 %cmp29.i.i, label %land.lhs.true26.i.i.if.then46.i.i_crit_edge, label %land.lhs.true26.i.i.lor.lhs.false31.i.i_crit_edge

land.lhs.true26.i.i.lor.lhs.false31.i.i_crit_edge: ; preds = %land.lhs.true26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false31.i.i

land.lhs.true26.i.i.if.then46.i.i_crit_edge:      ; preds = %land.lhs.true26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46.i.i

lor.lhs.false31.i.i:                              ; preds = %land.lhs.true26.i.i.lor.lhs.false31.i.i_crit_edge, %lor.lhs.false23.i.i.lor.lhs.false31.i.i_crit_edge, %if.else.i.i.lor.lhs.false31.i.i_crit_edge
  %c_chmask.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %169, i32 0, i32 4
  %186 = ptrtoint ptr %c_chmask.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %c_chmask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp32.not.i.i = icmp eq i32 %187, 0
  br i1 %cmp32.not.i.i, label %lor.lhs.false31.i.i.do.end.i.i_crit_edge, label %land.lhs.true34.i.i

lor.lhs.false31.i.i.do.end.i.i_crit_edge:         ; preds = %lor.lhs.false31.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

land.lhs.true34.i.i:                              ; preds = %lor.lhs.false31.i.i
  %c_mute_present.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %169, i32 0, i32 13
  %188 = ptrtoint ptr %c_mute_present.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %c_mute_present.i.i, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool35.not.i.i = icmp eq i8 %189, 0
  br i1 %tobool35.not.i.i, label %lor.lhs.false37.i.i, label %land.lhs.true34.i.i.land.lhs.true40.i.i_crit_edge

land.lhs.true34.i.i.land.lhs.true40.i.i_crit_edge: ; preds = %land.lhs.true34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true40.i.i

lor.lhs.false37.i.i:                              ; preds = %land.lhs.true34.i.i
  %c_volume_present.i.i = getelementptr inbounds %struct.f_uac2_opts, ptr %169, i32 0, i32 14
  %190 = ptrtoint ptr %c_volume_present.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %c_volume_present.i.i, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool38.not.i.i = icmp eq i8 %191, 0
  br i1 %tobool38.not.i.i, label %lor.lhs.false37.i.i.do.end.i.i_crit_edge, label %lor.lhs.false37.i.i.land.lhs.true40.i.i_crit_edge

lor.lhs.false37.i.i.land.lhs.true40.i.i_crit_edge: ; preds = %lor.lhs.false37.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true40.i.i

lor.lhs.false37.i.i.do.end.i.i_crit_edge:         ; preds = %lor.lhs.false37.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

land.lhs.true40.i.i:                              ; preds = %lor.lhs.false37.i.i.land.lhs.true40.i.i_crit_edge, %land.lhs.true34.i.i.land.lhs.true40.i.i_crit_edge
  %192 = load ptr, ptr @out_feature_unit_desc, align 4
  %bUnitID42.i.i = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %192, i32 0, i32 3
  %193 = ptrtoint ptr %bUnitID42.i.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %bUnitID42.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %194, i8 %174)
  %cmp44.i.i = icmp eq i8 %194, %174
  br i1 %cmp44.i.i, label %land.lhs.true40.i.i.if.then46.i.i_crit_edge, label %land.lhs.true40.i.i.do.end.i.i_crit_edge

land.lhs.true40.i.i.do.end.i.i_crit_edge:         ; preds = %land.lhs.true40.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

land.lhs.true40.i.i.if.then46.i.i_crit_edge:      ; preds = %land.lhs.true40.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46.i.i

if.then46.i.i:                                    ; preds = %land.lhs.true40.i.i.if.then46.i.i_crit_edge, %land.lhs.true26.i.i.if.then46.i.i_crit_edge
  %setup_cr.i.i = getelementptr inbounds %struct.f_uac2, ptr %fn, i32 0, i32 7
  %195 = ptrtoint ptr %cr to i32
  call void @__asan_loadN_noabort(i32 %195, i32 8)
  %196 = load i64, ptr %cr, align 1
  %197 = ptrtoint ptr %setup_cr.i.i to i32
  call void @__asan_storeN_noabort(i32 %197, i32 8)
  store i64 %196, ptr %setup_cr.i.i, align 2
  %context.i.i = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 8
  %198 = ptrtoint ptr %context.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %fn, ptr %context.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 7
  %199 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr @out_rq_cur_complete, ptr %complete.i.i, align 4
  %conv47.i.i = zext i16 %8 to i32
  br label %if.then14

do.end.i.i:                                       ; preds = %land.lhs.true40.i.i.do.end.i.i_crit_edge, %lor.lhs.false37.i.i.do.end.i.i_crit_edge, %lor.lhs.false31.i.i.do.end.i.i_crit_edge
  %gadget.i.i = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 1
  %200 = ptrtoint ptr %gadget.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %gadget.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.usb_gadget, ptr %201, i32 0, i32 11
  %conv7.mask.i.i = and i16 %171, 255
  %conv50.i.i = zext i16 %conv7.mask.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.134, i32 noundef 1657, i32 noundef %conv8.i.i, i32 noundef %conv50.i.i) #16
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %gadget = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 1
  %202 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %gadget, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %203, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.118, i32 noundef 1701) #16
  br label %cleanup

if.then14:                                        ; preds = %if.then46.i.i, %if.then.i27.i.if.then14_crit_edge, %if.then90.i.i.i, %cleanup.thread.i.i.i, %if.then119.i.i.i, %if.then103.i.i.i, %if.then39.i.i.i, %if.end31.i.i.i
  %value.0 = phi i32 [ %cond.i.i.i, %if.end31.i.i.i ], [ %..i.i.i, %if.then39.i.i.i ], [ %.199.i.i.i, %if.then103.i.i.i ], [ %cond129.i.i.i, %if.then119.i.i.i ], [ %cond104.i.i.i, %if.then90.i.i.i ], [ %cond.i31.i.i, %cleanup.thread.i.i.i ], [ %conv47.i.i, %if.then46.i.i ], [ %conv19.i.i, %if.then.i27.i.if.then14_crit_edge ]
  %length = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 1
  %204 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %value.0, ptr %length, align 4
  %conv15 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %value.0, i32 %conv15)
  %cmp16 = icmp ult i32 %value.0, %conv15
  %zero = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 6
  %205 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %205)
  %bf.load = load i32, ptr %zero, align 4
  %bf.shl = select i1 %cmp16, i32 8192, i32 0
  %bf.clear = and i32 %bf.load, -8193
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %zero, align 4
  %206 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %3, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %207, i32 0, i32 3
  %208 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ep0, align 4
  %call19 = call i32 @usb_ep_queue(ptr noundef %209, ptr noundef %5, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end25, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end25:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %gadget26 = getelementptr inbounds %struct.g_audio, ptr %fn, i32 0, i32 1
  %210 = ptrtoint ptr %gadget26 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %gadget26, align 4
  %dev27 = getelementptr inbounds %struct.usb_gadget, ptr %211, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.118, i32 noundef 1709) #16
  %status = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 11
  %212 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 0, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %if.then14.cleanup_crit_edge, %do.end, %do.end.i.i, %if.then.i27.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %do.end117.i.i.i, %do.end109.i.i.i, %do.end.i35.i.i, %do.end143.i.i.i, %do.end134.i.i.i, %do.end.i.i.i, %if.then8.i.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call19, %do.end25 ], [ %call19, %if.then14.cleanup_crit_edge ], [ -95, %do.end ], [ -95, %do.end.i ], [ -95, %if.else.i.cleanup_crit_edge ], [ -95, %if.then8.i.cleanup_crit_edge ], [ -95, %do.end.i.i.i ], [ -95, %do.end143.i.i.i ], [ -95, %do.end134.i.i.i ], [ -95, %do.end.i35.i.i ], [ -95, %do.end117.i.i.i ], [ -95, %do.end109.i.i.i ], [ -95, %do.end.i.i ], [ -95, %if.then.i27.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afunc_free(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi, align 4
  tail call void @kfree(ptr noundef %f) #12
  %lock = getelementptr inbounds %struct.f_uac2_opts, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %refcnt = getelementptr inbounds %struct.f_uac2_opts, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcnt, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afunc_notify(ptr noundef %agdev, i32 noundef %unit_id, i32 noundef %cs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %int_ep = getelementptr inbounds %struct.f_uac2, ptr %agdev, i32 0, i32 8
  %0 = ptrtoint ptr %int_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %int_ep, align 4
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %int_count = getelementptr inbounds %struct.f_uac2, ptr %agdev, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %int_count, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !385
  tail call void @llvm.prefetch.p0(ptr %int_count, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %int_count, ptr %int_count, i32 1, ptr elementtype(i32) %int_count) #12, !srcloc !386
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !387
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %asmresult.i.i.i.i)
  %cmp = icmp sgt i32 %asmresult.i.i.i.i, 10
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i50 = tail call zeroext i1 @__kasan_check_write(ptr noundef %int_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %int_count, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %int_count, ptr %int_count, i32 1, ptr elementtype(i32) %int_count) #12, !srcloc !388
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %int_ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %int_ep, align 4
  %call6 = tail call ptr @usb_ep_alloc_request(ptr noundef %7, i32 noundef 2592) #12
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %if.end4.err_dec_int_count_crit_edge, label %if.end9

if.end4.err_dec_int_count_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_dec_int_count

if.end9:                                          ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 6) #15
  %cmp11 = icmp eq ptr %call7.i.i, null
  br i1 %cmp11, label %if.end9.err_free_request_crit_edge, label %if.end13

if.end9.err_free_request_crit_edge:               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_request

if.end13:                                         ; preds = %if.end9
  %shl = shl i32 %unit_id, 8
  %ac_intf = getelementptr inbounds %struct.f_uac2, ptr %agdev, i32 0, i32 1
  %9 = ptrtoint ptr %ac_intf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ac_intf, align 4
  %conv = zext i8 %10 to i32
  %or = or i32 %shl, %conv
  %conv14 = trunc i32 %or to i16
  %cs.tr = trunc i32 %cs to i16
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %call7.i.i, align 8
  %bAttribute = getelementptr inbounds %struct.uac2_interrupt_data_msg, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %bAttribute to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %bAttribute, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv14)
  %wIndex = getelementptr inbounds %struct.uac2_interrupt_data_msg, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %wIndex to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %wIndex, align 4
  %15 = and i16 %cs.tr, 255
  %wValue = getelementptr inbounds %struct.uac2_interrupt_data_msg, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %wValue to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %wValue, align 2
  %length = getelementptr inbounds %struct.usb_request, ptr %call6, i32 0, i32 1
  %17 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 6, ptr %length, align 4
  %18 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %call6, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %call6, i32 0, i32 8
  %19 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %agdev, ptr %context, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %call6, i32 0, i32 7
  %20 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @afunc_notify_complete, ptr %complete, align 4
  %21 = ptrtoint ptr %int_ep to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %int_ep, align 4
  %call18 = tail call i32 @usb_ep_queue(ptr noundef %22, ptr noundef nonnull %call6, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end13.cleanup_crit_edge, label %err_free_msg

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_free_msg:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %err_free_request

err_free_request:                                 ; preds = %err_free_msg, %if.end9.err_free_request_crit_edge
  %ret.0 = phi i32 [ %call18, %err_free_msg ], [ -12, %if.end9.err_free_request_crit_edge ]
  %23 = ptrtoint ptr %int_ep to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %int_ep, align 4
  tail call void @usb_ep_free_request(ptr noundef %24, ptr noundef nonnull %call6) #12
  br label %err_dec_int_count

err_dec_int_count:                                ; preds = %err_free_request, %if.end4.err_dec_int_count_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_free_request ], [ -12, %if.end4.err_dec_int_count_crit_edge ]
  %call.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef %int_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %int_count, i32 1, i32 3, i32 1) #12
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %int_count, ptr %int_count, i32 1, ptr elementtype(i32) %int_count) #12, !srcloc !388
  br label %cleanup

cleanup:                                          ; preds = %err_dec_int_count, %if.end13.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then2 ], [ %ret.1, %err_dec_int_count ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g_audio_setup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @setup_headers(ptr nocapture noundef readonly %opts, ptr noundef writeonly %headers, i32 noundef %speed) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %speed, label %sw.default [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 3, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %entry.sw.epilog_crit_edge
  %epout_desc_comp.0 = phi ptr [ @ss_epout_desc_comp, %sw.default ], [ null, %sw.bb1 ], [ null, %entry.sw.epilog_crit_edge ]
  %tobool111.not = phi i1 [ false, %sw.default ], [ true, %sw.bb1 ], [ true, %entry.sw.epilog_crit_edge ]
  %epin_desc_comp.0 = phi ptr [ @ss_epin_desc_comp, %sw.default ], [ null, %sw.bb1 ], [ null, %entry.sw.epilog_crit_edge ]
  %epin_fback_desc_comp.0 = phi ptr [ @ss_epin_fback_desc_comp, %sw.default ], [ null, %sw.bb1 ], [ null, %entry.sw.epilog_crit_edge ]
  %epout_desc.0 = phi ptr [ @ss_epout_desc, %sw.default ], [ @hs_epout_desc, %sw.bb1 ], [ @fs_epout_desc, %entry.sw.epilog_crit_edge ]
  %epin_desc.0 = phi ptr [ @ss_epin_desc, %sw.default ], [ @hs_epin_desc, %sw.bb1 ], [ @fs_epin_desc, %entry.sw.epilog_crit_edge ]
  %epin_fback_desc.0 = phi ptr [ @ss_epin_fback_desc, %sw.default ], [ @hs_epin_fback_desc, %sw.bb1 ], [ @fs_epin_fback_desc, %entry.sw.epilog_crit_edge ]
  %ep_int_desc.0 = phi ptr [ @ss_ep_int_desc, %sw.default ], [ @hs_ep_int_desc, %sw.bb1 ], [ @fs_ep_int_desc, %entry.sw.epilog_crit_edge ]
  %1 = ptrtoint ptr %headers to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @iad_desc, ptr %headers, align 4
  %arrayidx3 = getelementptr ptr, ptr %headers, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @std_ac_if_desc, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr ptr, ptr %headers, i32 2
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ac_hdr_desc, ptr %arrayidx5, align 4
  %p_chmask = getelementptr inbounds %struct.f_uac2_opts, ptr %opts, i32 0, i32 1
  %4 = ptrtoint ptr %p_chmask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p_chmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx7 = getelementptr ptr, ptr %headers, i32 3
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @in_clk_src_desc, ptr %arrayidx7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %i.0 = phi i32 [ 4, %if.then ], [ 3, %sw.epilog.if.end_crit_edge ]
  %c_chmask = getelementptr inbounds %struct.f_uac2_opts, ptr %opts, i32 0, i32 4
  %7 = ptrtoint ptr %c_chmask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %c_chmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8.not = icmp eq i32 %8, 0
  br i1 %cmp8.not, label %if.end.if.end21_crit_edge, label %if.then9

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then9:                                         ; preds = %if.end
  %inc10 = add nuw nsw i32 %i.0, 1
  %arrayidx11 = getelementptr ptr, ptr %headers, i32 %i.0
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @out_clk_src_desc, ptr %arrayidx11, align 4
  %inc12 = add nuw nsw i32 %i.0, 2
  %arrayidx13 = getelementptr ptr, ptr %headers, i32 %inc10
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @usb_out_it_desc, ptr %arrayidx13, align 4
  %11 = ptrtoint ptr %c_chmask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %c_chmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp15.not = icmp eq i32 %12, 0
  br i1 %cmp15.not, label %if.then9.if.end21_crit_edge, label %land.lhs.true

if.then9.if.end21_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

land.lhs.true:                                    ; preds = %if.then9
  %c_mute_present = getelementptr inbounds %struct.f_uac2_opts, ptr %opts, i32 0, i32 13
  %13 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %c_mute_present, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true.if.then17_crit_edge

land.lhs.true.if.then17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

lor.lhs.false:                                    ; preds = %land.lhs.true
  %c_volume_present = getelementptr inbounds %struct.f_uac2_opts, ptr %opts, i32 0, i32 14
  %15 = ptrtoint ptr %c_volume_present to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %c_volume_present, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool16.not = icmp eq i8 %16, 0
  br i1 %tobool16.not, label %lor.lhs.false.if.end21_crit_edge, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %land.lhs.true.if.then17_crit_edge
  %17 = load ptr, ptr @out_feature_unit_desc, align 4
  %inc18 = add nuw nsw i32 %i.0, 3
  %arrayidx19 = getelementptr ptr, ptr %headers, i32 %inc12
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %arrayidx19, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %lor.lhs.false.if.end21_crit_edge, %if.then9.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %i.1 = phi i32 [ %inc18, %if.then17 ], [ %inc12, %lor.lhs.false.if.end21_crit_edge ], [ %inc12, %if.then9.if.end21_crit_edge ], [ %i.0, %if.end.if.end21_crit_edge ]
  %19 = ptrtoint ptr %p_chmask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %p_chmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp23.not = icmp eq i32 %20, 0
  br i1 %cmp23.not, label %if.end21.if.end39_crit_edge, label %if.then24

if.end21.if.end39_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then24:                                        ; preds = %if.end21
  %inc25 = add nuw nsw i32 %i.1, 1
  %arrayidx26 = getelementptr ptr, ptr %headers, i32 %i.1
  %21 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @io_in_it_desc, ptr %arrayidx26, align 4
  %22 = ptrtoint ptr %p_chmask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %p_chmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp28.not = icmp eq i32 %23, 0
  br i1 %cmp28.not, label %if.then24.if.end36_crit_edge, label %land.lhs.true29

if.then24.if.end36_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.lhs.true29:                                  ; preds = %if.then24
  %p_mute_present = getelementptr inbounds %struct.f_uac2_opts, ptr %opts, i32 0, i32 8
  %24 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %p_mute_present, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool30.not = icmp eq i8 %25, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %land.lhs.true29.if.then33_crit_edge

land.lhs.true29.if.then33_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33

lor.lhs.false31:                                  ; preds = %land.lhs.true29
  %p_volume_present = getelementptr inbounds %struct.f_uac2_opts, ptr %opts, i32 0, i32 9
  %26 = ptrtoint ptr %p_volume_present to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %p_volume_present, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool32.not = icmp eq i8 %27, 0
  br i1 %tobool32.not, label %lor.lhs.false31.if.end36_crit_edge, label %lor.lhs.false31.if.then33_crit_edge

lor.lhs.false31.if.then33_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33

lor.lhs.false31.if.end36_crit_edge:               ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then33:                                        ; preds = %lor.lhs.false31.if.then33_crit_edge, %land.lhs.true29.if.then33_crit_edge
  %28 = load ptr, ptr @in_feature_unit_desc, align 4
  %inc34 = add nuw nsw i32 %i.1, 2
  %arrayidx35 = getelementptr ptr, ptr %headers, i32 %inc25
  %29 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %arrayidx35, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %lor.lhs.false31.if.end36_crit_edge, %if.then24.if.end36_crit_edge
  %i.2 = phi i32 [ %inc34, %if.then33 ], [ %inc25, %lor.lhs.false31.if.end36_crit_edge ], [ %inc25, %if.then24.if.end36_crit_edge ]
  %inc37 = add nuw nsw i32 %i.2, 1
  %arrayidx38 = getelementptr ptr, ptr %headers, i32 %i.2
  %30 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @usb_in_ot_desc, ptr %arrayidx38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end36, %if.end21.if.end39_crit_edge
  %i.3 = phi i32 [ %inc37, %if.end36 ], [ %i.1, %if.end21.if.end39_crit_edge ]
  %31 = ptrtoint ptr %c_chmask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %c_chmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp41.not = icmp eq i32 %32, 0
  br i1 %cmp41.not, label %if.end39.lor.lhs.false54_crit_edge, label %if.end45

if.end39.lor.lhs.false54_crit_edge:               ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false54

if.end45:                                         ; preds = %if.end39
  %inc43 = add nuw nsw i32 %i.3, 1
  %arrayidx44 = getelementptr ptr, ptr %headers, i32 %i.3
  %33 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @io_out_ot_desc, ptr %arrayidx44, align 4
  %34 = ptrtoint ptr %c_chmask to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load i32, ptr %c_chmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp47.not = icmp eq i32 %.pr, 0
  br i1 %cmp47.not, label %if.end45.lor.lhs.false54_crit_edge, label %land.lhs.true48

if.end45.lor.lhs.false54_crit_edge:               ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false54

land.lhs.true48:                                  ; preds = %if.end45
  %c_mute_present49 = getelementptr inbounds %struct.f_uac2_opts, ptr %opts, i32 0, i32 13
  %35 = ptrtoint ptr %c_mute_present49 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %c_mute_present49, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool50.not = icmp eq i8 %36, 0
  br i1 %tobool50.not, label %lor.lhs.false51, label %land.lhs.true48.if.then63_crit_edge

land.lhs.true48.if.then63_crit_edge:              ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63

lor.lhs.false51:                                  ; preds = %land.lhs.true48
  %c_volume_present52 = getelementptr inbounds %struct.f_uac2_opts, ptr %opts, i32 0, i32 14
  %37 = ptrtoint ptr %c_volume_present52 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %c_volume_present52, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool53.not = icmp eq i8 %38, 0
  br i1 %tobool53.not, label %lor.lhs.false51.lor.lhs.false54_crit_edge, label %lor.lhs.false51.if.then63_crit_edge

lor.lhs.false51.if.then63_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63

lor.lhs.false51.lor.lhs.false54_crit_edge:        ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false51.lor.lhs.false54_crit_edge, %if.end45.lor.lhs.false54_crit_edge, %if.end39.lor.lhs.false54_crit_edge
  %i.4200 = phi i32 [ %inc43, %lor.lhs.false51.lor.lhs.false54_crit_edge ], [ %inc43, %if.end45.lor.lhs.false54_crit_edge ], [ %i.3, %if.end39.lor.lhs.false54_crit_edge ]
  %39 = ptrtoint ptr %p_chmask to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %p_chmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp56.not = icmp eq i32 %40, 0
  br i1 %cmp56.not, label %lor.lhs.false54.if.end66_crit_edge, label %land.lhs.true57

lor.lhs.false54.if.end66_crit_edge:               ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

land.lhs.true57:                                  ; preds = %lor.lhs.false54
  %p_mute_present58 = getelementptr inbounds %struct.f_uac2_opts, ptr %opts, i32 0, i32 8
  %41 = ptrtoint ptr %p_mute_present58 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %p_mute_present58, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool59.not = icmp eq i8 %42, 0
  br i1 %tobool59.not, label %lor.lhs.false60, label %land.lhs.true57.if.then63_crit_edge

land.lhs.true57.if.then63_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63

lor.lhs.false60:                                  ; preds = %land.lhs.true57
  %p_volume_present61 = getelementptr inbounds %struct.f_uac2_opts, ptr %opts, i32 0, i32 9
  %43 = ptrtoint ptr %p_volume_present61 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %p_volume_present61, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool62.not = icmp eq i8 %44, 0
  br i1 %tobool62.not, label %lor.lhs.false60.if.end66_crit_edge, label %lor.lhs.false60.if.then63_crit_edge

lor.lhs.false60.if.then63_crit_edge:              ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then63

lor.lhs.false60.if.end66_crit_edge:               ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end66

if.then63:                                        ; preds = %lor.lhs.false60.if.then63_crit_edge, %land.lhs.true57.if.then63_crit_edge, %lor.lhs.false51.if.then63_crit_edge, %land.lhs.true48.if.then63_crit_edge
  %i.4199 = phi i32 [ %i.4200, %lor.lhs.false60.if.then63_crit_edge ], [ %i.4200, %land.lhs.true57.if.then63_crit_edge ], [ %inc43, %lor.lhs.false51.if.then63_crit_edge ], [ %inc43, %land.lhs.true48.if.then63_crit_edge ]
  %inc64 = add nuw nsw i32 %i.4199, 1
  %arrayidx65 = getelementptr ptr, ptr %headers, i32 %i.4199
  %45 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %ep_int_desc.0, ptr %arrayidx65, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %lor.lhs.false60.if.end66_crit_edge, %lor.lhs.false54.if.end66_crit_edge
  %i.5 = phi i32 [ %inc64, %if.then63 ], [ %i.4200, %lor.lhs.false60.if.end66_crit_edge ], [ %i.4200, %lor.lhs.false54.if.end66_crit_edge ]
  %46 = ptrtoint ptr %c_chmask to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %c_chmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp68.not = icmp eq i32 %47, 0
  br i1 %cmp68.not, label %if.end66.if.end97_crit_edge, label %if.then69

if.end66.if.end97_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

if.then69:                                        ; preds = %if.end66
  %inc70 = add nuw nsw i32 %i.5, 1
  %arrayidx71 = getelementptr ptr, ptr %headers, i32 %i.5
  %48 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @std_as_out_if0_desc, ptr %arrayidx71, align 4
  %inc72 = add nuw nsw i32 %i.5, 2
  %arrayidx73 = getelementptr ptr, ptr %headers, i32 %inc70
  %49 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @std_as_out_if1_desc, ptr %arrayidx73, align 4
  %inc74 = add nuw nsw i32 %i.5, 3
  %arrayidx75 = getelementptr ptr, ptr %headers, i32 %inc72
  %50 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @as_out_hdr_desc, ptr %arrayidx75, align 4
  %inc76 = add nuw nsw i32 %i.5, 4
  %arrayidx77 = getelementptr ptr, ptr %headers, i32 %inc74
  %51 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @as_out_fmt1_desc, ptr %arrayidx77, align 4
  %inc78 = add nuw nsw i32 %i.5, 5
  %arrayidx79 = getelementptr ptr, ptr %headers, i32 %inc76
  %52 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %epout_desc.0, ptr %arrayidx79, align 4
  %inc85 = add nuw nsw i32 %i.5, 6
  %arrayidx86 = getelementptr ptr, ptr %headers, i32 %inc78
  br i1 %tobool111.not, label %if.end84, label %if.end84.thread

if.end84:                                         ; preds = %if.then69
  %53 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @as_iso_out_desc, ptr %arrayidx86, align 4
  %c_sync = getelementptr inbounds %struct.f_uac2_opts, ptr %opts, i32 0, i32 7
  %54 = ptrtoint ptr %c_sync to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %c_sync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %55)
  %cmp87 = icmp eq i32 %55, 4
  br i1 %cmp87, label %if.end84.if.end97.sink.split_crit_edge, label %if.end84.if.end97_crit_edge

if.end84.if.end97_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

if.end84.if.end97.sink.split_crit_edge:           ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97.sink.split

if.end84.thread:                                  ; preds = %if.then69
  %56 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %epout_desc_comp.0, ptr %arrayidx86, align 4
  %inc85202 = add nuw nsw i32 %i.5, 7
  %arrayidx86203 = getelementptr ptr, ptr %headers, i32 %inc85
  %57 = ptrtoint ptr %arrayidx86203 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @as_iso_out_desc, ptr %arrayidx86203, align 4
  %c_sync204 = getelementptr inbounds %struct.f_uac2_opts, ptr %opts, i32 0, i32 7
  %58 = ptrtoint ptr %c_sync204 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %c_sync204, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %59)
  %cmp87205 = icmp eq i32 %59, 4
  br i1 %cmp87205, label %if.then92, label %if.end84.thread.if.end97_crit_edge

if.end84.thread.if.end97_crit_edge:               ; preds = %if.end84.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

if.then92:                                        ; preds = %if.end84.thread
  call void @__sanitizer_cov_trace_pc() #14
  %inc89210 = add nuw nsw i32 %i.5, 8
  %arrayidx90211 = getelementptr ptr, ptr %headers, i32 %inc85202
  %60 = ptrtoint ptr %arrayidx90211 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %epin_fback_desc.0, ptr %arrayidx90211, align 4
  br label %if.end97.sink.split

if.end97.sink.split:                              ; preds = %if.then92, %if.end84.if.end97.sink.split_crit_edge
  %.sink = phi i32 [ 9, %if.then92 ], [ 7, %if.end84.if.end97.sink.split_crit_edge ]
  %inc85.sink = phi i32 [ %inc89210, %if.then92 ], [ %inc85, %if.end84.if.end97.sink.split_crit_edge ]
  %epin_fback_desc.0.sink = phi ptr [ %epin_fback_desc_comp.0, %if.then92 ], [ %epin_fback_desc.0, %if.end84.if.end97.sink.split_crit_edge ]
  %inc89 = add nuw nsw i32 %i.5, %.sink
  %arrayidx90 = getelementptr ptr, ptr %headers, i32 %inc85.sink
  %61 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %epin_fback_desc.0.sink, ptr %arrayidx90, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.end97.sink.split, %if.end84.thread.if.end97_crit_edge, %if.end84.if.end97_crit_edge, %if.end66.if.end97_crit_edge
  %i.7 = phi i32 [ %inc85, %if.end84.if.end97_crit_edge ], [ %i.5, %if.end66.if.end97_crit_edge ], [ %inc85202, %if.end84.thread.if.end97_crit_edge ], [ %inc89, %if.end97.sink.split ]
  %62 = ptrtoint ptr %p_chmask to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %p_chmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp99.not = icmp eq i32 %63, 0
  br i1 %cmp99.not, label %if.end97.if.end118_crit_edge, label %if.then100

if.end97.if.end118_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

if.then100:                                       ; preds = %if.end97
  %inc101 = add nuw nsw i32 %i.7, 1
  %arrayidx102 = getelementptr ptr, ptr %headers, i32 %i.7
  %64 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @std_as_in_if0_desc, ptr %arrayidx102, align 4
  %inc103 = add nuw nsw i32 %i.7, 2
  %arrayidx104 = getelementptr ptr, ptr %headers, i32 %inc101
  %65 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @std_as_in_if1_desc, ptr %arrayidx104, align 4
  %inc105 = add nuw nsw i32 %i.7, 3
  %arrayidx106 = getelementptr ptr, ptr %headers, i32 %inc103
  %66 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @as_in_hdr_desc, ptr %arrayidx106, align 4
  %inc107 = add nuw nsw i32 %i.7, 4
  %arrayidx108 = getelementptr ptr, ptr %headers, i32 %inc105
  %67 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @as_in_fmt1_desc, ptr %arrayidx108, align 4
  %inc109 = add nuw nsw i32 %i.7, 5
  %arrayidx110 = getelementptr ptr, ptr %headers, i32 %inc107
  %68 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %epin_desc.0, ptr %arrayidx110, align 4
  br i1 %tobool111.not, label %if.then100.if.end115_crit_edge, label %if.then112

if.then100.if.end115_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

if.then112:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #14
  %inc113 = add nuw nsw i32 %i.7, 6
  %arrayidx114 = getelementptr ptr, ptr %headers, i32 %inc109
  %69 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %epin_desc_comp.0, ptr %arrayidx114, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then112, %if.then100.if.end115_crit_edge
  %i.8 = phi i32 [ %inc113, %if.then112 ], [ %inc109, %if.then100.if.end115_crit_edge ]
  %inc116 = add nuw nsw i32 %i.8, 1
  %arrayidx117 = getelementptr ptr, ptr %headers, i32 %i.8
  %70 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @as_iso_in_desc, ptr %arrayidx117, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.end115, %if.end97.if.end118_crit_edge
  %i.9 = phi i32 [ %inc116, %if.end115 ], [ %i.7, %if.end97.if.end118_crit_edge ]
  %arrayidx119 = getelementptr ptr, ptr %headers, i32 %i.9
  %71 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %arrayidx119, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @afunc_notify_complete(ptr noundef %_ep, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %int_count = getelementptr inbounds %struct.f_uac2, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %int_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %int_count, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %int_count, ptr %int_count, i32 1, ptr elementtype(i32) %int_count) #12, !srcloc !388
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %req, align 4
  tail call void @kfree(ptr noundef %4) #12
  tail call void @usb_ep_free_request(ptr noundef %_ep, ptr noundef %req) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_get_mute(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_get_volume(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @out_rq_cur_complete(ptr noundef %ep, ptr nocapture noundef readonly %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %wIndex = getelementptr inbounds %struct.f_uac2, ptr %1, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %wIndex, align 1
  %wValue = getelementptr inbounds %struct.f_uac2, ptr %1, i32 0, i32 7, i32 2
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
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @out_rq_cur_complete.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@out_rq_cur_complete, %cleanup85)) #12
          to label %if.then13 [label %cleanup85], !srcloc !389

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @out_rq_cur_complete.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.137, i32 noundef %17) #12
  br label %cleanup85

if.end15:                                         ; preds = %entry
  %p_chmask = getelementptr inbounds %struct.f_uac2_opts, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %p_chmask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %p_chmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp16.not = icmp eq i32 %19, 0
  br i1 %cmp16.not, label %if.end15.lor.lhs.false27_crit_edge, label %land.lhs.true

if.end15.lor.lhs.false27_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false27

land.lhs.true:                                    ; preds = %if.end15
  %p_mute_present = getelementptr inbounds %struct.f_uac2_opts, ptr %7, i32 0, i32 8
  %20 = ptrtoint ptr %p_mute_present to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %p_mute_present, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool18.not = icmp eq i8 %21, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %land.lhs.true.land.lhs.true22_crit_edge

land.lhs.true.land.lhs.true22_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true22

lor.lhs.false:                                    ; preds = %land.lhs.true
  %p_volume_present = getelementptr inbounds %struct.f_uac2_opts, ptr %7, i32 0, i32 9
  %22 = ptrtoint ptr %p_volume_present to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %p_volume_present, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool20.not = icmp eq i8 %23, 0
  br i1 %tobool20.not, label %lor.lhs.false.lor.lhs.false27_crit_edge, label %lor.lhs.false.land.lhs.true22_crit_edge

lor.lhs.false.land.lhs.true22_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true22

lor.lhs.false.lor.lhs.false27_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false27

land.lhs.true22:                                  ; preds = %lor.lhs.false.land.lhs.true22_crit_edge, %land.lhs.true.land.lhs.true22_crit_edge
  %24 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %bUnitID to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bUnitID, align 1
  %27 = trunc i16 %9 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %27)
  %cmp25 = icmp eq i8 %26, %27
  br i1 %cmp25, label %land.lhs.true22.land.lhs.true46_crit_edge, label %land.lhs.true22.lor.lhs.false27_crit_edge

land.lhs.true22.lor.lhs.false27_crit_edge:        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false27

land.lhs.true22.land.lhs.true46_crit_edge:        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true46

lor.lhs.false27:                                  ; preds = %land.lhs.true22.lor.lhs.false27_crit_edge, %lor.lhs.false.lor.lhs.false27_crit_edge, %if.end15.lor.lhs.false27_crit_edge
  %c_chmask = getelementptr inbounds %struct.f_uac2_opts, ptr %7, i32 0, i32 4
  %28 = ptrtoint ptr %c_chmask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %c_chmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp28.not = icmp eq i32 %29, 0
  br i1 %cmp28.not, label %lor.lhs.false27.cleanup85_crit_edge, label %land.lhs.true30

lor.lhs.false27.cleanup85_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup85

land.lhs.true30:                                  ; preds = %lor.lhs.false27
  %c_mute_present = getelementptr inbounds %struct.f_uac2_opts, ptr %7, i32 0, i32 13
  %30 = ptrtoint ptr %c_mute_present to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %c_mute_present, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool31.not = icmp eq i8 %31, 0
  br i1 %tobool31.not, label %lor.lhs.false33, label %land.lhs.true30.land.lhs.true36_crit_edge

land.lhs.true30.land.lhs.true36_crit_edge:        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true36

lor.lhs.false33:                                  ; preds = %land.lhs.true30
  %c_volume_present = getelementptr inbounds %struct.f_uac2_opts, ptr %7, i32 0, i32 14
  %32 = ptrtoint ptr %c_volume_present to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %c_volume_present, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool34.not = icmp eq i8 %33, 0
  br i1 %tobool34.not, label %lor.lhs.false33.cleanup85_crit_edge, label %lor.lhs.false33.land.lhs.true36_crit_edge

lor.lhs.false33.land.lhs.true36_crit_edge:        ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true36

lor.lhs.false33.cleanup85_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup85

land.lhs.true36:                                  ; preds = %lor.lhs.false33.land.lhs.true36_crit_edge, %land.lhs.true30.land.lhs.true36_crit_edge
  %34 = load ptr, ptr @out_feature_unit_desc, align 4
  %bUnitID38 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %bUnitID38 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bUnitID38, align 1
  %37 = trunc i16 %9 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %37)
  %cmp40 = icmp eq i8 %36, %37
  br i1 %cmp40, label %if.then42, label %land.lhs.true36.cleanup85_crit_edge

land.lhs.true36.cleanup85_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup85

if.then42:                                        ; preds = %land.lhs.true36
  br i1 %cmp16.not, label %if.then42.if.end61_crit_edge, label %if.then42.land.lhs.true46_crit_edge

if.then42.land.lhs.true46_crit_edge:              ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true46

if.then42.if.end61_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

land.lhs.true46:                                  ; preds = %if.then42.land.lhs.true46_crit_edge, %land.lhs.true22.land.lhs.true46_crit_edge
  %p_mute_present47 = getelementptr inbounds %struct.f_uac2_opts, ptr %7, i32 0, i32 8
  %38 = ptrtoint ptr %p_mute_present47 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %p_mute_present47, align 4, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool48.not = icmp eq i8 %39, 0
  br i1 %tobool48.not, label %lor.lhs.false50, label %land.lhs.true46.land.lhs.true54_crit_edge

land.lhs.true46.land.lhs.true54_crit_edge:        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true54

lor.lhs.false50:                                  ; preds = %land.lhs.true46
  %p_volume_present51 = getelementptr inbounds %struct.f_uac2_opts, ptr %7, i32 0, i32 9
  %40 = ptrtoint ptr %p_volume_present51 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %p_volume_present51, align 1, !range !384
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool52.not = icmp eq i8 %41, 0
  br i1 %tobool52.not, label %lor.lhs.false50.if.end61_crit_edge, label %lor.lhs.false50.land.lhs.true54_crit_edge

lor.lhs.false50.land.lhs.true54_crit_edge:        ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true54

lor.lhs.false50.if.end61_crit_edge:               ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

land.lhs.true54:                                  ; preds = %lor.lhs.false50.land.lhs.true54_crit_edge, %land.lhs.true46.land.lhs.true54_crit_edge
  %42 = load ptr, ptr @in_feature_unit_desc, align 4
  %bUnitID56 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %bUnitID56 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bUnitID56, align 1
  %45 = trunc i16 %9 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %45)
  %cmp58 = icmp eq i8 %44, %45
  %spec.select = zext i1 %cmp58 to i32
  br label %if.end61

if.end61:                                         ; preds = %land.lhs.true54, %lor.lhs.false50.if.end61_crit_edge, %if.then42.if.end61_crit_edge
  %is_playback.0 = phi i32 [ 0, %lor.lhs.false50.if.end61_crit_edge ], [ 0, %if.then42.if.end61_crit_edge ], [ %spec.select, %land.lhs.true54 ]
  %trunc = trunc i16 %11 to i8
  %46 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %trunc, label %do.end77 [
    i8 1, label %if.then65
    i8 2, label %if.then71
  ]

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %req, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  %conv66 = zext i8 %50 to i32
  %call67 = tail call i32 @u_audio_set_mute(ptr noundef %1, i32 noundef %is_playback.0, i32 noundef %conv66) #12
  br label %cleanup85

if.then71:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %req, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %52, align 2
  %55 = tail call i16 @llvm.bswap.i16(i16 %54)
  %call73 = tail call i32 @u_audio_set_volume(ptr noundef %1, i32 noundef %is_playback.0, i16 noundef signext %55) #12
  br label %cleanup85

do.end77:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  %56 = and i16 %11, 255
  %conv62 = zext i16 %56 to i32
  %gadget78 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 1
  %57 = ptrtoint ptr %gadget78 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %gadget78, align 4
  %dev79 = getelementptr inbounds %struct.usb_gadget, ptr %58, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev79, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.136, i32 noundef 1625, i32 noundef %conv62) #16
  %call81 = tail call i32 @usb_ep_set_halt(ptr noundef %ep) #12
  br label %cleanup85

cleanup85:                                        ; preds = %do.end77, %if.then71, %if.then65, %land.lhs.true36.cleanup85_crit_edge, %lor.lhs.false33.cleanup85_crit_edge, %lor.lhs.false27.cleanup85_crit_edge, %if.then13, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_set_mute(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_set_volume(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 185)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 185)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !14, !15, !17, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !52, !53, !54, !55, !57, !58, !60, !61, !63, !64, !66, !68, !69, !71, !72, !74, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !101, !103, !104, !105, !106, !107, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !317, !318, !320, !321, !323, !324, !326, !327, !328, !329, !331, !332, !333, !335, !336, !338, !339, !340, !342, !343, !344, !345, !347, !348, !350, !351, !352, !354, !355, !356, !358, !359, !361, !362, !364, !365, !366, !368, !369, !370, !371, !373}
!llvm.module.flags = !{!374, !375, !376, !377, !378, !379, !380, !381}
!llvm.ident = !{!382}

!0 = !{ptr @__UNIQUE_ID_alias251, !1, !"__UNIQUE_ID_alias251", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1994, i32 1}
!2 = !{ptr @__initcall__kmod_usb_f_uac2__252_1994_uac2mod_init6, !1, !"__initcall__kmod_usb_f_uac2__252_1994_uac2mod_init6", i1 false, i1 false}
!3 = !{ptr @__exitcall_uac2mod_exit, !1, !"__exitcall_uac2mod_exit", i1 false, i1 false}
!4 = !{ptr @__UNIQUE_ID_file253, !5, !"__UNIQUE_ID_file253", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1995, i32 1}
!6 = !{ptr @__UNIQUE_ID_license254, !5, !"__UNIQUE_ID_license254", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author255, !8, !"__UNIQUE_ID_author255", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1996, i32 1}
!9 = !{ptr @__UNIQUE_ID_author256, !10, !"__UNIQUE_ID_author256", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1997, i32 1}
!11 = !{ptr @__UNIQUE_ID_author257, !12, !"__UNIQUE_ID_author257", i1 false, i1 false}
!12 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1998, i32 1}
!13 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @uac2usb_func, !1, !"uac2usb_func", i1 false, i1 false}
!15 = !{ptr @afunc_alloc_inst.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1909, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1912, i32 54}
!20 = !{ptr @f_uac2_func_type, !21, !"f_uac2_func_type", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1887, i32 38}
!22 = !{ptr @f_uac2_item_ops, !23, !"f_uac2_item_ops", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1730, i32 40}
!24 = !{ptr @f_uac2_attrs, !25, !"f_uac2_attrs", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1861, i32 35}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1839, i32 1}
!28 = !{ptr @f_uac2_opts_attr_p_chmask, !27, !"f_uac2_opts_attr_p_chmask", i1 false, i1 false}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1738, i32 30}
!31 = distinct !{null, !32, !"u32_fmt", i1 false, i1 false}
!32 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1738, i32 20}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1840, i32 1}
!35 = !{ptr @f_uac2_opts_attr_p_srate, !34, !"f_uac2_opts_attr_p_srate", i1 false, i1 false}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1841, i32 1}
!38 = !{ptr @f_uac2_opts_attr_p_ssize, !37, !"f_uac2_opts_attr_p_ssize", i1 false, i1 false}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1842, i32 1}
!41 = !{ptr @f_uac2_opts_attr_c_chmask, !40, !"f_uac2_opts_attr_c_chmask", i1 false, i1 false}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1843, i32 1}
!44 = !{ptr @f_uac2_opts_attr_c_srate, !43, !"f_uac2_opts_attr_c_srate", i1 false, i1 false}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1845, i32 1}
!47 = !{ptr @f_uac2_opts_attr_c_ssize, !46, !"f_uac2_opts_attr_c_ssize", i1 false, i1 false}
!48 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1844, i32 1}
!50 = !{ptr @f_uac2_opts_attr_c_sync, !49, !"f_uac2_opts_attr_c_sync", i1 false, i1 false}
!51 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1846, i32 1}
!57 = !{ptr @f_uac2_opts_attr_req_number, !56, !"f_uac2_opts_attr_req_number", i1 false, i1 false}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1859, i32 1}
!60 = !{ptr @f_uac2_opts_attr_fb_max, !59, !"f_uac2_opts_attr_fb_max", i1 false, i1 false}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1848, i32 1}
!63 = !{ptr @f_uac2_opts_attr_p_mute_present, !62, !"f_uac2_opts_attr_p_mute_present", i1 false, i1 false}
!64 = distinct !{null, !65, !"bool_fmt", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1740, i32 20}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1849, i32 1}
!68 = !{ptr @f_uac2_opts_attr_p_volume_present, !67, !"f_uac2_opts_attr_p_volume_present", i1 false, i1 false}
!69 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1850, i32 1}
!71 = !{ptr @f_uac2_opts_attr_p_volume_min, !70, !"f_uac2_opts_attr_p_volume_min", i1 false, i1 false}
!72 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1739, i32 30}
!74 = distinct !{null, !75, !"s16_fmt", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1739, i32 20}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1851, i32 1}
!78 = !{ptr @f_uac2_opts_attr_p_volume_max, !77, !"f_uac2_opts_attr_p_volume_max", i1 false, i1 false}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1852, i32 1}
!81 = !{ptr @f_uac2_opts_attr_p_volume_res, !80, !"f_uac2_opts_attr_p_volume_res", i1 false, i1 false}
!82 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1854, i32 1}
!84 = !{ptr @f_uac2_opts_attr_c_mute_present, !83, !"f_uac2_opts_attr_c_mute_present", i1 false, i1 false}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1855, i32 1}
!87 = !{ptr @f_uac2_opts_attr_c_volume_present, !86, !"f_uac2_opts_attr_c_volume_present", i1 false, i1 false}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1856, i32 1}
!90 = !{ptr @f_uac2_opts_attr_c_volume_min, !89, !"f_uac2_opts_attr_c_volume_min", i1 false, i1 false}
!91 = !{ptr @.str.26, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1857, i32 1}
!93 = !{ptr @f_uac2_opts_attr_c_volume_max, !92, !"f_uac2_opts_attr_c_volume_max", i1 false, i1 false}
!94 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1858, i32 1}
!96 = !{ptr @f_uac2_opts_attr_c_volume_res, !95, !"f_uac2_opts_attr_c_volume_res", i1 false, i1 false}
!97 = !{ptr @.str.28, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1982, i32 28}
!99 = !{ptr @.str.29, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1040, i32 41}
!101 = !{ptr @.str.30, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1045, i32 3}
!103 = !{ptr @.str.31, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.32, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @afunc_bind._entry, !102, !"_entry", i1 false, i1 false}
!108 = !{ptr @afunc_bind._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @afunc_bind._entry.35, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1057, i32 4}
!111 = !{ptr @afunc_bind._entry_ptr.36, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @afunc_bind._entry.37, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1086, i32 4}
!114 = !{ptr @afunc_bind._entry_ptr.38, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @afunc_bind._entry.39, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1098, i32 4}
!117 = !{ptr @afunc_bind._entry_ptr.40, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @afunc_bind._entry.41, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1110, i32 3}
!120 = !{ptr @afunc_bind._entry_ptr.42, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @afunc_bind._entry.43, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1117, i32 3}
!123 = !{ptr @afunc_bind._entry_ptr.44, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @afunc_bind._entry.45, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1124, i32 3}
!126 = !{ptr @afunc_bind._entry_ptr.46, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @afunc_bind._entry.47, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1131, i32 3}
!129 = !{ptr @afunc_bind._entry_ptr.48, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @afunc_bind._entry.49, !131, !"_entry", i1 false, i1 false}
!131 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1138, i32 3}
!132 = !{ptr @afunc_bind._entry_ptr.50, !131, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @afunc_bind._entry.51, !134, !"_entry", i1 false, i1 false}
!134 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1145, i32 3}
!135 = !{ptr @afunc_bind._entry_ptr.52, !134, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @afunc_bind._entry.53, !137, !"_entry", i1 false, i1 false}
!137 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1152, i32 4}
!138 = !{ptr @afunc_bind._entry_ptr.54, !137, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @afunc_bind._entry.55, !140, !"_entry", i1 false, i1 false}
!140 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1160, i32 5}
!141 = !{ptr @afunc_bind._entry_ptr.56, !140, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @afunc_bind._entry.57, !143, !"_entry", i1 false, i1 false}
!143 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1171, i32 4}
!144 = !{ptr @afunc_bind._entry_ptr.58, !143, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1239, i32 29}
!147 = !{ptr @.str.60, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1239, i32 41}
!149 = !{ptr @.str.61, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 901, i32 3}
!151 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @afunc_validate_opts._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @afunc_validate_opts._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.64, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 904, i32 3}
!156 = !{ptr @afunc_validate_opts._entry.63, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @afunc_validate_opts._entry_ptr.65, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 907, i32 3}
!160 = !{ptr @afunc_validate_opts._entry.66, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @afunc_validate_opts._entry_ptr.68, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 910, i32 3}
!164 = !{ptr @afunc_validate_opts._entry.69, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @afunc_validate_opts._entry_ptr.71, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 913, i32 3}
!168 = !{ptr @afunc_validate_opts._entry.72, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @afunc_validate_opts._entry_ptr.74, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 916, i32 3}
!172 = !{ptr @afunc_validate_opts._entry.75, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @afunc_validate_opts._entry_ptr.77, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 919, i32 3}
!176 = !{ptr @afunc_validate_opts._entry.78, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @afunc_validate_opts._entry_ptr.80, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.82, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 924, i32 3}
!180 = !{ptr @afunc_validate_opts._entry.81, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @afunc_validate_opts._entry_ptr.83, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 927, i32 3}
!184 = !{ptr @afunc_validate_opts._entry.84, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @afunc_validate_opts._entry_ptr.86, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 930, i32 3}
!188 = !{ptr @afunc_validate_opts._entry.87, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @afunc_validate_opts._entry_ptr.89, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.91, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 933, i32 3}
!192 = !{ptr @afunc_validate_opts._entry.90, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @afunc_validate_opts._entry_ptr.92, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.94, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 938, i32 3}
!196 = !{ptr @afunc_validate_opts._entry.93, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @afunc_validate_opts._entry_ptr.95, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.97, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 941, i32 3}
!200 = !{ptr @afunc_validate_opts._entry.96, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @afunc_validate_opts._entry_ptr.98, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @fn_strings, !203, !"fn_strings", i1 false, i1 false}
!203 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 133, i32 35}
!204 = !{ptr @str_fn, !205, !"str_fn", i1 false, i1 false}
!205 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 128, i32 34}
!206 = !{ptr @.str.99, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 111, i32 18}
!208 = !{ptr @.str.100, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 112, i32 20}
!210 = !{ptr @.str.101, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 115, i32 19}
!212 = !{ptr @.str.102, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 116, i32 18}
!214 = !{ptr @.str.103, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 117, i32 19}
!216 = !{ptr @.str.104, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 118, i32 18}
!218 = !{ptr @.str.105, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 119, i32 18}
!220 = !{ptr @.str.106, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 120, i32 19}
!222 = !{ptr @.str.107, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 121, i32 24}
!224 = !{ptr @.str.108, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 122, i32 24}
!226 = !{ptr @.str.109, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 123, i32 23}
!228 = !{ptr @.str.110, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 124, i32 23}
!230 = !{ptr @strings_fn, !231, !"strings_fn", i1 false, i1 false}
!231 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 110, i32 26}
!232 = !{ptr @out_feature_unit_desc, !233, !"out_feature_unit_desc", i1 false, i1 false}
!233 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 242, i32 45}
!234 = !{ptr @in_feature_unit_desc, !235, !"in_feature_unit_desc", i1 false, i1 false}
!235 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 241, i32 45}
!236 = !{ptr @iad_desc, !237, !"iad_desc", i1 false, i1 false}
!237 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 138, i32 46}
!238 = !{ptr @std_ac_if_desc, !239, !"std_ac_if_desc", i1 false, i1 false}
!239 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 150, i32 40}
!240 = !{ptr @in_clk_src_desc, !241, !"in_clk_src_desc", i1 false, i1 false}
!241 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 162, i32 43}
!242 = !{ptr @out_clk_src_desc, !243, !"out_clk_src_desc", i1 false, i1 false}
!243 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 174, i32 43}
!244 = !{ptr @usb_out_it_desc, !245, !"usb_out_it_desc", i1 false, i1 false}
!245 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 186, i32 46}
!246 = !{ptr @io_in_it_desc, !247, !"io_in_it_desc", i1 false, i1 false}
!247 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 200, i32 46}
!248 = !{ptr @usb_in_ot_desc, !249, !"usb_in_ot_desc", i1 false, i1 false}
!249 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 214, i32 47}
!250 = !{ptr @io_out_ot_desc, !251, !"io_out_ot_desc", i1 false, i1 false}
!251 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 228, i32 47}
!252 = !{ptr @std_as_out_if0_desc, !253, !"std_as_out_if0_desc", i1 false, i1 false}
!253 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 286, i32 40}
!254 = !{ptr @std_as_out_if1_desc, !255, !"std_as_out_if1_desc", i1 false, i1 false}
!255 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 298, i32 40}
!256 = !{ptr @std_as_in_if0_desc, !257, !"std_as_in_if0_desc", i1 false, i1 false}
!257 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 420, i32 40}
!258 = !{ptr @std_as_in_if1_desc, !259, !"std_as_in_if1_desc", i1 false, i1 false}
!259 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 432, i32 40}
!260 = !{ptr @as_out_hdr_desc, !261, !"as_out_hdr_desc", i1 false, i1 false}
!261 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 310, i32 41}
!262 = !{ptr @as_in_hdr_desc, !263, !"as_in_hdr_desc", i1 false, i1 false}
!263 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 444, i32 41}
!264 = !{ptr @as_out_fmt1_desc, !265, !"as_out_fmt1_desc", i1 false, i1 false}
!265 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 323, i32 45}
!266 = !{ptr @as_in_fmt1_desc, !267, !"as_in_fmt1_desc", i1 false, i1 false}
!267 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 457, i32 45}
!268 = !{ptr @clksrc_in, !269, !"clksrc_in", i1 false, i1 false}
!269 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 107, i32 13}
!270 = !{ptr @clksrc_out, !271, !"clksrc_out", i1 false, i1 false}
!271 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 108, i32 13}
!272 = !{ptr @fs_epout_desc, !273, !"fs_epout_desc", i1 false, i1 false}
!273 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 331, i32 39}
!274 = !{ptr @hs_epout_desc, !275, !"hs_epout_desc", i1 false, i1 false}
!275 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 341, i32 39}
!276 = !{ptr @ss_epout_desc, !277, !"ss_epout_desc", i1 false, i1 false}
!277 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 350, i32 39}
!278 = !{ptr @fs_ep_int_desc, !279, !"fs_ep_int_desc", i1 false, i1 false}
!279 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 256, i32 39}
!280 = !{ptr @fs_epin_desc, !281, !"fs_epin_desc", i1 false, i1 false}
!281 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 465, i32 39}
!282 = !{ptr @hs_epin_desc, !283, !"hs_epin_desc", i1 false, i1 false}
!283 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 475, i32 39}
!284 = !{ptr @ss_epin_desc, !285, !"ss_epin_desc", i1 false, i1 false}
!285 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 484, i32 39}
!286 = !{ptr @fs_epin_fback_desc, !287, !"fs_epin_fback_desc", i1 false, i1 false}
!287 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 381, i32 39}
!288 = !{ptr @ss_epin_desc_comp, !289, !"ss_epin_desc_comp", i1 false, i1 false}
!289 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 494, i32 41}
!290 = !{ptr @ss_epout_desc_comp, !291, !"ss_epout_desc_comp", i1 false, i1 false}
!291 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 360, i32 41}
!292 = !{ptr @hs_ep_int_desc, !293, !"hs_ep_int_desc", i1 false, i1 false}
!293 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 266, i32 39}
!294 = !{ptr @hs_epin_fback_desc, !295, !"hs_epin_fback_desc", i1 false, i1 false}
!295 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 391, i32 39}
!296 = !{ptr @ss_epin_fback_desc, !297, !"ss_epin_fback_desc", i1 false, i1 false}
!297 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 400, i32 39}
!298 = !{ptr @ss_ep_int_desc, !299, !"ss_ep_int_desc", i1 false, i1 false}
!299 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 275, i32 39}
!300 = !{ptr @ac_hdr_desc, !301, !"ac_hdr_desc", i1 false, i1 false}
!301 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 244, i32 41}
!302 = !{ptr @ss_epin_fback_desc_comp, !303, !"ss_epin_fback_desc_comp", i1 false, i1 false}
!303 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 410, i32 41}
!304 = !{ptr @as_iso_out_desc, !305, !"as_iso_out_desc", i1 false, i1 false}
!305 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 369, i32 44}
!306 = !{ptr @as_iso_in_desc, !307, !"as_iso_in_desc", i1 false, i1 false}
!307 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 503, i32 44}
!308 = !{ptr @fs_audio_desc, !309, !"fs_audio_desc", i1 false, i1 false}
!309 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 514, i32 38}
!310 = !{ptr @hs_audio_desc, !311, !"hs_audio_desc", i1 false, i1 false}
!311 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 549, i32 38}
!312 = !{ptr @ss_audio_desc, !313, !"ss_audio_desc", i1 false, i1 false}
!313 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 584, i32 38}
!314 = !{ptr @.str.111, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1338, i32 3}
!316 = !{ptr @afunc_set_alt._entry, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @afunc_set_alt._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @afunc_set_alt._entry.112, !319, !"_entry", i1 false, i1 false}
!319 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1345, i32 4}
!320 = !{ptr @afunc_set_alt._entry_ptr.113, !319, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @afunc_set_alt._entry.114, !322, !"_entry", i1 false, i1 false}
!322 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1374, i32 3}
!323 = !{ptr @afunc_set_alt._entry_ptr.115, !322, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.116, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1394, i32 3}
!326 = !{ptr @.str.117, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @afunc_get_alt._entry, !325, !"_entry", i1 false, i1 false}
!328 = !{ptr @afunc_get_alt._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.118, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1700, i32 3}
!331 = !{ptr @afunc_setup._entry, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @afunc_setup._entry_ptr, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @afunc_setup._entry.119, !334, !"_entry", i1 false, i1 false}
!334 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1708, i32 4}
!335 = !{ptr @afunc_setup._entry_ptr.120, !334, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.121, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1671, i32 3}
!338 = !{ptr @setup_rq_inf._entry, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @setup_rq_inf._entry_ptr, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.122, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1448, i32 4}
!342 = !{ptr @.str.123, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @in_rq_cur._entry, !341, !"_entry", i1 false, i1 false}
!344 = !{ptr @in_rq_cur._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @in_rq_cur._entry.124, !346, !"_entry", i1 false, i1 false}
!346 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1478, i32 4}
!347 = !{ptr @in_rq_cur._entry_ptr.125, !346, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.127, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1483, i32 3}
!350 = !{ptr @in_rq_cur._entry.126, !349, !"_entry", i1 false, i1 false}
!351 = !{ptr @in_rq_cur._entry_ptr.128, !349, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.129, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1526, i32 4}
!354 = !{ptr @in_rq_range._entry, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @in_rq_range._entry_ptr, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @in_rq_range._entry.130, !357, !"_entry", i1 false, i1 false}
!357 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1559, i32 4}
!358 = !{ptr @in_rq_range._entry_ptr.131, !357, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @in_rq_range._entry.132, !360, !"_entry", i1 false, i1 false}
!360 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1564, i32 3}
!361 = !{ptr @in_rq_range._entry_ptr.133, !360, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.134, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1655, i32 3}
!364 = !{ptr @out_rq_cur._entry, !363, !"_entry", i1 false, i1 false}
!365 = !{ptr @out_rq_cur._entry_ptr, !363, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.135, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1597, i32 3}
!368 = !{ptr @.str.136, !367, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @.str.137, !367, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @out_rq_cur_complete.__UNIQUE_ID_ddebug250, !367, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!371 = !{ptr @out_rq_cur_complete._entry, !372, !"_entry", i1 false, i1 false}
!372 = !{!"../drivers/usb/gadget/function/f_uac2.c", i32 1623, i32 4}
!373 = !{ptr @out_rq_cur_complete._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!374 = !{i32 1, !"wchar_size", i32 2}
!375 = !{i32 1, !"min_enum_size", i32 4}
!376 = !{i32 8, !"branch-target-enforcement", i32 0}
!377 = !{i32 8, !"sign-return-address", i32 0}
!378 = !{i32 8, !"sign-return-address-all", i32 0}
!379 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!380 = !{i32 7, !"uwtable", i32 1}
!381 = !{i32 7, !"frame-pointer", i32 2}
!382 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!383 = !{!"auto-init"}
!384 = !{i8 0, i8 2}
!385 = !{i64 2148518783}
!386 = !{i64 2148434068, i64 2148434100, i64 2148434129, i64 2148434163, i64 2148434194, i64 2148434217}
!387 = !{i64 2148519012}
!388 = !{i64 2148435813, i64 2148435839, i64 2148435868, i64 2148435902, i64 2148435933, i64 2148435956}
!389 = !{i64 2149046725, i64 2149046730, i64 2149046743, i64 2149046787, i64 2149046821, i64 2149046842}
