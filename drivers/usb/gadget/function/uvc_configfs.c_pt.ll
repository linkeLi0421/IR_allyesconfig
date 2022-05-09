; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/uvc_configfs.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/uvc_configfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uvcg_config_group_type = type { %struct.config_item_type, ptr, ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.configfs_group_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.f_uvc_opts = type { %struct.usb_function_instance, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.uvc_camera_terminal_descriptor, %struct.uvc_processing_unit_descriptor, %struct.uvc_output_terminal_descriptor, %struct.uvc_color_matching_descriptor, [5 x ptr], [5 x ptr], ptr, ptr, ptr, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.uvc_camera_terminal_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16, i16, i16, i8, [3 x i8] }
%struct.uvc_processing_unit_descriptor = type <{ i8, i8, i8, i8, i8, i16, i8, [2 x i8], i8, i8 }>
%struct.uvc_output_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.uvc_color_matching_descriptor = type { i8, i8, i8, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.configfs_subsystem = type { %struct.config_group, %struct.mutex }
%struct.uvcg_control_header = type { %struct.config_item, %struct.uvc_header_descriptor_1, i32 }
%struct.uvc_header_descriptor_1 = type <{ i8, i8, i8, i16, i16, i32, i8, [1 x i8] }>
%struct.uvcg_control_class_group = type { %struct.config_group, ptr }
%struct.uvcg_streaming_header = type { %struct.config_item, %struct.uvc_input_header_descriptor, i32, %struct.list_head, i32 }
%struct.uvc_input_header_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }>
%struct.uvcg_format_ptr = type { ptr, %struct.list_head }
%struct.uvcg_format = type { %struct.config_group, i32, i32, i32, [1 x i8] }
%struct.uvcg_frame = type { %struct.config_item, i32, %struct.anon.71, ptr }
%struct.anon.71 = type <{ i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i8 }>
%struct.uvcg_uncompressed = type { %struct.uvcg_format, %struct.uvc_format_uncompressed }
%struct.uvc_format_uncompressed = type { i8, i8, i8, i8, i8, [16 x i8], i8, i8, i8, i8, i8, i8 }
%struct.uvcg_mjpeg = type { %struct.uvcg_format, %struct.uvc_format_mjpeg }
%struct.uvc_format_mjpeg = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.uvcg_streaming_class_group = type { %struct.config_group, ptr }

@uvc_func_type = internal constant { %struct.uvcg_config_group_type, [32 x i8] } { %struct.uvcg_config_group_type { %struct.config_item_type { ptr null, ptr @uvc_func_item_ops, ptr null, ptr @uvc_attrs, ptr null }, ptr @.str, ptr @.compoundliteral, ptr null }, [32 x i8] zeroinitializer }, align 32
@uvc_func_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @uvc_func_item_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@uvc_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @f_uvc_opts_attr_streaming_interval, ptr @f_uvc_opts_attr_streaming_maxpacket, ptr @f_uvc_opts_attr_streaming_maxburst, ptr null], [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@uvcg_control_grp_type = internal constant { %struct.uvcg_config_group_type, [32 x i8] } { %struct.uvcg_config_group_type { %struct.config_item_type { ptr null, ptr @uvcg_config_item_ops, ptr null, ptr @uvcg_default_control_attrs, ptr null }, ptr @.str.5, ptr @.compoundliteral.6, ptr null }, [32 x i8] zeroinitializer }, align 32
@uvcg_streaming_grp_type = internal constant { %struct.uvcg_config_group_type, [32 x i8] } { %struct.uvcg_config_group_type { %struct.config_item_type { ptr null, ptr @uvcg_config_item_ops, ptr null, ptr @uvcg_default_streaming_attrs, ptr null }, ptr @.str.35, ptr @.compoundliteral.36, ptr null }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @uvcg_control_grp_type, ptr @uvcg_streaming_grp_type, ptr null], [20 x i8] zeroinitializer }, align 32
@f_uvc_opts_attr_streaming_interval = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.1, ptr null, i16 438, ptr @f_uvc_opts_streaming_interval_show, ptr @f_uvc_opts_streaming_interval_store }, [44 x i8] zeroinitializer }, align 32
@f_uvc_opts_attr_streaming_maxpacket = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.3, ptr null, i16 438, ptr @f_uvc_opts_streaming_maxpacket_show, ptr @f_uvc_opts_streaming_maxpacket_store }, [44 x i8] zeroinitializer }, align 32
@f_uvc_opts_attr_streaming_maxburst = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.4, ptr null, i16 438, ptr @f_uvc_opts_streaming_maxburst_show, ptr @f_uvc_opts_streaming_maxburst_store }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"streaming_interval\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"streaming_maxpacket\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"streaming_maxburst\00", [45 x i8] zeroinitializer }, align 32
@uvcg_config_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @uvcg_config_item_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@uvcg_default_control_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @uvcg_default_control_attr_b_interface_number, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@uvcg_control_header_grp_type = internal constant { %struct.uvcg_config_group_type, [32 x i8] } { %struct.uvcg_config_group_type { %struct.config_item_type { ptr null, ptr @uvcg_config_item_ops, ptr @uvcg_control_header_grp_ops, ptr null, ptr null }, ptr @.str.8, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@uvcg_processing_grp_type = internal constant { %struct.uvcg_config_group_type, [32 x i8] } { %struct.uvcg_config_group_type { %struct.config_item_type { ptr null, ptr @uvcg_config_item_ops, ptr null, ptr null, ptr null }, ptr @.str.11, ptr @.compoundliteral.12, ptr null }, [32 x i8] zeroinitializer }, align 32
@uvcg_terminal_grp_type = internal constant { %struct.uvcg_config_group_type, [32 x i8] } { %struct.uvcg_config_group_type { %struct.config_item_type { ptr null, ptr @uvcg_config_item_ops, ptr null, ptr null, ptr null }, ptr @.str.19, ptr @.compoundliteral.20, ptr null }, [32 x i8] zeroinitializer }, align 32
@uvcg_control_class_grp_type = internal constant { %struct.uvcg_config_group_type, [32 x i8] } { %struct.uvcg_config_group_type { %struct.config_item_type { ptr null, ptr @uvcg_config_item_ops, ptr null, ptr null, ptr null }, ptr @.str.32, ptr null, ptr @uvcg_control_class_create_children }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @uvcg_control_header_grp_type, ptr @uvcg_processing_grp_type, ptr @uvcg_terminal_grp_type, ptr @uvcg_control_class_grp_type, ptr null], [44 x i8] zeroinitializer }, align 32
@uvcg_default_control_attr_b_interface_number = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.7, ptr null, i16 292, ptr @uvcg_default_control_b_interface_number_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bInterfaceNumber\00", [47 x i8] zeroinitializer }, align 32
@uvcg_control_header_grp_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr @uvcg_control_header_make, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"header\00", [25 x i8] zeroinitializer }, align 32
@uvcg_control_header_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @uvcg_config_item_ops, ptr null, ptr @uvcg_control_header_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@uvcg_control_header_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @uvcg_control_header_attr_bcd_uvc, ptr @uvcg_control_header_attr_dw_clock_frequency, ptr null], [20 x i8] zeroinitializer }, align 32
@uvcg_control_header_attr_bcd_uvc = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.9, ptr null, i16 438, ptr @uvcg_control_header_bcd_uvc_show, ptr @uvcg_control_header_bcd_uvc_store }, [44 x i8] zeroinitializer }, align 32
@uvcg_control_header_attr_dw_clock_frequency = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.10, ptr null, i16 438, ptr @uvcg_control_header_dw_clock_frequency_show, ptr @uvcg_control_header_dw_clock_frequency_store }, [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bcdUVC\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dwClockFrequency\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"processing\00", [21 x i8] zeroinitializer }, align 32
@uvcg_default_processing_type = internal constant { %struct.uvcg_config_group_type, [32 x i8] } { %struct.uvcg_config_group_type { %struct.config_item_type { ptr null, ptr @uvcg_config_item_ops, ptr null, ptr @uvcg_default_processing_attrs, ptr null }, ptr @.str.13, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @uvcg_default_processing_type, ptr null], [24 x i8] zeroinitializer }, align 32
@uvcg_default_processing_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @uvcg_default_processing_attr_b_unit_id, ptr @uvcg_default_processing_attr_b_source_id, ptr @uvcg_default_processing_attr_w_max_multiplier, ptr @uvcg_default_processing_attr_bm_controls, ptr @uvcg_default_processing_attr_i_processing, ptr null], [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@uvcg_default_processing_attr_b_unit_id = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.14, ptr null, i16 292, ptr @uvcg_default_processing_b_unit_id_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_default_processing_attr_b_source_id = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.15, ptr null, i16 292, ptr @uvcg_default_processing_b_source_id_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_default_processing_attr_w_max_multiplier = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.16, ptr null, i16 292, ptr @uvcg_default_processing_w_max_multiplier_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_default_processing_attr_bm_controls = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.17, ptr null, i16 292, ptr @uvcg_default_processing_bm_controls_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_default_processing_attr_i_processing = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.18, ptr null, i16 292, ptr @uvcg_default_processing_i_processing_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bUnitID\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bSourceID\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wMaxMultiplier\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bmControls\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iProcessing\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"terminal\00", [23 x i8] zeroinitializer }, align 32
@uvcg_camera_grp_type = internal constant { %struct.uvcg_config_group_type, [32 x i8] } { %struct.uvcg_config_group_type { %struct.config_item_type { ptr null, ptr @uvcg_config_item_ops, ptr null, ptr null, ptr null }, ptr @.str.21, ptr @.compoundliteral.22, ptr null }, [32 x i8] zeroinitializer }, align 32
@uvcg_output_grp_type = internal constant { %struct.uvcg_config_group_type, [32 x i8] } { %struct.uvcg_config_group_type { %struct.config_item_type { ptr null, ptr @uvcg_config_item_ops, ptr null, ptr null, ptr null }, ptr @.str.30, ptr @.compoundliteral.31, ptr null }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @uvcg_camera_grp_type, ptr @uvcg_output_grp_type, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"camera\00", [25 x i8] zeroinitializer }, align 32
@uvcg_default_camera_type = internal constant { %struct.uvcg_config_group_type, [32 x i8] } { %struct.uvcg_config_group_type { %struct.config_item_type { ptr null, ptr @uvcg_config_item_ops, ptr null, ptr @uvcg_default_camera_attrs, ptr null }, ptr @.str.13, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @uvcg_default_camera_type, ptr null], [24 x i8] zeroinitializer }, align 32
@uvcg_default_camera_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @uvcg_default_camera_attr_b_terminal_id, ptr @uvcg_default_camera_attr_w_terminal_type, ptr @uvcg_default_camera_attr_b_assoc_terminal, ptr @uvcg_default_camera_attr_i_terminal, ptr @uvcg_default_camera_attr_w_objective_focal_length_min, ptr @uvcg_default_camera_attr_w_objective_focal_length_max, ptr @uvcg_default_camera_attr_w_ocular_focal_length, ptr @uvcg_default_camera_attr_bm_controls, ptr null], [60 x i8] zeroinitializer }, align 32
@uvcg_default_camera_attr_b_terminal_id = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.23, ptr null, i16 292, ptr @uvcg_default_camera_b_terminal_id_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_default_camera_attr_w_terminal_type = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.24, ptr null, i16 292, ptr @uvcg_default_camera_w_terminal_type_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_default_camera_attr_b_assoc_terminal = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.25, ptr null, i16 292, ptr @uvcg_default_camera_b_assoc_terminal_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_default_camera_attr_i_terminal = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.26, ptr null, i16 292, ptr @uvcg_default_camera_i_terminal_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_default_camera_attr_w_objective_focal_length_min = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.27, ptr null, i16 292, ptr @uvcg_default_camera_w_objective_focal_length_min_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_default_camera_attr_w_objective_focal_length_max = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.28, ptr null, i16 292, ptr @uvcg_default_camera_w_objective_focal_length_max_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_default_camera_attr_w_ocular_focal_length = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.29, ptr null, i16 292, ptr @uvcg_default_camera_w_ocular_focal_length_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_default_camera_attr_bm_controls = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.17, ptr null, i16 292, ptr @uvcg_default_camera_bm_controls_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bTerminalID\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wTerminalType\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bAssocTerminal\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iTerminal\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wObjectiveFocalLengthMin\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wObjectiveFocalLengthMax\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wOcularFocalLength\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@uvcg_default_output_type = internal constant { %struct.uvcg_config_group_type, [32 x i8] } { %struct.uvcg_config_group_type { %struct.config_item_type { ptr null, ptr @uvcg_config_item_ops, ptr null, ptr @uvcg_default_output_attrs, ptr null }, ptr @.str.13, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @uvcg_default_output_type, ptr null], [24 x i8] zeroinitializer }, align 32
@uvcg_default_output_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @uvcg_default_output_attr_b_terminal_id, ptr @uvcg_default_output_attr_w_terminal_type, ptr @uvcg_default_output_attr_b_assoc_terminal, ptr @uvcg_default_output_attr_b_source_id, ptr @uvcg_default_output_attr_i_terminal, ptr null], [40 x i8] zeroinitializer }, align 32
@uvcg_default_output_attr_b_terminal_id = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.23, ptr null, i16 292, ptr @uvcg_default_output_b_terminal_id_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_default_output_attr_w_terminal_type = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.24, ptr null, i16 292, ptr @uvcg_default_output_w_terminal_type_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_default_output_attr_b_assoc_terminal = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.25, ptr null, i16 292, ptr @uvcg_default_output_b_assoc_terminal_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_default_output_attr_b_source_id = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.15, ptr null, i16 292, ptr @uvcg_default_output_b_source_id_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_default_output_attr_i_terminal = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.26, ptr null, i16 292, ptr @uvcg_default_output_i_terminal_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"class\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fs\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ss\00", [29 x i8] zeroinitializer }, align 32
@uvcg_control_class_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @uvcg_control_class_item_ops, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_control_class_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @uvcg_config_item_release, ptr @uvcg_control_class_allow_link, ptr @uvcg_control_class_drop_link }, [20 x i8] zeroinitializer }, align 32
@uvcg_default_streaming_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @uvcg_default_streaming_attr_b_interface_number, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"streaming\00", [22 x i8] zeroinitializer }, align 32
@uvcg_streaming_header_grp_type = internal constant { %struct.uvcg_config_group_type, [32 x i8] } { %struct.uvcg_config_group_type { %struct.config_item_type { ptr null, ptr @uvcg_config_item_ops, ptr @uvcg_streaming_header_grp_ops, ptr null, ptr null }, ptr @.str.8, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@uvcg_uncompressed_grp_type = internal constant { %struct.uvcg_config_group_type, [32 x i8] } { %struct.uvcg_config_group_type { %struct.config_item_type { ptr null, ptr @uvcg_config_item_ops, ptr @uvcg_uncompressed_grp_ops, ptr null, ptr null }, ptr @.str.37, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@uvcg_mjpeg_grp_type = internal constant { %struct.uvcg_config_group_type, [32 x i8] } { %struct.uvcg_config_group_type { %struct.config_item_type { ptr null, ptr @uvcg_config_item_ops, ptr @uvcg_mjpeg_grp_ops, ptr null, ptr null }, ptr @.str.38, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@uvcg_color_matching_grp_type = internal constant { %struct.uvcg_config_group_type, [32 x i8] } { %struct.uvcg_config_group_type { %struct.config_item_type { ptr null, ptr @uvcg_config_item_ops, ptr null, ptr null, ptr null }, ptr @.str.64, ptr @.compoundliteral.65, ptr null }, [32 x i8] zeroinitializer }, align 32
@uvcg_streaming_class_grp_type = internal constant { %struct.uvcg_config_group_type, [32 x i8] } { %struct.uvcg_config_group_type { %struct.config_item_type { ptr null, ptr @uvcg_config_item_ops, ptr null, ptr null, ptr null }, ptr @.str.32, ptr null, ptr @uvcg_streaming_class_create_children }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @uvcg_streaming_header_grp_type, ptr @uvcg_uncompressed_grp_type, ptr @uvcg_mjpeg_grp_type, ptr @uvcg_color_matching_grp_type, ptr @uvcg_streaming_class_grp_type, ptr null], [40 x i8] zeroinitializer }, align 32
@uvcg_default_streaming_attr_b_interface_number = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.7, ptr null, i16 292, ptr @uvcg_default_streaming_b_interface_number_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_streaming_header_grp_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr @uvcg_streaming_header_make, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_streaming_header_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @uvcg_streaming_header_item_ops, ptr null, ptr @uvcg_streaming_header_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_streaming_header_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @uvcg_config_item_release, ptr @uvcg_streaming_header_allow_link, ptr @uvcg_streaming_header_drop_link }, [20 x i8] zeroinitializer }, align 32
@uvcg_streaming_header_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @uvcg_streaming_header_attr_bm_info, ptr @uvcg_streaming_header_attr_b_terminal_link, ptr @uvcg_streaming_header_attr_b_still_capture_method, ptr @uvcg_streaming_header_attr_b_trigger_support, ptr @uvcg_streaming_header_attr_b_trigger_usage, ptr null], [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uncompressed\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mjpeg\00", [26 x i8] zeroinitializer }, align 32
@uvcg_frame_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @uvcg_config_item_ops, ptr null, ptr @uvcg_frame_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_frame_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @uvcg_frame_attr_b_frame_index, ptr @uvcg_frame_attr_bm_capabilities, ptr @uvcg_frame_attr_w_width, ptr @uvcg_frame_attr_w_height, ptr @uvcg_frame_attr_dw_min_bit_rate, ptr @uvcg_frame_attr_dw_max_bit_rate, ptr @uvcg_frame_attr_dw_max_video_frame_buffer_size, ptr @uvcg_frame_attr_dw_default_frame_interval, ptr @uvcg_frame_attr_dw_frame_interval, ptr null], [56 x i8] zeroinitializer }, align 32
@uvcg_frame_attr_b_frame_index = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.39, ptr null, i16 292, ptr @uvcg_frame_b_frame_index_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_frame_attr_bm_capabilities = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.40, ptr null, i16 438, ptr @uvcg_frame_bm_capabilities_show, ptr @uvcg_frame_bm_capabilities_store }, [44 x i8] zeroinitializer }, align 32
@uvcg_frame_attr_w_width = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.41, ptr null, i16 438, ptr @uvcg_frame_w_width_show, ptr @uvcg_frame_w_width_store }, [44 x i8] zeroinitializer }, align 32
@uvcg_frame_attr_w_height = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.42, ptr null, i16 438, ptr @uvcg_frame_w_height_show, ptr @uvcg_frame_w_height_store }, [44 x i8] zeroinitializer }, align 32
@uvcg_frame_attr_dw_min_bit_rate = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.43, ptr null, i16 438, ptr @uvcg_frame_dw_min_bit_rate_show, ptr @uvcg_frame_dw_min_bit_rate_store }, [44 x i8] zeroinitializer }, align 32
@uvcg_frame_attr_dw_max_bit_rate = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.44, ptr null, i16 438, ptr @uvcg_frame_dw_max_bit_rate_show, ptr @uvcg_frame_dw_max_bit_rate_store }, [44 x i8] zeroinitializer }, align 32
@uvcg_frame_attr_dw_max_video_frame_buffer_size = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.45, ptr null, i16 438, ptr @uvcg_frame_dw_max_video_frame_buffer_size_show, ptr @uvcg_frame_dw_max_video_frame_buffer_size_store }, [44 x i8] zeroinitializer }, align 32
@uvcg_frame_attr_dw_default_frame_interval = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.46, ptr null, i16 438, ptr @uvcg_frame_dw_default_frame_interval_show, ptr @uvcg_frame_dw_default_frame_interval_store }, [44 x i8] zeroinitializer }, align 32
@uvcg_frame_attr_dw_frame_interval = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.47, ptr null, i16 438, ptr @uvcg_frame_dw_frame_interval_show, ptr @uvcg_frame_dw_frame_interval_store }, [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bFrameIndex\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bmCapabilities\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wWidth\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wHeight\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dwMinBitRate\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dwMaxBitRate\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dwMaxVideoFrameBufferSize\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dwDefaultFrameInterval\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dwFrameInterval\00", [16 x i8] zeroinitializer }, align 32
@uvcg_streaming_header_attr_bm_info = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.48, ptr null, i16 292, ptr @uvcg_streaming_header_bm_info_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_streaming_header_attr_b_terminal_link = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.49, ptr null, i16 292, ptr @uvcg_streaming_header_b_terminal_link_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_streaming_header_attr_b_still_capture_method = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.50, ptr null, i16 292, ptr @uvcg_streaming_header_b_still_capture_method_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_streaming_header_attr_b_trigger_support = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.51, ptr null, i16 292, ptr @uvcg_streaming_header_b_trigger_support_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_streaming_header_attr_b_trigger_usage = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.52, ptr null, i16 292, ptr @uvcg_streaming_header_b_trigger_usage_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bmInfo\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bTerminalLink\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bStillCaptureMethod\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bTriggerSupport\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bTriggerUsage\00", [18 x i8] zeroinitializer }, align 32
@uvcg_uncompressed_grp_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @uvcg_uncompressed_make, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_uncompressed_make.guid = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"YUY2\00\00\10\00\80\00\00\AA\008\9Bq", [16 x i8] zeroinitializer }, align 32
@uvcg_uncompressed_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @uvcg_config_item_ops, ptr @uvcg_uncompressed_group_ops, ptr @uvcg_uncompressed_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_uncompressed_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr @uvcg_frame_make, ptr null, ptr null, ptr null, ptr @uvcg_frame_drop }, [44 x i8] zeroinitializer }, align 32
@uvcg_uncompressed_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @uvcg_uncompressed_attr_b_format_index, ptr @uvcg_uncompressed_attr_guid_format, ptr @uvcg_uncompressed_attr_b_bits_per_pixel, ptr @uvcg_uncompressed_attr_b_default_frame_index, ptr @uvcg_uncompressed_attr_b_aspect_ratio_x, ptr @uvcg_uncompressed_attr_b_aspect_ratio_y, ptr @uvcg_uncompressed_attr_bm_interface_flags, ptr @uvcg_uncompressed_attr_bma_controls, ptr null], [60 x i8] zeroinitializer }, align 32
@uvcg_uncompressed_attr_b_format_index = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.53, ptr null, i16 292, ptr @uvcg_uncompressed_b_format_index_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_uncompressed_attr_guid_format = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.54, ptr null, i16 438, ptr @uvcg_uncompressed_guid_format_show, ptr @uvcg_uncompressed_guid_format_store }, [44 x i8] zeroinitializer }, align 32
@uvcg_uncompressed_attr_b_bits_per_pixel = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.55, ptr null, i16 438, ptr @uvcg_uncompressed_b_bits_per_pixel_show, ptr @uvcg_uncompressed_b_bits_per_pixel_store }, [44 x i8] zeroinitializer }, align 32
@uvcg_uncompressed_attr_b_default_frame_index = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.56, ptr null, i16 438, ptr @uvcg_uncompressed_b_default_frame_index_show, ptr @uvcg_uncompressed_b_default_frame_index_store }, [44 x i8] zeroinitializer }, align 32
@uvcg_uncompressed_attr_b_aspect_ratio_x = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.57, ptr null, i16 292, ptr @uvcg_uncompressed_b_aspect_ratio_x_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_uncompressed_attr_b_aspect_ratio_y = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.58, ptr null, i16 292, ptr @uvcg_uncompressed_b_aspect_ratio_y_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_uncompressed_attr_bm_interface_flags = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.59, ptr null, i16 292, ptr @uvcg_uncompressed_bm_interface_flags_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_uncompressed_attr_bma_controls = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.60, ptr null, i16 438, ptr @uvcg_uncompressed_bma_controls_show, ptr @uvcg_uncompressed_bma_controls_store }, [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bFormatIndex\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"guidFormat\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bBitsPerPixel\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bDefaultFrameIndex\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bAspectRatioX\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bAspectRatioY\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bmInterfaceFlags\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bmaControls\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0x\00", [29 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@uvcg_mjpeg_grp_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @uvcg_mjpeg_make, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_mjpeg_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @uvcg_config_item_ops, ptr @uvcg_mjpeg_group_ops, ptr @uvcg_mjpeg_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_mjpeg_group_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr @uvcg_frame_make, ptr null, ptr null, ptr null, ptr @uvcg_frame_drop }, [44 x i8] zeroinitializer }, align 32
@uvcg_mjpeg_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @uvcg_mjpeg_attr_b_format_index, ptr @uvcg_mjpeg_attr_b_default_frame_index, ptr @uvcg_mjpeg_attr_bm_flags, ptr @uvcg_mjpeg_attr_b_aspect_ratio_x, ptr @uvcg_mjpeg_attr_b_aspect_ratio_y, ptr @uvcg_mjpeg_attr_bm_interface_flags, ptr @uvcg_mjpeg_attr_bma_controls, ptr null], [32 x i8] zeroinitializer }, align 32
@uvcg_mjpeg_attr_b_format_index = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.53, ptr null, i16 292, ptr @uvcg_mjpeg_b_format_index_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_mjpeg_attr_b_default_frame_index = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.56, ptr null, i16 438, ptr @uvcg_mjpeg_b_default_frame_index_show, ptr @uvcg_mjpeg_b_default_frame_index_store }, [44 x i8] zeroinitializer }, align 32
@uvcg_mjpeg_attr_bm_flags = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.63, ptr null, i16 292, ptr @uvcg_mjpeg_bm_flags_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_mjpeg_attr_b_aspect_ratio_x = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.57, ptr null, i16 292, ptr @uvcg_mjpeg_b_aspect_ratio_x_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_mjpeg_attr_b_aspect_ratio_y = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.58, ptr null, i16 292, ptr @uvcg_mjpeg_b_aspect_ratio_y_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_mjpeg_attr_bm_interface_flags = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.59, ptr null, i16 292, ptr @uvcg_mjpeg_bm_interface_flags_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_mjpeg_attr_bma_controls = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.60, ptr null, i16 438, ptr @uvcg_mjpeg_bma_controls_show, ptr @uvcg_mjpeg_bma_controls_store }, [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bmFlags\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"color_matching\00", [17 x i8] zeroinitializer }, align 32
@uvcg_default_color_matching_type = internal constant { %struct.uvcg_config_group_type, [32 x i8] } { %struct.uvcg_config_group_type { %struct.config_item_type { ptr null, ptr @uvcg_config_item_ops, ptr null, ptr @uvcg_default_color_matching_attrs, ptr null }, ptr @.str.13, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @uvcg_default_color_matching_type, ptr null], [24 x i8] zeroinitializer }, align 32
@uvcg_default_color_matching_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @uvcg_default_color_matching_attr_b_color_primaries, ptr @uvcg_default_color_matching_attr_b_transfer_characteristics, ptr @uvcg_default_color_matching_attr_b_matrix_coefficients, ptr null], [16 x i8] zeroinitializer }, align 32
@uvcg_default_color_matching_attr_b_color_primaries = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.66, ptr null, i16 292, ptr @uvcg_default_color_matching_b_color_primaries_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_default_color_matching_attr_b_transfer_characteristics = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.67, ptr null, i16 292, ptr @uvcg_default_color_matching_b_transfer_characteristics_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_default_color_matching_attr_b_matrix_coefficients = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.68, ptr null, i16 292, ptr @uvcg_default_color_matching_b_matrix_coefficients_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bColorPrimaries\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bTransferCharacteristics\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bMatrixCoefficients\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hs\00", [29 x i8] zeroinitializer }, align 32
@uvcg_streaming_class_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @uvcg_streaming_class_item_ops, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@uvcg_streaming_class_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @uvcg_config_item_release, ptr @uvcg_streaming_class_allow_link, ptr @uvcg_streaming_class_drop_link }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 8, i64 88, i64 120]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.79 = private unnamed_addr constant [14 x i8] c"uvc_func_type\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2435, i32 44 }
@___asan_gen_.82 = private unnamed_addr constant [18 x i8] c"uvc_func_item_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2373, i32 40 }
@___asan_gen_.85 = private unnamed_addr constant [10 x i8] c"uvc_attrs\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2428, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2441, i32 10 }
@___asan_gen_.91 = private unnamed_addr constant [22 x i8] c"uvcg_control_grp_type\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 746, i32 44 }
@___asan_gen_.94 = private unnamed_addr constant [24 x i8] c"uvcg_streaming_grp_type\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2344, i32 44 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [35 x i8] c"f_uvc_opts_attr_streaming_interval\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [36 x i8] c"f_uvc_opts_attr_streaming_maxpacket\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [35 x i8] c"f_uvc_opts_attr_streaming_maxburst\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2422, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2423, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2424, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [21 x i8] c"uvcg_config_item_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 72, i32 40 }
@___asan_gen_.122 = private unnamed_addr constant [27 x i8] c"uvcg_default_control_attrs\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 741, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 752, i32 10 }
@___asan_gen_.128 = private unnamed_addr constant [29 x i8] c"uvcg_control_header_grp_type\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 246, i32 44 }
@___asan_gen_.131 = private unnamed_addr constant [25 x i8] c"uvcg_processing_grp_type\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 346, i32 44 }
@___asan_gen_.134 = private unnamed_addr constant [23 x i8] c"uvcg_terminal_grp_type\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 551, i32 44 }
@___asan_gen_.137 = private unnamed_addr constant [28 x i8] c"uvcg_control_class_grp_type\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 703, i32 44 }
@___asan_gen_.140 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [45 x i8] c"uvcg_default_control_attr_b_interface_number\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 739, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant [28 x i8] c"uvcg_control_header_grp_ops\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 242, i32 41 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 252, i32 10 }
@___asan_gen_.153 = private unnamed_addr constant [25 x i8] c"uvcg_control_header_type\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 216, i32 38 }
@___asan_gen_.156 = private unnamed_addr constant [26 x i8] c"uvcg_control_header_attrs\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 210, i32 35 }
@___asan_gen_.159 = private unnamed_addr constant [33 x i8] c"uvcg_control_header_attr_bcd_uvc\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [44 x i8] c"uvcg_control_header_attr_dw_clock_frequency\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 204, i32 1 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 206, i32 1 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 351, i32 10 }
@___asan_gen_.174 = private unnamed_addr constant [29 x i8] c"uvcg_default_processing_type\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 333, i32 44 }
@___asan_gen_.177 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [30 x i8] c"uvcg_default_processing_attrs\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 324, i32 35 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 339, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant [39 x i8] c"uvcg_default_processing_attr_b_unit_id\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [41 x i8] c"uvcg_default_processing_attr_b_source_id\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [46 x i8] c"uvcg_default_processing_attr_w_max_multiplier\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [41 x i8] c"uvcg_default_processing_attr_bm_controls\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [42 x i8] c"uvcg_default_processing_attr_i_processing\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 286, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 287, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 288, i32 1 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 322, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 289, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 556, i32 10 }
@___asan_gen_.217 = private unnamed_addr constant [21 x i8] c"uvcg_camera_grp_type\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 460, i32 44 }
@___asan_gen_.220 = private unnamed_addr constant [21 x i8] c"uvcg_output_grp_type\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 535, i32 44 }
@___asan_gen_.223 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 465, i32 10 }
@___asan_gen_.227 = private unnamed_addr constant [25 x i8] c"uvcg_default_camera_type\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 447, i32 44 }
@___asan_gen_.230 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [26 x i8] c"uvcg_default_camera_attrs\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 435, i32 35 }
@___asan_gen_.234 = private unnamed_addr constant [39 x i8] c"uvcg_default_camera_attr_b_terminal_id\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [41 x i8] c"uvcg_default_camera_attr_w_terminal_type\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [42 x i8] c"uvcg_default_camera_attr_b_assoc_terminal\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [36 x i8] c"uvcg_default_camera_attr_i_terminal\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [54 x i8] c"uvcg_default_camera_attr_w_objective_focal_length_min\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [54 x i8] c"uvcg_default_camera_attr_w_objective_focal_length_max\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [47 x i8] c"uvcg_default_camera_attr_w_ocular_focal_length\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [37 x i8] c"uvcg_default_camera_attr_bm_controls\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 433, i32 1 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 391, i32 1 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 392, i32 1 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 393, i32 1 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 394, i32 1 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 395, i32 1 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 397, i32 1 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 399, i32 1 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 540, i32 10 }
@___asan_gen_.282 = private unnamed_addr constant [25 x i8] c"uvcg_default_output_type\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 522, i32 44 }
@___asan_gen_.285 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [26 x i8] c"uvcg_default_output_attrs\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 513, i32 35 }
@___asan_gen_.289 = private unnamed_addr constant [39 x i8] c"uvcg_default_output_attr_b_terminal_id\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 505, i32 1 }
@___asan_gen_.292 = private unnamed_addr constant [41 x i8] c"uvcg_default_output_attr_w_terminal_type\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 506, i32 1 }
@___asan_gen_.295 = private unnamed_addr constant [42 x i8] c"uvcg_default_output_attr_b_assoc_terminal\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 507, i32 1 }
@___asan_gen_.298 = private unnamed_addr constant [37 x i8] c"uvcg_default_output_attr_b_source_id\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 508, i32 1 }
@___asan_gen_.301 = private unnamed_addr constant [36 x i8] c"uvcg_default_output_attr_i_terminal\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 509, i32 1 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 708, i32 10 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 683, i32 40 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 683, i32 46 }
@___asan_gen_.313 = private unnamed_addr constant [24 x i8] c"uvcg_control_class_type\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 672, i32 38 }
@___asan_gen_.316 = private unnamed_addr constant [28 x i8] c"uvcg_control_class_item_ops\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 666, i32 40 }
@___asan_gen_.319 = private unnamed_addr constant [29 x i8] c"uvcg_default_streaming_attrs\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2339, i32 35 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2350, i32 10 }
@___asan_gen_.325 = private unnamed_addr constant [31 x i8] c"uvcg_streaming_header_grp_type\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1049, i32 44 }
@___asan_gen_.328 = private unnamed_addr constant [27 x i8] c"uvcg_uncompressed_grp_type\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1659, i32 44 }
@___asan_gen_.331 = private unnamed_addr constant [20 x i8] c"uvcg_mjpeg_grp_type\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1845, i32 44 }
@___asan_gen_.334 = private unnamed_addr constant [29 x i8] c"uvcg_color_matching_grp_type\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1912, i32 44 }
@___asan_gen_.337 = private unnamed_addr constant [30 x i8] c"uvcg_streaming_class_grp_type\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2301, i32 44 }
@___asan_gen_.340 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [47 x i8] c"uvcg_default_streaming_attr_b_interface_number\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2337, i32 1 }
@___asan_gen_.344 = private unnamed_addr constant [30 x i8] c"uvcg_streaming_header_grp_ops\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1045, i32 41 }
@___asan_gen_.347 = private unnamed_addr constant [27 x i8] c"uvcg_streaming_header_type\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1019, i32 38 }
@___asan_gen_.350 = private unnamed_addr constant [31 x i8] c"uvcg_streaming_header_item_ops\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 971, i32 40 }
@___asan_gen_.353 = private unnamed_addr constant [28 x i8] c"uvcg_streaming_header_attrs\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1010, i32 35 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 768, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 769, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant [16 x i8] c"uvcg_frame_type\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1335, i32 38 }
@___asan_gen_.365 = private unnamed_addr constant [17 x i8] c"uvcg_frame_attrs\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1322, i32 35 }
@___asan_gen_.368 = private unnamed_addr constant [30 x i8] c"uvcg_frame_attr_b_frame_index\00", align 1
@___asan_gen_.371 = private unnamed_addr constant [32 x i8] c"uvcg_frame_attr_bm_capabilities\00", align 1
@___asan_gen_.374 = private unnamed_addr constant [24 x i8] c"uvcg_frame_attr_w_width\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [25 x i8] c"uvcg_frame_attr_w_height\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [32 x i8] c"uvcg_frame_attr_dw_min_bit_rate\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [32 x i8] c"uvcg_frame_attr_dw_max_bit_rate\00", align 1
@___asan_gen_.386 = private unnamed_addr constant [47 x i8] c"uvcg_frame_attr_dw_max_video_frame_buffer_size\00", align 1
@___asan_gen_.389 = private unnamed_addr constant [42 x i8] c"uvcg_frame_attr_dw_default_frame_interval\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [34 x i8] c"uvcg_frame_attr_dw_frame_interval\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1179, i32 1 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1181, i32 1 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1182, i32 1 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1183, i32 1 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1184, i32 1 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1185, i32 1 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1186, i32 1 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1187, i32 1 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1320, i32 1 }
@___asan_gen_.422 = private unnamed_addr constant [35 x i8] c"uvcg_streaming_header_attr_bm_info\00", align 1
@___asan_gen_.425 = private unnamed_addr constant [43 x i8] c"uvcg_streaming_header_attr_b_terminal_link\00", align 1
@___asan_gen_.428 = private unnamed_addr constant [50 x i8] c"uvcg_streaming_header_attr_b_still_capture_method\00", align 1
@___asan_gen_.431 = private unnamed_addr constant [45 x i8] c"uvcg_streaming_header_attr_b_trigger_support\00", align 1
@___asan_gen_.434 = private unnamed_addr constant [43 x i8] c"uvcg_streaming_header_attr_b_trigger_usage\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1002, i32 1 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1003, i32 1 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1004, i32 1 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1005, i32 1 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1006, i32 1 }
@___asan_gen_.452 = private unnamed_addr constant [26 x i8] c"uvcg_uncompressed_grp_ops\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1655, i32 41 }
@___asan_gen_.455 = private unnamed_addr constant [5 x i8] c"guid\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1627, i32 14 }
@___asan_gen_.458 = private unnamed_addr constant [23 x i8] c"uvcg_uncompressed_type\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1617, i32 38 }
@___asan_gen_.461 = private unnamed_addr constant [28 x i8] c"uvcg_uncompressed_group_ops\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1435, i32 41 }
@___asan_gen_.464 = private unnamed_addr constant [24 x i8] c"uvcg_uncompressed_attrs\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1605, i32 35 }
@___asan_gen_.467 = private unnamed_addr constant [38 x i8] c"uvcg_uncompressed_attr_b_format_index\00", align 1
@___asan_gen_.470 = private unnamed_addr constant [35 x i8] c"uvcg_uncompressed_attr_guid_format\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [40 x i8] c"uvcg_uncompressed_attr_b_bits_per_pixel\00", align 1
@___asan_gen_.476 = private unnamed_addr constant [45 x i8] c"uvcg_uncompressed_attr_b_default_frame_index\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [40 x i8] c"uvcg_uncompressed_attr_b_aspect_ratio_x\00", align 1
@___asan_gen_.482 = private unnamed_addr constant [40 x i8] c"uvcg_uncompressed_attr_b_aspect_ratio_y\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [42 x i8] c"uvcg_uncompressed_attr_bm_interface_flags\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [36 x i8] c"uvcg_uncompressed_attr_bma_controls\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1578, i32 1 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1492, i32 1 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1579, i32 1 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1580, i32 1 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1581, i32 1 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1582, i32 1 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1583, i32 1 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1603, i32 1 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 804, i32 23 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 807, i32 25 }
@___asan_gen_.521 = private unnamed_addr constant [19 x i8] c"uvcg_mjpeg_grp_ops\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1841, i32 41 }
@___asan_gen_.524 = private unnamed_addr constant [16 x i8] c"uvcg_mjpeg_type\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1809, i32 38 }
@___asan_gen_.527 = private unnamed_addr constant [21 x i8] c"uvcg_mjpeg_group_ops\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1684, i32 41 }
@___asan_gen_.530 = private unnamed_addr constant [17 x i8] c"uvcg_mjpeg_attrs\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1798, i32 35 }
@___asan_gen_.533 = private unnamed_addr constant [31 x i8] c"uvcg_mjpeg_attr_b_format_index\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1771, i32 1 }
@___asan_gen_.536 = private unnamed_addr constant [38 x i8] c"uvcg_mjpeg_attr_b_default_frame_index\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1772, i32 1 }
@___asan_gen_.539 = private unnamed_addr constant [25 x i8] c"uvcg_mjpeg_attr_bm_flags\00", align 1
@___asan_gen_.542 = private unnamed_addr constant [33 x i8] c"uvcg_mjpeg_attr_b_aspect_ratio_x\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1774, i32 1 }
@___asan_gen_.545 = private unnamed_addr constant [33 x i8] c"uvcg_mjpeg_attr_b_aspect_ratio_y\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1775, i32 1 }
@___asan_gen_.548 = private unnamed_addr constant [35 x i8] c"uvcg_mjpeg_attr_bm_interface_flags\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1776, i32 1 }
@___asan_gen_.551 = private unnamed_addr constant [29 x i8] c"uvcg_mjpeg_attr_bma_controls\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1796, i32 1 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1773, i32 1 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1917, i32 10 }
@___asan_gen_.560 = private unnamed_addr constant [33 x i8] c"uvcg_default_color_matching_type\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1899, i32 44 }
@___asan_gen_.563 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.564 = private unnamed_addr constant [34 x i8] c"uvcg_default_color_matching_attrs\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1892, i32 35 }
@___asan_gen_.567 = private unnamed_addr constant [51 x i8] c"uvcg_default_color_matching_attr_b_color_primaries\00", align 1
@___asan_gen_.570 = private unnamed_addr constant [60 x i8] c"uvcg_default_color_matching_attr_b_transfer_characteristics\00", align 1
@___asan_gen_.573 = private unnamed_addr constant [55 x i8] c"uvcg_default_color_matching_attr_b_matrix_coefficients\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1885, i32 1 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1886, i32 1 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1888, i32 1 }
@___asan_gen_.585 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2281, i32 46 }
@___asan_gen_.588 = private unnamed_addr constant [26 x i8] c"uvcg_streaming_class_type\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2270, i32 38 }
@___asan_gen_.591 = private unnamed_addr constant [30 x i8] c"uvcg_streaming_class_item_ops\00", align 1
@___asan_gen_.592 = private constant [46 x i8] c"../drivers/usb/gadget/function/uvc_configfs.c\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2264, i32 40 }
@llvm.compiler.used = appending global [177 x ptr] [ptr @uvc_func_type, ptr @uvc_func_item_ops, ptr @uvc_attrs, ptr @.str, ptr @uvcg_control_grp_type, ptr @uvcg_streaming_grp_type, ptr @.compoundliteral, ptr @f_uvc_opts_attr_streaming_interval, ptr @f_uvc_opts_attr_streaming_maxpacket, ptr @f_uvc_opts_attr_streaming_maxburst, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @uvcg_config_item_ops, ptr @uvcg_default_control_attrs, ptr @.str.5, ptr @uvcg_control_header_grp_type, ptr @uvcg_processing_grp_type, ptr @uvcg_terminal_grp_type, ptr @uvcg_control_class_grp_type, ptr @.compoundliteral.6, ptr @uvcg_default_control_attr_b_interface_number, ptr @.str.7, ptr @uvcg_control_header_grp_ops, ptr @.str.8, ptr @uvcg_control_header_type, ptr @uvcg_control_header_attrs, ptr @uvcg_control_header_attr_bcd_uvc, ptr @uvcg_control_header_attr_dw_clock_frequency, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @uvcg_default_processing_type, ptr @.compoundliteral.12, ptr @uvcg_default_processing_attrs, ptr @.str.13, ptr @uvcg_default_processing_attr_b_unit_id, ptr @uvcg_default_processing_attr_b_source_id, ptr @uvcg_default_processing_attr_w_max_multiplier, ptr @uvcg_default_processing_attr_bm_controls, ptr @uvcg_default_processing_attr_i_processing, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @uvcg_camera_grp_type, ptr @uvcg_output_grp_type, ptr @.compoundliteral.20, ptr @.str.21, ptr @uvcg_default_camera_type, ptr @.compoundliteral.22, ptr @uvcg_default_camera_attrs, ptr @uvcg_default_camera_attr_b_terminal_id, ptr @uvcg_default_camera_attr_w_terminal_type, ptr @uvcg_default_camera_attr_b_assoc_terminal, ptr @uvcg_default_camera_attr_i_terminal, ptr @uvcg_default_camera_attr_w_objective_focal_length_min, ptr @uvcg_default_camera_attr_w_objective_focal_length_max, ptr @uvcg_default_camera_attr_w_ocular_focal_length, ptr @uvcg_default_camera_attr_bm_controls, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @uvcg_default_output_type, ptr @.compoundliteral.31, ptr @uvcg_default_output_attrs, ptr @uvcg_default_output_attr_b_terminal_id, ptr @uvcg_default_output_attr_w_terminal_type, ptr @uvcg_default_output_attr_b_assoc_terminal, ptr @uvcg_default_output_attr_b_source_id, ptr @uvcg_default_output_attr_i_terminal, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @uvcg_control_class_type, ptr @uvcg_control_class_item_ops, ptr @uvcg_default_streaming_attrs, ptr @.str.35, ptr @uvcg_streaming_header_grp_type, ptr @uvcg_uncompressed_grp_type, ptr @uvcg_mjpeg_grp_type, ptr @uvcg_color_matching_grp_type, ptr @uvcg_streaming_class_grp_type, ptr @.compoundliteral.36, ptr @uvcg_default_streaming_attr_b_interface_number, ptr @uvcg_streaming_header_grp_ops, ptr @uvcg_streaming_header_type, ptr @uvcg_streaming_header_item_ops, ptr @uvcg_streaming_header_attrs, ptr @.str.37, ptr @.str.38, ptr @uvcg_frame_type, ptr @uvcg_frame_attrs, ptr @uvcg_frame_attr_b_frame_index, ptr @uvcg_frame_attr_bm_capabilities, ptr @uvcg_frame_attr_w_width, ptr @uvcg_frame_attr_w_height, ptr @uvcg_frame_attr_dw_min_bit_rate, ptr @uvcg_frame_attr_dw_max_bit_rate, ptr @uvcg_frame_attr_dw_max_video_frame_buffer_size, ptr @uvcg_frame_attr_dw_default_frame_interval, ptr @uvcg_frame_attr_dw_frame_interval, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @uvcg_streaming_header_attr_bm_info, ptr @uvcg_streaming_header_attr_b_terminal_link, ptr @uvcg_streaming_header_attr_b_still_capture_method, ptr @uvcg_streaming_header_attr_b_trigger_support, ptr @uvcg_streaming_header_attr_b_trigger_usage, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @uvcg_uncompressed_grp_ops, ptr @uvcg_uncompressed_make.guid, ptr @uvcg_uncompressed_type, ptr @uvcg_uncompressed_group_ops, ptr @uvcg_uncompressed_attrs, ptr @uvcg_uncompressed_attr_b_format_index, ptr @uvcg_uncompressed_attr_guid_format, ptr @uvcg_uncompressed_attr_b_bits_per_pixel, ptr @uvcg_uncompressed_attr_b_default_frame_index, ptr @uvcg_uncompressed_attr_b_aspect_ratio_x, ptr @uvcg_uncompressed_attr_b_aspect_ratio_y, ptr @uvcg_uncompressed_attr_bm_interface_flags, ptr @uvcg_uncompressed_attr_bma_controls, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @uvcg_mjpeg_grp_ops, ptr @uvcg_mjpeg_type, ptr @uvcg_mjpeg_group_ops, ptr @uvcg_mjpeg_attrs, ptr @uvcg_mjpeg_attr_b_format_index, ptr @uvcg_mjpeg_attr_b_default_frame_index, ptr @uvcg_mjpeg_attr_bm_flags, ptr @uvcg_mjpeg_attr_b_aspect_ratio_x, ptr @uvcg_mjpeg_attr_b_aspect_ratio_y, ptr @uvcg_mjpeg_attr_bm_interface_flags, ptr @uvcg_mjpeg_attr_bma_controls, ptr @.str.63, ptr @.str.64, ptr @uvcg_default_color_matching_type, ptr @.compoundliteral.65, ptr @uvcg_default_color_matching_attrs, ptr @uvcg_default_color_matching_attr_b_color_primaries, ptr @uvcg_default_color_matching_attr_b_transfer_characteristics, ptr @uvcg_default_color_matching_attr_b_matrix_coefficients, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @uvcg_streaming_class_type, ptr @uvcg_streaming_class_item_ops], section "llvm.metadata"
@0 = internal global [177 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_func_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_func_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_control_grp_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_streaming_grp_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uvc_opts_attr_streaming_interval to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uvc_opts_attr_streaming_maxpacket to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_uvc_opts_attr_streaming_maxburst to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_config_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_control_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_control_header_grp_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_processing_grp_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_terminal_grp_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_control_class_grp_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_control_attr_b_interface_number to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_control_header_grp_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_control_header_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_control_header_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_control_header_attr_bcd_uvc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_control_header_attr_dw_clock_frequency to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_processing_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_processing_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_processing_attr_b_unit_id to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_processing_attr_b_source_id to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_processing_attr_w_max_multiplier to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_processing_attr_bm_controls to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_processing_attr_i_processing to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_camera_grp_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_output_grp_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_camera_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_camera_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_camera_attr_b_terminal_id to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_camera_attr_w_terminal_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_camera_attr_b_assoc_terminal to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_camera_attr_i_terminal to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_camera_attr_w_objective_focal_length_min to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_camera_attr_w_objective_focal_length_max to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_camera_attr_w_ocular_focal_length to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_camera_attr_bm_controls to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_output_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_output_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_output_attr_b_terminal_id to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_output_attr_w_terminal_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_output_attr_b_assoc_terminal to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_output_attr_b_source_id to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_output_attr_i_terminal to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_control_class_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_control_class_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_streaming_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_streaming_header_grp_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_uncompressed_grp_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_mjpeg_grp_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_color_matching_grp_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_streaming_class_grp_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_streaming_attr_b_interface_number to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_streaming_header_grp_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_streaming_header_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_streaming_header_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_streaming_header_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_frame_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_frame_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_frame_attr_b_frame_index to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_frame_attr_bm_capabilities to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_frame_attr_w_width to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_frame_attr_w_height to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_frame_attr_dw_min_bit_rate to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_frame_attr_dw_max_bit_rate to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_frame_attr_dw_max_video_frame_buffer_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_frame_attr_dw_default_frame_interval to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_frame_attr_dw_frame_interval to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_streaming_header_attr_bm_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_streaming_header_attr_b_terminal_link to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_streaming_header_attr_b_still_capture_method to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_streaming_header_attr_b_trigger_support to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_streaming_header_attr_b_trigger_usage to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_uncompressed_grp_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_uncompressed_make.guid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_uncompressed_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_uncompressed_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_uncompressed_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_uncompressed_attr_b_format_index to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_uncompressed_attr_guid_format to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_uncompressed_attr_b_bits_per_pixel to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_uncompressed_attr_b_default_frame_index to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_uncompressed_attr_b_aspect_ratio_x to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_uncompressed_attr_b_aspect_ratio_y to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_uncompressed_attr_bm_interface_flags to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_uncompressed_attr_bma_controls to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_mjpeg_grp_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_mjpeg_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_mjpeg_group_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_mjpeg_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_mjpeg_attr_b_format_index to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_mjpeg_attr_b_default_frame_index to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_mjpeg_attr_bm_flags to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_mjpeg_attr_b_aspect_ratio_x to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_mjpeg_attr_b_aspect_ratio_y to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_mjpeg_attr_bm_interface_flags to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_mjpeg_attr_bma_controls to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_color_matching_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_color_matching_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_color_matching_attr_b_color_primaries to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_color_matching_attr_b_transfer_characteristics to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_default_color_matching_attr_b_matrix_coefficients to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_streaming_class_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvcg_streaming_class_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvcg_attach_configfs(ptr noundef %opts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @config_group_init_type_name(ptr noundef %opts, ptr noundef nonnull @.str, ptr noundef nonnull @uvc_func_type) #11
  %call = tail call fastcc i32 @uvcg_config_create_children(ptr noundef %opts, ptr noundef nonnull @uvc_func_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @config_item_put(ptr noundef %opts) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvcg_config_create_children(ptr noundef %group, ptr nocapture noundef readonly %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %create_children = getelementptr inbounds %struct.uvcg_config_group_type, ptr %type, i32 0, i32 3
  %0 = ptrtoint ptr %create_children to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %create_children, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 %1(ptr noundef %group) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %children = getelementptr inbounds %struct.uvcg_config_group_type, ptr %type, i32 0, i32 2
  %2 = ptrtoint ptr %children to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %children, align 4
  %tobool2.not19 = icmp eq ptr %3, null
  br i1 %tobool2.not19, label %if.end.cleanup_crit_edge, label %land.rhs.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %if.end
  %default_groups.i = getelementptr inbounds %struct.config_group, ptr %group, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.config_group, ptr %group, i32 0, i32 3, i32 1
  br label %land.rhs

for.cond:                                         ; preds = %uvcg_config_create_group.exit
  %incdec.ptr = getelementptr ptr, ptr %child.020, i32 1
  %tobool2.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool2.not, label %for.cond.cleanup_crit_edge, label %for.cond.land.rhs_crit_edge

for.cond.land.rhs_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs:                                         ; preds = %for.cond.land.rhs_crit_edge, %land.rhs.lr.ph
  %child.020 = phi ptr [ %3, %land.rhs.lr.ph ], [ %incdec.ptr, %for.cond.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %child.020 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %child.020, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.rhs.cleanup_crit_edge, label %for.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 80) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %for.body.cleanup_crit_edge, label %if.end.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %name.i = getelementptr inbounds %struct.uvcg_config_group_type, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name.i, align 4
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %8, ptr noundef nonnull %5) #11
  %group_entry.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %10, ptr noundef %default_groups.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.uvcg_config_create_group.exit_crit_edge

if.end.i.uvcg_config_create_group.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uvcg_config_create_group.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %default_groups.i, ptr %group_entry.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %group_entry.i, ptr %10, align 4
  br label %uvcg_config_create_group.exit

uvcg_config_create_group.exit:                    ; preds = %if.end.i.i.i, %if.end.i.uvcg_config_create_group.exit_crit_edge
  %call2.i = tail call fastcc i32 @uvcg_config_create_children(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %uvcg_config_create_group.exit.cleanup_crit_edge, label %for.cond

uvcg_config_create_group.exit.cleanup_crit_edge:  ; preds = %uvcg_config_create_group.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %uvcg_config_create_group.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call2.i, %uvcg_config_create_group.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_func_item_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @uvcg_config_remove_children(ptr noundef %item)
  tail call void @usb_put_function_instance(ptr noundef %item) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uvcg_config_remove_children(ptr noundef readonly %group) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %default_groups = getelementptr inbounds %struct.config_group, ptr %group, i32 0, i32 3
  %0 = ptrtoint ptr %default_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %default_groups, align 4
  %cmp.not20 = icmp eq ptr %1, %default_groups
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in21 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %child.0 = getelementptr i8, ptr %.pn.in21, i32 -72
  %2 = ptrtoint ptr %.pn.in21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in21, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in21) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in21, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in21 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in21, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in21, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in21, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call fastcc void @uvcg_config_remove_children(ptr noundef %child.0)
  tail call void @config_item_put(ptr noundef %child.0) #11
  %cmp.not = icmp eq ptr %.pn, %default_groups
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uvc_opts_streaming_interval_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %item, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %streaming_interval = getelementptr inbounds %struct.f_uvc_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %streaming_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %streaming_interval, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uvc_opts_streaming_interval_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !308
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %item, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %item, i32 0, i32 21
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
  %call1 = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp = icmp ugt i32 %4, 16
  br i1 %cmp, label %if.end4.end_crit_edge, label %if.end6

if.end4.end_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end6:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %streaming_interval = getelementptr inbounds %struct.f_uvc_opts, ptr %item, i32 0, i32 1
  %5 = ptrtoint ptr %streaming_interval to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %streaming_interval, align 4
  br label %end

end:                                              ; preds = %if.end6, %if.end4.end_crit_edge, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end6 ], [ -16, %entry.end_crit_edge ], [ -22, %if.end4.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uvc_opts_streaming_maxpacket_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %item, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %streaming_maxpacket = getelementptr inbounds %struct.f_uvc_opts, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %streaming_maxpacket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %streaming_maxpacket, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uvc_opts_streaming_maxpacket_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !308
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %item, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %item, i32 0, i32 21
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
  %call1 = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %4)
  %cmp = icmp ugt i32 %4, 3072
  br i1 %cmp, label %if.end4.end_crit_edge, label %if.end6

if.end4.end_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end6:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %streaming_maxpacket = getelementptr inbounds %struct.f_uvc_opts, ptr %item, i32 0, i32 2
  %5 = ptrtoint ptr %streaming_maxpacket to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %streaming_maxpacket, align 4
  br label %end

end:                                              ; preds = %if.end6, %if.end4.end_crit_edge, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end6 ], [ -16, %entry.end_crit_edge ], [ -22, %if.end4.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uvc_opts_streaming_maxburst_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %item, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %streaming_maxburst = getelementptr inbounds %struct.f_uvc_opts, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %streaming_maxburst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %streaming_maxburst, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_uvc_opts_streaming_maxburst_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #11
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !308
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %item, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %item, i32 0, i32 21
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
  %call1 = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %4)
  %cmp = icmp ugt i32 %4, 15
  br i1 %cmp, label %if.end4.end_crit_edge, label %if.end6

if.end4.end_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end6:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %streaming_maxburst = getelementptr inbounds %struct.f_uvc_opts, ptr %item, i32 0, i32 3
  %5 = ptrtoint ptr %streaming_maxburst to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %streaming_maxburst, align 4
  br label %end

end:                                              ; preds = %if.end6, %if.end4.end_crit_edge, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end6 ], [ -16, %entry.end_crit_edge ], [ -22, %if.end4.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvcg_config_item_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %item) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_control_b_interface_number_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %3, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %control_interface = getelementptr inbounds %struct.f_uvc_opts, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %control_interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %control_interface, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @uvcg_control_header_make(ptr nocapture noundef readnone %group, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %desc = getelementptr inbounds %struct.uvcg_control_header, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 13, ptr %desc, align 4
  %bDescriptorType = getelementptr inbounds %struct.uvcg_control_header, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 36, ptr %bDescriptorType, align 1
  %bDescriptorSubType = getelementptr inbounds %struct.uvcg_control_header, ptr %call7.i.i, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %bDescriptorSubType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %bDescriptorSubType, align 2
  %bcdUVC = getelementptr inbounds %struct.uvcg_control_header, ptr %call7.i.i, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %bcdUVC to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 4097, ptr %bcdUVC, align 1
  %dwClockFrequency = getelementptr inbounds %struct.uvcg_control_header, ptr %call7.i.i, i32 0, i32 1, i32 5
  %5 = ptrtoint ptr %dwClockFrequency to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 7134210, ptr %dwClockFrequency, align 1
  tail call void @config_item_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @uvcg_control_header_type) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_control_header_bcd_uvc_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bcdUVC = getelementptr inbounds %struct.uvcg_control_header, ptr %item, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %bcdUVC to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %bcdUVC, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv = zext i16 %12 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex2) #11
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_control_header_bcd_uvc_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num) #11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %num, align 2, !annotation !308
  tail call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %5 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %10, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %linked = getelementptr inbounds %struct.uvcg_control_header, ptr %item, i32 0, i32 2
  %11 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %linked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

