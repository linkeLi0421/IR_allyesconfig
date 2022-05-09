; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/f_acm.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_acm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_function_driver = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_union_desc = type { i8, i8, i8, i8, i8 }
%struct.usb_cdc_call_mgmt_descriptor = type { i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_cdc_header_desc = type <{ i8, i8, i8, i16 }>
%struct.usb_cdc_acm_descriptor = type { i8, i8, i8, i8 }
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.f_serial_opts = type { %struct.usb_function_instance, i8 }
%struct.f_acm = type { %struct.gserial, i8, i8, i8, i8, %struct.spinlock, ptr, ptr, %struct.usb_cdc_line_coding, i16, i16 }
%struct.gserial = type { %struct.usb_function, ptr, ptr, ptr, %struct.usb_cdc_line_coding, ptr, ptr, ptr }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_cdc_line_coding = type <{ i32, i8, i8, i8 }>
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_cdc_notification = type { i8, i8, i16, i16, i16 }

@__UNIQUE_ID_alias240 = internal constant [28 x i8] c"usb_f_acm.alias=usbfunc:acm\00", section ".modinfo", align 1
@acmusb_func = internal global { %struct.usb_function_driver, [40 x i8] } { %struct.usb_function_driver { ptr @.str, ptr null, %struct.list_head zeroinitializer, ptr @acm_alloc_instance, ptr @acm_alloc_func }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_usb_f_acm__241_858_acmmod_init6 = internal global ptr @acmmod_init, section ".initcall6.init", align 4
@__exitcall_acmmod_exit = internal global ptr @acmmod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file242 = internal constant [53 x i8] c"usb_f_acm.file=drivers/usb/gadget/function/usb_f_acm\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [22 x i8] c"usb_f_acm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"acm\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@acm_func_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @acm_item_ops, ptr null, ptr @acm_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@acm_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @acm_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@acm_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @f_acm_attr_console, ptr @f_acm_attr_port_num, ptr null], [20 x i8] zeroinitializer }, align 32
@f_acm_attr_console = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.2, ptr null, i16 420, ptr @f_acm_console_show, ptr @f_acm_console_store }, [44 x i8] zeroinitializer }, align 32
@f_acm_attr_port_num = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.3, ptr null, i16 292, ptr @f_acm_port_num_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"console\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"port_num\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@acm_alloc_func.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&acm->lock\00", [21 x i8] zeroinitializer }, align 32
@acm_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @acm_string_table, ptr null], [24 x i8] zeroinitializer }, align 32
@acm_notify_serial_state.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, i8 0, i8 -121, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb_f_acm\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"acm_notify_serial_state\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/usb/gadget/function/f_acm.c\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"acm ttyGS%d serial state %04x\0A\00", [33 x i8] zeroinitializer }, align 32
@acm_cdc_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.8, i32 526, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"acm ttyGS%d can't notify serial state, %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"acm_cdc_notify\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@acm_cdc_notify._entry_ptr = internal global ptr @acm_cdc_notify._entry, section ".printk_index", align 4
@acm_string_table = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @acm_string_defs }, [24 x i8] zeroinitializer }, align 32
@acm_string_defs = internal global { [4 x %struct.usb_string], [32 x i8] } { [4 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.14 }, %struct.usb_string { i8 0, ptr @.str.15 }, %struct.usb_string { i8 0, ptr @.str.16 }, %struct.usb_string zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CDC Abstract Control Model (ACM)\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CDC ACM Data\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CDC Serial\00", [21 x i8] zeroinitializer }, align 32
@acm_control_interface_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 1, i8 2, i8 2, i8 1, i8 0 }, [23 x i8] zeroinitializer }, align 32
@acm_data_interface_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 2, i8 10, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@acm_iad_descriptor = internal global { %struct.usb_interface_assoc_descriptor, [24 x i8] } { %struct.usb_interface_assoc_descriptor { i8 8, i8 11, i8 0, i8 2, i8 2, i8 2, i8 1, i8 0 }, [24 x i8] zeroinitializer }, align 32
@acm_union_desc = internal global { %struct.usb_cdc_union_desc, [27 x i8] } { %struct.usb_cdc_union_desc { i8 5, i8 36, i8 6, i8 0, i8 0 }, [27 x i8] zeroinitializer }, align 32
@acm_call_mgmt_descriptor = internal global { %struct.usb_cdc_call_mgmt_descriptor, [27 x i8] } { %struct.usb_cdc_call_mgmt_descriptor { i8 5, i8 36, i8 1, i8 0, i8 0 }, [27 x i8] zeroinitializer }, align 32
@acm_fs_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@acm_fs_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@acm_fs_notify_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 2560, i8 32, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@acm_hs_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@acm_hs_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@acm_hs_notify_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 2560, i8 9, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@acm_ss_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@acm_ss_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@acm_fs_function = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @acm_iad_descriptor, ptr @acm_control_interface_desc, ptr @acm_header_desc, ptr @acm_call_mgmt_descriptor, ptr @acm_descriptor, ptr @acm_union_desc, ptr @acm_fs_notify_desc, ptr @acm_data_interface_desc, ptr @acm_fs_in_desc, ptr @acm_fs_out_desc, ptr null], [52 x i8] zeroinitializer }, align 32
@acm_hs_function = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @acm_iad_descriptor, ptr @acm_control_interface_desc, ptr @acm_header_desc, ptr @acm_call_mgmt_descriptor, ptr @acm_descriptor, ptr @acm_union_desc, ptr @acm_hs_notify_desc, ptr @acm_data_interface_desc, ptr @acm_hs_in_desc, ptr @acm_hs_out_desc, ptr null], [52 x i8] zeroinitializer }, align 32
@acm_ss_function = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @acm_iad_descriptor, ptr @acm_control_interface_desc, ptr @acm_header_desc, ptr @acm_call_mgmt_descriptor, ptr @acm_descriptor, ptr @acm_union_desc, ptr @acm_hs_notify_desc, ptr @acm_ss_bulk_comp_desc, ptr @acm_data_interface_desc, ptr @acm_ss_in_desc, ptr @acm_ss_bulk_comp_desc, ptr @acm_ss_out_desc, ptr @acm_ss_bulk_comp_desc, ptr null], [40 x i8] zeroinitializer }, align 32
@acm_bind.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.17, ptr @.str.8, ptr @.str.18, i8 0, i8 -82, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"acm_bind\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"acm ttyGS%d: %s speed IN/%s OUT/%s NOTIFY/%s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"super\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dual\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@acm_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.8, i32 706, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s/%p: can't bind, err %d\0A\00", [37 x i8] zeroinitializer }, align 32
@acm_bind._entry_ptr = internal global ptr @acm_bind._entry, section ".printk_index", align 4
@acm_header_desc = internal global { %struct.usb_cdc_header_desc, [27 x i8] } { %struct.usb_cdc_header_desc <{ i8 5, i8 36, i8 0, i16 4097 }>, [27 x i8] zeroinitializer }, align 32
@acm_descriptor = internal global { %struct.usb_cdc_acm_descriptor, [28 x i8] } { %struct.usb_cdc_acm_descriptor { i8 4, i8 36, i8 2, i8 2 }, [28 x i8] zeroinitializer }, align 32
@acm_ss_bulk_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@acm_set_alt.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.23, ptr @.str.8, ptr @.str.24, i8 0, i8 107, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"acm_set_alt\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"reset acm control interface %d\0A\00", [32 x i8] zeroinitializer }, align 32
@acm_set_alt.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.23, ptr @.str.8, ptr @.str.25, i8 0, i8 110, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reset acm ttyGS%d\0A\00", [45 x i8] zeroinitializer }, align 32
@acm_set_alt.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.23, ptr @.str.8, ptr @.str.26, i8 0, i8 112, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"activate acm ttyGS%d\0A\00", [42 x i8] zeroinitializer }, align 32
@acm_setup.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.27, ptr @.str.8, ptr @.str.28, i8 0, i8 99, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"acm_setup\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"invalid control req%02x.%02x v%04x i%04x l%d\0A\00", [50 x i8] zeroinitializer }, align 32
@acm_setup.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.27, ptr @.str.8, ptr @.str.29, i8 0, i8 101, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"acm ttyGS%d req%02x.%02x v%04x i%04x l%d\0A\00", [54 x i8] zeroinitializer }, align 32
@acm_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.8, i32 413, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"acm response on ttyGS%d, err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@acm_setup._entry_ptr = internal global ptr @acm_setup._entry, section ".printk_index", align 4
@acm_complete_set_line_coding.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.31, ptr @.str.8, ptr @.str.32, i8 0, i8 78, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"acm_complete_set_line_coding\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"acm ttyGS%d completion, err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@acm_complete_set_line_coding.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.31, ptr @.str.8, ptr @.str.33, i8 0, i8 80, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"acm ttyGS%d short resp, len %d\0A\00", [32 x i8] zeroinitializer }, align 32
@acm_disable.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.34, ptr @.str.8, ptr @.str.35, i8 0, i8 117, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"acm_disable\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"acm ttyGS%d deactivated\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 8480, i64 8482, i64 41249]
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"acmusb_func\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 858, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 854, i32 54 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"acm_func_type\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 825, i32 38 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"acm_item_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 788, i32 40 }
@___asan_gen_.51 = private unnamed_addr constant [10 x i8] c"acm_attrs\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 817, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"f_acm_attr_console\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [20 x i8] c"f_acm_attr_port_num\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 806, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 815, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 812, i32 23 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 751, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"acm_strings\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 292, i32 35 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 541, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 524, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"acm_string_table\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 287, i32 34 }
@___asan_gen_.108 = private unnamed_addr constant [16 x i8] c"acm_string_defs\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 280, i32 26 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 281, i32 21 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 282, i32 21 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 283, i32 21 }
@___asan_gen_.120 = private unnamed_addr constant [27 x i8] c"acm_control_interface_desc\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 107, i32 40 }
@___asan_gen_.123 = private unnamed_addr constant [24 x i8] c"acm_data_interface_desc\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 118, i32 40 }
@___asan_gen_.126 = private unnamed_addr constant [19 x i8] c"acm_iad_descriptor\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 94, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant [15 x i8] c"acm_union_desc\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 152, i32 34 }
@___asan_gen_.132 = private unnamed_addr constant [25 x i8] c"acm_call_mgmt_descriptor\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 137, i32 1 }
@___asan_gen_.135 = private unnamed_addr constant [15 x i8] c"acm_fs_in_desc\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 171, i32 39 }
@___asan_gen_.138 = private unnamed_addr constant [16 x i8] c"acm_fs_out_desc\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 178, i32 39 }
@___asan_gen_.141 = private unnamed_addr constant [19 x i8] c"acm_fs_notify_desc\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 162, i32 39 }
@___asan_gen_.144 = private unnamed_addr constant [15 x i8] c"acm_hs_in_desc\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 209, i32 39 }
@___asan_gen_.147 = private unnamed_addr constant [16 x i8] c"acm_hs_out_desc\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 216, i32 39 }
@___asan_gen_.150 = private unnamed_addr constant [19 x i8] c"acm_hs_notify_desc\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 200, i32 39 }
@___asan_gen_.153 = private unnamed_addr constant [15 x i8] c"acm_ss_in_desc\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 237, i32 39 }
@___asan_gen_.156 = private unnamed_addr constant [16 x i8] c"acm_ss_out_desc\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 244, i32 39 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"acm_fs_function\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 185, i32 38 }
@___asan_gen_.162 = private unnamed_addr constant [16 x i8] c"acm_hs_function\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 223, i32 38 }
@___asan_gen_.165 = private unnamed_addr constant [16 x i8] c"acm_ss_function\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 256, i32 38 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 693, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 706, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [16 x i8] c"acm_header_desc\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 129, i32 35 }
@___asan_gen_.192 = private unnamed_addr constant [15 x i8] c"acm_descriptor\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 145, i32 38 }
@___asan_gen_.195 = private unnamed_addr constant [22 x i8] c"acm_ss_bulk_comp_desc\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 251, i32 41 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 429, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 442, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 447, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 396, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 404, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 412, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 312, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 319, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.238 = private constant [39 x i8] c"../drivers/usb/gadget/function/f_acm.c\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 471, i32 2 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_alias240, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_acmmod_exit, ptr @__initcall__kmod_usb_f_acm__241_858_acmmod_init6, ptr @acm_bind._entry, ptr @acm_bind._entry_ptr, ptr @acm_cdc_notify._entry, ptr @acm_cdc_notify._entry_ptr, ptr @acm_setup._entry, ptr @acm_setup._entry_ptr, ptr @acmmod_exit, ptr @acmusb_func, ptr @.str, ptr @.str.1, ptr @acm_func_type, ptr @acm_item_ops, ptr @acm_attrs, ptr @f_acm_attr_console, ptr @f_acm_attr_port_num, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @acm_alloc_func.__key, ptr @.str.5, ptr @acm_strings, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @acm_string_table, ptr @acm_string_defs, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @acm_control_interface_desc, ptr @acm_data_interface_desc, ptr @acm_iad_descriptor, ptr @acm_union_desc, ptr @acm_call_mgmt_descriptor, ptr @acm_fs_in_desc, ptr @acm_fs_out_desc, ptr @acm_fs_notify_desc, ptr @acm_hs_in_desc, ptr @acm_hs_out_desc, ptr @acm_hs_notify_desc, ptr @acm_ss_in_desc, ptr @acm_ss_out_desc, ptr @acm_fs_function, ptr @acm_hs_function, ptr @acm_ss_function, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @acm_header_desc, ptr @acm_descriptor, ptr @acm_ss_bulk_comp_desc, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acmusb_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_func_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_acm_attr_console to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_acm_attr_port_num to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_alloc_func.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_cdc_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_string_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_string_defs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_control_interface_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_data_interface_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_iad_descriptor to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_union_desc to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_call_mgmt_descriptor to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_fs_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_fs_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_fs_notify_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_hs_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_hs_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_hs_notify_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_ss_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_ss_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_fs_function to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_hs_function to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_ss_function to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_header_desc to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_descriptor to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_ss_bulk_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @acmmod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_function_unregister(ptr noundef nonnull @acmusb_func) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @acmmod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_function_register(ptr noundef nonnull @acmusb_func) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @acm_alloc_instance() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 104) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %free_func_inst = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %free_func_inst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @acm_free_instance, ptr %free_func_inst, align 8
  %port_num = getelementptr inbounds %struct.f_serial_opts, ptr %call7.i.i, i32 0, i32 1
  %call2 = tail call i32 @gserial_alloc_line(ptr noundef %port_num) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %2 = inttoptr i32 %call2 to ptr
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @acm_func_type) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.then4 ], [ %call7.i.i, %if.end6 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @acm_alloc_func(ptr nocapture noundef readonly %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 208) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.f_acm, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @acm_alloc_func.__key, i16 noundef signext 3) #8
  %connect = getelementptr inbounds %struct.gserial, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %connect to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @acm_connect, ptr %connect, align 8
  %disconnect = getelementptr inbounds %struct.gserial, ptr %call7.i.i, i32 0, i32 6
  %2 = ptrtoint ptr %disconnect to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @acm_disconnect, ptr %disconnect, align 4
  %send_break = getelementptr inbounds %struct.gserial, ptr %call7.i.i, i32 0, i32 7
  %3 = ptrtoint ptr %send_break to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @acm_send_break, ptr %send_break, align 8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str, ptr %call7.i.i, align 8
  %strings = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %strings to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @acm_strings, ptr %strings, align 4
  %bind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @acm_bind, ptr %bind, align 4
  %set_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 13
  %7 = ptrtoint ptr %set_alt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @acm_set_alt, ptr %set_alt, align 4
  %setup = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @acm_setup, ptr %setup, align 8
  %disable = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 15
  %9 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @acm_disable, ptr %disable, align 4
  %port_num = getelementptr inbounds %struct.f_serial_opts, ptr %fi, i32 0, i32 1
  %10 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port_num, align 4
  %port_num16 = getelementptr inbounds %struct.f_acm, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %port_num16 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %port_num16, align 2
  %unbind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @acm_unbind, ptr %unbind, align 8
  %free_func = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 11
  %14 = ptrtoint ptr %free_func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @acm_free_func, ptr %free_func, align 4
  %resume = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 19
  %15 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @acm_resume, ptr %resume, align 4
  %suspend = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 18
  %16 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @acm_suspend, ptr %suspend, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %do.body ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_free_instance(ptr noundef %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port_num = getelementptr inbounds %struct.f_serial_opts, ptr %fi, i32 0, i32 1
  %0 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_num, align 4
  tail call void @gserial_free_line(i8 noundef zeroext %1) #8
  tail call void @kfree(ptr noundef %fi) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gserial_alloc_line(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gserial_free_line(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_attr_release(ptr noundef %item) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_put_function_instance(ptr noundef %item) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_acm_console_show(ptr nocapture noundef readonly %item, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port_num = getelementptr inbounds %struct.f_serial_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_num, align 4
  %call1 = tail call i32 @gserial_get_console(i8 noundef zeroext %1, ptr noundef %page) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_acm_console_store(ptr nocapture noundef readonly %item, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port_num = getelementptr inbounds %struct.f_serial_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_num, align 4
  %call1 = tail call i32 @gserial_set_console(i8 noundef zeroext %1, ptr noundef %page, i32 noundef %count) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gserial_get_console(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gserial_set_console(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_acm_port_num_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port_num = getelementptr inbounds %struct.f_serial_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_num, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_connect(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_state = getelementptr inbounds %struct.f_acm, ptr %port, i32 0, i32 10
  %0 = ptrtoint ptr %serial_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %serial_state, align 2
  %2 = or i16 %1, 3
  store i16 %2, ptr %serial_state, align 2
  %call2 = tail call fastcc i32 @acm_notify_serial_state(ptr noundef %port)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_disconnect(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_state = getelementptr inbounds %struct.f_acm, ptr %port, i32 0, i32 10
  %0 = ptrtoint ptr %serial_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %serial_state, align 2
  %2 = and i16 %1, -4
  store i16 %2, ptr %serial_state, align 2
  %call2 = tail call fastcc i32 @acm_notify_serial_state(ptr noundef %port)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_send_break(ptr noundef %port, i32 noundef %duration) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %serial_state = getelementptr inbounds %struct.f_acm, ptr %port, i32 0, i32 10
  %0 = ptrtoint ptr %serial_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %serial_state, align 2
  %2 = and i16 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duration)
  %tobool.not = icmp eq i32 %duration, 0
  %masksel = select i1 %tobool.not, i16 0, i16 4
  %spec.select = or i16 %2, %masksel
  %3 = ptrtoint ptr %serial_state to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %spec.select, ptr %serial_state, align 2
  %call5 = tail call fastcc i32 @acm_notify_serial_state(ptr noundef %port)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_bind(ptr noundef %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev1, align 4
  %call2 = tail call ptr @usb_gstrings_attach(ptr noundef %1, ptr noundef nonnull @acm_strings, i32 noundef 4) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call2, align 4
  store i8 %4, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @acm_control_interface_desc, i32 0, i32 8), align 1
  %arrayidx5 = getelementptr %struct.usb_string, ptr %call2, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx5, align 4
  store i8 %6, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @acm_data_interface_desc, i32 0, i32 8), align 1
  %arrayidx7 = getelementptr %struct.usb_string, ptr %call2, i32 2
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx7, align 4
  store i8 %8, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @acm_iad_descriptor, i32 0, i32 7), align 1
  %call9 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end.fail_crit_edge, label %if.end11

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end11:                                         ; preds = %if.end
  %conv = trunc i32 %call9 to i8
  %ctrl_id = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 1
  %9 = ptrtoint ptr %ctrl_id to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %ctrl_id, align 4
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @acm_iad_descriptor, i32 0, i32 2), align 1
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @acm_control_interface_desc, i32 0, i32 2), align 1
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @acm_union_desc, i32 0, i32 3), align 1
  %call15 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end11.fail_crit_edge, label %if.end19

if.end11.fail_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end19:                                         ; preds = %if.end11
  %conv20 = trunc i32 %call15 to i8
  %data_id = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 2
  %10 = ptrtoint ptr %data_id to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv20, ptr %data_id, align 1
  store i8 %conv20, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @acm_data_interface_desc, i32 0, i32 2), align 1
  store i8 %conv20, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @acm_union_desc, i32 0, i32 4), align 1
  store i8 %conv20, ptr getelementptr inbounds (%struct.usb_cdc_call_mgmt_descriptor, ptr @acm_call_mgmt_descriptor, i32 0, i32 4), align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call24 = tail call ptr @usb_ep_autoconfig(ptr noundef %12, ptr noundef nonnull @acm_fs_in_desc) #8
  %tobool.not = icmp eq ptr %call24, null
  br i1 %tobool.not, label %if.end19.fail_crit_edge, label %if.end26

if.end19.fail_crit_edge:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end26:                                         ; preds = %if.end19
  %in = getelementptr inbounds %struct.gserial, ptr %f, i32 0, i32 2
  %13 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call24, ptr %in, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call28 = tail call ptr @usb_ep_autoconfig(ptr noundef %15, ptr noundef nonnull @acm_fs_out_desc) #8
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end26.fail_crit_edge, label %if.end31

if.end26.fail_crit_edge:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end31:                                         ; preds = %if.end26
  %out = getelementptr inbounds %struct.gserial, ptr %f, i32 0, i32 3
  %16 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call28, ptr %out, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call34 = tail call ptr @usb_ep_autoconfig(ptr noundef %18, ptr noundef nonnull @acm_fs_notify_desc) #8
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end31.fail_crit_edge, label %if.end37

if.end31.fail_crit_edge:                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end37:                                         ; preds = %if.end31
  %notify = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 6
  %19 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call34, ptr %notify, align 4
  %call38 = tail call ptr @gs_alloc_req(ptr noundef nonnull %call34, i32 noundef 10, i32 noundef 3264) #8
  %notify_req = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 7
  %20 = ptrtoint ptr %notify_req to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call38, ptr %notify_req, align 4
  %tobool40.not = icmp eq ptr %call38, null
  br i1 %tobool40.not, label %if.end37.fail_crit_edge, label %if.end42

if.end37.fail_crit_edge:                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end42:                                         ; preds = %if.end37
  %complete = getelementptr inbounds %struct.usb_request, ptr %call38, i32 0, i32 7
  %21 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @acm_cdc_notify_complete, ptr %complete, align 4
  %22 = ptrtoint ptr %notify_req to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %notify_req, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %f, ptr %context, align 4
  %25 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @acm_fs_in_desc, i32 0, i32 2), align 1
  store i8 %25, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @acm_hs_in_desc, i32 0, i32 2), align 1
  %26 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @acm_fs_out_desc, i32 0, i32 2), align 1
  store i8 %26, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @acm_hs_out_desc, i32 0, i32 2), align 1
  %27 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @acm_fs_notify_desc, i32 0, i32 2), align 1
  store i8 %27, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @acm_hs_notify_desc, i32 0, i32 2), align 1
  store i8 %25, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @acm_ss_in_desc, i32 0, i32 2), align 1
  store i8 %26, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @acm_ss_out_desc, i32 0, i32 2), align 1
  %call45 = tail call i32 @usb_assign_descriptors(ptr noundef %f, ptr noundef nonnull @acm_fs_function, ptr noundef nonnull @acm_hs_function, ptr noundef nonnull @acm_ss_function, ptr noundef nonnull @acm_ss_function) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.body, label %if.end42.fail_crit_edge

