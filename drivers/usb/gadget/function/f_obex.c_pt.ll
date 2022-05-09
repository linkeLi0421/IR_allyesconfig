; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/f_obex.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_obex.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_function_driver = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_union_desc = type { i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.usb_cdc_header_desc = type <{ i8, i8, i8, i16 }>
%struct.usb_cdc_obex_desc = type <{ i8, i8, i8, i16 }>
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.f_serial_opts = type { %struct.usb_function_instance, i8 }
%struct.f_obex = type { %struct.gserial, i8, i8, i8, i8 }
%struct.gserial = type { %struct.usb_function, ptr, ptr, ptr, %struct.usb_cdc_line_coding, ptr, ptr, ptr }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.usb_cdc_line_coding = type <{ i32, i8, i8, i8 }>
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }

@__UNIQUE_ID_alias236 = internal constant [30 x i8] c"usb_f_obex.alias=usbfunc:obex\00", section ".modinfo", align 1
@obexusb_func = internal global { %struct.usb_function_driver, [40 x i8] } { %struct.usb_function_driver { ptr @.str, ptr null, %struct.list_head zeroinitializer, ptr @obex_alloc_inst, ptr @obex_alloc }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_usb_f_obex__237_489_obexmod_init6 = internal global ptr @obexmod_init, section ".initcall6.init", align 4
@__exitcall_obexmod_exit = internal global ptr @obexmod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author238 = internal constant [31 x i8] c"usb_f_obex.author=Felipe Balbi\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [55 x i8] c"usb_f_obex.file=drivers/usb/gadget/function/usb_f_obex\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [23 x i8] c"usb_f_obex.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"obex\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@obex_func_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @obex_item_ops, ptr null, ptr @acm_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@obex_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @obex_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@acm_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @f_obex_attr_port_num, ptr null], [24 x i8] zeroinitializer }, align 32
@f_obex_attr_port_num = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.2, ptr null, i16 292, ptr @f_obex_port_num_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"port_num\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@obex_connect.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 67, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usb_f_obex\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"obex_connect\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/usb/gadget/function/f_obex.c\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"obex ttyGS%d function activate --> %d\0A\00", [57 x i8] zeroinitializer }, align 32
@obex_disconnect.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.9, i8 0, i8 70, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"obex_disconnect\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"obex ttyGS%d function deactivate --> %d\0A\00", [55 x i8] zeroinitializer }, align 32
@obex_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @obex_string_table, ptr null], [24 x i8] zeroinitializer }, align 32
@obex_control_intf = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 2, i8 11, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@obex_data_nop_intf = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 1, i8 0, i8 0, i8 10, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@obex_data_intf = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 2, i8 1, i8 2, i8 10, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@obex_cdc_union_desc = internal global { %struct.usb_cdc_union_desc, [27 x i8] } { %struct.usb_cdc_union_desc { i8 5, i8 36, i8 6, i8 1, i8 2 }, [27 x i8] zeroinitializer }, align 32
@obex_fs_ep_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@obex_fs_ep_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@obex_hs_ep_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@obex_hs_ep_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@fs_function = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @obex_control_intf, ptr @obex_cdc_header_desc, ptr @obex_desc, ptr @obex_cdc_union_desc, ptr @obex_data_nop_intf, ptr @obex_data_intf, ptr @obex_fs_ep_in_desc, ptr @obex_fs_ep_out_desc, ptr null], [60 x i8] zeroinitializer }, align 32
@hs_function = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @obex_control_intf, ptr @obex_cdc_header_desc, ptr @obex_desc, ptr @obex_cdc_union_desc, ptr @obex_data_nop_intf, ptr @obex_data_intf, ptr @obex_hs_ep_in_desc, ptr @obex_hs_ep_out_desc, ptr null], [60 x i8] zeroinitializer }, align 32
@obex_bind.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.10, ptr @.str.6, ptr @.str.11, i8 0, i8 92, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"obex_bind\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"obex ttyGS%d: %s speed IN/%s OUT/%s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dual\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@obex_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.6, i32 376, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s/%p: can't bind, err %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@obex_bind._entry_ptr = internal global ptr @obex_bind._entry, section ".printk_index", align 4
@obex_string_table = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @obex_string_defs }, [24 x i8] zeroinitializer }, align 32
@obex_string_defs = internal global { [3 x %struct.usb_string], [40 x i8] } { [3 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.17 }, %struct.usb_string { i8 0, ptr @.str.18 }, %struct.usb_string zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CDC Object Exchange (OBEX)\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CDC OBEX Data\00", [18 x i8] zeroinitializer }, align 32
@obex_cdc_header_desc = internal global { %struct.usb_cdc_header_desc, [27 x i8] } { %struct.usb_cdc_header_desc <{ i8 5, i8 36, i8 0, i16 8193 }>, [27 x i8] zeroinitializer }, align 32
@obex_desc = internal global { %struct.usb_cdc_obex_desc, [27 x i8] } { %struct.usb_cdc_obex_desc <{ i8 5, i8 36, i8 21, i16 1 }>, [27 x i8] zeroinitializer }, align 32
@obex_set_alt.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.19, ptr @.str.6, ptr @.str.20, i8 0, i8 49, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"obex_set_alt\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reset obex ttyGS%d control\0A\00", [36 x i8] zeroinitializer }, align 32
@obex_set_alt.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.19, ptr @.str.6, ptr @.str.21, i8 0, i8 51, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reset obex ttyGS%d\0A\00", [44 x i8] zeroinitializer }, align 32
@obex_set_alt.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.19, ptr @.str.6, ptr @.str.22, i8 0, i8 53, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"init obex ttyGS%d\0A\00", [45 x i8] zeroinitializer }, align 32
@obex_set_alt.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.19, ptr @.str.6, ptr @.str.23, i8 0, i8 56, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"activate obex ttyGS%d\0A\00", [41 x i8] zeroinitializer }, align 32
@obex_disable.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.24, ptr @.str.6, ptr @.str.25, i8 0, i8 63, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"obex_disable\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"obex ttyGS%d disable\0A\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"obexusb_func\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 489, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 440, i32 54 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"obex_func_type\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 410, i32 38 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"obex_item_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 394, i32 40 }
@___asan_gen_.41 = private unnamed_addr constant [10 x i8] c"acm_attrs\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 405, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"f_obex_attr_port_num\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 403, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 400, i32 23 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 267, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 280, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [13 x i8] c"obex_strings\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 63, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"obex_control_intf\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 70, i32 40 }
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"obex_data_nop_intf\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 81, i32 40 }
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"obex_data_intf\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 91, i32 40 }
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"obex_cdc_union_desc\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 108, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant [19 x i8] c"obex_fs_ep_in_desc\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 158, i32 39 }
@___asan_gen_.89 = private unnamed_addr constant [20 x i8] c"obex_fs_ep_out_desc\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 166, i32 39 }
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c"obex_hs_ep_in_desc\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 134, i32 39 }
@___asan_gen_.95 = private unnamed_addr constant [20 x i8] c"obex_hs_ep_out_desc\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 125, i32 39 }
@___asan_gen_.98 = private unnamed_addr constant [12 x i8] c"fs_function\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 174, i32 38 }
@___asan_gen_.101 = private unnamed_addr constant [12 x i8] c"hs_function\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 143, i32 38 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 368, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 376, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [18 x i8] c"obex_string_table\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 58, i32 34 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"obex_string_defs\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 52, i32 26 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 53, i32 22 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 54, i32 22 }
@___asan_gen_.140 = private unnamed_addr constant [21 x i8] c"obex_cdc_header_desc\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 101, i32 35 }
@___asan_gen_.143 = private unnamed_addr constant [10 x i8] c"obex_desc\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 116, i32 33 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 198, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 206, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 212, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 225, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.165 = private constant [40 x i8] c"../drivers/usb/gadget/function/f_obex.c\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 253, i32 2 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_obexmod_exit, ptr @__initcall__kmod_usb_f_obex__237_489_obexmod_init6, ptr @obex_bind._entry, ptr @obex_bind._entry_ptr, ptr @obexmod_exit, ptr @obexusb_func, ptr @.str, ptr @.str.1, ptr @obex_func_type, ptr @obex_item_ops, ptr @acm_attrs, ptr @f_obex_attr_port_num, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @obex_strings, ptr @obex_control_intf, ptr @obex_data_nop_intf, ptr @obex_data_intf, ptr @obex_cdc_union_desc, ptr @obex_fs_ep_in_desc, ptr @obex_fs_ep_out_desc, ptr @obex_hs_ep_in_desc, ptr @obex_hs_ep_out_desc, ptr @fs_function, ptr @hs_function, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @obex_string_table, ptr @obex_string_defs, ptr @.str.17, ptr @.str.18, ptr @obex_cdc_header_desc, ptr @obex_desc, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @obexusb_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @obex_func_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @obex_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acm_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_obex_attr_port_num to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @obex_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @obex_control_intf to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @obex_data_nop_intf to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @obex_data_intf to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @obex_cdc_union_desc to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @obex_fs_ep_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @obex_fs_ep_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @obex_hs_ep_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @obex_hs_ep_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_function to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_function to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @obex_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @obex_string_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @obex_string_defs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @obex_cdc_header_desc to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @obex_desc to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @obexmod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_function_unregister(ptr noundef nonnull @obexusb_func) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @obexmod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_function_register(ptr noundef nonnull @obexusb_func) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @obex_alloc_inst() #2 align 64 {
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
  store ptr @obex_free_inst, ptr %free_func_inst, align 8
  %port_num = getelementptr inbounds %struct.f_serial_opts, ptr %call7.i.i, i32 0, i32 1
  %call2 = tail call i32 @gserial_alloc_line_no_console(ptr noundef %port_num) #8
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
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @obex_func_type) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.then4 ], [ %call7.i.i, %if.end6 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @obex_alloc(ptr nocapture noundef readonly %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 144) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %port_num = getelementptr inbounds %struct.f_serial_opts, ptr %fi, i32 0, i32 1
  %1 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %port_num, align 4
  %port_num2 = getelementptr inbounds %struct.f_obex, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %port_num2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %port_num2, align 1
  %connect = getelementptr inbounds %struct.gserial, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %connect to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @obex_connect, ptr %connect, align 8
  %disconnect = getelementptr inbounds %struct.gserial, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %disconnect to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @obex_disconnect, ptr %disconnect, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str, ptr %call7.i.i, align 8
  %bind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @obex_bind, ptr %bind, align 4
  %unbind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @obex_unbind, ptr %unbind, align 8
  %set_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 13
  %9 = ptrtoint ptr %set_alt to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @obex_set_alt, ptr %set_alt, align 4
  %get_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 14
  %10 = ptrtoint ptr %get_alt to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @obex_get_alt, ptr %get_alt, align 8
  %disable = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 15
  %11 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @obex_disable, ptr %disable, align 4
  %free_func = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 11
  %12 = ptrtoint ptr %free_func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @obex_free, ptr %free_func, align 4
  %bind_deactivated = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 25
  %13 = ptrtoint ptr %bind_deactivated to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %bind_deactivated, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %bind_deactivated, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @obex_free_inst(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port_num = getelementptr inbounds %struct.f_serial_opts, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_num, align 4
  tail call void @gserial_free_line(i8 noundef zeroext %1) #8
  tail call void @kfree(ptr noundef %f) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gserial_alloc_line_no_console(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gserial_free_line(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @obex_attr_release(ptr noundef %item) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_put_function_instance(ptr noundef %item) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_obex_port_num_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port_num = getelementptr inbounds %struct.f_serial_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_num, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.3, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @obex_connect(ptr noundef %g) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %g, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  %call3 = tail call i32 @usb_function_activate(ptr noundef %g) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @obex_connect.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@obex_connect, %if.end10)) #8
          to label %if.then9 [label %if.end10], !srcloc !106

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  %port_num = getelementptr inbounds %struct.f_obex, ptr %g, i32 0, i32 4
  %6 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_num, align 1
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @obex_connect.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %call3) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %do.body, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @obex_disconnect(ptr noundef %g) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %g, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  %call3 = tail call i32 @usb_function_deactivate(ptr noundef %g) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.body

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @obex_disconnect.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@obex_disconnect, %if.end10)) #8
          to label %if.then9 [label %if.end10], !srcloc !106

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  %port_num = getelementptr inbounds %struct.f_obex, ptr %g, i32 0, i32 4
  %6 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_num, align 1
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @obex_disconnect.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %conv, i32 noundef %call3) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %do.body, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @obex_bind(ptr noundef %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %quirk_altset_not_supp.i.i = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %quirk_altset_not_supp.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i.i = load i32, ptr %quirk_altset_not_supp.i.i, align 4
  %5 = and i32 %bf.load.i.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @usb_gstrings_attach(ptr noundef %1, ptr noundef nonnull @obex_strings, i32 noundef 3) #8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call3, align 4
  store i8 %8, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @obex_control_intf, i32 0, i32 8), align 1
  %arrayidx8 = getelementptr %struct.usb_string, ptr %call3, i32 1
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx8, align 4
  store i8 %10, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @obex_data_nop_intf, i32 0, i32 8), align 1
  %11 = load i8, ptr %arrayidx8, align 4
  store i8 %11, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @obex_data_intf, i32 0, i32 8), align 1
  %call12 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end7.do.end59_crit_edge, label %if.end14