lor.lhs.false:                                    ; preds = %entry
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %10, i32 0, i32 21
  %13 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not = icmp eq i32 %14, 0
  br i1 %tobool7.not, label %if.end, label %lor.lhs.false.end_crit_edge

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %lor.lhs.false
  %call8 = call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end14, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %num, align 2
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %bcdUVC = getelementptr inbounds %struct.uvcg_control_header, ptr %item, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %bcdUVC to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %17, ptr %bcdUVC, align 1
  br label %end

end:                                              ; preds = %if.end14, %if.end.end_crit_edge, %lor.lhs.false.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call8, %if.end.end_crit_edge ], [ %len, %if.end14 ], [ -16, %lor.lhs.false.end_crit_edge ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @mutex_unlock(ptr noundef %su_mutex2) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_control_header_dw_clock_frequency_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %dwClockFrequency = getelementptr inbounds %struct.uvcg_control_header, ptr %item, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %dwClockFrequency to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %dwClockFrequency, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %12)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex2) #11
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_control_header_dw_clock_frequency_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %num, align 4, !annotation !308
  tail call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %5 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %10, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %linked = getelementptr inbounds %struct.uvcg_control_header, ptr %item, i32 0, i32 2
  %11 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %linked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

lor.lhs.false:                                    ; preds = %entry
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %10, i32 0, i32 21
  %13 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not = icmp eq i32 %14, 0
  br i1 %tobool7.not, label %if.end, label %lor.lhs.false.end_crit_edge

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %lor.lhs.false
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end11:                                         ; preds = %if.end
  %15 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.end11.end_crit_edge, label %if.end13