if.end42.fail_crit_edge:                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

do.body:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_bind.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@acm_bind, %cleanup)) #8
          to label %if.then54 [label %cleanup], !srcloc !143

if.then54:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %29, i32 0, i32 11
  %port_num = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 3
  %30 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port_num, align 2
  %conv56 = zext i8 %31 to i32
  %32 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cdev1, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %max_speed.i = getelementptr inbounds %struct.usb_gadget, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %37)
  %cmp.i142 = icmp ult i32 %37, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp.i144 = icmp ult i32 %37, 3
  %cond = select i1 %cmp.i144, ptr @.str.21, ptr @.str.20
  %cond65 = select i1 %cmp.i142, ptr %cond, ptr @.str.19
  %38 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %in, align 4
  %name = getelementptr inbounds %struct.usb_ep, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name, align 4
  %42 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %out, align 4
  %name70 = getelementptr inbounds %struct.usb_ep, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %name70 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name70, align 4
  %46 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %notify, align 4
  %name72 = getelementptr inbounds %struct.usb_ep, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %name72 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name72, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_bind.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %conv56, ptr noundef nonnull %cond65, ptr noundef %41, ptr noundef %45, ptr noundef %49) #8
  br label %cleanup

fail:                                             ; preds = %if.end42.fail_crit_edge, %if.end37.fail_crit_edge, %if.end31.fail_crit_edge, %if.end26.fail_crit_edge, %if.end19.fail_crit_edge, %if.end11.fail_crit_edge, %if.end.fail_crit_edge
  %status.0 = phi i32 [ %call9, %if.end.fail_crit_edge ], [ %call15, %if.end11.fail_crit_edge ], [ %call45, %if.end42.fail_crit_edge ], [ -19, %if.end37.fail_crit_edge ], [ -19, %if.end31.fail_crit_edge ], [ -19, %if.end26.fail_crit_edge ], [ -19, %if.end19.fail_crit_edge ]
  %notify_req74 = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 7
  %50 = ptrtoint ptr %notify_req74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %notify_req74, align 4
  %tobool75.not = icmp eq ptr %51, null
  br i1 %tobool75.not, label %fail.do.end82_crit_edge, label %if.then76