if.end7.do.end59_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

if.end14:                                         ; preds = %if.end7
  %conv = trunc i32 %call12 to i8
  %ctrl_id = getelementptr inbounds %struct.f_obex, ptr %f, i32 0, i32 1
  %12 = ptrtoint ptr %ctrl_id to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %ctrl_id, align 4
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @obex_control_intf, i32 0, i32 2), align 1
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @obex_cdc_union_desc, i32 0, i32 3), align 1
  %call17 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end14.do.end59_crit_edge, label %if.end21

if.end14.do.end59_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

if.end21:                                         ; preds = %if.end14
  %conv22 = trunc i32 %call17 to i8
  %data_id = getelementptr inbounds %struct.f_obex, ptr %f, i32 0, i32 2
  %13 = ptrtoint ptr %data_id to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv22, ptr %data_id, align 1
  store i8 %conv22, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @obex_data_nop_intf, i32 0, i32 2), align 1
  store i8 %conv22, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @obex_data_intf, i32 0, i32 2), align 1
  store i8 %conv22, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @obex_cdc_union_desc, i32 0, i32 4), align 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call26 = tail call ptr @usb_ep_autoconfig(ptr noundef %15, ptr noundef nonnull @obex_fs_ep_in_desc) #8
  %tobool.not = icmp eq ptr %call26, null
  br i1 %tobool.not, label %if.end21.do.end59_crit_edge, label %if.end28