if.end11.end_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end13:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %dwClockFrequency = getelementptr inbounds %struct.uvcg_control_header, ptr %item, i32 0, i32 1, i32 5
  %18 = ptrtoint ptr %dwClockFrequency to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %dwClockFrequency, align 1
  br label %end

end:                                              ; preds = %if.end13, %if.end11.end_crit_edge, %if.end.end_crit_edge, %lor.lhs.false.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end13 ], [ -16, %lor.lhs.false.end_crit_edge ], [ -16, %entry.end_crit_edge ], [ -22, %if.end11.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @mutex_unlock(ptr noundef %su_mutex2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_processing_b_unit_id_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent3, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bUnitID = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 12, i32 3
  %8 = ptrtoint ptr %bUnitID to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bUnitID, align 1
  %conv = zext i8 %9 to i32
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_processing_b_source_id_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent3, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bSourceID = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 12, i32 4
  %8 = ptrtoint ptr %bSourceID to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bSourceID, align 1
  %conv = zext i8 %9 to i32
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_processing_w_max_multiplier_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent3, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %wMaxMultiplier = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 12, i32 5
  %8 = ptrtoint ptr %wMaxMultiplier to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %wMaxMultiplier, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv = zext i16 %10 to i32
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_processing_bm_controls_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent3, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bControlSize = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 12, i32 6
  %8 = ptrtoint ptr %bControlSize to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bControlSize, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp20.not = icmp eq i8 %9, 0
  br i1 %cmp20.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %pg.023 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %page, %entry.for.body_crit_edge ]
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %result.021 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.f_uvc_opts, ptr %7, i32 0, i32 12, i32 7, i32 %i.022
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %11 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %pg.023, ptr noundef nonnull @.str.2, i32 noundef %conv6)
  %add = add i32 %call7, %result.021
  %add.ptr = getelementptr i8, ptr %page, i32 %add
  %inc = add nuw nsw i32 %i.022, 1
  %12 = ptrtoint ptr %bControlSize to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bControlSize, align 1
  %conv = zext i8 %13 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %result.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_processing_i_processing_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent3, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %iProcessing = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 12, i32 8
  %8 = ptrtoint ptr %iProcessing to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iProcessing, align 1
  %conv = zext i8 %9 to i32
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_camera_b_terminal_id_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent3, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent4, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bTerminalID = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 11, i32 3
  %10 = ptrtoint ptr %bTerminalID to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bTerminalID, align 1
  %conv = zext i8 %11 to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_camera_w_terminal_type_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent3, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent4, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %wTerminalType = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 11, i32 4
  %10 = ptrtoint ptr %wTerminalType to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %wTerminalType, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv = zext i16 %12 to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_camera_b_assoc_terminal_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent3, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent4, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bAssocTerminal = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 11, i32 5
  %10 = ptrtoint ptr %bAssocTerminal to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bAssocTerminal, align 1
  %conv = zext i8 %11 to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_camera_i_terminal_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent3, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent4, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %iTerminal = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 11, i32 6
  %10 = ptrtoint ptr %iTerminal to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %iTerminal, align 1
  %conv = zext i8 %11 to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_camera_w_objective_focal_length_min_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent3, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent4, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %wObjectiveFocalLengthMin = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 11, i32 7
  %10 = ptrtoint ptr %wObjectiveFocalLengthMin to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %wObjectiveFocalLengthMin, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv = zext i16 %12 to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_camera_w_objective_focal_length_max_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent3, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent4, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %wObjectiveFocalLengthMax = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 11, i32 8
  %10 = ptrtoint ptr %wObjectiveFocalLengthMax to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %wObjectiveFocalLengthMax, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv = zext i16 %12 to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_camera_w_ocular_focal_length_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent3, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent4, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %wOcularFocalLength = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 11, i32 9
  %10 = ptrtoint ptr %wOcularFocalLength to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %wOcularFocalLength, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv = zext i16 %12 to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_camera_bm_controls_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent3, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent4, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bControlSize = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 11, i32 10
  %10 = ptrtoint ptr %bControlSize to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bControlSize, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp21.not = icmp eq i8 %11, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %pg.024 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %page, %entry.for.body_crit_edge ]
  %i.023 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %result.022 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.f_uvc_opts, ptr %9, i32 0, i32 11, i32 11, i32 %i.023
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %13 to i32
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %pg.024, ptr noundef nonnull @.str.2, i32 noundef %conv7)
  %add = add i32 %call8, %result.022
  %add.ptr = getelementptr i8, ptr %page, i32 %add
  %inc = add nuw nsw i32 %i.023, 1
  %14 = ptrtoint ptr %bControlSize to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bControlSize, align 1
  %conv = zext i8 %15 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %result.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_output_b_terminal_id_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent3, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent4, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bTerminalID = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 13, i32 3
  %10 = ptrtoint ptr %bTerminalID to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bTerminalID, align 1
  %conv = zext i8 %11 to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_output_w_terminal_type_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent3, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent4, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %wTerminalType = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 13, i32 4
  %10 = ptrtoint ptr %wTerminalType to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %wTerminalType, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv = zext i16 %12 to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_output_b_assoc_terminal_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent3, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent4, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bAssocTerminal = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 13, i32 5
  %10 = ptrtoint ptr %bAssocTerminal to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bAssocTerminal, align 1
  %conv = zext i8 %11 to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_output_b_source_id_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent3, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent4, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bSourceID = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 13, i32 6
  %10 = ptrtoint ptr %bSourceID to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bSourceID, align 1
  %conv = zext i8 %11 to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_output_i_terminal_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent3, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent4, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %iTerminal = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 13, i32 7
  %10 = ptrtoint ptr %iTerminal to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %iTerminal, align 1
  %conv = zext i8 %11 to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_control_class_create_children(ptr noundef %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %default_groups.i = getelementptr inbounds %struct.config_group, ptr %parent, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.config_group, ptr %parent, i32 0, i32 3, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 84) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup4_crit_edge, label %if.end

entry.cleanup4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup4

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.uvcg_control_class_group, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.33, ptr %name, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @uvcg_control_class_type) #11
  %group_entry.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %3, ptr noundef %default_groups.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.configfs_add_default_group.exit_crit_edge

if.end.configfs_add_default_group.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %configfs_add_default_group.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %default_groups.i, ptr %group_entry.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %group_entry.i, ptr %3, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i, %if.end.configfs_add_default_group.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 84) #14
  %tobool.not.1 = icmp eq ptr %call7.i.i.1, null
  br i1 %tobool.not.1, label %configfs_add_default_group.exit.cleanup4_crit_edge, label %if.end.1

configfs_add_default_group.exit.cleanup4_crit_edge: ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup4

if.end.1:                                         ; preds = %configfs_add_default_group.exit
  %name.1 = getelementptr inbounds %struct.uvcg_control_class_group, ptr %call7.i.i.1, i32 0, i32 1
  %9 = ptrtoint ptr %name.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.34, ptr %name.1, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i.1, ptr noundef nonnull @.str.34, ptr noundef nonnull @uvcg_control_class_type) #11
  %group_entry.i.1 = getelementptr inbounds %struct.config_group, ptr %call7.i.i.1, i32 0, i32 4
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i.1 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i.1, ptr noundef %11, ptr noundef %default_groups.i) #11
  br i1 %call.i.i.i.1, label %if.end.i.i.i.1, label %if.end.1.cleanup4_crit_edge

if.end.1.cleanup4_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup4

if.end.i.i.i.1:                                   ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %group_entry.i.1, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %group_entry.i.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %default_groups.i, ptr %group_entry.i.1, align 8
  %prev3.i.i.i.1 = getelementptr inbounds %struct.config_group, ptr %call7.i.i.1, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i.1, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %group_entry.i.1, ptr %11, align 4
  br label %cleanup4

cleanup4:                                         ; preds = %if.end.i.i.i.1, %if.end.1.cleanup4_crit_edge, %configfs_add_default_group.exit.cleanup4_crit_edge, %entry.cleanup4_crit_edge
  %retval.2 = phi i32 [ -12, %entry.cleanup4_crit_edge ], [ -12, %configfs_add_default_group.exit.cleanup4_crit_edge ], [ 0, %if.end.i.i.i.1 ], [ 0, %if.end.1.cleanup4_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_control_class_allow_link(ptr nocapture noundef readonly %src, ptr noundef %target) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %src, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %src, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent2, align 4
  %call3 = tail call ptr @config_group_find_item(ptr noundef %7, ptr noundef nonnull @.str.8) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %target, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent4, align 4
  %cmp.not = icmp eq ptr %9, %call3
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %name.i = getelementptr inbounds %struct.uvcg_control_class_group, ptr %src, i32 0, i32 1
  %12 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(3) @.str.33) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %uvc_fs_control_cls.i = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 15
  br label %uvcg_get_ctl_class_arr.exit

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(3) @.str.34) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  %uvc_ss_control_cls.i = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 16
  br i1 %tobool3.not.i, label %if.end.i.uvcg_get_ctl_class_arr.exit_crit_edge, label %if.end.i.unlock_crit_edge

if.end.i.unlock_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end.i.uvcg_get_ctl_class_arr.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uvcg_get_ctl_class_arr.exit

uvcg_get_ctl_class_arr.exit:                      ; preds = %if.end.i.uvcg_get_ctl_class_arr.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %uvc_fs_control_cls.i, %if.then.i ], [ %uvc_ss_control_cls.i, %if.end.i.uvcg_get_ctl_class_arr.exit_crit_edge ]
  %tobool8.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool8.not, label %uvcg_get_ctl_class_arr.exit.unlock_crit_edge, label %if.end10

uvcg_get_ctl_class_arr.exit.unlock_crit_edge:     ; preds = %uvcg_get_ctl_class_arr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end10:                                         ; preds = %uvcg_get_ctl_class_arr.exit
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 21
  %14 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not = icmp eq i32 %15, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %if.end10.unlock_crit_edge

if.end10.unlock_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

lor.lhs.false12:                                  ; preds = %if.end10
  %16 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %retval.0.i, align 4
  %tobool13.not = icmp eq ptr %17, null
  br i1 %tobool13.not, label %if.end15, label %lor.lhs.false12.unlock_crit_edge

lor.lhs.false12.unlock_crit_edge:                 ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end15:                                         ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #13
  %linked = getelementptr inbounds %struct.uvcg_control_header, ptr %target, i32 0, i32 2
  %18 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %linked, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %linked, align 4
  %desc = getelementptr inbounds %struct.uvcg_control_header, ptr %target, i32 0, i32 1
  %20 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %desc, ptr %retval.0.i, align 4
  br label %unlock

unlock:                                           ; preds = %if.end15, %lor.lhs.false12.unlock_crit_edge, %if.end10.unlock_crit_edge, %uvcg_get_ctl_class_arr.exit.unlock_crit_edge, %if.end.i.unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.end15 ], [ -22, %uvcg_get_ctl_class_arr.exit.unlock_crit_edge ], [ -16, %lor.lhs.false12.unlock_crit_edge ], [ -16, %if.end10.unlock_crit_edge ], [ -22, %if.end.i.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %out

out:                                              ; preds = %unlock, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ -22, %lor.lhs.false.out_crit_edge ], [ %ret.0, %unlock ], [ -22, %entry.out_crit_edge ]
  tail call void @config_item_put(ptr noundef %call3) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvcg_control_class_drop_link(ptr nocapture noundef readonly %src, ptr nocapture noundef %target) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %src, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %src, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent2, align 4
  %call3 = tail call ptr @config_group_find_item(ptr noundef %7, ptr noundef nonnull @.str.8) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %target, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent4, align 4
  %cmp.not = icmp eq ptr %9, %call3
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %name.i = getelementptr inbounds %struct.uvcg_control_class_group, ptr %src, i32 0, i32 1
  %12 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(3) @.str.33) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %uvc_fs_control_cls.i = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 15
  br label %uvcg_get_ctl_class_arr.exit

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(3) @.str.34) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  %uvc_ss_control_cls.i = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 16
  br i1 %tobool3.not.i, label %if.end.i.uvcg_get_ctl_class_arr.exit_crit_edge, label %if.end.i.unlock_crit_edge