fail.do.end82_crit_edge:                          ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end82

if.then76:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #10
  %notify77 = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 6
  %52 = ptrtoint ptr %notify77 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %notify77, align 4
  tail call void @gs_free_req(ptr noundef %53, ptr noundef nonnull %51) #8
  br label %do.end82

do.end82:                                         ; preds = %if.then76, %fail.do.end82_crit_edge
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %dev84 = getelementptr inbounds %struct.usb_gadget, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev84, ptr noundef nonnull @.str.22, ptr noundef %57, ptr noundef %f, i32 noundef %status.0) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end82, %if.then54, %do.body, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %status.0, %do.end82 ], [ 0, %if.then54 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_set_alt(ptr noundef %f, i32 noundef %intf, i32 noundef %alt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  %ctrl_id = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl_id, align 4
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %intf)
  %cmp = icmp eq i32 %conv, %intf
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %notify = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 6
  %6 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %notify, align 4
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.then.if.end12_crit_edge, label %do.body

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_set_alt.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@acm_set_alt, %do.end)) #8
          to label %if.then9 [label %do.end], !srcloc !143

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %11, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_set_alt.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %intf) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %12 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %notify, align 4
  %call11 = tail call i32 @usb_ep_disable(ptr noundef %13) #8
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.then.if.end12_crit_edge
  %14 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %notify, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc, align 4
  %tobool14.not = icmp eq ptr %17, null
  br i1 %tobool14.not, label %if.then15, label %if.end12.if.end22_crit_edge

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then15:                                        ; preds = %if.end12
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %call18 = tail call i32 @config_ep_by_speed(ptr noundef %19, ptr noundef %f, ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then15.if.end22_crit_edge, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15.if.end22_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %if.then15.if.end22_crit_edge, %if.end12.if.end22_crit_edge
  %20 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %notify, align 4
  %call24 = tail call i32 @usb_ep_enable(ptr noundef %21) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  %data_id = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 2
  %22 = ptrtoint ptr %data_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data_id, align 1
  %conv25 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv25, i32 %intf)
  %cmp26 = icmp eq i32 %conv25, %intf
  br i1 %cmp26, label %if.then28, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then28:                                        ; preds = %if.else
  %notify29 = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 6
  %24 = ptrtoint ptr %notify29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %notify29, align 4
  %enabled30 = getelementptr inbounds %struct.usb_ep, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %enabled30 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enabled30, align 1, !range !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool31.not = icmp eq i8 %27, 0
  br i1 %tobool31.not, label %if.then28.if.end54_crit_edge, label %do.body33