if.end21.do.end59_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

if.end28:                                         ; preds = %if.end21
  %in = getelementptr inbounds %struct.gserial, ptr %f, i32 0, i32 2
  %16 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call26, ptr %in, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call30 = tail call ptr @usb_ep_autoconfig(ptr noundef %18, ptr noundef nonnull @obex_fs_ep_out_desc) #8
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end28.do.end59_crit_edge, label %if.end33

if.end28.do.end59_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

if.end33:                                         ; preds = %if.end28
  %out = getelementptr inbounds %struct.gserial, ptr %f, i32 0, i32 3
  %19 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call30, ptr %out, align 4
  %20 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @obex_fs_ep_in_desc, i32 0, i32 2), align 1
  store i8 %20, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @obex_hs_ep_in_desc, i32 0, i32 2), align 1
  %21 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @obex_fs_ep_out_desc, i32 0, i32 2), align 1
  store i8 %21, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @obex_hs_ep_out_desc, i32 0, i32 2), align 1
  %call35 = tail call i32 @usb_assign_descriptors(ptr noundef %f, ptr noundef nonnull @fs_function, ptr noundef nonnull @hs_function, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %do.body, label %if.end33.do.end59_crit_edge

if.end33.do.end59_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

do.body:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @obex_bind.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@obex_bind, %cleanup)) #8
          to label %if.then44 [label %cleanup], !srcloc !106