if.end.i.unlock_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end.i.uvcg_get_ctl_class_arr.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uvcg_get_ctl_class_arr.exit

uvcg_get_ctl_class_arr.exit:                      ; preds = %if.end.i.uvcg_get_ctl_class_arr.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %uvc_fs_control_cls.i, %if.then.i ], [ %uvc_ss_control_cls.i, %if.end.i.uvcg_get_ctl_class_arr.exit_crit_edge ]
  %tobool8.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool8.not, label %uvcg_get_ctl_class_arr.exit.unlock_crit_edge, label %lor.lhs.false9

uvcg_get_ctl_class_arr.exit.unlock_crit_edge:     ; preds = %uvcg_get_ctl_class_arr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

lor.lhs.false9:                                   ; preds = %uvcg_get_ctl_class_arr.exit
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 21
  %14 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  br i1 %tobool10.not, label %if.end12, label %lor.lhs.false9.unlock_crit_edge

lor.lhs.false9.unlock_crit_edge:                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end12:                                         ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  %linked = getelementptr inbounds %struct.uvcg_control_header, ptr %target, i32 0, i32 2
  %16 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %linked, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %linked, align 4
  %18 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %retval.0.i, align 4
  br label %unlock

unlock:                                           ; preds = %if.end12, %lor.lhs.false9.unlock_crit_edge, %uvcg_get_ctl_class_arr.exit.unlock_crit_edge, %if.end.i.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %out

out:                                              ; preds = %unlock, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  tail call void @config_item_put(ptr noundef %call3) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @config_group_find_item(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_streaming_b_interface_number_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %3, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %streaming_interface = getelementptr inbounds %struct.f_uvc_opts, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %streaming_interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %streaming_interface, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @uvcg_streaming_header_make(ptr nocapture noundef readnone %group, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 84) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %formats = getelementptr inbounds %struct.uvcg_streaming_header, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %formats to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %formats, ptr %formats, align 8
  %prev.i = getelementptr inbounds %struct.uvcg_streaming_header, ptr %call7.i.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %formats, ptr %prev.i, align 4
  %bDescriptorType = getelementptr inbounds %struct.uvcg_streaming_header, ptr %call7.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 36, ptr %bDescriptorType, align 1
  %bDescriptorSubType = getelementptr inbounds %struct.uvcg_streaming_header, ptr %call7.i.i, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %bDescriptorSubType to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %bDescriptorSubType, align 2
  %bTerminalLink = getelementptr inbounds %struct.uvcg_streaming_header, ptr %call7.i.i, i32 0, i32 1, i32 7
  %5 = ptrtoint ptr %bTerminalLink to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %bTerminalLink, align 4
  %bControlSize = getelementptr inbounds %struct.uvcg_streaming_header, ptr %call7.i.i, i32 0, i32 1, i32 11
  %6 = ptrtoint ptr %bControlSize to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %bControlSize, align 8
  tail call void @config_item_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @uvcg_streaming_header_type) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_streaming_header_allow_link(ptr noundef %src, ptr noundef %target) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %src, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %src, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent3, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %linked = getelementptr inbounds %struct.uvcg_streaming_header, ptr %src, i32 0, i32 2
  %10 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %linked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ci_parent, align 4
  %ci_parent6 = getelementptr inbounds %struct.config_item, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ci_parent6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ci_parent6, align 4
  %ci_parent7 = getelementptr inbounds %struct.config_item, ptr %target, i32 0, i32 4
  %16 = ptrtoint ptr %ci_parent7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ci_parent7, align 4
  %ci_parent8 = getelementptr inbounds %struct.config_item, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %ci_parent8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ci_parent8, align 4
  %cmp.not = icmp eq ptr %15, %19
  br i1 %cmp.not, label %for.cond.preheader, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.cond.preheader:                               ; preds = %if.end
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %call13 = tail call i32 @strcmp(ptr noundef %21, ptr noundef nonnull dereferenceable(13) @.str.37) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.cond.preheader.if.end19_crit_edge, label %for.inc

for.cond.preheader.if.end19_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

for.inc:                                          ; preds = %for.cond.preheader
  %call13.1 = tail call i32 @strcmp(ptr noundef %21, ptr noundef nonnull dereferenceable(6) @.str.38) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1)
  %tobool14.not.1 = icmp eq i32 %call13.1, 0
  br i1 %tobool14.not.1, label %for.inc.if.end19_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.inc.if.end19_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end19:                                         ; preds = %for.inc.if.end19_crit_edge, %for.cond.preheader.if.end19_crit_edge
  %cg_children.i = getelementptr inbounds %struct.config_group, ptr %target, i32 0, i32 1
  %22 = ptrtoint ptr %cg_children.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn12.i = load ptr, ptr %cg_children.i, align 4
  %cmp.not13.i = icmp eq ptr %.pn12.i, %cg_children.i
  br i1 %cmp.not13.i, label %if.end19.uvcg_format_set_indices.exit_crit_edge, label %if.end19.for.body.i_crit_edge

if.end19.for.body.i_crit_edge:                    ; preds = %if.end19
  br label %for.body.i

if.end19.uvcg_format_set_indices.exit_crit_edge:  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %uvcg_format_set_indices.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end19.for.body.i_crit_edge
  %.pn15.i = phi ptr [ %.pn.i, %cleanup.i.for.body.i_crit_edge ], [ %.pn12.i, %if.end19.for.body.i_crit_edge ]
  %i.014.i = phi i32 [ %i.1.i, %cleanup.i.for.body.i_crit_edge ], [ 1, %if.end19.for.body.i_crit_edge ]
  %ci_type.i = getelementptr i8, ptr %.pn15.i, i32 16
  %23 = ptrtoint ptr %ci_type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ci_type.i, align 4
  %cmp2.not.i = icmp eq ptr %24, @uvcg_frame_type
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i = add i32 %i.014.i, 1
  %conv.i = trunc i32 %i.014.i to i8
  %b_frame_index.i = getelementptr i8, ptr %.pn15.i, i32 31
  %25 = ptrtoint ptr %b_frame_index.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.i, ptr %b_frame_index.i, align 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %i.1.i = phi i32 [ %inc.i, %if.end.i ], [ %i.014.i, %for.body.i.cleanup.i_crit_edge ]
  %26 = ptrtoint ptr %.pn15.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i = load ptr, ptr %.pn15.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %cg_children.i
  br i1 %cmp.not.i, label %cleanup.i.uvcg_format_set_indices.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

cleanup.i.uvcg_format_set_indices.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uvcg_format_set_indices.exit

uvcg_format_set_indices.exit:                     ; preds = %cleanup.i.uvcg_format_set_indices.exit_crit_edge, %if.end19.uvcg_format_set_indices.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 12) #14
  %tobool23.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool23.not, label %uvcg_format_set_indices.exit.out_crit_edge, label %if.end25

uvcg_format_set_indices.exit.out_crit_edge:       ; preds = %uvcg_format_set_indices.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end25:                                         ; preds = %uvcg_format_set_indices.exit
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %target, ptr %call7.i.i, align 8
  %entry26 = getelementptr inbounds %struct.uvcg_format_ptr, ptr %call7.i.i, i32 0, i32 1
  %formats = getelementptr inbounds %struct.uvcg_streaming_header, ptr %src, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.uvcg_streaming_header, ptr %src, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry26, ptr noundef %30, ptr noundef %formats) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end25.list_add_tail.exit_crit_edge

if.end25.list_add_tail.exit_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %entry26, ptr %prev.i, align 4
  %32 = ptrtoint ptr %entry26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %formats, ptr %entry26, align 4
  %prev3.i.i = getelementptr inbounds %struct.uvcg_format_ptr, ptr %call7.i.i, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i, align 8
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %entry26, ptr %30, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end25.list_add_tail.exit_crit_edge
  %num_fmt = getelementptr inbounds %struct.uvcg_streaming_header, ptr %src, i32 0, i32 4
  %35 = ptrtoint ptr %num_fmt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_fmt, align 4
  %inc27 = add i32 %36, 1
  store i32 %inc27, ptr %num_fmt, align 4
  %linked28 = getelementptr inbounds %struct.uvcg_format, ptr %target, i32 0, i32 2
  %37 = ptrtoint ptr %linked28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %linked28, align 4
  %inc29 = add i32 %38, 1
  store i32 %inc29, ptr %linked28, align 4
  br label %out

out:                                              ; preds = %list_add_tail.exit, %uvcg_format_set_indices.exit.out_crit_edge, %for.inc.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ -22, %if.end.out_crit_edge ], [ 0, %list_add_tail.exit ], [ -16, %entry.out_crit_edge ], [ -12, %uvcg_format_set_indices.exit.out_crit_edge ], [ -22, %for.inc.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvcg_streaming_header_drop_link(ptr noundef %src, ptr noundef %target) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %src, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %src, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent3, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %formats = getelementptr inbounds %struct.uvcg_streaming_header, ptr %src, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in.in = phi ptr [ %formats, %entry ], [ %.pn.in, %for.body.for.cond_crit_edge ]
  %10 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, %formats
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond
  %format_ptr.0 = getelementptr i8, ptr %.pn.in, i32 -4
  %11 = ptrtoint ptr %format_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %format_ptr.0, align 4
  %cmp17 = icmp eq ptr %12, %target
  br i1 %cmp17, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.then:                                          ; preds = %for.body
  %format_ptr.0.le = getelementptr i8, ptr %.pn.in, i32 -4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %19 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %format_ptr.0.le) #11
  %num_fmt = getelementptr inbounds %struct.uvcg_streaming_header, ptr %src, i32 0, i32 4
  %21 = ptrtoint ptr %num_fmt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_fmt, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %num_fmt, align 4
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  %linked = getelementptr inbounds %struct.uvcg_format, ptr %target, i32 0, i32 2
  %23 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %linked, align 4
  %dec24 = add i32 %24, -1
  store i32 %dec24, ptr %linked, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_frame_b_frame_index_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %linked = getelementptr inbounds %struct.uvcg_format, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %linked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent5, align 4
  %ci_parent6 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ci_parent6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci_parent6, align 4
  %ci_parent7 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %ci_parent7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ci_parent7, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %b_frame_index = getelementptr inbounds %struct.uvcg_frame, ptr %item, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %b_frame_index to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %b_frame_index, align 1
  %conv = zext i8 %15 to i32
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %result.0 = phi i32 [ %call9, %if.end ], [ -16, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %su_mutex2) #11
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_frame_bm_capabilities_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent5, align 4
  %ci_parent6 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ci_parent6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci_parent6, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bm_capabilities = getelementptr inbounds %struct.uvcg_frame, ptr %item, i32 0, i32 2, i32 4
  %12 = ptrtoint ptr %bm_capabilities to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bm_capabilities, align 4
  %conv = zext i8 %13 to i32
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex2) #11
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_frame_bm_capabilities_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num) #11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %num, align 1, !annotation !308
  %call3 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %5 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ci_parent, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ci_parent5, align 4
  %ci_parent6 = getelementptr inbounds %struct.config_item, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ci_parent6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ci_parent6, align 4
  %ci_parent7 = getelementptr inbounds %struct.config_item, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ci_parent7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ci_parent7, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %12, i32 0, i32 20
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %linked = getelementptr inbounds %struct.uvcg_format, ptr %6, i32 0, i32 2
  %13 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %linked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.not = icmp eq i32 %14, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

lor.lhs.false:                                    ; preds = %if.end
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %12, i32 0, i32 21
  %15 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %if.end15, label %lor.lhs.false.end_crit_edge

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num, align 1
  %bm_capabilities = getelementptr inbounds %struct.uvcg_frame, ptr %item, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %bm_capabilities to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %bm_capabilities, align 4
  br label %end

end:                                              ; preds = %if.end15, %lor.lhs.false.end_crit_edge, %if.end.end_crit_edge
  %ret.0 = phi i32 [ %len, %if.end15 ], [ -16, %lor.lhs.false.end_crit_edge ], [ -16, %if.end.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @mutex_unlock(ptr noundef %su_mutex2) #11
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %end ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_frame_w_width_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent5, align 4
  %ci_parent6 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ci_parent6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci_parent6, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %w_width = getelementptr inbounds %struct.uvcg_frame, ptr %item, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %w_width to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %w_width, align 1
  %conv = zext i16 %13 to i32
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex2) #11
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_frame_w_width_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num) #11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %num, align 2, !annotation !308
  %call3 = call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %5 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ci_parent, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ci_parent5, align 4
  %ci_parent6 = getelementptr inbounds %struct.config_item, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ci_parent6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ci_parent6, align 4
  %ci_parent7 = getelementptr inbounds %struct.config_item, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ci_parent7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ci_parent7, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %12, i32 0, i32 20
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %linked = getelementptr inbounds %struct.uvcg_format, ptr %6, i32 0, i32 2
  %13 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %linked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.not = icmp eq i32 %14, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

lor.lhs.false:                                    ; preds = %if.end
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %12, i32 0, i32 21
  %15 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %if.end15, label %lor.lhs.false.end_crit_edge

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num, align 2
  %w_width = getelementptr inbounds %struct.uvcg_frame, ptr %item, i32 0, i32 2, i32 5
  %19 = ptrtoint ptr %w_width to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %w_width, align 1
  br label %end

end:                                              ; preds = %if.end15, %lor.lhs.false.end_crit_edge, %if.end.end_crit_edge
  %ret.0 = phi i32 [ %len, %if.end15 ], [ -16, %lor.lhs.false.end_crit_edge ], [ -16, %if.end.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @mutex_unlock(ptr noundef %su_mutex2) #11
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %end ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_frame_w_height_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent5, align 4
  %ci_parent6 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ci_parent6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci_parent6, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %w_height = getelementptr inbounds %struct.uvcg_frame, ptr %item, i32 0, i32 2, i32 6
  %12 = ptrtoint ptr %w_height to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %w_height, align 1
  %conv = zext i16 %13 to i32
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex2) #11
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_frame_w_height_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num) #11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %num, align 2, !annotation !308
  %call3 = call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %5 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ci_parent, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ci_parent5, align 4
  %ci_parent6 = getelementptr inbounds %struct.config_item, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ci_parent6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ci_parent6, align 4
  %ci_parent7 = getelementptr inbounds %struct.config_item, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ci_parent7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ci_parent7, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %12, i32 0, i32 20
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %linked = getelementptr inbounds %struct.uvcg_format, ptr %6, i32 0, i32 2
  %13 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %linked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.not = icmp eq i32 %14, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

lor.lhs.false:                                    ; preds = %if.end
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %12, i32 0, i32 21
  %15 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %if.end15, label %lor.lhs.false.end_crit_edge

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num, align 2
  %w_height = getelementptr inbounds %struct.uvcg_frame, ptr %item, i32 0, i32 2, i32 6
  %19 = ptrtoint ptr %w_height to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %w_height, align 1
  br label %end

end:                                              ; preds = %if.end15, %lor.lhs.false.end_crit_edge, %if.end.end_crit_edge
  %ret.0 = phi i32 [ %len, %if.end15 ], [ -16, %lor.lhs.false.end_crit_edge ], [ -16, %if.end.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @mutex_unlock(ptr noundef %su_mutex2) #11
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %end ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_frame_dw_min_bit_rate_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent5, align 4
  %ci_parent6 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ci_parent6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci_parent6, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %dw_min_bit_rate = getelementptr inbounds %struct.uvcg_frame, ptr %item, i32 0, i32 2, i32 7
  %12 = ptrtoint ptr %dw_min_bit_rate to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %dw_min_bit_rate, align 1
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %13)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex2) #11
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_frame_dw_min_bit_rate_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %num, align 4, !annotation !308
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %5 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ci_parent, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ci_parent5, align 4
  %ci_parent6 = getelementptr inbounds %struct.config_item, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ci_parent6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ci_parent6, align 4
  %ci_parent7 = getelementptr inbounds %struct.config_item, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ci_parent7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ci_parent7, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %12, i32 0, i32 20
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %linked = getelementptr inbounds %struct.uvcg_format, ptr %6, i32 0, i32 2
  %13 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %linked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.not = icmp eq i32 %14, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

lor.lhs.false:                                    ; preds = %if.end
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %12, i32 0, i32 21
  %15 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %if.end15, label %lor.lhs.false.end_crit_edge

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num, align 4
  %dw_min_bit_rate = getelementptr inbounds %struct.uvcg_frame, ptr %item, i32 0, i32 2, i32 7
  %19 = ptrtoint ptr %dw_min_bit_rate to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %dw_min_bit_rate, align 1
  br label %end

end:                                              ; preds = %if.end15, %lor.lhs.false.end_crit_edge, %if.end.end_crit_edge
  %ret.0 = phi i32 [ %len, %if.end15 ], [ -16, %lor.lhs.false.end_crit_edge ], [ -16, %if.end.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @mutex_unlock(ptr noundef %su_mutex2) #11
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_frame_dw_max_bit_rate_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent5, align 4
  %ci_parent6 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ci_parent6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci_parent6, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %dw_max_bit_rate = getelementptr inbounds %struct.uvcg_frame, ptr %item, i32 0, i32 2, i32 8
  %12 = ptrtoint ptr %dw_max_bit_rate to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %dw_max_bit_rate, align 1
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %13)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex2) #11
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_frame_dw_max_bit_rate_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %num, align 4, !annotation !308
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %5 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ci_parent, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ci_parent5, align 4
  %ci_parent6 = getelementptr inbounds %struct.config_item, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ci_parent6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ci_parent6, align 4
  %ci_parent7 = getelementptr inbounds %struct.config_item, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ci_parent7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ci_parent7, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %12, i32 0, i32 20
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %linked = getelementptr inbounds %struct.uvcg_format, ptr %6, i32 0, i32 2
  %13 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %linked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.not = icmp eq i32 %14, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

lor.lhs.false:                                    ; preds = %if.end
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %12, i32 0, i32 21
  %15 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %if.end15, label %lor.lhs.false.end_crit_edge

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num, align 4
  %dw_max_bit_rate = getelementptr inbounds %struct.uvcg_frame, ptr %item, i32 0, i32 2, i32 8
  %19 = ptrtoint ptr %dw_max_bit_rate to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %dw_max_bit_rate, align 1
  br label %end

end:                                              ; preds = %if.end15, %lor.lhs.false.end_crit_edge, %if.end.end_crit_edge
  %ret.0 = phi i32 [ %len, %if.end15 ], [ -16, %lor.lhs.false.end_crit_edge ], [ -16, %if.end.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @mutex_unlock(ptr noundef %su_mutex2) #11
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_frame_dw_max_video_frame_buffer_size_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent5, align 4
  %ci_parent6 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ci_parent6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci_parent6, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %dw_max_video_frame_buffer_size = getelementptr inbounds %struct.uvcg_frame, ptr %item, i32 0, i32 2, i32 9
  %12 = ptrtoint ptr %dw_max_video_frame_buffer_size to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %dw_max_video_frame_buffer_size, align 1
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %13)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex2) #11
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_frame_dw_max_video_frame_buffer_size_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %num, align 4, !annotation !308
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %5 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ci_parent, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ci_parent5, align 4
  %ci_parent6 = getelementptr inbounds %struct.config_item, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ci_parent6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ci_parent6, align 4
  %ci_parent7 = getelementptr inbounds %struct.config_item, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ci_parent7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ci_parent7, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %12, i32 0, i32 20
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %linked = getelementptr inbounds %struct.uvcg_format, ptr %6, i32 0, i32 2
  %13 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %linked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.not = icmp eq i32 %14, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

lor.lhs.false:                                    ; preds = %if.end
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %12, i32 0, i32 21
  %15 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %if.end15, label %lor.lhs.false.end_crit_edge

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num, align 4
  %dw_max_video_frame_buffer_size = getelementptr inbounds %struct.uvcg_frame, ptr %item, i32 0, i32 2, i32 9
  %19 = ptrtoint ptr %dw_max_video_frame_buffer_size to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %dw_max_video_frame_buffer_size, align 1
  br label %end

end:                                              ; preds = %if.end15, %lor.lhs.false.end_crit_edge, %if.end.end_crit_edge
  %ret.0 = phi i32 [ %len, %if.end15 ], [ -16, %lor.lhs.false.end_crit_edge ], [ -16, %if.end.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @mutex_unlock(ptr noundef %su_mutex2) #11
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_frame_dw_default_frame_interval_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent5, align 4
  %ci_parent6 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ci_parent6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci_parent6, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %dw_default_frame_interval = getelementptr inbounds %struct.uvcg_frame, ptr %item, i32 0, i32 2, i32 10
  %12 = ptrtoint ptr %dw_default_frame_interval to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %dw_default_frame_interval, align 1
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %13)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex2) #11
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_frame_dw_default_frame_interval_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #11
  %4 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %num, align 4, !annotation !308
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %5 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ci_parent, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ci_parent5, align 4
  %ci_parent6 = getelementptr inbounds %struct.config_item, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ci_parent6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ci_parent6, align 4
  %ci_parent7 = getelementptr inbounds %struct.config_item, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ci_parent7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ci_parent7, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %12, i32 0, i32 20
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %linked = getelementptr inbounds %struct.uvcg_format, ptr %6, i32 0, i32 2
  %13 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %linked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.not = icmp eq i32 %14, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

lor.lhs.false:                                    ; preds = %if.end
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %12, i32 0, i32 21
  %15 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %if.end15, label %lor.lhs.false.end_crit_edge

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num, align 4
  %dw_default_frame_interval = getelementptr inbounds %struct.uvcg_frame, ptr %item, i32 0, i32 2, i32 10
  %19 = ptrtoint ptr %dw_default_frame_interval to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %dw_default_frame_interval, align 1
  br label %end