if.then28.if.end54_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

do.body33:                                        ; preds = %if.then28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_set_alt.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@acm_set_alt, %do.end53)) #8
          to label %if.then47 [label %do.end53], !srcloc !143

if.then47:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %dev49 = getelementptr inbounds %struct.usb_gadget, ptr %29, i32 0, i32 11
  %port_num = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 3
  %30 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port_num, align 2
  %conv50 = zext i8 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_set_alt.__UNIQUE_ID_ddebug235, ptr noundef %dev49, ptr noundef nonnull @.str.25, i32 noundef %conv50) #8
  br label %do.end53

do.end53:                                         ; preds = %if.then47, %do.body33
  tail call void @gserial_disconnect(ptr noundef %f) #8
  br label %if.end54

if.end54:                                         ; preds = %do.end53, %if.then28.if.end54_crit_edge
  %in = getelementptr inbounds %struct.gserial, ptr %f, i32 0, i32 2
  %32 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %in, align 4
  %desc56 = getelementptr inbounds %struct.usb_ep, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %desc56 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc56, align 4
  %tobool57.not = icmp eq ptr %35, null
  br i1 %tobool57.not, label %if.end54.do.body62_crit_edge, label %lor.lhs.false

if.end54.do.body62_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62

lor.lhs.false:                                    ; preds = %if.end54
  %out = getelementptr inbounds %struct.gserial, ptr %f, i32 0, i32 3
  %36 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %out, align 4
  %desc59 = getelementptr inbounds %struct.usb_ep, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %desc59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %desc59, align 4
  %tobool60.not = icmp eq ptr %39, null
  br i1 %tobool60.not, label %lor.lhs.false.do.body62_crit_edge, label %lor.lhs.false.if.end103_crit_edge