if.then44:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %23, i32 0, i32 11
  %port_num = getelementptr inbounds %struct.f_obex, ptr %f, i32 0, i32 4
  %24 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %port_num, align 1
  %conv46 = zext i8 %25 to i32
  %26 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cdev1, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %max_speed.i = getelementptr inbounds %struct.usb_gadget, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp.i104 = icmp ult i32 %31, 3
  %cond = select i1 %cmp.i104, ptr @.str.13, ptr @.str.12
  %32 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %in, align 4
  %name = getelementptr inbounds %struct.usb_ep, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 4
  %36 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %out, align 4
  %name55 = getelementptr inbounds %struct.usb_ep, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %name55 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name55, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @obex_bind.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv46, ptr noundef nonnull %cond, ptr noundef %35, ptr noundef %39) #8
  br label %cleanup

do.end59:                                         ; preds = %if.end33.do.end59_crit_edge, %if.end28.do.end59_crit_edge, %if.end21.do.end59_crit_edge, %if.end14.do.end59_crit_edge, %if.end7.do.end59_crit_edge
  %status.0 = phi i32 [ %call12, %if.end7.do.end59_crit_edge ], [ %call17, %if.end14.do.end59_crit_edge ], [ %call35, %if.end33.do.end59_crit_edge ], [ -19, %if.end28.do.end59_crit_edge ], [ -19, %if.end21.do.end59_crit_edge ]
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %dev61 = getelementptr inbounds %struct.usb_gadget, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61, ptr noundef nonnull @.str.14, ptr noundef %43, ptr noundef %f, i32 noundef %status.0) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.then44, %do.body, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then5 ], [ %status.0, %do.end59 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then44 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @obex_unbind(ptr nocapture noundef readnone %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_free_all_descriptors(ptr noundef %f) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @obex_set_alt(ptr noundef %f, i32 noundef %intf, i32 noundef %alt) #2 align 64 {
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
  %ctrl_id = getelementptr inbounds %struct.f_obex, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl_id, align 4
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %intf)
  %cmp = icmp eq i32 %conv, %intf
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alt)
  %cmp3.not = icmp eq i32 %alt, 0
  br i1 %cmp3.not, label %do.body, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @obex_set_alt.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@obex_set_alt, %if.end127)) #8
          to label %if.then10 [label %if.end127], !srcloc !106

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 11
  %port_num = getelementptr inbounds %struct.f_obex, ptr %f, i32 0, i32 4
  %8 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_num, align 1
  %conv11 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @obex_set_alt.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %conv11) #8
  br label %if.end127