end:                                              ; preds = %if.end15, %lor.lhs.false.end_crit_edge, %if.end.end_crit_edge
  %ret.0 = phi i32 [ %len, %if.end15 ], [ -16, %lor.lhs.false.end_crit_edge ], [ -16, %if.end.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @mutex_unlock(ptr noundef %su_mutex2) #11
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_frame_dw_frame_interval_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent5, align 4
  %ci_parent6 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ci_parent6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci_parent6, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %b_frame_interval_type = getelementptr inbounds %struct.uvcg_frame, ptr %item, i32 0, i32 2, i32 11
  %12 = ptrtoint ptr %b_frame_interval_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %b_frame_interval_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp22.not = icmp eq i8 %13, 0
  br i1 %cmp22.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dw_frame_interval = getelementptr inbounds %struct.uvcg_frame, ptr %item, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pg.025 = phi ptr [ %page, %for.body.lr.ph ], [ %add.ptr, %for.body.for.body_crit_edge ]
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %result.023 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %dw_frame_interval to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dw_frame_interval, align 4
  %arrayidx = getelementptr i32, ptr %15, i32 %i.024
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %pg.025, ptr noundef nonnull @.str.2, i32 noundef %17)
  %add = add i32 %call9, %result.023
  %add.ptr = getelementptr i8, ptr %page, i32 %add
  %inc = add nuw nsw i32 %i.024, 1
  %18 = ptrtoint ptr %b_frame_interval_type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %b_frame_interval_type, align 1
  %conv = zext i8 %19 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %result.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex2) #11
  ret i32 %result.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_frame_dw_frame_interval_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num.i = alloca i32, align 4
  %buf.i43 = alloca [35 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent5, align 4
  %ci_parent6 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ci_parent6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci_parent6, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %linked = getelementptr inbounds %struct.uvcg_format, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %linked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

lor.lhs.false:                                    ; preds = %entry
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 21
  %14 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not = icmp eq i32 %15, 0
  br i1 %tobool11.not, label %if.end, label %lor.lhs.false.end_crit_edge

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %lor.lhs.false
  %sub.ptr.rhs.cast.i = ptrtoint ptr %page to i32
  %16 = add i32 %sub.ptr.rhs.cast.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.i109.not = icmp eq i32 %len, 0
  br i1 %cmp.i109.not, label %if.end.if.end15_crit_edge, label %if.end.land.lhs.true7.i.preheader_crit_edge

if.end.land.lhs.true7.i.preheader_crit_edge:      ; preds = %if.end
  br label %land.lhs.true7.i.preheader

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true7.i.preheader:                       ; preds = %while.end34.i.land.lhs.true7.i.preheader_crit_edge, %if.end.land.lhs.true7.i.preheader_crit_edge
  %pg.0.i111 = phi ptr [ %pg.2.lcssa.i, %while.end34.i.land.lhs.true7.i.preheader_crit_edge ], [ %page, %if.end.land.lhs.true7.i.preheader_crit_edge ]
  %n.0110 = phi i32 [ %inc.i87, %while.end34.i.land.lhs.true7.i.preheader_crit_edge ], [ 0, %if.end.land.lhs.true7.i.preheader_crit_edge ]
  br label %land.lhs.true7.i

land.lhs.true7.i:                                 ; preds = %while.body13.i.land.lhs.true7.i_crit_edge, %land.lhs.true7.i.preheader
  %i.068.i = phi i32 [ %inc.i, %while.body13.i.land.lhs.true7.i_crit_edge ], [ 0, %land.lhs.true7.i.preheader ]
  %pg.167.i = phi ptr [ %incdec.ptr.i, %while.body13.i.land.lhs.true7.i_crit_edge ], [ %pg.0.i111, %land.lhs.true7.i.preheader ]
  %17 = ptrtoint ptr %pg.167.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pg.167.i, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i8 %18, label %while.body13.i [
    i8 0, label %land.lhs.true7.i.while.cond18.preheader.i.loopexit_crit_edge
    i8 10, label %land.lhs.true7.i.while.cond18.preheader.i.loopexit_crit_edge143
  ]

land.lhs.true7.i.while.cond18.preheader.i.loopexit_crit_edge143: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond18.preheader.i.loopexit

land.lhs.true7.i.while.cond18.preheader.i.loopexit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond18.preheader.i.loopexit

while.body13.i:                                   ; preds = %land.lhs.true7.i
  %incdec.ptr.i = getelementptr i8, ptr %pg.167.i, i32 1
  %inc.i = add nuw nsw i32 %i.068.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %i.068.i)
  %cmp2.i = icmp ult i32 %i.068.i, 34
  %sub.ptr.lhs.cast3.i = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.sub5.i = sub i32 %sub.ptr.lhs.cast3.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub5.i, i32 %len)
  %cmp6.i = icmp ult i32 %sub.ptr.sub5.i, %len
  %or.cond.i = and i1 %cmp2.i, %cmp6.i
  br i1 %or.cond.i, label %while.body13.i.land.lhs.true7.i_crit_edge, label %while.end.i

while.body13.i.land.lhs.true7.i_crit_edge:        ; preds = %while.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true7.i

while.end.i:                                      ; preds = %while.body13.i
  %sub.ptr.lhs.cast3.i.le = ptrtoint ptr %incdec.ptr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %inc.i)
  %cmp14.i = icmp eq i32 %inc.i, 35
  br i1 %cmp14.i, label %while.end.i.end_crit_edge, label %while.end.i.while.cond18.preheader.i_crit_edge

while.end.i.while.cond18.preheader.i_crit_edge:   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond18.preheader.i

while.end.i.end_crit_edge:                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

while.cond18.preheader.i.loopexit:                ; preds = %land.lhs.true7.i.while.cond18.preheader.i.loopexit_crit_edge, %land.lhs.true7.i.while.cond18.preheader.i.loopexit_crit_edge143
  %.pre121 = ptrtoint ptr %pg.167.i to i32
  %.pre122 = sub i32 %.pre121, %sub.ptr.rhs.cast.i
  br label %while.cond18.preheader.i

while.cond18.preheader.i:                         ; preds = %while.cond18.preheader.i.loopexit, %while.end.i.while.cond18.preheader.i_crit_edge
  %sub.ptr.sub2176.i.pre-phi = phi i32 [ %.pre122, %while.cond18.preheader.i.loopexit ], [ %sub.ptr.sub5.i, %while.end.i.while.cond18.preheader.i_crit_edge ]
  %sub.ptr.lhs.cast1975.i.pre-phi = phi i32 [ %.pre121, %while.cond18.preheader.i.loopexit ], [ %sub.ptr.lhs.cast3.i.le, %while.end.i.while.cond18.preheader.i_crit_edge ]
  %pg.1.lcssa.ph85.i = phi ptr [ %pg.167.i, %while.cond18.preheader.i.loopexit ], [ %incdec.ptr.i, %while.end.i.while.cond18.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub2176.i.pre-phi, i32 %len)
  %cmp2277.i = icmp ult i32 %sub.ptr.sub2176.i.pre-phi, %len
  br i1 %cmp2277.i, label %land.rhs24.preheader.i, label %while.cond18.preheader.i.while.end34.i_crit_edge

while.cond18.preheader.i.while.end34.i_crit_edge: ; preds = %while.cond18.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end34.i

land.rhs24.preheader.i:                           ; preds = %while.cond18.preheader.i
  %uglygep.i = getelementptr i8, ptr %pg.1.lcssa.ph85.i, i32 %16
  %20 = sub i32 0, %sub.ptr.lhs.cast1975.i.pre-phi
  %uglygep81.i = getelementptr i8, ptr %uglygep.i, i32 %20
  br label %land.rhs24.i

land.rhs24.i:                                     ; preds = %while.body32.i.land.rhs24.i_crit_edge, %land.rhs24.preheader.i
  %pg.278.i = phi ptr [ %incdec.ptr33.i, %while.body32.i.land.rhs24.i_crit_edge ], [ %pg.1.lcssa.ph85.i, %land.rhs24.preheader.i ]
  %21 = ptrtoint ptr %pg.278.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pg.278.i, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %22, label %land.rhs24.i.while.end34.i.loopexit_crit_edge [
    i8 0, label %land.rhs24.i.while.body32.i_crit_edge
    i8 10, label %land.rhs24.i.while.body32.i_crit_edge144
  ]

land.rhs24.i.while.body32.i_crit_edge144:         ; preds = %land.rhs24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body32.i

land.rhs24.i.while.body32.i_crit_edge:            ; preds = %land.rhs24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body32.i

land.rhs24.i.while.end34.i.loopexit_crit_edge:    ; preds = %land.rhs24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end34.i.loopexit

while.body32.i:                                   ; preds = %land.rhs24.i.while.body32.i_crit_edge, %land.rhs24.i.while.body32.i_crit_edge144
  %incdec.ptr33.i = getelementptr i8, ptr %pg.278.i, i32 1
  %sub.ptr.lhs.cast19.i = ptrtoint ptr %incdec.ptr33.i to i32
  %sub.ptr.sub21.i = sub i32 %sub.ptr.lhs.cast19.i, %sub.ptr.rhs.cast.i
  %cmp22.i = icmp ult i32 %sub.ptr.sub21.i, %len
  br i1 %cmp22.i, label %while.body32.i.land.rhs24.i_crit_edge, label %while.body32.i.while.end34.i.loopexit_crit_edge

while.body32.i.while.end34.i.loopexit_crit_edge:  ; preds = %while.body32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end34.i.loopexit

while.body32.i.land.rhs24.i_crit_edge:            ; preds = %while.body32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs24.i

while.end34.i.loopexit:                           ; preds = %while.body32.i.while.end34.i.loopexit_crit_edge, %land.rhs24.i.while.end34.i.loopexit_crit_edge
  %pg.2.lcssa.i.ph = phi ptr [ %pg.278.i, %land.rhs24.i.while.end34.i.loopexit_crit_edge ], [ %uglygep81.i, %while.body32.i.while.end34.i.loopexit_crit_edge ]
  %.pre123 = ptrtoint ptr %pg.2.lcssa.i.ph to i32
  %.pre124 = sub i32 %.pre123, %sub.ptr.rhs.cast.i
  br label %while.end34.i

while.end34.i:                                    ; preds = %while.end34.i.loopexit, %while.cond18.preheader.i.while.end34.i_crit_edge
  %sub.ptr.sub.i.pre-phi = phi i32 [ %.pre124, %while.end34.i.loopexit ], [ %sub.ptr.sub2176.i.pre-phi, %while.cond18.preheader.i.while.end34.i_crit_edge ]
  %pg.2.lcssa.i = phi ptr [ %pg.2.lcssa.i.ph, %while.end34.i.loopexit ], [ %pg.1.lcssa.ph85.i, %while.cond18.preheader.i.while.end34.i_crit_edge ]
  %inc.i87 = add i32 %n.0110, 1
  %cmp.i = icmp ult i32 %sub.ptr.sub.i.pre-phi, %len
  br i1 %cmp.i, label %while.end34.i.land.lhs.true7.i.preheader_crit_edge, label %while.end34.i.if.end15_crit_edge

while.end34.i.if.end15_crit_edge:                 ; preds = %while.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

while.end34.i.land.lhs.true7.i.preheader_crit_edge: ; preds = %while.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true7.i.preheader

if.end15:                                         ; preds = %while.end34.i.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %n.0.lcssa = phi i32 [ 0, %if.end.if.end15_crit_edge ], [ %inc.i87, %while.end34.i.if.end15_crit_edge ]
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n.0.lcssa, i32 4) #11
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %if.end15.end_crit_edge, label %if.end7.i.i, !prof !309

if.end15.end_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end7.i.i:                                      ; preds = %if.end15
  %26 = extractvalue { i32, i1 } %24, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %26, i32 noundef 3520) #17
  %tobool17.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool17.not, label %if.end7.i.i.end_crit_edge, label %if.end19

if.end7.i.i.end_crit_edge:                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end19:                                         ; preds = %if.end7.i.i
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %buf.i43) #11
  %27 = call ptr @memset(ptr %buf.i43, i32 255, i32 35)
  br i1 %cmp.i109.not, label %if.end19.if.end23_crit_edge, label %if.end19.land.lhs.true7.i52.preheader_crit_edge

if.end19.land.lhs.true7.i52.preheader_crit_edge:  ; preds = %if.end19
  br label %land.lhs.true7.i52.preheader

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

land.lhs.true7.i52.preheader:                     ; preds = %__uvcg_fill_frm_intrv.exit.land.lhs.true7.i52.preheader_crit_edge, %if.end19.land.lhs.true7.i52.preheader_crit_edge
  %pg.0.i45115 = phi ptr [ %pg.2.lcssa.i80, %__uvcg_fill_frm_intrv.exit.land.lhs.true7.i52.preheader_crit_edge ], [ %page, %if.end19.land.lhs.true7.i52.preheader_crit_edge ]
  %tmp.0114 = phi ptr [ %incdec.ptr.i88, %__uvcg_fill_frm_intrv.exit.land.lhs.true7.i52.preheader_crit_edge ], [ %call8.i.i, %if.end19.land.lhs.true7.i52.preheader_crit_edge ]
  br label %land.lhs.true7.i52

land.lhs.true7.i52:                               ; preds = %while.body13.i61.land.lhs.true7.i52_crit_edge, %land.lhs.true7.i52.preheader
  %i.068.i50 = phi i32 [ %inc.i54, %while.body13.i61.land.lhs.true7.i52_crit_edge ], [ 0, %land.lhs.true7.i52.preheader ]
  %pg.167.i51 = phi ptr [ %incdec.ptr.i53, %while.body13.i61.land.lhs.true7.i52_crit_edge ], [ %pg.0.i45115, %land.lhs.true7.i52.preheader ]
  %28 = ptrtoint ptr %pg.167.i51 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pg.167.i51, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %29, label %while.body13.i61 [
    i8 0, label %land.lhs.true7.i52.while.cond18.preheader.i69.loopexit_crit_edge
    i8 10, label %land.lhs.true7.i52.while.cond18.preheader.i69.loopexit_crit_edge145
  ]

land.lhs.true7.i52.while.cond18.preheader.i69.loopexit_crit_edge145: ; preds = %land.lhs.true7.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond18.preheader.i69.loopexit

land.lhs.true7.i52.while.cond18.preheader.i69.loopexit_crit_edge: ; preds = %land.lhs.true7.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond18.preheader.i69.loopexit

while.body13.i61:                                 ; preds = %land.lhs.true7.i52
  %incdec.ptr.i53 = getelementptr i8, ptr %pg.167.i51, i32 1
  %inc.i54 = add nuw nsw i32 %i.068.i50, 1
  %arrayidx.i55 = getelementptr [35 x i8], ptr %buf.i43, i32 0, i32 %i.068.i50
  %31 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %29, ptr %arrayidx.i55, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %i.068.i50)
  %cmp2.i56 = icmp ult i32 %i.068.i50, 34
  %sub.ptr.lhs.cast3.i57 = ptrtoint ptr %incdec.ptr.i53 to i32
  %sub.ptr.sub5.i58 = sub i32 %sub.ptr.lhs.cast3.i57, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub5.i58, i32 %len)
  %cmp6.i59 = icmp ult i32 %sub.ptr.sub5.i58, %len
  %or.cond.i60 = and i1 %cmp2.i56, %cmp6.i59
  br i1 %or.cond.i60, label %while.body13.i61.land.lhs.true7.i52_crit_edge, label %while.end.i63

while.body13.i61.land.lhs.true7.i52_crit_edge:    ; preds = %while.body13.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true7.i52

while.end.i63:                                    ; preds = %while.body13.i61
  %sub.ptr.lhs.cast3.i57.le = ptrtoint ptr %incdec.ptr.i53 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %inc.i54)
  %cmp14.i62 = icmp eq i32 %inc.i54, 35
  br i1 %cmp14.i62, label %while.end.i63.if.then22_crit_edge, label %while.end.i63.while.cond18.preheader.i69_crit_edge

while.end.i63.while.cond18.preheader.i69_crit_edge: ; preds = %while.end.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond18.preheader.i69

while.end.i63.if.then22_crit_edge:                ; preds = %while.end.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

while.cond18.preheader.i69.loopexit:              ; preds = %land.lhs.true7.i52.while.cond18.preheader.i69.loopexit_crit_edge, %land.lhs.true7.i52.while.cond18.preheader.i69.loopexit_crit_edge145
  %.pre = ptrtoint ptr %pg.167.i51 to i32
  %.pre120 = sub i32 %.pre, %sub.ptr.rhs.cast.i
  br label %while.cond18.preheader.i69

while.cond18.preheader.i69:                       ; preds = %while.cond18.preheader.i69.loopexit, %while.end.i63.while.cond18.preheader.i69_crit_edge
  %sub.ptr.sub2176.i67.pre-phi = phi i32 [ %.pre120, %while.cond18.preheader.i69.loopexit ], [ %sub.ptr.sub5.i58, %while.end.i63.while.cond18.preheader.i69_crit_edge ]
  %sub.ptr.lhs.cast1975.i66.pre-phi = phi i32 [ %.pre, %while.cond18.preheader.i69.loopexit ], [ %sub.ptr.lhs.cast3.i57.le, %while.end.i63.while.cond18.preheader.i69_crit_edge ]
  %i.0.lcssa.ph86.i64 = phi i32 [ %i.068.i50, %while.cond18.preheader.i69.loopexit ], [ %inc.i54, %while.end.i63.while.cond18.preheader.i69_crit_edge ]
  %pg.1.lcssa.ph85.i65 = phi ptr [ %pg.167.i51, %while.cond18.preheader.i69.loopexit ], [ %incdec.ptr.i53, %while.end.i63.while.cond18.preheader.i69_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub2176.i67.pre-phi, i32 %len)
  %cmp2277.i68 = icmp ult i32 %sub.ptr.sub2176.i67.pre-phi, %len
  br i1 %cmp2277.i68, label %land.rhs24.preheader.i72, label %while.cond18.preheader.i69.while.end34.i84_crit_edge

while.cond18.preheader.i69.while.end34.i84_crit_edge: ; preds = %while.cond18.preheader.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end34.i84

land.rhs24.preheader.i72:                         ; preds = %while.cond18.preheader.i69
  %uglygep.i70 = getelementptr i8, ptr %pg.1.lcssa.ph85.i65, i32 %16
  %32 = sub i32 0, %sub.ptr.lhs.cast1975.i66.pre-phi
  %uglygep81.i71 = getelementptr i8, ptr %uglygep.i70, i32 %32
  br label %land.rhs24.i74

land.rhs24.i74:                                   ; preds = %while.body32.i79.land.rhs24.i74_crit_edge, %land.rhs24.preheader.i72
  %pg.278.i73 = phi ptr [ %incdec.ptr33.i75, %while.body32.i79.land.rhs24.i74_crit_edge ], [ %pg.1.lcssa.ph85.i65, %land.rhs24.preheader.i72 ]
  %33 = ptrtoint ptr %pg.278.i73 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pg.278.i73, align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %34, label %land.rhs24.i74.while.end34.i84_crit_edge [
    i8 0, label %land.rhs24.i74.while.body32.i79_crit_edge
    i8 10, label %land.rhs24.i74.while.body32.i79_crit_edge146
  ]

land.rhs24.i74.while.body32.i79_crit_edge146:     ; preds = %land.rhs24.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body32.i79

land.rhs24.i74.while.body32.i79_crit_edge:        ; preds = %land.rhs24.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body32.i79

land.rhs24.i74.while.end34.i84_crit_edge:         ; preds = %land.rhs24.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end34.i84

while.body32.i79:                                 ; preds = %land.rhs24.i74.while.body32.i79_crit_edge, %land.rhs24.i74.while.body32.i79_crit_edge146
  %incdec.ptr33.i75 = getelementptr i8, ptr %pg.278.i73, i32 1
  %sub.ptr.lhs.cast19.i76 = ptrtoint ptr %incdec.ptr33.i75 to i32
  %sub.ptr.sub21.i77 = sub i32 %sub.ptr.lhs.cast19.i76, %sub.ptr.rhs.cast.i
  %cmp22.i78 = icmp ult i32 %sub.ptr.sub21.i77, %len
  br i1 %cmp22.i78, label %while.body32.i79.land.rhs24.i74_crit_edge, label %while.body32.i79.while.end34.i84_crit_edge

while.body32.i79.while.end34.i84_crit_edge:       ; preds = %while.body32.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end34.i84

while.body32.i79.land.rhs24.i74_crit_edge:        ; preds = %while.body32.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs24.i74

while.end34.i84:                                  ; preds = %while.body32.i79.while.end34.i84_crit_edge, %land.rhs24.i74.while.end34.i84_crit_edge, %while.cond18.preheader.i69.while.end34.i84_crit_edge
  %pg.2.lcssa.i80 = phi ptr [ %pg.1.lcssa.ph85.i65, %while.cond18.preheader.i69.while.end34.i84_crit_edge ], [ %uglygep81.i71, %while.body32.i79.while.end34.i84_crit_edge ], [ %pg.278.i73, %land.rhs24.i74.while.end34.i84_crit_edge ]
  %arrayidx35.i81 = getelementptr [35 x i8], ptr %buf.i43, i32 0, i32 %i.0.lcssa.ph86.i64
  %36 = ptrtoint ptr %arrayidx35.i81 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx35.i81, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num.i) #11
  %37 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %num.i, align 4, !annotation !308
  %call.i.i = call i32 @kstrtouint(ptr noundef nonnull %buf.i43, i32 noundef 0, ptr noundef nonnull %num.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %__uvcg_fill_frm_intrv.exit, label %__uvcg_fill_frm_intrv.exit.thread

__uvcg_fill_frm_intrv.exit.thread:                ; preds = %while.end34.i84
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i) #11
  br label %if.then22

__uvcg_fill_frm_intrv.exit:                       ; preds = %while.end34.i84
  %38 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num.i, align 4
  %40 = ptrtoint ptr %tmp.0114 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %tmp.0114, align 4
  %incdec.ptr.i88 = getelementptr i32, ptr %tmp.0114, i32 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i) #11
  %sub.ptr.lhs.cast.i46 = ptrtoint ptr %pg.2.lcssa.i80 to i32
  %sub.ptr.sub.i47 = sub i32 %sub.ptr.lhs.cast.i46, %sub.ptr.rhs.cast.i
  %cmp.i48 = icmp ult i32 %sub.ptr.sub.i47, %len
  br i1 %cmp.i48, label %__uvcg_fill_frm_intrv.exit.land.lhs.true7.i52.preheader_crit_edge, label %__uvcg_fill_frm_intrv.exit.if.end23_crit_edge

__uvcg_fill_frm_intrv.exit.if.end23_crit_edge:    ; preds = %__uvcg_fill_frm_intrv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

__uvcg_fill_frm_intrv.exit.land.lhs.true7.i52.preheader_crit_edge: ; preds = %__uvcg_fill_frm_intrv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true7.i52.preheader

if.then22:                                        ; preds = %__uvcg_fill_frm_intrv.exit.thread, %while.end.i63.if.then22_crit_edge
  %retval.0.i85.ph = phi i32 [ %call.i.i, %__uvcg_fill_frm_intrv.exit.thread ], [ -22, %while.end.i63.if.then22_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %buf.i43) #11
  call void @kfree(ptr noundef nonnull %call8.i.i) #11
  br label %end

if.end23:                                         ; preds = %__uvcg_fill_frm_intrv.exit.if.end23_crit_edge, %if.end19.if.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %buf.i43) #11
  %dw_frame_interval = getelementptr inbounds %struct.uvcg_frame, ptr %item, i32 0, i32 3
  %41 = ptrtoint ptr %dw_frame_interval to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dw_frame_interval, align 4
  call void @kfree(ptr noundef %42) #11
  %43 = ptrtoint ptr %dw_frame_interval to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call8.i.i, ptr %dw_frame_interval, align 4
  %conv = trunc i32 %n.0.lcssa to i8
  %b_frame_interval_type = getelementptr inbounds %struct.uvcg_frame, ptr %item, i32 0, i32 2, i32 11
  %44 = ptrtoint ptr %b_frame_interval_type to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv, ptr %b_frame_interval_type, align 1
  call void @sort(ptr noundef nonnull %call8.i.i, i32 noundef %n.0.lcssa, i32 noundef 4, ptr noundef nonnull @uvcg_config_compare_u32, ptr noundef null) #11
  br label %end