lor.lhs.false.if.end103_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

lor.lhs.false.do.body62_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62

do.body62:                                        ; preds = %lor.lhs.false.do.body62_crit_edge, %if.end54.do.body62_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_set_alt.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@acm_set_alt, %do.end83)) #8
          to label %if.then76 [label %do.end83], !srcloc !143

if.then76:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %dev78 = getelementptr inbounds %struct.usb_gadget, ptr %41, i32 0, i32 11
  %port_num79 = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 3
  %42 = ptrtoint ptr %port_num79 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %port_num79, align 2
  %conv80 = zext i8 %43 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_set_alt.__UNIQUE_ID_ddebug236, ptr noundef %dev78, ptr noundef nonnull @.str.26, i32 noundef %conv80) #8
  br label %do.end83

do.end83:                                         ; preds = %if.then76, %do.body62
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  %46 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %in, align 4
  %call87 = tail call i32 @config_ep_by_speed(ptr noundef %45, ptr noundef %f, ptr noundef %47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %lor.lhs.false89, label %do.end83.if.then95_crit_edge

do.end83.if.then95_crit_edge:                     ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then95

lor.lhs.false89:                                  ; preds = %do.end83
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 4
  %out92 = getelementptr inbounds %struct.gserial, ptr %f, i32 0, i32 3
  %50 = ptrtoint ptr %out92 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %out92, align 4
  %call93 = tail call i32 @config_ep_by_speed(ptr noundef %49, ptr noundef %f, ptr noundef %51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %lor.lhs.false89.if.end103_crit_edge, label %lor.lhs.false89.if.then95_crit_edge

lor.lhs.false89.if.then95_crit_edge:              ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then95

lor.lhs.false89.if.end103_crit_edge:              ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then95:                                        ; preds = %lor.lhs.false89.if.then95_crit_edge, %do.end83.if.then95_crit_edge
  %52 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %in, align 4
  %desc98 = getelementptr inbounds %struct.usb_ep, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %desc98 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %desc98, align 4
  %out100 = getelementptr inbounds %struct.gserial, ptr %f, i32 0, i32 3
  %55 = ptrtoint ptr %out100 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %out100, align 4
  %desc101 = getelementptr inbounds %struct.usb_ep, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %desc101 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %desc101, align 4
  br label %cleanup

if.end103:                                        ; preds = %lor.lhs.false89.if.end103_crit_edge, %lor.lhs.false.if.end103_crit_edge
  %port_num105 = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 3
  %58 = ptrtoint ptr %port_num105 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %port_num105, align 2
  %call106 = tail call i32 @gserial_connect(ptr noundef %f, i8 noundef zeroext %59) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %if.then95, %if.else.cleanup_crit_edge, %if.end22, %if.then15.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then95 ], [ -22, %if.then15.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.end103 ], [ 0, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acm_setup(ptr noundef %f, ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %conv = zext i8 %16 to i16
  %shl = shl nuw i16 %conv, 8
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %17 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bRequest, align 1
  %conv3 = zext i8 %18 to i16
  %or = or i16 %shl, %conv3
  %19 = zext i16 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i16 %or, label %entry.do.body_crit_edge [
    i16 8480, label %sw.bb
    i16 -24287, label %sw.bb11
    i16 8482, label %sw.bb22
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %13)
  %cmp.not = icmp eq i16 %13, 1792
  br i1 %cmp.not, label %lor.lhs.false, label %sw.bb.do.body_crit_edge

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false:                                    ; preds = %sw.bb
  %ctrl_id = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 1
  %20 = ptrtoint ptr %ctrl_id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ctrl_id, align 4
  %22 = zext i8 %21 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %22)
  %cmp8.not = icmp eq i16 %8, %22
  br i1 %cmp8.not, label %if.end, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ep0, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %f, ptr %26, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 7
  %28 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @acm_complete_set_line_coding, ptr %complete, align 4
  br label %do.body48

sw.bb11:                                          ; preds = %entry
  %ctrl_id13 = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 1
  %29 = ptrtoint ptr %ctrl_id13 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ctrl_id13, align 4
  %31 = zext i8 %30 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %31)
  %cmp15.not = icmp eq i16 %8, %31
  br i1 %cmp15.not, label %if.end18, label %sw.bb11.do.body_crit_edge

sw.bb11.do.body_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end18:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %32 = tail call i16 @llvm.umin.i16(i16 %14, i16 7)
  %cond = zext i16 %32 to i32
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %5, align 4
  %port_line_coding = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 8
  %35 = call ptr @memcpy(ptr %34, ptr %port_line_coding, i32 %cond)
  br label %do.body48

sw.bb22:                                          ; preds = %entry
  %ctrl_id24 = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 1
  %36 = ptrtoint ptr %ctrl_id24 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ctrl_id24, align 4
  %38 = zext i8 %37 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %38)
  %cmp26.not = icmp eq i16 %8, %38
  br i1 %cmp26.not, label %if.end29, label %sw.bb22.do.body_crit_edge