if.else:                                          ; preds = %entry
  %data_id = getelementptr inbounds %struct.f_obex, ptr %f, i32 0, i32 2
  %10 = ptrtoint ptr %data_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data_id, align 1
  %conv13 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %intf)
  %cmp14 = icmp ne i32 %conv13, %intf
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %alt)
  %cmp17 = icmp ugt i32 %alt, 1
  %or.cond = or i1 %cmp17, %cmp14
  br i1 %or.cond, label %if.else.cleanup_crit_edge, label %if.end20

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.else
  %in = getelementptr inbounds %struct.gserial, ptr %f, i32 0, i32 2
  %12 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %in, align 4
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enabled, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool21.not = icmp eq i8 %15, 0
  br i1 %tobool21.not, label %if.end20.if.end46_crit_edge, label %do.body23

if.end20.if.end46_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

do.body23:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @obex_set_alt.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@obex_set_alt, %do.end44)) #8
          to label %if.then37 [label %do.end44], !srcloc !106

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %dev39 = getelementptr inbounds %struct.usb_gadget, ptr %17, i32 0, i32 11
  %port_num40 = getelementptr inbounds %struct.f_obex, ptr %f, i32 0, i32 4
  %18 = ptrtoint ptr %port_num40 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port_num40, align 1
  %conv41 = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @obex_set_alt.__UNIQUE_ID_ddebug229, ptr noundef %dev39, ptr noundef nonnull @.str.21, i32 noundef %conv41) #8
  br label %do.end44