end:                                              ; preds = %if.end23, %if.then22, %if.end7.i.i.end_crit_edge, %if.end15.end_crit_edge, %while.end.i.end_crit_edge, %lor.lhs.false.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i85.ph, %if.then22 ], [ %len, %if.end23 ], [ -16, %lor.lhs.false.end_crit_edge ], [ -16, %entry.end_crit_edge ], [ -12, %if.end7.i.i.end_crit_edge ], [ -12, %if.end15.end_crit_edge ], [ -22, %while.end.i.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @mutex_unlock(ptr noundef %su_mutex2) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uvcg_config_compare_u32(ptr nocapture noundef readonly %l, ptr nocapture noundef readonly %r) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l, align 4
  %2 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp1 = icmp ne i32 %1, %3
  %cond = zext i1 %cmp1 to i32
  %cond2 = select i1 %cmp, i32 -1, i32 %cond
  ret i32 %cond2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_streaming_header_bm_info_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bmInfo = getelementptr inbounds %struct.uvcg_streaming_header, ptr %item, i32 0, i32 1, i32 6
  %10 = ptrtoint ptr %bmInfo to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bmInfo, align 1
  %conv = zext i8 %11 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex2) #11
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_streaming_header_b_terminal_link_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bTerminalLink = getelementptr inbounds %struct.uvcg_streaming_header, ptr %item, i32 0, i32 1, i32 7
  %10 = ptrtoint ptr %bTerminalLink to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bTerminalLink, align 4
  %conv = zext i8 %11 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex2) #11
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_streaming_header_b_still_capture_method_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bStillCaptureMethod = getelementptr inbounds %struct.uvcg_streaming_header, ptr %item, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %bStillCaptureMethod to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bStillCaptureMethod, align 1
  %conv = zext i8 %11 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex2) #11
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_streaming_header_b_trigger_support_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bTriggerSupport = getelementptr inbounds %struct.uvcg_streaming_header, ptr %item, i32 0, i32 1, i32 9
  %10 = ptrtoint ptr %bTriggerSupport to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bTriggerSupport, align 2
  %conv = zext i8 %11 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex2) #11
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_streaming_header_b_trigger_usage_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex2 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex2, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %9, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bTriggerUsage = getelementptr inbounds %struct.uvcg_streaming_header, ptr %item, i32 0, i32 1, i32 10
  %10 = ptrtoint ptr %bTriggerUsage to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bTriggerUsage, align 1
  %conv = zext i8 %11 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex2) #11
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @uvcg_uncompressed_make(ptr nocapture noundef readnone %group, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 124) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %desc = getelementptr inbounds %struct.uvcg_uncompressed, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 27, ptr %desc, align 8
  %bDescriptorType = getelementptr inbounds %struct.uvcg_uncompressed, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 36, ptr %bDescriptorType, align 1
  %bDescriptorSubType = getelementptr inbounds %struct.uvcg_uncompressed, ptr %call7.i.i, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %bDescriptorSubType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %bDescriptorSubType, align 2
  %guidFormat = getelementptr inbounds %struct.uvcg_uncompressed, ptr %call7.i.i, i32 0, i32 1, i32 5
  %4 = call ptr @memcpy(ptr %guidFormat, ptr @uvcg_uncompressed_make.guid, i32 16)
  %bBitsPerPixel = getelementptr inbounds %struct.uvcg_uncompressed, ptr %call7.i.i, i32 0, i32 1, i32 6
  %5 = ptrtoint ptr %bBitsPerPixel to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 16, ptr %bBitsPerPixel, align 1
  %bDefaultFrameIndex = getelementptr inbounds %struct.uvcg_uncompressed, ptr %call7.i.i, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %bDefaultFrameIndex to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %bDefaultFrameIndex, align 2
  %bAspectRatioX = getelementptr inbounds %struct.uvcg_uncompressed, ptr %call7.i.i, i32 0, i32 1, i32 8
  %type = getelementptr inbounds %struct.uvcg_format, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %type, align 8
  %8 = ptrtoint ptr %bAspectRatioX to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %bAspectRatioX, align 1
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @uvcg_uncompressed_type) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @uvcg_frame_make(ptr nocapture noundef %group, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 88) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %b_descriptor_type = getelementptr inbounds %struct.uvcg_frame, ptr %call7.i.i, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %b_descriptor_type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 36, ptr %b_descriptor_type, align 1
  %b_frame_index = getelementptr inbounds %struct.uvcg_frame, ptr %call7.i.i, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %b_frame_index to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %b_frame_index, align 1
  %w_width = getelementptr inbounds %struct.uvcg_frame, ptr %call7.i.i, i32 0, i32 2, i32 5
  %3 = ptrtoint ptr %w_width to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 640, ptr %w_width, align 1
  %w_height = getelementptr inbounds %struct.uvcg_frame, ptr %call7.i.i, i32 0, i32 2, i32 6
  %4 = ptrtoint ptr %w_height to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 360, ptr %w_height, align 1
  %dw_min_bit_rate = getelementptr inbounds %struct.uvcg_frame, ptr %call7.i.i, i32 0, i32 2, i32 7
  %5 = ptrtoint ptr %dw_min_bit_rate to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 18432000, ptr %dw_min_bit_rate, align 1
  %dw_max_bit_rate = getelementptr inbounds %struct.uvcg_frame, ptr %call7.i.i, i32 0, i32 2, i32 8
  %6 = ptrtoint ptr %dw_max_bit_rate to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 55296000, ptr %dw_max_bit_rate, align 1
  %dw_max_video_frame_buffer_size = getelementptr inbounds %struct.uvcg_frame, ptr %call7.i.i, i32 0, i32 2, i32 9
  %7 = ptrtoint ptr %dw_max_video_frame_buffer_size to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 460800, ptr %dw_max_video_frame_buffer_size, align 1
  %dw_default_frame_interval = getelementptr inbounds %struct.uvcg_frame, ptr %call7.i.i, i32 0, i32 2, i32 10
  %8 = ptrtoint ptr %dw_default_frame_interval to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 666666, ptr %dw_default_frame_interval, align 1
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %group, i32 0, i32 4
  %9 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ci_parent, align 4
  %ci_parent9 = getelementptr inbounds %struct.config_item, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %ci_parent9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ci_parent9, align 4
  %ci_parent10 = getelementptr inbounds %struct.config_item, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %ci_parent10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ci_parent10, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %14, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %type = getelementptr inbounds %struct.uvcg_format, ptr %group, i32 0, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %16, label %if.else22 [
    i32 0, label %if.end.if.end26_crit_edge
    i32 1, label %if.then18
  ]

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.else22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end26:                                         ; preds = %if.then18, %if.end.if.end26_crit_edge
  %.sink52 = phi i8 [ 7, %if.then18 ], [ 5, %if.end.if.end26_crit_edge ]
  %b_descriptor_subtype20 = getelementptr inbounds %struct.uvcg_frame, ptr %call7.i.i, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %b_descriptor_subtype20 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink52, ptr %b_descriptor_subtype20, align 2
  %fmt_type21 = getelementptr inbounds %struct.uvcg_frame, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %fmt_type21 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %fmt_type21, align 4
  %num_frames = getelementptr inbounds %struct.uvcg_format, ptr %group, i32 0, i32 3
  %20 = ptrtoint ptr %num_frames to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_frames, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %num_frames, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @config_item_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @uvcg_frame_type) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.else22, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end26 ], [ inttoptr (i32 -22 to ptr), %if.else22 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvcg_frame_drop(ptr nocapture noundef %group, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %group, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  %ci_parent1 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent1, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %5, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %num_frames = getelementptr inbounds %struct.uvcg_format, ptr %group, i32 0, i32 3
  %6 = ptrtoint ptr %num_frames to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_frames, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %num_frames, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @config_item_put(ptr noundef %item) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_b_format_index_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bFormatIndex = getelementptr inbounds %struct.uvcg_uncompressed, ptr %item, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %bFormatIndex to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bFormatIndex, align 1
  %conv = zext i8 %9 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_guid_format_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %guidFormat = getelementptr inbounds %struct.uvcg_uncompressed, ptr %item, i32 0, i32 1, i32 5
  %8 = call ptr @memcpy(ptr %page, ptr %guidFormat, i32 16)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_guid_format_store(ptr nocapture noundef %item, ptr nocapture noundef readonly %page, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %linked = getelementptr inbounds %struct.uvcg_format, ptr %item, i32 0, i32 2
  %8 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %linked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

lor.lhs.false:                                    ; preds = %entry
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 21
  %10 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %if.end, label %lor.lhs.false.end_crit_edge

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %guidFormat = getelementptr inbounds %struct.uvcg_uncompressed, ptr %item, i32 0, i32 1, i32 5
  %12 = tail call i32 @llvm.umin.i32(i32 %len, i32 16)
  %13 = call ptr @memcpy(ptr %guidFormat, ptr %page, i32 %12)
  br label %end

end:                                              ; preds = %if.end, %lor.lhs.false.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ 16, %if.end ], [ -16, %lor.lhs.false.end_crit_edge ], [ -16, %entry.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_b_bits_per_pixel_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bBitsPerPixel = getelementptr inbounds %struct.uvcg_uncompressed, ptr %item, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %bBitsPerPixel to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bBitsPerPixel, align 1
  %conv = zext i8 %9 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_b_bits_per_pixel_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num) #11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %num, align 1, !annotation !308
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %3 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %8, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %linked = getelementptr inbounds %struct.uvcg_format, ptr %item, i32 0, i32 2
  %9 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %linked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

lor.lhs.false:                                    ; preds = %entry
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %8, i32 0, i32 21
  %11 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %if.end, label %lor.lhs.false.end_crit_edge

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %lor.lhs.false
  %call9 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num, align 1
  %bBitsPerPixel = getelementptr inbounds %struct.uvcg_uncompressed, ptr %item, i32 0, i32 1, i32 6
  %15 = ptrtoint ptr %bBitsPerPixel to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %bBitsPerPixel, align 1
  br label %end

end:                                              ; preds = %if.end12, %if.end.end_crit_edge, %lor.lhs.false.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call9, %if.end.end_crit_edge ], [ %len, %if.end12 ], [ -16, %lor.lhs.false.end_crit_edge ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @mutex_unlock(ptr noundef %su_mutex1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_b_default_frame_index_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bDefaultFrameIndex = getelementptr inbounds %struct.uvcg_uncompressed, ptr %item, i32 0, i32 1, i32 7
  %8 = ptrtoint ptr %bDefaultFrameIndex to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bDefaultFrameIndex, align 2
  %conv = zext i8 %9 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_b_default_frame_index_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num) #11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %num, align 1, !annotation !308
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %3 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %8, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %linked = getelementptr inbounds %struct.uvcg_format, ptr %item, i32 0, i32 2
  %9 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %linked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

lor.lhs.false:                                    ; preds = %entry
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %8, i32 0, i32 21
  %11 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %if.end, label %lor.lhs.false.end_crit_edge

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %lor.lhs.false
  %call9 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num, align 1
  %bDefaultFrameIndex = getelementptr inbounds %struct.uvcg_uncompressed, ptr %item, i32 0, i32 1, i32 7
  %15 = ptrtoint ptr %bDefaultFrameIndex to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %bDefaultFrameIndex, align 2
  br label %end

end:                                              ; preds = %if.end12, %if.end.end_crit_edge, %lor.lhs.false.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call9, %if.end.end_crit_edge ], [ %len, %if.end12 ], [ -16, %lor.lhs.false.end_crit_edge ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @mutex_unlock(ptr noundef %su_mutex1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_b_aspect_ratio_x_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bAspectRatioX = getelementptr inbounds %struct.uvcg_uncompressed, ptr %item, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %bAspectRatioX to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bAspectRatioX, align 1
  %conv = zext i8 %9 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_b_aspect_ratio_y_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bAspectRatioY = getelementptr inbounds %struct.uvcg_uncompressed, ptr %item, i32 0, i32 1, i32 9
  %8 = ptrtoint ptr %bAspectRatioY to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bAspectRatioY, align 4
  %conv = zext i8 %9 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_bm_interface_flags_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bmInterfaceFlags = getelementptr inbounds %struct.uvcg_uncompressed, ptr %item, i32 0, i32 1, i32 10
  %8 = ptrtoint ptr %bmInterfaceFlags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bmInterfaceFlags, align 1
  %conv = zext i8 %9 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call7
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_bma_controls_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %cg_subsys.i = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys.i, align 4
  %su_mutex1.i = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1.i, i32 noundef 0) #11
  %ci_parent.i = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent.i, align 4
  %ci_parent3.i = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent3.i, align 4
  %ci_parent4.i = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent4.i, align 4
  %lock.i = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  %8 = call ptr @memcpy(ptr %page, ptr @.str.61, i32 3)
  %add.ptr.i = getelementptr i8, ptr %page, i32 2
  %bmaControls.i = getelementptr inbounds %struct.uvcg_format, ptr %item, i32 0, i32 4
  %9 = ptrtoint ptr %bmaControls.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bmaControls.i, align 1
  %conv.i = zext i8 %10 to i32
  %call6.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.62, i32 noundef %conv.i) #11
  %add.i = add i32 %call6.i, 2
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1.i) #11
  ret i32 %add.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_bma_controls_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call fastcc i32 @uvcg_format_bma_controls_store(ptr noundef %item, ptr noundef %page, i32 noundef %len)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvcg_format_bma_controls_store(ptr noundef %ch, ptr noundef %page, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %ch, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %ch, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent3, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent4, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %linked = getelementptr inbounds %struct.uvcg_format, ptr %ch, i32 0, i32 2
  %8 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %linked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

lor.lhs.false:                                    ; preds = %entry
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 21
  %10 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false.end_crit_edge

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp = icmp ult i32 %len, 4
  br i1 %cmp, label %if.end.end_crit_edge, label %lor.lhs.false6

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

lor.lhs.false6:                                   ; preds = %if.end
  %12 = ptrtoint ptr %page to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %page, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %13)
  %cmp7.not = icmp eq i8 %13, 48
  br i1 %cmp7.not, label %lor.lhs.false9, label %lor.lhs.false6.end_crit_edge

lor.lhs.false6.end_crit_edge:                     ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %add.ptr = getelementptr i8, ptr %page, i32 1
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %15, label %lor.lhs.false9.end_crit_edge [
    i8 120, label %lor.lhs.false9.if.end18_crit_edge
    i8 88, label %lor.lhs.false9.if.end18_crit_edge37
  ]

lor.lhs.false9.if.end18_crit_edge37:              ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

lor.lhs.false9.if.end18_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

lor.lhs.false9.end_crit_edge:                     ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end18:                                         ; preds = %lor.lhs.false9.if.end18_crit_edge, %lor.lhs.false9.if.end18_crit_edge37
  %bmaControls = getelementptr inbounds %struct.uvcg_format, ptr %ch, i32 0, i32 4
  %add.ptr19 = getelementptr i8, ptr %page, i32 2
  %call20 = tail call i32 @hex2bin(ptr noundef %bmaControls, ptr noundef %add.ptr19, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  %spec.select = select i1 %cmp21, i32 %call20, i32 %len
  br label %end

end:                                              ; preds = %if.end18, %lor.lhs.false9.end_crit_edge, %lor.lhs.false6.end_crit_edge, %if.end.end_crit_edge, %lor.lhs.false.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ -22, %if.end.end_crit_edge ], [ -22, %lor.lhs.false6.end_crit_edge ], [ -16, %lor.lhs.false.end_crit_edge ], [ -16, %entry.end_crit_edge ], [ -22, %lor.lhs.false9.end_crit_edge ], [ %spec.select, %if.end18 ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @uvcg_mjpeg_make(ptr nocapture noundef readnone %group, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 108) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %desc = getelementptr inbounds %struct.uvcg_mjpeg, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 11, ptr %desc, align 8
  %bDescriptorType = getelementptr inbounds %struct.uvcg_mjpeg, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 36, ptr %bDescriptorType, align 1
  %bDescriptorSubType = getelementptr inbounds %struct.uvcg_mjpeg, ptr %call7.i.i, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %bDescriptorSubType to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 6, ptr %bDescriptorSubType, align 2
  %bDefaultFrameIndex = getelementptr inbounds %struct.uvcg_mjpeg, ptr %call7.i.i, i32 0, i32 1, i32 6
  %4 = ptrtoint ptr %bDefaultFrameIndex to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %bDefaultFrameIndex, align 2
  %bAspectRatioX = getelementptr inbounds %struct.uvcg_mjpeg, ptr %call7.i.i, i32 0, i32 1, i32 7
  %type = getelementptr inbounds %struct.uvcg_format, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %bAspectRatioX to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 0, ptr %bAspectRatioX, align 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %type, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @uvcg_mjpeg_type) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_mjpeg_b_format_index_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bFormatIndex = getelementptr inbounds %struct.uvcg_mjpeg, ptr %item, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %bFormatIndex to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bFormatIndex, align 1
  %conv = zext i8 %9 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_mjpeg_b_default_frame_index_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bDefaultFrameIndex = getelementptr inbounds %struct.uvcg_mjpeg, ptr %item, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %bDefaultFrameIndex to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bDefaultFrameIndex, align 2
  %conv = zext i8 %9 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_mjpeg_b_default_frame_index_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num) #11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %num, align 1, !annotation !308
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %3 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %8, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %linked = getelementptr inbounds %struct.uvcg_format, ptr %item, i32 0, i32 2
  %9 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %linked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

lor.lhs.false:                                    ; preds = %entry
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %8, i32 0, i32 21
  %11 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %if.end, label %lor.lhs.false.end_crit_edge

lor.lhs.false.end_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end:                                           ; preds = %lor.lhs.false
  %call9 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num, align 1
  %bDefaultFrameIndex = getelementptr inbounds %struct.uvcg_mjpeg, ptr %item, i32 0, i32 1, i32 6
  %15 = ptrtoint ptr %bDefaultFrameIndex to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %bDefaultFrameIndex, align 2
  br label %end

end:                                              ; preds = %if.end12, %if.end.end_crit_edge, %lor.lhs.false.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call9, %if.end.end_crit_edge ], [ %len, %if.end12 ], [ -16, %lor.lhs.false.end_crit_edge ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @mutex_unlock(ptr noundef %su_mutex1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_mjpeg_bm_flags_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bmFlags = getelementptr inbounds %struct.uvcg_mjpeg, ptr %item, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %bmFlags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bmFlags, align 1
  %conv = zext i8 %9 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_mjpeg_b_aspect_ratio_x_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bAspectRatioX = getelementptr inbounds %struct.uvcg_mjpeg, ptr %item, i32 0, i32 1, i32 7
  %8 = ptrtoint ptr %bAspectRatioX to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bAspectRatioX, align 1
  %conv = zext i8 %9 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_mjpeg_b_aspect_ratio_y_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bAspectRatioY = getelementptr inbounds %struct.uvcg_mjpeg, ptr %item, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %bAspectRatioY to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bAspectRatioY, align 4
  %conv = zext i8 %9 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_mjpeg_bm_interface_flags_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent4, align 4
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bmInterfaceFlags = getelementptr inbounds %struct.uvcg_mjpeg, ptr %item, i32 0, i32 1, i32 9
  %8 = ptrtoint ptr %bmInterfaceFlags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bmInterfaceFlags, align 1
  %conv = zext i8 %9 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call7
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_mjpeg_bma_controls_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %cg_subsys.i = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys.i, align 4
  %su_mutex1.i = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1.i, i32 noundef 0) #11
  %ci_parent.i = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent.i, align 4
  %ci_parent3.i = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent3.i, align 4
  %ci_parent4.i = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent4.i, align 4
  %lock.i = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  %8 = call ptr @memcpy(ptr %page, ptr @.str.61, i32 3)
  %add.ptr.i = getelementptr i8, ptr %page, i32 2
  %bmaControls.i = getelementptr inbounds %struct.uvcg_format, ptr %item, i32 0, i32 4
  %9 = ptrtoint ptr %bmaControls.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bmaControls.i, align 1
  %conv.i = zext i8 %10 to i32
  %call6.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.62, i32 noundef %conv.i) #11
  %add.i = add i32 %call6.i, 2
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1.i) #11
  ret i32 %add.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_mjpeg_bma_controls_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call fastcc i32 @uvcg_format_bma_controls_store(ptr noundef %item, ptr noundef %page, i32 noundef %len)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_color_matching_b_color_primaries_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent3, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bColorPrimaries = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 14, i32 3
  %8 = ptrtoint ptr %bColorPrimaries to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bColorPrimaries, align 1
  %conv = zext i8 %9 to i32
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_color_matching_b_transfer_characteristics_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent3, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bTransferCharacteristics = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 14, i32 4
  %8 = ptrtoint ptr %bTransferCharacteristics to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bTransferCharacteristics, align 1
  %conv = zext i8 %9 to i32
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_default_color_matching_b_matrix_coefficients_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent2, align 4
  %ci_parent3 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent3, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %bMatrixCoefficients = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 14, i32 5
  %8 = ptrtoint ptr %bMatrixCoefficients to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bMatrixCoefficients, align 1
  %conv = zext i8 %9 to i32
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.2, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_streaming_class_create_children(ptr noundef %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %default_groups.i = getelementptr inbounds %struct.config_group, ptr %parent, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.config_group, ptr %parent, i32 0, i32 3, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 84) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup4_crit_edge, label %if.end

entry.cleanup4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup4

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.uvcg_streaming_class_group, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.33, ptr %name, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @uvcg_streaming_class_type) #11
  %group_entry.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %3, ptr noundef %default_groups.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.configfs_add_default_group.exit_crit_edge

if.end.configfs_add_default_group.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %configfs_add_default_group.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %default_groups.i, ptr %group_entry.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %group_entry.i, ptr %3, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i, %if.end.configfs_add_default_group.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 84) #14
  %tobool.not.1 = icmp eq ptr %call7.i.i.1, null
  br i1 %tobool.not.1, label %configfs_add_default_group.exit.cleanup4_crit_edge, label %if.end.1

configfs_add_default_group.exit.cleanup4_crit_edge: ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup4

if.end.1:                                         ; preds = %configfs_add_default_group.exit
  %name.1 = getelementptr inbounds %struct.uvcg_streaming_class_group, ptr %call7.i.i.1, i32 0, i32 1
  %9 = ptrtoint ptr %name.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.69, ptr %name.1, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i.1, ptr noundef nonnull @.str.69, ptr noundef nonnull @uvcg_streaming_class_type) #11
  %group_entry.i.1 = getelementptr inbounds %struct.config_group, ptr %call7.i.i.1, i32 0, i32 4
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i.1 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i.1, ptr noundef %11, ptr noundef %default_groups.i) #11
  br i1 %call.i.i.i.1, label %if.end.i.i.i.1, label %if.end.1.configfs_add_default_group.exit.1_crit_edge

if.end.1.configfs_add_default_group.exit.1_crit_edge: ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %configfs_add_default_group.exit.1

if.end.i.i.i.1:                                   ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %group_entry.i.1, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %group_entry.i.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %default_groups.i, ptr %group_entry.i.1, align 8
  %prev3.i.i.i.1 = getelementptr inbounds %struct.config_group, ptr %call7.i.i.1, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i.1, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %group_entry.i.1, ptr %11, align 4
  br label %configfs_add_default_group.exit.1

configfs_add_default_group.exit.1:                ; preds = %if.end.i.i.i.1, %if.end.1.configfs_add_default_group.exit.1_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 84) #14
  %tobool.not.2 = icmp eq ptr %call7.i.i.2, null
  br i1 %tobool.not.2, label %configfs_add_default_group.exit.1.cleanup4_crit_edge, label %if.end.2

configfs_add_default_group.exit.1.cleanup4_crit_edge: ; preds = %configfs_add_default_group.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup4

if.end.2:                                         ; preds = %configfs_add_default_group.exit.1
  %name.2 = getelementptr inbounds %struct.uvcg_streaming_class_group, ptr %call7.i.i.2, i32 0, i32 1
  %17 = ptrtoint ptr %name.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.34, ptr %name.2, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i.2, ptr noundef nonnull @.str.34, ptr noundef nonnull @uvcg_streaming_class_type) #11
  %group_entry.i.2 = getelementptr inbounds %struct.config_group, ptr %call7.i.i.2, i32 0, i32 4
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i.2 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i.2, ptr noundef %19, ptr noundef %default_groups.i) #11
  br i1 %call.i.i.i.2, label %if.end.i.i.i.2, label %if.end.2.cleanup4_crit_edge

if.end.2.cleanup4_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup4

if.end.i.i.i.2:                                   ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %group_entry.i.2, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %group_entry.i.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %default_groups.i, ptr %group_entry.i.2, align 8
  %prev3.i.i.i.2 = getelementptr inbounds %struct.config_group, ptr %call7.i.i.2, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i.i.2, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %group_entry.i.2, ptr %19, align 4
  br label %cleanup4

cleanup4:                                         ; preds = %if.end.i.i.i.2, %if.end.2.cleanup4_crit_edge, %configfs_add_default_group.exit.1.cleanup4_crit_edge, %configfs_add_default_group.exit.cleanup4_crit_edge, %entry.cleanup4_crit_edge
  %retval.2 = phi i32 [ -12, %entry.cleanup4_crit_edge ], [ -12, %configfs_add_default_group.exit.cleanup4_crit_edge ], [ -12, %configfs_add_default_group.exit.1.cleanup4_crit_edge ], [ 0, %if.end.i.i.i.2 ], [ 0, %if.end.2.cleanup4_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvcg_streaming_class_allow_link(ptr nocapture noundef readonly %src, ptr noundef %target) #0 align 64 {
entry:
  %cl_arr = alloca ptr, align 4
  %data = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %src, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cl_arr) #11
  %4 = ptrtoint ptr %cl_arr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %cl_arr, align 4, !annotation !308
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #11
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %data, align 4, !annotation !308
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %src, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent2, align 4
  %call3 = tail call ptr @config_group_find_item(ptr noundef %9, ptr noundef nonnull @.str.8) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %target, i32 0, i32 4
  %10 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci_parent4, align 4
  %cmp.not = icmp eq ptr %11, %call3
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %name.i = getelementptr inbounds %struct.uvcg_streaming_class_group, ptr %src, i32 0, i32 1
  %14 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(3) @.str.33) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %uvc_fs_streaming_cls.i = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 17
  br label %__uvcg_get_stream_class_arr.exit

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(3) @.str.69) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %uvc_hs_streaming_cls.i = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 18
  br label %__uvcg_get_stream_class_arr.exit