sw.bb22.do.body_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end29:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  %port_handshake_bits = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 9
  %39 = ptrtoint ptr %port_handshake_bits to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %11, ptr %port_handshake_bits, align 4
  br label %do.body48

do.body:                                          ; preds = %sw.bb22.do.body_crit_edge, %sw.bb11.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %sw.bb.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_setup.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@acm_setup, %if.end90)) #8
          to label %if.then35 [label %if.end90], !srcloc !143

if.then35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ctrl, align 1
  %conv38 = zext i8 %43 to i32
  %44 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bRequest, align 1
  %conv40 = zext i8 %45 to i32
  %conv41 = zext i16 %11 to i32
  %conv42 = zext i16 %8 to i32
  %conv43 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_setup.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %conv38, i32 noundef %conv40, i32 noundef %conv41, i32 noundef %conv42, i32 noundef %conv43) #8
  br label %if.end90

do.body48:                                        ; preds = %if.end29, %if.end18, %if.end
  %value.0.ph = phi i32 [ 7, %if.end ], [ %cond, %if.end18 ], [ 0, %if.end29 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_setup.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@acm_setup, %do.end75)) #8
          to label %if.then62 [label %do.end75], !srcloc !143

if.then62:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  %dev64 = getelementptr inbounds %struct.usb_gadget, ptr %47, i32 0, i32 11
  %port_num = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 3
  %48 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %port_num, align 2
  %conv65 = zext i8 %49 to i32
  %50 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ctrl, align 1
  %conv67 = zext i8 %51 to i32
  %52 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bRequest, align 1
  %conv69 = zext i8 %53 to i32
  %conv70 = zext i16 %11 to i32
  %conv71 = zext i16 %8 to i32
  %conv72 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_setup.__UNIQUE_ID_ddebug233, ptr noundef %dev64, ptr noundef nonnull @.str.29, i32 noundef %conv65, i32 noundef %conv67, i32 noundef %conv69, i32 noundef %conv70, i32 noundef %conv71, i32 noundef %conv72) #8
  br label %do.end75

do.end75:                                         ; preds = %if.then62, %do.body48
  %zero = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 6
  %54 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load = load i32, ptr %zero, align 4
  %bf.clear = and i32 %bf.load, -8193
  store i32 %bf.clear, ptr %zero, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 1
  %55 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %value.0.ph, ptr %length, align 4
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  %ep077 = getelementptr inbounds %struct.usb_gadget, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %ep077 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ep077, align 4
  %call78 = tail call i32 @usb_ep_queue(ptr noundef %59, ptr noundef %5, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %do.end84, label %do.end75.if.end90_crit_edge

do.end75.if.end90_crit_edge:                      ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

do.end84:                                         ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %3, align 4
  %dev86 = getelementptr inbounds %struct.usb_gadget, ptr %61, i32 0, i32 11
  %port_num87 = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 3
  %62 = ptrtoint ptr %port_num87 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %port_num87, align 2
  %conv88 = zext i8 %63 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev86, ptr noundef nonnull @.str.30, i32 noundef %conv88, i32 noundef %call78) #12
  br label %if.end90