do.end44:                                         ; preds = %if.then37, %do.body23
  tail call void @gserial_disconnect(ptr noundef %f) #8
  br label %if.end46

if.end46:                                         ; preds = %do.end44, %if.end20.if.end46_crit_edge
  %20 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %in, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc, align 4
  %tobool49.not = icmp eq ptr %23, null
  br i1 %tobool49.not, label %if.end46.do.body54_crit_edge, label %lor.lhs.false

if.end46.do.body54_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

lor.lhs.false:                                    ; preds = %if.end46
  %out = getelementptr inbounds %struct.gserial, ptr %f, i32 0, i32 3
  %24 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %out, align 4
  %desc51 = getelementptr inbounds %struct.usb_ep, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %desc51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc51, align 4
  %tobool52.not = icmp eq ptr %27, null
  br i1 %tobool52.not, label %lor.lhs.false.do.body54_crit_edge, label %lor.lhs.false.if.end95_crit_edge

lor.lhs.false.if.end95_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

lor.lhs.false.do.body54_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

do.body54:                                        ; preds = %lor.lhs.false.do.body54_crit_edge, %if.end46.do.body54_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @obex_set_alt.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@obex_set_alt, %do.end75)) #8
          to label %if.then68 [label %do.end75], !srcloc !106

if.then68:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %dev70 = getelementptr inbounds %struct.usb_gadget, ptr %29, i32 0, i32 11
  %port_num71 = getelementptr inbounds %struct.f_obex, ptr %f, i32 0, i32 4
  %30 = ptrtoint ptr %port_num71 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port_num71, align 1
  %conv72 = zext i8 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @obex_set_alt.__UNIQUE_ID_ddebug230, ptr noundef %dev70, ptr noundef nonnull @.str.22, i32 noundef %conv72) #8
  br label %do.end75

do.end75:                                         ; preds = %if.then68, %do.body54
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %34 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %in, align 4
  %call79 = tail call i32 @config_ep_by_speed(ptr noundef %33, ptr noundef %f, ptr noundef %35) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %lor.lhs.false81, label %do.end75.if.then87_crit_edge

do.end75.if.then87_crit_edge:                     ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then87