if.end5.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(3) @.str.34) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  %uvc_ss_streaming_cls.i = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 19
  br i1 %tobool8.not.i, label %if.end5.i.__uvcg_get_stream_class_arr.exit_crit_edge, label %if.end5.i.unlock_crit_edge

if.end5.i.unlock_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end5.i.__uvcg_get_stream_class_arr.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__uvcg_get_stream_class_arr.exit

__uvcg_get_stream_class_arr.exit:                 ; preds = %if.end5.i.__uvcg_get_stream_class_arr.exit_crit_edge, %if.then4.i, %if.then.i
  %retval.0.i = phi ptr [ %uvc_hs_streaming_cls.i, %if.then4.i ], [ %uvc_fs_streaming_cls.i, %if.then.i ], [ %uvc_ss_streaming_cls.i, %if.end5.i.__uvcg_get_stream_class_arr.exit_crit_edge ]
  %tobool8.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool8.not, label %__uvcg_get_stream_class_arr.exit.unlock_crit_edge, label %lor.lhs.false9

__uvcg_get_stream_class_arr.exit.unlock_crit_edge: ; preds = %__uvcg_get_stream_class_arr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

lor.lhs.false9:                                   ; preds = %__uvcg_get_stream_class_arr.exit
  %16 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %retval.0.i, align 4
  %tobool10.not = icmp eq ptr %17, null
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false9.unlock_crit_edge

lor.lhs.false9.unlock_crit_edge:                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 21
  %18 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not = icmp eq i32 %19, 0
  br i1 %tobool12.not, label %if.end3.i, label %lor.lhs.false11.unlock_crit_edge

lor.lhs.false11.unlock_crit_edge:                 ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end3.i:                                        ; preds = %lor.lhs.false11
  %num_fmt.i = getelementptr inbounds %struct.uvcg_streaming_header, ptr %target, i32 0, i32 4
  %20 = ptrtoint ptr %num_fmt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_fmt.i, align 4
  %add1.i = add i32 %21, 13
  %formats.i = getelementptr inbounds %struct.uvcg_streaming_header, ptr %target, i32 0, i32 3
  %22 = ptrtoint ptr %formats.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn72.i = load ptr, ptr %formats.i, align 4
  %cmp.not74.i = icmp eq ptr %.pn72.i, %formats.i
  br i1 %cmp.not74.i, label %if.end3.i.if.end19_crit_edge, label %if.end3.i.for.body.i_crit_edge

if.end3.i.for.body.i_crit_edge:                   ; preds = %if.end3.i
  br label %for.body.i

if.end3.i.if.end19_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

for.cond.loopexit.i:                              ; preds = %for.inc.i.for.cond.loopexit.i_crit_edge, %if.end9.i.for.cond.loopexit.i_crit_edge
  %size.0 = phi i32 [ %add11.i, %if.end9.i.for.cond.loopexit.i_crit_edge ], [ %add17.i, %for.inc.i.for.cond.loopexit.i_crit_edge ]
  %count.0 = phi i32 [ %inc.i64, %if.end9.i.for.cond.loopexit.i_crit_edge ], [ %inc.i63, %for.inc.i.for.cond.loopexit.i_crit_edge ]
  %23 = ptrtoint ptr %.pn77.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i = load ptr, ptr %.pn77.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %formats.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.if.end19_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.loopexit.i.if.end19_crit_edge:           ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %if.end3.i.for.body.i_crit_edge
  %size.1 = phi i32 [ %size.0, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %add1.i, %if.end3.i.for.body.i_crit_edge ]
  %count.1 = phi i32 [ %count.0, %for.cond.loopexit.i.for.body.i_crit_edge ], [ 1, %if.end3.i.for.body.i_crit_edge ]
  %.pn77.i = phi ptr [ %.pn.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %.pn72.i, %if.end3.i.for.body.i_crit_edge ]
  %f.078.i = getelementptr i8, ptr %.pn77.i, i32 -4
  %24 = ptrtoint ptr %f.078.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %f.078.i, align 4
  %type3.i = getelementptr inbounds %struct.uvcg_format, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %type3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type3.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %27, label %for.body.i.unlock_crit_edge [
    i32 0, label %for.body.i.if.end9.i_crit_edge
    i32 1, label %if.then7.i
  ]

for.body.i.if.end9.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

for.body.i.unlock_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %for.body.i.if.end9.i_crit_edge
  %.sink30.i = phi i32 [ 11, %if.then7.i ], [ 27, %for.body.i.if.end9.i_crit_edge ]
  %add11.i = add i32 %.sink30.i, %size.1
  %inc.i64 = add i32 %count.1, 1
  %cg_children.i = getelementptr inbounds %struct.config_group, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %cg_children.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn6568.i = load ptr, ptr %cg_children.i, align 4
  %cmp17.not69.i = icmp eq ptr %.pn6568.i, %cg_children.i
  br i1 %cmp17.not69.i, label %if.end9.i.for.cond.loopexit.i_crit_edge, label %if.end9.i.for.inc.i_crit_edge

if.end9.i.for.inc.i_crit_edge:                    ; preds = %if.end9.i
  br label %for.inc.i

if.end9.i.for.cond.loopexit.i_crit_edge:          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit.i

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %if.end9.i.for.inc.i_crit_edge
  %size.3 = phi i32 [ %add17.i, %for.inc.i.for.inc.i_crit_edge ], [ %add11.i, %if.end9.i.for.inc.i_crit_edge ]
  %count.3 = phi i32 [ %inc.i63, %for.inc.i.for.inc.i_crit_edge ], [ %inc.i64, %if.end9.i.for.inc.i_crit_edge ]
  %.pn6571.i = phi ptr [ %.pn65.i, %for.inc.i.for.inc.i_crit_edge ], [ %.pn6568.i, %if.end9.i.for.inc.i_crit_edge ]
  %add15.i = add i32 %size.3, 26
  %b_frame_interval_type.i = getelementptr i8, ptr %.pn6571.i, i32 53
  %30 = ptrtoint ptr %b_frame_interval_type.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %b_frame_interval_type.i, align 1
  %conv.i = zext i8 %31 to i32
  %mul16.i = shl nuw nsw i32 %conv.i, 2
  %add17.i = add i32 %add15.i, %mul16.i
  %inc.i63 = add i32 %count.3, 1
  %32 = ptrtoint ptr %.pn6571.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn65.i = load ptr, ptr %.pn6571.i, align 4
  %cmp17.not.i = icmp eq ptr %.pn65.i, %cg_children.i
  br i1 %cmp17.not.i, label %for.inc.i.for.cond.loopexit.i_crit_edge, label %for.inc.i.for.inc.i_crit_edge

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i.for.cond.loopexit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit.i

if.end19:                                         ; preds = %for.cond.loopexit.i.if.end19_crit_edge, %if.end3.i.if.end19_crit_edge
  %size.4.ph = phi i32 [ %add1.i, %if.end3.i.if.end19_crit_edge ], [ %size.0, %for.cond.loopexit.i.if.end19_crit_edge ]
  %count.4.ph = phi i32 [ 1, %if.end3.i.if.end19_crit_edge ], [ %count.0, %for.cond.loopexit.i.if.end19_crit_edge ]
  %add = add i32 %count.4.ph, 2
  %33 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #11
  %34 = extractvalue { i32, i1 } %33, 1
  br i1 %34, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !309

kcalloc.exit.thread:                              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %retval.0.i, align 4
  br label %unlock

if.end7.i.i:                                      ; preds = %if.end19
  %36 = extractvalue { i32, i1 } %33, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %36, i32 noundef 3520) #17
  %37 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call8.i.i, ptr %retval.0.i, align 4
  %tobool21.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool21.not, label %if.end7.i.i.unlock_crit_edge, label %if.end8.i.i

if.end7.i.i.unlock_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end8.i.i:                                      ; preds = %if.end7.i.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size.4.ph, i32 noundef 3520) #17
  %38 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call9.i.i, ptr %data, align 4
  %tobool25.not = icmp eq ptr %call9.i.i, null
  %39 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %retval.0.i, align 4
  br i1 %tobool25.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %40) #11
  %41 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %retval.0.i, align 4
  br label %unlock

if.end27:                                         ; preds = %if.end8.i.i
  %42 = ptrtoint ptr %cl_arr to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %cl_arr, align 4
  %call28 = call fastcc i32 @__uvcg_iter_strm_cls(ptr noundef %target, ptr noundef nonnull %data, ptr noundef nonnull %cl_arr, ptr noundef nonnull @__uvcg_fill_strm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %retval.0.i, align 4
  call void @kfree(ptr noundef %44) #11
  %45 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %retval.0.i, align 4
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %unlock

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %uvc_color_matching = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 14
  %46 = ptrtoint ptr %cl_arr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cl_arr, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %uvc_color_matching, ptr %47, align 4
  %linked = getelementptr inbounds %struct.uvcg_streaming_header, ptr %target, i32 0, i32 2
  %49 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %linked, align 4
  %inc = add i32 %50, 1
  store i32 %inc, ptr %linked, align 4
  br label %unlock

unlock:                                           ; preds = %if.end31, %if.then30, %if.then26, %if.end7.i.i.unlock_crit_edge, %kcalloc.exit.thread, %for.body.i.unlock_crit_edge, %lor.lhs.false11.unlock_crit_edge, %lor.lhs.false9.unlock_crit_edge, %__uvcg_get_stream_class_arr.exit.unlock_crit_edge, %if.end5.i.unlock_crit_edge
  %ret.0 = phi i32 [ %call28, %if.then30 ], [ 0, %if.end31 ], [ -12, %if.then26 ], [ -16, %lor.lhs.false11.unlock_crit_edge ], [ -16, %lor.lhs.false9.unlock_crit_edge ], [ -16, %__uvcg_get_stream_class_arr.exit.unlock_crit_edge ], [ -12, %if.end7.i.i.unlock_crit_edge ], [ -12, %kcalloc.exit.thread ], [ -16, %if.end5.i.unlock_crit_edge ], [ -22, %for.body.i.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  br label %out

out:                                              ; preds = %unlock, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ -22, %lor.lhs.false.out_crit_edge ], [ %ret.0, %unlock ], [ -22, %entry.out_crit_edge ]
  call void @config_item_put(ptr noundef %call3) #11
  call void @mutex_unlock(ptr noundef %su_mutex1) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cl_arr) #11
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvcg_streaming_class_drop_link(ptr nocapture noundef readonly %src, ptr nocapture noundef %target) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_group = getelementptr inbounds %struct.config_item, ptr %src, i32 0, i32 5
  %0 = ptrtoint ptr %ci_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_group, align 4
  %cg_subsys = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cg_subsys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cg_subsys, align 4
  %su_mutex1 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex1, i32 noundef 0) #11
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %src, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent, align 4
  %ci_parent2 = getelementptr inbounds %struct.config_item, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ci_parent2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ci_parent2, align 4
  %call3 = tail call ptr @config_group_find_item(ptr noundef %7, ptr noundef nonnull @.str.8) #11
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %ci_parent4 = getelementptr inbounds %struct.config_item, ptr %target, i32 0, i32 4
  %8 = ptrtoint ptr %ci_parent4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci_parent4, align 4
  %cmp.not = icmp eq ptr %9, %call3
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %ci_parent5 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %ci_parent5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci_parent5, align 4
  %lock = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %name.i = getelementptr inbounds %struct.uvcg_streaming_class_group, ptr %src, i32 0, i32 1
  %12 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(3) @.str.33) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %uvc_fs_streaming_cls.i = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 17
  br label %__uvcg_get_stream_class_arr.exit

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(3) @.str.69) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %uvc_hs_streaming_cls.i = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 18
  br label %__uvcg_get_stream_class_arr.exit

if.end5.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(3) @.str.34) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  %uvc_ss_streaming_cls.i = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 19
  br i1 %tobool8.not.i, label %if.end5.i.__uvcg_get_stream_class_arr.exit_crit_edge, label %if.end5.i.unlock_crit_edge

if.end5.i.unlock_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end5.i.__uvcg_get_stream_class_arr.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__uvcg_get_stream_class_arr.exit

__uvcg_get_stream_class_arr.exit:                 ; preds = %if.end5.i.__uvcg_get_stream_class_arr.exit_crit_edge, %if.then4.i, %if.then.i
  %retval.0.i = phi ptr [ %uvc_hs_streaming_cls.i, %if.then4.i ], [ %uvc_fs_streaming_cls.i, %if.then.i ], [ %uvc_ss_streaming_cls.i, %if.end5.i.__uvcg_get_stream_class_arr.exit_crit_edge ]
  %tobool8.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool8.not, label %__uvcg_get_stream_class_arr.exit.unlock_crit_edge, label %lor.lhs.false9

__uvcg_get_stream_class_arr.exit.unlock_crit_edge: ; preds = %__uvcg_get_stream_class_arr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

lor.lhs.false9:                                   ; preds = %__uvcg_get_stream_class_arr.exit
  %14 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %retval.0.i, align 4
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %lor.lhs.false9.unlock_crit_edge, label %if.end12

lor.lhs.false9.unlock_crit_edge:                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end12:                                         ; preds = %lor.lhs.false9
  %refcnt = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 21
  %16 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool13.not = icmp eq i32 %17, 0
  br i1 %tobool13.not, label %if.end15, label %if.end12.unlock_crit_edge

if.end12.unlock_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end15:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  %linked = getelementptr inbounds %struct.uvcg_streaming_header, ptr %target, i32 0, i32 2
  %18 = ptrtoint ptr %linked to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %linked, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %linked, align 4
  %20 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %retval.0.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %23) #11
  %24 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %retval.0.i, align 4
  tail call void @kfree(ptr noundef %25) #11
  %26 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %retval.0.i, align 4
  br label %unlock

unlock:                                           ; preds = %if.end15, %if.end12.unlock_crit_edge, %lor.lhs.false9.unlock_crit_edge, %__uvcg_get_stream_class_arr.exit.unlock_crit_edge, %if.end5.i.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %out

out:                                              ; preds = %unlock, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  tail call void @config_item_put(ptr noundef %call3) #11
  tail call void @mutex_unlock(ptr noundef %su_mutex1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__uvcg_iter_strm_cls(ptr noundef %h, ptr noundef %priv2, ptr noundef %priv3, ptr noundef readonly %fun) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fun, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 %fun(ptr noundef %h, ptr noundef %priv2, ptr noundef %priv3, i32 noundef 0, i32 noundef 0) #11, !callees !310
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %formats = getelementptr inbounds %struct.uvcg_streaming_header, ptr %h, i32 0, i32 3
  %0 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn72 = load ptr, ptr %formats, align 4
  %cmp.not74 = icmp eq ptr %.pn72, %formats
  br i1 %cmp.not74, label %if.end3.cleanup_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %if.end9.for.cond.loopexit_crit_edge
  %j.1.lcssa = phi i32 [ %j.075, %if.end9.for.cond.loopexit_crit_edge ], [ %inc21, %for.inc.for.cond.loopexit_crit_edge ]
  %1 = ptrtoint ptr %.pn77 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn77, align 4
  %cmp.not = icmp eq ptr %.pn, %formats
  br i1 %cmp.not, label %for.cond.loopexit.cleanup_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.loopexit.cleanup_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %if.end3.for.body_crit_edge
  %.pn77 = phi ptr [ %.pn, %for.cond.loopexit.for.body_crit_edge ], [ %.pn72, %if.end3.for.body_crit_edge ]
  %i.076 = phi i32 [ %inc, %for.cond.loopexit.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %j.075 = phi i32 [ %j.1.lcssa, %for.cond.loopexit.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %f.078 = getelementptr i8, ptr %.pn77, i32 -4
  %2 = ptrtoint ptr %f.078 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f.078, align 4
  %inc = add i32 %i.076, 1
  %call6 = tail call i32 %fun(ptr noundef %3, ptr noundef %priv2, ptr noundef %priv3, i32 noundef %i.076, i32 noundef 1) #11, !callees !310
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %4 = ptrtoint ptr %f.078 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f.078, align 4
  %cg_children = getelementptr inbounds %struct.config_group, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cg_children to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn6568 = load ptr, ptr %cg_children, align 4
  %cmp17.not69 = icmp eq ptr %.pn6568, %cg_children
  br i1 %cmp17.not69, label %if.end9.for.cond.loopexit_crit_edge, label %if.end9.for.body19_crit_edge

if.end9.for.body19_crit_edge:                     ; preds = %if.end9
  br label %for.body19

if.end9.for.cond.loopexit_crit_edge:              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

for.body19:                                       ; preds = %for.inc.for.body19_crit_edge, %if.end9.for.body19_crit_edge
  %.pn6571 = phi ptr [ %.pn65, %for.inc.for.body19_crit_edge ], [ %.pn6568, %if.end9.for.body19_crit_edge ]
  %j.170 = phi i32 [ %inc21, %for.inc.for.body19_crit_edge ], [ %j.075, %if.end9.for.body19_crit_edge ]
  %item.0 = getelementptr i8, ptr %.pn6571, i32 -28
  %call22 = tail call i32 %fun(ptr noundef %item.0, ptr noundef %priv2, ptr noundef %priv3, i32 noundef %j.170, i32 noundef 2) #11, !callees !310
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %for.inc, label %for.body19.cleanup_crit_edge

for.body19.cleanup_crit_edge:                     ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %for.body19
  %inc21 = add i32 %j.170, 1
  %7 = ptrtoint ptr %.pn6571 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn65 = load ptr, ptr %.pn6571, align 4
  %cmp17.not = icmp eq ptr %.pn65, %cg_children
  br i1 %cmp17.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.for.body19_crit_edge

for.inc.for.body19_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body19

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

cleanup:                                          ; preds = %for.body19.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.loopexit.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ %call22, %for.body19.cleanup_crit_edge ], [ %call6, %for.body.cleanup_crit_edge ], [ 0, %for.cond.loopexit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__uvcg_fill_strm(ptr noundef %priv1, ptr nocapture noundef %priv2, ptr nocapture noundef %priv3, i32 noundef %n, i32 noundef %type) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2, align 4
  %2 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv3, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %3, align 4
  %5 = load ptr, ptr %priv3, align 4
  %incdec.ptr = getelementptr ptr, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %priv3, align 4
  %6 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %type, label %entry.cleanup77_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
    i32 2, label %sw.bb46
  ]

entry.cleanup77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup77

sw.bb:                                            ; preds = %entry
  %7 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv2, align 4
  %desc = getelementptr inbounds %struct.uvcg_streaming_header, ptr %priv1, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %8, ptr %desc, i32 13)
  %10 = load ptr, ptr %priv2, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 13
  store ptr %add.ptr, ptr %priv2, align 4
  %formats = getelementptr inbounds %struct.uvcg_streaming_header, ptr %priv1, i32 0, i32 3
  %11 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn128 = load ptr, ptr %formats, align 4
  %cmp.not129 = icmp eq ptr %.pn128, %formats
  br i1 %cmp.not129, label %sw.bb.for.end_crit_edge, label %sw.bb.for.body_crit_edge

sw.bb.for.body_crit_edge:                         ; preds = %sw.bb
  br label %for.body

sw.bb.for.end_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.bb.for.body_crit_edge
  %.pn130 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn128, %sw.bb.for.body_crit_edge ]
  %f.0 = getelementptr i8, ptr %.pn130, i32 -4
  %12 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv2, align 4
  %14 = ptrtoint ptr %f.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f.0, align 4
  %bmaControls = getelementptr inbounds %struct.uvcg_format, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %bmaControls to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bmaControls, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %13, align 1
  %19 = load ptr, ptr %priv2, align 4
  %add.ptr4 = getelementptr i8, ptr %19, i32 1
  store ptr %add.ptr4, ptr %priv2, align 4
  %20 = ptrtoint ptr %.pn130 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load ptr, ptr %.pn130, align 4
  %cmp.not = icmp eq ptr %.pn, %formats
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %sw.bb.for.end_crit_edge
  %num_fmt = getelementptr inbounds %struct.uvcg_streaming_header, ptr %priv1, i32 0, i32 4
  %21 = ptrtoint ptr %num_fmt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_fmt, align 4
  %23 = trunc i32 %22 to i8
  %conv = add i8 %23, 13
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv, ptr %8, align 1
  %25 = load i32, ptr %num_fmt, align 4
  %conv11 = trunc i32 %25 to i8
  %bNumFormats = getelementptr inbounds %struct.uvc_input_header_descriptor, ptr %8, i32 0, i32 3
  %26 = ptrtoint ptr %bNumFormats to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv11, ptr %bNumFormats, align 1
  br label %cleanup77

sw.bb12:                                          ; preds = %entry
  %type14 = getelementptr inbounds %struct.uvcg_format, ptr %priv1, i32 0, i32 1
  %27 = ptrtoint ptr %type14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type14, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %28, label %sw.bb12.cleanup77_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then30
  ]

sw.bb12.cleanup77_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup77

if.then:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  %30 = trunc i32 %n to i8
  %conv21 = add i8 %30, 1
  %desc22 = getelementptr inbounds %struct.uvcg_uncompressed, ptr %priv1, i32 0, i32 1
  %bFormatIndex = getelementptr inbounds %struct.uvcg_uncompressed, ptr %priv1, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %bFormatIndex to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv21, ptr %bFormatIndex, align 1
  %num_frames = getelementptr inbounds %struct.uvcg_format, ptr %priv1, i32 0, i32 3
  %32 = ptrtoint ptr %num_frames to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_frames, align 4
  %conv23 = trunc i32 %33 to i8
  %bNumFrameDescriptors = getelementptr inbounds %struct.uvcg_uncompressed, ptr %priv1, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %bNumFrameDescriptors to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv23, ptr %bNumFrameDescriptors, align 4
  %35 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv2, align 4
  %37 = call ptr @memcpy(ptr %36, ptr %desc22, i32 27)
  br label %if.end45

if.then30:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  %38 = trunc i32 %n to i8
  %conv35 = add i8 %38, 1
  %desc36 = getelementptr inbounds %struct.uvcg_mjpeg, ptr %priv1, i32 0, i32 1
  %bFormatIndex37 = getelementptr inbounds %struct.uvcg_mjpeg, ptr %priv1, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %bFormatIndex37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv35, ptr %bFormatIndex37, align 1
  %num_frames38 = getelementptr inbounds %struct.uvcg_format, ptr %priv1, i32 0, i32 3
  %40 = ptrtoint ptr %num_frames38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_frames38, align 4
  %conv39 = trunc i32 %41 to i8
  %bNumFrameDescriptors41 = getelementptr inbounds %struct.uvcg_mjpeg, ptr %priv1, i32 0, i32 1, i32 4
  %42 = ptrtoint ptr %bNumFrameDescriptors41 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv39, ptr %bNumFrameDescriptors41, align 4
  %43 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv2, align 4
  %45 = call ptr @memcpy(ptr %44, ptr %desc36, i32 11)
  br label %if.end45

if.end45:                                         ; preds = %if.then30, %if.then
  %.sink131 = phi i32 [ 11, %if.then30 ], [ 27, %if.then ]
  %46 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %priv2, align 4
  %add.ptr43 = getelementptr i8, ptr %47, i32 %.sink131
  store ptr %add.ptr43, ptr %priv2, align 4
  br label %cleanup77