if.end90:                                         ; preds = %do.end84, %do.end75.if.end90_crit_edge, %if.then35, %do.body
  %value.1 = phi i32 [ %call78, %do.end84 ], [ %call78, %do.end75.if.end90_crit_edge ], [ -95, %if.then35 ], [ -95, %do.body ]
  ret i32 %value.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_disable(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_disable.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@acm_disable, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !143

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  %port_num = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 3
  %6 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_num, align 2
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_disable.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @gserial_disconnect(ptr noundef %f) #8
  %notify = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 6
  %8 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %notify, align 4
  %call6 = tail call i32 @usb_ep_disable(ptr noundef %9) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_unbind(ptr nocapture noundef readnone %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  store i8 0, ptr @acm_string_defs, align 4
  tail call void @usb_free_all_descriptors(ptr noundef %f) #8
  %notify_req = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 7
  %0 = ptrtoint ptr %notify_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify_req, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %notify = getelementptr inbounds %struct.f_acm, ptr %f, i32 0, i32 6
  %2 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notify, align 4
  tail call void @gs_free_req(ptr noundef %3, ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_free_func(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %f) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_resume(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @gserial_resume(ptr noundef %f) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_suspend(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @gserial_suspend(ptr noundef %f) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @acm_notify_serial_state(ptr noundef %acm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %acm, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  %lock = getelementptr inbounds %struct.f_acm, ptr %acm, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %notify_req = getelementptr inbounds %struct.f_acm, ptr %acm, i32 0, i32 7
  %4 = ptrtoint ptr %notify_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %notify_req, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_notify_serial_state.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@acm_notify_serial_state, %do.end)) #8
          to label %if.then6 [label %do.end], !srcloc !143

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 11
  %port_num = getelementptr inbounds %struct.f_acm, ptr %acm, i32 0, i32 3
  %8 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_num, align 2
  %conv = zext i8 %9 to i32
  %serial_state7 = getelementptr inbounds %struct.f_acm, ptr %acm, i32 0, i32 10
  %10 = ptrtoint ptr %serial_state7 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %serial_state7, align 2
  %conv8 = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_notify_serial_state.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %conv, i32 noundef %conv8) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %serial_state9 = getelementptr inbounds %struct.f_acm, ptr %acm, i32 0, i32 10
  %12 = ptrtoint ptr %serial_state9 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %serial_state9, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %notify.i = getelementptr inbounds %struct.f_acm, ptr %acm, i32 0, i32 6
  %15 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %notify.i, align 4
  %17 = ptrtoint ptr %notify_req to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %notify_req, align 4
  store ptr null, ptr %notify_req, align 4
  %pending.i = getelementptr inbounds %struct.f_acm, ptr %acm, i32 0, i32 4
  %19 = ptrtoint ptr %pending.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %pending.i, align 1
  %length3.i = getelementptr inbounds %struct.usb_request, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %length3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 10, ptr %length3.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  %add.ptr.i = getelementptr %struct.usb_cdc_notification, ptr %22, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -95, ptr %22, align 1
  %bNotificationType.i = getelementptr inbounds %struct.usb_cdc_notification, ptr %22, i32 0, i32 1
  %24 = ptrtoint ptr %bNotificationType.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 32, ptr %bNotificationType.i, align 1
  %wValue.i = getelementptr inbounds %struct.usb_cdc_notification, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %wValue.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 0, ptr %wValue.i, align 1
  %ctrl_id.i = getelementptr inbounds %struct.f_acm, ptr %acm, i32 0, i32 1
  %26 = ptrtoint ptr %ctrl_id.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ctrl_id.i, align 4
  %conv.i = zext i8 %27 to i16
  %28 = shl nuw i16 %conv.i, 8
  %wIndex.i = getelementptr inbounds %struct.usb_cdc_notification, ptr %22, i32 0, i32 3
  %29 = ptrtoint ptr %wIndex.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %wIndex.i, align 1
  %wLength.i = getelementptr inbounds %struct.usb_cdc_notification, ptr %22, i32 0, i32 4
  %30 = ptrtoint ptr %wLength.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 512, ptr %wLength.i, align 1
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %14, ptr %add.ptr.i, align 1
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  %call.i = tail call i32 @usb_ep_queue(ptr noundef %16, ptr noundef %18, i32 noundef 2592) #8
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config, align 4
  %cdev.i = getelementptr inbounds %struct.usb_configuration, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cdev.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %37, i32 0, i32 11
  %port_num.i = getelementptr inbounds %struct.f_acm, ptr %acm, i32 0, i32 3
  %38 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %port_num.i, align 2
  %conv8.i = zext i8 %39 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10, i32 noundef %conv8.i, i32 noundef %call.i) #12
  %40 = ptrtoint ptr %notify_req to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %18, ptr %notify_req, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pending = getelementptr inbounds %struct.f_acm, ptr %acm, i32 0, i32 4
  %41 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %pending, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.else, %do.end.i, %do.end.if.end11_crit_edge
  %status.0 = phi i32 [ 0, %if.else ], [ %call.i, %do.end.if.end11_crit_edge ], [ %call.i, %do.end.i ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gs_alloc_req(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_cdc_notify_complete(ptr nocapture noundef readnone %ep, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %lock = getelementptr inbounds %struct.f_acm, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -108, i32 %3)
  %cmp.not = icmp eq i32 %3, -108
  br i1 %cmp.not, label %if.end3.critedge, label %if.then

if.then:                                          ; preds = %entry
  %pending = getelementptr inbounds %struct.f_acm, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pending, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %phi.cmp = icmp eq i8 %5, 0
  %notify_req = getelementptr inbounds %struct.f_acm, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %notify_req to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %req, ptr %notify_req, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br i1 %phi.cmp, label %if.then.if.end3_crit_edge, label %if.then2

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @acm_notify_serial_state(ptr noundef %1)
  br label %if.end3

if.end3.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %notify_req.c = getelementptr inbounds %struct.f_acm, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %notify_req.c to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %req, ptr %notify_req.c, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %if.end3

if.end3:                                          ; preds = %if.end3.critedge, %if.then2, %if.then.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gs_free_req(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gserial_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gserial_connect(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @acm_complete_set_line_coding(ptr noundef %ep, ptr nocapture noundef readonly %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_complete_set_line_coding.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@acm_complete_set_line_coding, %cleanup)) #8
          to label %if.then5 [label %cleanup], !srcloc !143

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 11
  %port_num = getelementptr inbounds %struct.f_acm, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port_num, align 2
  %conv = zext i8 %11 to i32
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_complete_set_line_coding.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %conv, i32 noundef %13) #8
  br label %cleanup

if.end7:                                          ; preds = %entry
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %14 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %15)
  %cmp8.not = icmp eq i32 %15, 7
  br i1 %cmp8.not, label %if.else, label %do.body11

do.body11:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @acm_complete_set_line_coding.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@acm_complete_set_line_coding, %do.end33)) #8
          to label %if.then25 [label %do.end33], !srcloc !143

if.then25:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %dev27 = getelementptr inbounds %struct.usb_gadget, ptr %17, i32 0, i32 11
  %port_num28 = getelementptr inbounds %struct.f_acm, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %port_num28 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port_num28, align 2
  %conv29 = zext i8 %19 to i32
  %20 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %actual, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @acm_complete_set_line_coding.__UNIQUE_ID_ddebug229, ptr noundef %dev27, ptr noundef nonnull @.str.33, i32 noundef %conv29, i32 noundef %21) #8
  br label %do.end33