lor.lhs.false81:                                  ; preds = %do.end75
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  %out84 = getelementptr inbounds %struct.gserial, ptr %f, i32 0, i32 3
  %38 = ptrtoint ptr %out84 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %out84, align 4
  %call85 = tail call i32 @config_ep_by_speed(ptr noundef %37, ptr noundef %f, ptr noundef %39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %lor.lhs.false81.if.end95_crit_edge, label %lor.lhs.false81.if.then87_crit_edge

lor.lhs.false81.if.then87_crit_edge:              ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then87

lor.lhs.false81.if.end95_crit_edge:               ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then87:                                        ; preds = %lor.lhs.false81.if.then87_crit_edge, %do.end75.if.then87_crit_edge
  %out89 = getelementptr inbounds %struct.gserial, ptr %f, i32 0, i32 3
  %40 = ptrtoint ptr %out89 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %out89, align 4
  %desc90 = getelementptr inbounds %struct.usb_ep, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %desc90 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %desc90, align 4
  %43 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %in, align 4
  %desc93 = getelementptr inbounds %struct.usb_ep, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %desc93 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %desc93, align 4
  br label %cleanup

if.end95:                                         ; preds = %lor.lhs.false81.if.end95_crit_edge, %lor.lhs.false.if.end95_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %alt)
  %cmp96 = icmp eq i32 %alt, 1
  br i1 %cmp96, label %do.body99, label %if.end95.if.end127_crit_edge

if.end95.if.end127_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

do.body99:                                        ; preds = %if.end95
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @obex_set_alt.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@obex_set_alt, %do.end120)) #8
          to label %if.then113 [label %do.end120], !srcloc !106

if.then113:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  %dev115 = getelementptr inbounds %struct.usb_gadget, ptr %47, i32 0, i32 11
  %port_num116 = getelementptr inbounds %struct.f_obex, ptr %f, i32 0, i32 4
  %48 = ptrtoint ptr %port_num116 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %port_num116, align 1
  %conv117 = zext i8 %49 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @obex_set_alt.__UNIQUE_ID_ddebug231, ptr noundef %dev115, ptr noundef nonnull @.str.23, i32 noundef %conv117) #8
  br label %do.end120

do.end120:                                        ; preds = %if.then113, %do.body99
  %port_num122 = getelementptr inbounds %struct.f_obex, ptr %f, i32 0, i32 4
  %50 = ptrtoint ptr %port_num122 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %port_num122, align 1
  %call123 = tail call i32 @gserial_connect(ptr noundef %f, i8 noundef zeroext %51) #8
  br label %if.end127