sw.bb46:                                          ; preds = %entry
  %48 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv2, align 4
  %frame = getelementptr inbounds %struct.uvcg_frame, ptr %priv1, i32 0, i32 2
  %50 = call ptr @memcpy(ptr %49, ptr %frame, i32 26)
  %51 = load ptr, ptr %priv2, align 4
  %add.ptr48 = getelementptr i8, ptr %51, i32 26
  store ptr %add.ptr48, ptr %priv2, align 4
  %b_frame_interval_type = getelementptr inbounds %struct.uvcg_frame, ptr %priv1, i32 0, i32 2, i32 11
  %52 = ptrtoint ptr %b_frame_interval_type to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %b_frame_interval_type, align 1
  %conv50 = zext i8 %53 to i32
  %mul51 = shl nuw nsw i32 %conv50, 2
  %dw_frame_interval = getelementptr inbounds %struct.uvcg_frame, ptr %priv1, i32 0, i32 3
  %54 = ptrtoint ptr %dw_frame_interval to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dw_frame_interval, align 4
  %56 = call ptr @memcpy(ptr %add.ptr48, ptr %55, i32 %mul51)
  %57 = load ptr, ptr %priv2, align 4
  %add.ptr52 = getelementptr i8, ptr %57, i32 %mul51
  store ptr %add.ptr52, ptr %priv2, align 4
  %fmt_type = getelementptr inbounds %struct.uvcg_frame, ptr %priv1, i32 0, i32 1
  %58 = ptrtoint ptr %fmt_type to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fmt_type, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %59, label %sw.bb46.cleanup77_crit_edge [
    i32 0, label %if.then55
    i32 1, label %if.then67
  ]

sw.bb46.cleanup77_crit_edge:                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup77

if.then55:                                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %b_frame_interval_type to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %b_frame_interval_type, align 1
  %mul59 = shl i8 %62, 2
  %add60 = add i8 %mul59, 26
  %63 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %add60, ptr %49, align 1
  br label %cleanup77

if.then67:                                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %b_frame_interval_type to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %b_frame_interval_type, align 1
  %mul71 = shl i8 %65, 2
  %add72 = add i8 %mul71, 26
  %66 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %add72, ptr %49, align 1
  br label %cleanup77

cleanup77:                                        ; preds = %if.then67, %if.then55, %sw.bb46.cleanup77_crit_edge, %if.end45, %sw.bb12.cleanup77_crit_edge, %for.end, %entry.cleanup77_crit_edge
  %retval.1 = phi i32 [ -22, %sw.bb12.cleanup77_crit_edge ], [ 0, %if.then55 ], [ 0, %if.then67 ], [ 0, %sw.bb46.cleanup77_crit_edge ], [ 0, %if.end45 ], [ 0, %entry.cleanup77_crit_edge ], [ 0, %for.end ]
  ret i32 %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 177)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !15, !17, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37, !39, !41, !42, !44, !45, !47, !49, !51, !53, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !74, !76, !78, !80, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !187, !189, !190, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !211, !213, !215, !217, !219, !221, !222, !224, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !240, !242, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !283, !285, !286, !288, !289, !291, !293, !295, !297}
!llvm.module.flags = !{!299, !300, !301, !302, !303, !304, !305, !306}
!llvm.ident = !{!307}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 2441, i32 10}
!2 = !{ptr @uvc_func_type, !3, !"uvc_func_type", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 2435, i32 44}
!4 = !{ptr @uvc_func_item_ops, !5, !"uvc_func_item_ops", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 2373, i32 40}
!6 = !{ptr @uvc_attrs, !7, !"uvc_attrs", i1 false, i1 false}
!7 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 2428, i32 35}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 2422, i32 1}
!10 = !{ptr @f_uvc_opts_attr_streaming_interval, !9, !"f_uvc_opts_attr_streaming_interval", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 2423, i32 1}
!14 = !{ptr @f_uvc_opts_attr_streaming_maxpacket, !13, !"f_uvc_opts_attr_streaming_maxpacket", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 2424, i32 1}
!17 = !{ptr @f_uvc_opts_attr_streaming_maxburst, !16, !"f_uvc_opts_attr_streaming_maxburst", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 752, i32 10}
!20 = !{ptr @uvcg_control_grp_type, !21, !"uvcg_control_grp_type", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 746, i32 44}
!22 = !{ptr @uvcg_config_item_ops, !23, !"uvcg_config_item_ops", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 72, i32 40}
!24 = !{ptr @uvcg_default_control_attrs, !25, !"uvcg_default_control_attrs", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 741, i32 35}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 739, i32 1}
!28 = !{ptr @uvcg_default_control_attr_b_interface_number, !27, !"uvcg_default_control_attr_b_interface_number", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 252, i32 10}
!31 = !{ptr @uvcg_control_header_grp_type, !32, !"uvcg_control_header_grp_type", i1 false, i1 false}
!32 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 246, i32 44}
!33 = !{ptr @uvcg_control_header_grp_ops, !34, !"uvcg_control_header_grp_ops", i1 false, i1 false}
!34 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 242, i32 41}
!35 = !{ptr @uvcg_control_header_type, !36, !"uvcg_control_header_type", i1 false, i1 false}
!36 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 216, i32 38}
!37 = !{ptr @uvcg_control_header_attrs, !38, !"uvcg_control_header_attrs", i1 false, i1 false}
!38 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 210, i32 35}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 204, i32 1}
!41 = !{ptr @uvcg_control_header_attr_bcd_uvc, !40, !"uvcg_control_header_attr_bcd_uvc", i1 false, i1 false}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 206, i32 1}
!44 = !{ptr @uvcg_control_header_attr_dw_clock_frequency, !43, !"uvcg_control_header_attr_dw_clock_frequency", i1 false, i1 false}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 351, i32 10}
!47 = !{ptr @uvcg_processing_grp_type, !48, !"uvcg_processing_grp_type", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 346, i32 44}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 339, i32 10}
!51 = !{ptr @uvcg_default_processing_type, !52, !"uvcg_default_processing_type", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 333, i32 44}
!53 = !{ptr @uvcg_default_processing_attrs, !54, !"uvcg_default_processing_attrs", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 324, i32 35}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 286, i32 1}
!57 = !{ptr @uvcg_default_processing_attr_b_unit_id, !56, !"uvcg_default_processing_attr_b_unit_id", i1 false, i1 false}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 287, i32 1}
!60 = !{ptr @uvcg_default_processing_attr_b_source_id, !59, !"uvcg_default_processing_attr_b_source_id", i1 false, i1 false}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 288, i32 1}
!63 = !{ptr @uvcg_default_processing_attr_w_max_multiplier, !62, !"uvcg_default_processing_attr_w_max_multiplier", i1 false, i1 false}
!64 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 322, i32 1}
!66 = !{ptr @uvcg_default_processing_attr_bm_controls, !65, !"uvcg_default_processing_attr_bm_controls", i1 false, i1 false}
!67 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 289, i32 1}
!69 = !{ptr @uvcg_default_processing_attr_i_processing, !68, !"uvcg_default_processing_attr_i_processing", i1 false, i1 false}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 556, i32 10}
!72 = !{ptr @uvcg_terminal_grp_type, !73, !"uvcg_terminal_grp_type", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 551, i32 44}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 465, i32 10}
!76 = !{ptr @uvcg_camera_grp_type, !77, !"uvcg_camera_grp_type", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 460, i32 44}
!78 = !{ptr @uvcg_default_camera_type, !79, !"uvcg_default_camera_type", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 447, i32 44}
!80 = !{ptr @uvcg_default_camera_attrs, !81, !"uvcg_default_camera_attrs", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 435, i32 35}
!82 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 391, i32 1}
!84 = !{ptr @uvcg_default_camera_attr_b_terminal_id, !83, !"uvcg_default_camera_attr_b_terminal_id", i1 false, i1 false}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 392, i32 1}
!87 = !{ptr @uvcg_default_camera_attr_w_terminal_type, !86, !"uvcg_default_camera_attr_w_terminal_type", i1 false, i1 false}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 393, i32 1}
!90 = !{ptr @uvcg_default_camera_attr_b_assoc_terminal, !89, !"uvcg_default_camera_attr_b_assoc_terminal", i1 false, i1 false}
!91 = !{ptr @.str.26, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 394, i32 1}
!93 = !{ptr @uvcg_default_camera_attr_i_terminal, !92, !"uvcg_default_camera_attr_i_terminal", i1 false, i1 false}
!94 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 395, i32 1}
!96 = !{ptr @uvcg_default_camera_attr_w_objective_focal_length_min, !95, !"uvcg_default_camera_attr_w_objective_focal_length_min", i1 false, i1 false}
!97 = !{ptr @.str.28, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 397, i32 1}
!99 = !{ptr @uvcg_default_camera_attr_w_objective_focal_length_max, !98, !"uvcg_default_camera_attr_w_objective_focal_length_max", i1 false, i1 false}
!100 = !{ptr @.str.29, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 399, i32 1}
!102 = !{ptr @uvcg_default_camera_attr_w_ocular_focal_length, !101, !"uvcg_default_camera_attr_w_ocular_focal_length", i1 false, i1 false}
!103 = !{ptr @uvcg_default_camera_attr_bm_controls, !104, !"uvcg_default_camera_attr_bm_controls", i1 false, i1 false}
!104 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 433, i32 1}
!105 = !{ptr @.str.30, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 540, i32 10}
!107 = !{ptr @uvcg_output_grp_type, !108, !"uvcg_output_grp_type", i1 false, i1 false}
!108 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 535, i32 44}
!109 = !{ptr @uvcg_default_output_type, !110, !"uvcg_default_output_type", i1 false, i1 false}
!110 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 522, i32 44}
!111 = !{ptr @uvcg_default_output_attrs, !112, !"uvcg_default_output_attrs", i1 false, i1 false}
!112 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 513, i32 35}
!113 = !{ptr @uvcg_default_output_attr_b_terminal_id, !114, !"uvcg_default_output_attr_b_terminal_id", i1 false, i1 false}
!114 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 505, i32 1}
!115 = !{ptr @uvcg_default_output_attr_w_terminal_type, !116, !"uvcg_default_output_attr_w_terminal_type", i1 false, i1 false}
!116 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 506, i32 1}
!117 = !{ptr @uvcg_default_output_attr_b_assoc_terminal, !118, !"uvcg_default_output_attr_b_assoc_terminal", i1 false, i1 false}
!118 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 507, i32 1}
!119 = !{ptr @uvcg_default_output_attr_b_source_id, !120, !"uvcg_default_output_attr_b_source_id", i1 false, i1 false}
!120 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 508, i32 1}
!121 = !{ptr @uvcg_default_output_attr_i_terminal, !122, !"uvcg_default_output_attr_i_terminal", i1 false, i1 false}
!122 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 509, i32 1}
!123 = !{ptr @.str.32, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 708, i32 10}
!125 = !{ptr @uvcg_control_class_grp_type, !126, !"uvcg_control_class_grp_type", i1 false, i1 false}
!126 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 703, i32 44}
!127 = !{ptr @.str.33, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 683, i32 40}
!129 = !{ptr @.str.34, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 683, i32 46}
!131 = distinct !{null, !132, !"names", i1 false, i1 false}
!132 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 683, i32 28}
!133 = !{ptr @uvcg_control_class_type, !134, !"uvcg_control_class_type", i1 false, i1 false}
!134 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 672, i32 38}
!135 = !{ptr @uvcg_control_class_item_ops, !136, !"uvcg_control_class_item_ops", i1 false, i1 false}
!136 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 666, i32 40}
!137 = !{ptr @.str.35, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 2350, i32 10}
!139 = !{ptr @uvcg_streaming_grp_type, !140, !"uvcg_streaming_grp_type", i1 false, i1 false}
!140 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 2344, i32 44}
!141 = !{ptr @uvcg_default_streaming_attrs, !142, !"uvcg_default_streaming_attrs", i1 false, i1 false}
!142 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 2339, i32 35}
!143 = !{ptr @uvcg_default_streaming_attr_b_interface_number, !144, !"uvcg_default_streaming_attr_b_interface_number", i1 false, i1 false}
!144 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 2337, i32 1}
!145 = !{ptr @uvcg_streaming_header_grp_type, !146, !"uvcg_streaming_header_grp_type", i1 false, i1 false}
!146 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1049, i32 44}
!147 = !{ptr @uvcg_streaming_header_grp_ops, !148, !"uvcg_streaming_header_grp_ops", i1 false, i1 false}
!148 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1045, i32 41}
!149 = !{ptr @uvcg_streaming_header_type, !150, !"uvcg_streaming_header_type", i1 false, i1 false}
!150 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1019, i32 38}
!151 = !{ptr @uvcg_streaming_header_item_ops, !152, !"uvcg_streaming_header_item_ops", i1 false, i1 false}
!152 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 971, i32 40}
!153 = !{ptr @.str.37, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 768, i32 2}
!155 = !{ptr @.str.38, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 769, i32 2}
!157 = distinct !{null, !158, !"uvcg_format_names", i1 false, i1 false}
!158 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 767, i32 27}
!159 = !{ptr @uvcg_frame_type, !160, !"uvcg_frame_type", i1 false, i1 false}
!160 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1335, i32 38}
!161 = !{ptr @uvcg_frame_attrs, !162, !"uvcg_frame_attrs", i1 false, i1 false}
!162 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1322, i32 35}
!163 = !{ptr @.str.39, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1179, i32 1}
!165 = !{ptr @uvcg_frame_attr_b_frame_index, !164, !"uvcg_frame_attr_b_frame_index", i1 false, i1 false}
!166 = !{ptr @.str.40, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1181, i32 1}
!168 = !{ptr @uvcg_frame_attr_bm_capabilities, !167, !"uvcg_frame_attr_bm_capabilities", i1 false, i1 false}
!169 = !{ptr @.str.41, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1182, i32 1}
!171 = !{ptr @uvcg_frame_attr_w_width, !170, !"uvcg_frame_attr_w_width", i1 false, i1 false}
!172 = !{ptr @.str.42, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1183, i32 1}
!174 = !{ptr @uvcg_frame_attr_w_height, !173, !"uvcg_frame_attr_w_height", i1 false, i1 false}
!175 = !{ptr @.str.43, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1184, i32 1}
!177 = !{ptr @uvcg_frame_attr_dw_min_bit_rate, !176, !"uvcg_frame_attr_dw_min_bit_rate", i1 false, i1 false}
!178 = !{ptr @.str.44, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1185, i32 1}
!180 = !{ptr @uvcg_frame_attr_dw_max_bit_rate, !179, !"uvcg_frame_attr_dw_max_bit_rate", i1 false, i1 false}
!181 = !{ptr @.str.45, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1186, i32 1}
!183 = !{ptr @uvcg_frame_attr_dw_max_video_frame_buffer_size, !182, !"uvcg_frame_attr_dw_max_video_frame_buffer_size", i1 false, i1 false}
!184 = !{ptr @.str.46, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1187, i32 1}
!186 = !{ptr @uvcg_frame_attr_dw_default_frame_interval, !185, !"uvcg_frame_attr_dw_default_frame_interval", i1 false, i1 false}
!187 = !{ptr @.str.47, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1320, i32 1}
!189 = !{ptr @uvcg_frame_attr_dw_frame_interval, !188, !"uvcg_frame_attr_dw_frame_interval", i1 false, i1 false}
!190 = !{ptr @uvcg_streaming_header_attrs, !191, !"uvcg_streaming_header_attrs", i1 false, i1 false}
!191 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1010, i32 35}
!192 = !{ptr @.str.48, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1002, i32 1}
!194 = !{ptr @uvcg_streaming_header_attr_bm_info, !193, !"uvcg_streaming_header_attr_bm_info", i1 false, i1 false}
!195 = !{ptr @.str.49, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1003, i32 1}
!197 = !{ptr @uvcg_streaming_header_attr_b_terminal_link, !196, !"uvcg_streaming_header_attr_b_terminal_link", i1 false, i1 false}
!198 = !{ptr @.str.50, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1004, i32 1}
!200 = !{ptr @uvcg_streaming_header_attr_b_still_capture_method, !199, !"uvcg_streaming_header_attr_b_still_capture_method", i1 false, i1 false}
!201 = !{ptr @.str.51, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1005, i32 1}
!203 = !{ptr @uvcg_streaming_header_attr_b_trigger_support, !202, !"uvcg_streaming_header_attr_b_trigger_support", i1 false, i1 false}
!204 = !{ptr @.str.52, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1006, i32 1}
!206 = !{ptr @uvcg_streaming_header_attr_b_trigger_usage, !205, !"uvcg_streaming_header_attr_b_trigger_usage", i1 false, i1 false}
!207 = !{ptr @uvcg_uncompressed_grp_type, !208, !"uvcg_uncompressed_grp_type", i1 false, i1 false}
!208 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1659, i32 44}
!209 = !{ptr @uvcg_uncompressed_grp_ops, !210, !"uvcg_uncompressed_grp_ops", i1 false, i1 false}
!210 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1655, i32 41}
!211 = !{ptr @uvcg_uncompressed_make.guid, !212, !"guid", i1 false, i1 false}
!212 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1627, i32 14}
!213 = !{ptr @uvcg_uncompressed_type, !214, !"uvcg_uncompressed_type", i1 false, i1 false}
!214 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1617, i32 38}
!215 = !{ptr @uvcg_uncompressed_group_ops, !216, !"uvcg_uncompressed_group_ops", i1 false, i1 false}
!216 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1435, i32 41}
!217 = !{ptr @uvcg_uncompressed_attrs, !218, !"uvcg_uncompressed_attrs", i1 false, i1 false}
!218 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1605, i32 35}
!219 = !{ptr @.str.53, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1578, i32 1}
!221 = !{ptr @uvcg_uncompressed_attr_b_format_index, !220, !"uvcg_uncompressed_attr_b_format_index", i1 false, i1 false}
!222 = !{ptr @.str.54, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1492, i32 1}
!224 = !{ptr @uvcg_uncompressed_attr_guid_format, !223, !"uvcg_uncompressed_attr_guid_format", i1 false, i1 false}
!225 = !{ptr @.str.55, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1579, i32 1}
!227 = !{ptr @uvcg_uncompressed_attr_b_bits_per_pixel, !226, !"uvcg_uncompressed_attr_b_bits_per_pixel", i1 false, i1 false}
!228 = !{ptr @.str.56, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1580, i32 1}
!230 = !{ptr @uvcg_uncompressed_attr_b_default_frame_index, !229, !"uvcg_uncompressed_attr_b_default_frame_index", i1 false, i1 false}
!231 = !{ptr @.str.57, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1581, i32 1}
!233 = !{ptr @uvcg_uncompressed_attr_b_aspect_ratio_x, !232, !"uvcg_uncompressed_attr_b_aspect_ratio_x", i1 false, i1 false}
!234 = !{ptr @.str.58, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1582, i32 1}
!236 = !{ptr @uvcg_uncompressed_attr_b_aspect_ratio_y, !235, !"uvcg_uncompressed_attr_b_aspect_ratio_y", i1 false, i1 false}
!237 = !{ptr @.str.59, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1583, i32 1}
!239 = !{ptr @uvcg_uncompressed_attr_bm_interface_flags, !238, !"uvcg_uncompressed_attr_bm_interface_flags", i1 false, i1 false}
!240 = !{ptr @.str.60, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1603, i32 1}
!242 = !{ptr @uvcg_uncompressed_attr_bma_controls, !241, !"uvcg_uncompressed_attr_bma_controls", i1 false, i1 false}
!243 = !{ptr @.str.61, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 804, i32 23}
!245 = !{ptr @.str.62, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 807, i32 25}
!247 = !{ptr @uvcg_mjpeg_grp_type, !248, !"uvcg_mjpeg_grp_type", i1 false, i1 false}
!248 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1845, i32 44}
!249 = !{ptr @uvcg_mjpeg_grp_ops, !250, !"uvcg_mjpeg_grp_ops", i1 false, i1 false}
!250 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1841, i32 41}
!251 = !{ptr @uvcg_mjpeg_type, !252, !"uvcg_mjpeg_type", i1 false, i1 false}
!252 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1809, i32 38}
!253 = !{ptr @uvcg_mjpeg_group_ops, !254, !"uvcg_mjpeg_group_ops", i1 false, i1 false}
!254 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1684, i32 41}
!255 = !{ptr @uvcg_mjpeg_attrs, !256, !"uvcg_mjpeg_attrs", i1 false, i1 false}
!256 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1798, i32 35}
!257 = !{ptr @uvcg_mjpeg_attr_b_format_index, !258, !"uvcg_mjpeg_attr_b_format_index", i1 false, i1 false}
!258 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1771, i32 1}
!259 = !{ptr @uvcg_mjpeg_attr_b_default_frame_index, !260, !"uvcg_mjpeg_attr_b_default_frame_index", i1 false, i1 false}
!260 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1772, i32 1}
!261 = !{ptr @.str.63, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1773, i32 1}
!263 = !{ptr @uvcg_mjpeg_attr_bm_flags, !262, !"uvcg_mjpeg_attr_bm_flags", i1 false, i1 false}
!264 = !{ptr @uvcg_mjpeg_attr_b_aspect_ratio_x, !265, !"uvcg_mjpeg_attr_b_aspect_ratio_x", i1 false, i1 false}
!265 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1774, i32 1}
!266 = !{ptr @uvcg_mjpeg_attr_b_aspect_ratio_y, !267, !"uvcg_mjpeg_attr_b_aspect_ratio_y", i1 false, i1 false}
!267 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1775, i32 1}
!268 = !{ptr @uvcg_mjpeg_attr_bm_interface_flags, !269, !"uvcg_mjpeg_attr_bm_interface_flags", i1 false, i1 false}
!269 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1776, i32 1}
!270 = !{ptr @uvcg_mjpeg_attr_bma_controls, !271, !"uvcg_mjpeg_attr_bma_controls", i1 false, i1 false}
!271 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1796, i32 1}
!272 = !{ptr @.str.64, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1917, i32 10}
!274 = !{ptr @uvcg_color_matching_grp_type, !275, !"uvcg_color_matching_grp_type", i1 false, i1 false}
!275 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1912, i32 44}
!276 = !{ptr @uvcg_default_color_matching_type, !277, !"uvcg_default_color_matching_type", i1 false, i1 false}
!277 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1899, i32 44}
!278 = !{ptr @uvcg_default_color_matching_attrs, !279, !"uvcg_default_color_matching_attrs", i1 false, i1 false}
!279 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1892, i32 35}
!280 = !{ptr @.str.66, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1885, i32 1}
!282 = !{ptr @uvcg_default_color_matching_attr_b_color_primaries, !281, !"uvcg_default_color_matching_attr_b_color_primaries", i1 false, i1 false}
!283 = !{ptr @.str.67, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1886, i32 1}
!285 = !{ptr @uvcg_default_color_matching_attr_b_transfer_characteristics, !284, !"uvcg_default_color_matching_attr_b_transfer_characteristics", i1 false, i1 false}
!286 = !{ptr @.str.68, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 1888, i32 1}
!288 = !{ptr @uvcg_default_color_matching_attr_b_matrix_coefficients, !287, !"uvcg_default_color_matching_attr_b_matrix_coefficients", i1 false, i1 false}
!289 = !{ptr @uvcg_streaming_class_grp_type, !290, !"uvcg_streaming_class_grp_type", i1 false, i1 false}
!290 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 2301, i32 44}
!291 = !{ptr @.str.69, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 2281, i32 46}
!293 = distinct !{null, !294, !"names", i1 false, i1 false}
!294 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 2281, i32 28}
!295 = !{ptr @uvcg_streaming_class_type, !296, !"uvcg_streaming_class_type", i1 false, i1 false}
!296 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 2270, i32 38}
!297 = !{ptr @uvcg_streaming_class_item_ops, !298, !"uvcg_streaming_class_item_ops", i1 false, i1 false}
!298 = !{!"../drivers/usb/gadget/function/uvc_configfs.c", i32 2264, i32 40}
!299 = !{i32 1, !"wchar_size", i32 2}
!300 = !{i32 1, !"min_enum_size", i32 4}
!301 = !{i32 8, !"branch-target-enforcement", i32 0}
!302 = !{i32 8, !"sign-return-address", i32 0}
!303 = !{i32 8, !"sign-return-address-all", i32 0}
!304 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!305 = !{i32 7, !"uwtable", i32 1}
!306 = !{i32 7, !"frame-pointer", i32 2}
!307 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!308 = !{!"auto-init"}
!309 = !{!"branch_weights", i32 1, i32 2000}
!310 = distinct !{null, ptr @__uvcg_fill_strm}