do.end33:                                         ; preds = %if.then25, %do.body11
  %call34 = tail call i32 @usb_ep_set_halt(ptr noundef %ep) #8
  br label %cleanup

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %req, align 4
  %port_line_coding = getelementptr inbounds %struct.f_acm, ptr %1, i32 0, i32 8
  %24 = call ptr @memcpy(ptr %port_line_coding, ptr %23, i32 7)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end33, %if.then5, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gserial_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gserial_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !11, !13, !15, !17, !19, !20, !22, !23, !25, !27, !28, !30, !31, !32, !33, !34, !36, !37, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !106, !108, !109, !111, !112, !114, !115, !116, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !132, !133}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @__UNIQUE_ID_alias240, !1, !"__UNIQUE_ID_alias240", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 858, i32 1}
!2 = !{ptr @__initcall__kmod_usb_f_acm__241_858_acmmod_init6, !1, !"__initcall__kmod_usb_f_acm__241_858_acmmod_init6", i1 false, i1 false}
!3 = !{ptr @__exitcall_acmmod_exit, !1, !"__exitcall_acmmod_exit", i1 false, i1 false}
!4 = !{ptr @__UNIQUE_ID_file242, !5, !"__UNIQUE_ID_file242", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 859, i32 1}
!6 = !{ptr @__UNIQUE_ID_license243, !5, !"__UNIQUE_ID_license243", i1 false, i1 false}
!7 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @acmusb_func, !1, !"acmusb_func", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 854, i32 54}
!11 = !{ptr @acm_func_type, !12, !"acm_func_type", i1 false, i1 false}
!12 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 825, i32 38}
!13 = !{ptr @acm_item_ops, !14, !"acm_item_ops", i1 false, i1 false}
!14 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 788, i32 40}
!15 = !{ptr @acm_attrs, !16, !"acm_attrs", i1 false, i1 false}
!16 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 817, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 806, i32 1}
!19 = !{ptr @f_acm_attr_console, !18, !"f_acm_attr_console", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 815, i32 1}
!22 = !{ptr @f_acm_attr_port_num, !21, !"f_acm_attr_port_num", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 812, i32 23}
!25 = !{ptr @acm_alloc_func.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 751, i32 2}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 541, i32 3}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @acm_notify_serial_state.__UNIQUE_ID_ddebug238, !29, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 524, i32 3}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @acm_cdc_notify._entry, !35, !"_entry", i1 false, i1 false}
!40 = !{ptr @acm_cdc_notify._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @acm_strings, !42, !"acm_strings", i1 false, i1 false}
!42 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 292, i32 35}
!43 = !{ptr @acm_string_table, !44, !"acm_string_table", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 287, i32 34}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 281, i32 21}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 282, i32 21}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 283, i32 21}
!51 = !{ptr @acm_string_defs, !52, !"acm_string_defs", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 280, i32 26}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 693, i32 2}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @acm_bind.__UNIQUE_ID_ddebug239, !54, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!57 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 706, i32 2}
!62 = !{ptr @acm_bind._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @acm_bind._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @acm_control_interface_desc, !65, !"acm_control_interface_desc", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 107, i32 40}
!66 = !{ptr @acm_data_interface_desc, !67, !"acm_data_interface_desc", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 118, i32 40}
!68 = !{ptr @acm_iad_descriptor, !69, !"acm_iad_descriptor", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 94, i32 1}
!70 = !{ptr @acm_union_desc, !71, !"acm_union_desc", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 152, i32 34}
!72 = !{ptr @acm_call_mgmt_descriptor, !73, !"acm_call_mgmt_descriptor", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 137, i32 1}
!74 = !{ptr @acm_fs_in_desc, !75, !"acm_fs_in_desc", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 171, i32 39}
!76 = !{ptr @acm_fs_out_desc, !77, !"acm_fs_out_desc", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 178, i32 39}
!78 = !{ptr @acm_fs_notify_desc, !79, !"acm_fs_notify_desc", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 162, i32 39}
!80 = !{ptr @acm_hs_in_desc, !81, !"acm_hs_in_desc", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 209, i32 39}
!82 = !{ptr @acm_hs_out_desc, !83, !"acm_hs_out_desc", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 216, i32 39}
!84 = !{ptr @acm_hs_notify_desc, !85, !"acm_hs_notify_desc", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 200, i32 39}
!86 = !{ptr @acm_ss_in_desc, !87, !"acm_ss_in_desc", i1 false, i1 false}
!87 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 237, i32 39}
!88 = !{ptr @acm_ss_out_desc, !89, !"acm_ss_out_desc", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 244, i32 39}
!90 = !{ptr @acm_fs_function, !91, !"acm_fs_function", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 185, i32 38}
!92 = !{ptr @acm_header_desc, !93, !"acm_header_desc", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 129, i32 35}
!94 = !{ptr @acm_descriptor, !95, !"acm_descriptor", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 145, i32 38}
!96 = !{ptr @acm_hs_function, !97, !"acm_hs_function", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 223, i32 38}
!98 = !{ptr @acm_ss_function, !99, !"acm_ss_function", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 256, i32 38}
!100 = !{ptr @acm_ss_bulk_comp_desc, !101, !"acm_ss_bulk_comp_desc", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 251, i32 41}
!102 = !{ptr @.str.23, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 429, i32 4}
!104 = !{ptr @.str.24, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @acm_set_alt.__UNIQUE_ID_ddebug234, !103, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!106 = !{ptr @.str.25, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 442, i32 4}
!108 = !{ptr @acm_set_alt.__UNIQUE_ID_ddebug235, !107, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!109 = !{ptr @.str.26, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 447, i32 4}
!111 = !{ptr @acm_set_alt.__UNIQUE_ID_ddebug236, !110, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!112 = !{ptr @.str.27, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 396, i32 3}
!114 = !{ptr @.str.28, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @acm_setup.__UNIQUE_ID_ddebug232, !113, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!116 = !{ptr @.str.29, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 404, i32 3}
!118 = !{ptr @acm_setup.__UNIQUE_ID_ddebug233, !117, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!119 = !{ptr @.str.30, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 412, i32 4}
!121 = !{ptr @acm_setup._entry, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @acm_setup._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.31, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 312, i32 3}
!125 = !{ptr @.str.32, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @acm_complete_set_line_coding.__UNIQUE_ID_ddebug228, !124, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!127 = !{ptr @.str.33, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 319, i32 3}
!129 = !{ptr @acm_complete_set_line_coding.__UNIQUE_ID_ddebug229, !128, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!130 = !{ptr @.str.34, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/gadget/function/f_acm.c", i32 471, i32 2}
!132 = !{ptr @.str.35, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @acm_disable.__UNIQUE_ID_ddebug237, !131, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{i64 2148224161, i64 2148224166, i64 2148224179, i64 2148224223, i64 2148224257, i64 2148224278}
!144 = !{i8 0, i8 2}