if.end127:                                        ; preds = %do.end120, %if.end95.if.end127_crit_edge, %if.then10, %do.body
  %conv128 = trunc i32 %alt to i8
  %cur_alt = getelementptr inbounds %struct.f_obex, ptr %f, i32 0, i32 3
  %52 = ptrtoint ptr %cur_alt to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv128, ptr %cur_alt, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end127, %if.then87, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end127 ], [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.then87 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @obex_get_alt(ptr nocapture noundef readonly %f, i32 noundef %intf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_alt = getelementptr inbounds %struct.f_obex, ptr %f, i32 0, i32 3
  %0 = ptrtoint ptr %cur_alt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur_alt, align 2
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @obex_disable(ptr noundef %f) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @obex_disable.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@obex_disable, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !106

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  %port_num = getelementptr inbounds %struct.f_obex, ptr %f, i32 0, i32 4
  %6 = ptrtoint ptr %port_num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_num, align 1
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @obex_disable.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @gserial_disconnect(ptr noundef %f) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @obex_free(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %f) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_activate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_deactivate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gserial_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gserial_connect(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !10, !11, !13, !15, !17, !19, !21, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__UNIQUE_ID_alias236, !1, !"__UNIQUE_ID_alias236", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 489, i32 1}
!2 = !{ptr @__initcall__kmod_usb_f_obex__237_489_obexmod_init6, !1, !"__initcall__kmod_usb_f_obex__237_489_obexmod_init6", i1 false, i1 false}
!3 = !{ptr @__exitcall_obexmod_exit, !1, !"__exitcall_obexmod_exit", i1 false, i1 false}
!4 = !{ptr @__UNIQUE_ID_author238, !5, !"__UNIQUE_ID_author238", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 490, i32 1}
!6 = !{ptr @__UNIQUE_ID_file239, !7, !"__UNIQUE_ID_file239", i1 false, i1 false}
!7 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 491, i32 1}
!8 = !{ptr @__UNIQUE_ID_license240, !7, !"__UNIQUE_ID_license240", i1 false, i1 false}
!9 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @obexusb_func, !1, !"obexusb_func", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 440, i32 54}
!13 = !{ptr @obex_func_type, !14, !"obex_func_type", i1 false, i1 false}
!14 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 410, i32 38}
!15 = !{ptr @obex_item_ops, !16, !"obex_item_ops", i1 false, i1 false}
!16 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 394, i32 40}
!17 = !{ptr @acm_attrs, !18, !"acm_attrs", i1 false, i1 false}
!18 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 405, i32 35}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 403, i32 1}
!21 = !{ptr @f_obex_attr_port_num, !20, !"f_obex_attr_port_num", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 400, i32 23}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 267, i32 3}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @obex_connect.__UNIQUE_ID_ddebug233, !25, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 280, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @obex_disconnect.__UNIQUE_ID_ddebug234, !31, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 368, i32 2}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @obex_bind.__UNIQUE_ID_ddebug235, !35, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!38 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 376, i32 2}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @obex_bind._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @obex_bind._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @obex_strings, !47, !"obex_strings", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 63, i32 35}
!48 = !{ptr @obex_string_table, !49, !"obex_string_table", i1 false, i1 false}
!49 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 58, i32 34}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 53, i32 22}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 54, i32 22}
!54 = !{ptr @obex_string_defs, !55, !"obex_string_defs", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 52, i32 26}
!56 = !{ptr @obex_control_intf, !57, !"obex_control_intf", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 70, i32 40}
!58 = !{ptr @obex_data_nop_intf, !59, !"obex_data_nop_intf", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 81, i32 40}
!60 = !{ptr @obex_data_intf, !61, !"obex_data_intf", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 91, i32 40}
!62 = !{ptr @obex_cdc_union_desc, !63, !"obex_cdc_union_desc", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 108, i32 34}
!64 = !{ptr @obex_fs_ep_in_desc, !65, !"obex_fs_ep_in_desc", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 158, i32 39}
!66 = !{ptr @obex_fs_ep_out_desc, !67, !"obex_fs_ep_out_desc", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 166, i32 39}
!68 = !{ptr @obex_hs_ep_in_desc, !69, !"obex_hs_ep_in_desc", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 134, i32 39}
!70 = !{ptr @obex_hs_ep_out_desc, !71, !"obex_hs_ep_out_desc", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 125, i32 39}
!72 = !{ptr @fs_function, !73, !"fs_function", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 174, i32 38}
!74 = !{ptr @obex_cdc_header_desc, !75, !"obex_cdc_header_desc", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 101, i32 35}
!76 = !{ptr @obex_desc, !77, !"obex_desc", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 116, i32 33}
!78 = !{ptr @hs_function, !79, !"hs_function", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 143, i32 38}
!80 = !{ptr @.str.19, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 198, i32 3}
!82 = !{ptr @.str.20, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @obex_set_alt.__UNIQUE_ID_ddebug228, !81, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!84 = !{ptr @.str.21, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 206, i32 4}
!86 = !{ptr @obex_set_alt.__UNIQUE_ID_ddebug229, !85, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!87 = !{ptr @.str.22, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 212, i32 4}
!89 = !{ptr @obex_set_alt.__UNIQUE_ID_ddebug230, !88, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!90 = !{ptr @.str.23, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 225, i32 4}
!92 = !{ptr @obex_set_alt.__UNIQUE_ID_ddebug231, !91, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!93 = !{ptr @.str.24, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/gadget/function/f_obex.c", i32 253, i32 2}
!95 = !{ptr @.str.25, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @obex_disable.__UNIQUE_ID_ddebug232, !94, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 2148211944, i64 2148211949, i64 2148211962, i64 2148212006, i64 2148212040, i64 2148212061}
!107 = !{i8 0, i8 2}
