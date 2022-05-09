; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/f_ecm.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_ecm.c"
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
%struct.usb_string = type { i8, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_ether_desc = type <{ i8, i8, i8, i8, i32, i16, i16, i8 }>
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_union_desc = type { i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_cdc_header_desc = type <{ i8, i8, i8, i16 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.f_ecm_opts = type { %struct.usb_function_instance, ptr, i8, %struct.mutex, i32 }
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
%struct.f_ecm = type { %struct.gether, i8, i8, [14 x i8], ptr, ptr, i8, %struct.atomic_t, i8 }
%struct.gether = type { %struct.usb_function, ptr, ptr, ptr, i8, i16, i32, i8, i32, i32, i8, ptr, ptr, ptr, ptr }
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
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_cdc_notification = type { i8, i8, i16, i16, i16 }

@__UNIQUE_ID_alias356 = internal constant [28 x i8] c"usb_f_ecm.alias=usbfunc:ecm\00", section ".modinfo", align 1
@ecmusb_func = internal global { %struct.usb_function_driver, [40 x i8] } { %struct.usb_function_driver { ptr @.str, ptr null, %struct.list_head zeroinitializer, ptr @ecm_alloc_inst, ptr @ecm_alloc }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_usb_f_ecm__357_963_ecmmod_init6 = internal global ptr @ecmmod_init, section ".initcall6.init", align 4
@__exitcall_ecmmod_exit = internal global ptr @ecmmod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file358 = internal constant [53 x i8] c"usb_f_ecm.file=drivers/usb/gadget/function/usb_f_ecm\00", section ".modinfo", align 1
@__UNIQUE_ID_license359 = internal constant [22 x i8] c"usb_f_ecm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author360 = internal constant [32 x i8] c"usb_f_ecm.author=David Brownell\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ecm\00", [28 x i8] zeroinitializer }, align 32
@ecm_alloc_inst.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&opts->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ecm_func_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @ecm_item_ops, ptr null, ptr @ecm_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@ecm_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @ecm_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@ecm_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @ecm_opts_attr_dev_addr, ptr @ecm_opts_attr_host_addr, ptr @ecm_opts_attr_qmult, ptr @ecm_opts_attr_ifname, ptr null], [44 x i8] zeroinitializer }, align 32
@ecm_opts_attr_dev_addr = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.4, ptr null, i16 420, ptr @ecm_opts_dev_addr_show, ptr @ecm_opts_dev_addr_store }, [44 x i8] zeroinitializer }, align 32
@ecm_opts_attr_host_addr = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.5, ptr null, i16 420, ptr @ecm_opts_host_addr_show, ptr @ecm_opts_host_addr_store }, [44 x i8] zeroinitializer }, align 32
@ecm_opts_attr_qmult = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.6, ptr null, i16 420, ptr @ecm_opts_qmult_show, ptr @ecm_opts_qmult_store }, [44 x i8] zeroinitializer }, align 32
@ecm_opts_attr_ifname = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.8, ptr null, i16 420, ptr @ecm_opts_ifname_show, ptr @ecm_opts_ifname_store }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"host_addr\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qmult\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ifname\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cdc_ethernet\00", [19 x i8] zeroinitializer }, align 32
@ecm_string_defs = internal global { [5 x %struct.usb_string], [56 x i8] } { [5 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.20 }, %struct.usb_string { i8 0, ptr @.str.2 }, %struct.usb_string { i8 0, ptr @.str.21 }, %struct.usb_string { i8 0, ptr @.str.22 }, %struct.usb_string zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ecm_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ecm_string_table, ptr null], [24 x i8] zeroinitializer }, align 32
@ecm_control_intf = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 1, i8 2, i8 6, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@ecm_data_intf = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 1, i8 1, i8 2, i8 10, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@ecm_desc = internal global { %struct.usb_cdc_ether_desc, [19 x i8] } { %struct.usb_cdc_ether_desc <{ i8 13, i8 36, i8 15, i8 0, i32 0, i16 -5627, i16 0, i8 0 }>, [19 x i8] zeroinitializer }, align 32
@ecm_iad_descriptor = internal global { %struct.usb_interface_assoc_descriptor, [24 x i8] } { %struct.usb_interface_assoc_descriptor { i8 8, i8 11, i8 0, i8 2, i8 2, i8 6, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@ecm_union_desc = internal global { %struct.usb_cdc_union_desc, [27 x i8] } { %struct.usb_cdc_union_desc { i8 5, i8 36, i8 6, i8 0, i8 0 }, [27 x i8] zeroinitializer }, align 32
@ecm_data_nop_intf = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 1, i8 0, i8 0, i8 10, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@fs_ecm_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@fs_ecm_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@fs_ecm_notify_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 4096, i8 32, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hs_ecm_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hs_ecm_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hs_ecm_notify_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 4096, i8 9, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_ecm_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_ecm_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_ecm_notify_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 4096, i8 9, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ecm_fs_function = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @ecm_iad_descriptor, ptr @ecm_control_intf, ptr @ecm_header_desc, ptr @ecm_union_desc, ptr @ecm_desc, ptr @fs_ecm_notify_desc, ptr @ecm_data_nop_intf, ptr @ecm_data_intf, ptr @fs_ecm_in_desc, ptr @fs_ecm_out_desc, ptr null], [52 x i8] zeroinitializer }, align 32
@ecm_hs_function = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @ecm_iad_descriptor, ptr @ecm_control_intf, ptr @ecm_header_desc, ptr @ecm_union_desc, ptr @ecm_desc, ptr @hs_ecm_notify_desc, ptr @ecm_data_nop_intf, ptr @ecm_data_intf, ptr @hs_ecm_in_desc, ptr @hs_ecm_out_desc, ptr null], [52 x i8] zeroinitializer }, align 32
@ecm_ss_function = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @ecm_iad_descriptor, ptr @ecm_control_intf, ptr @ecm_header_desc, ptr @ecm_union_desc, ptr @ecm_desc, ptr @ss_ecm_notify_desc, ptr @ss_ecm_intr_comp_desc, ptr @ecm_data_nop_intf, ptr @ecm_data_intf, ptr @ss_ecm_in_desc, ptr @ss_ecm_bulk_comp_desc, ptr @ss_ecm_out_desc, ptr @ss_ecm_bulk_comp_desc, ptr null], [40 x i8] zeroinitializer }, align 32
@ecm_bind.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, i8 0, i8 -54, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb_f_ecm\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ecm_bind\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/usb/gadget/function/f_ecm.c\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"CDC Ethernet: %s speed IN/%s OUT/%s NOTIFY/%s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"super\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dual\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@ecm_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.12, i32 819, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: can't bind, err %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ecm_bind._entry_ptr = internal global ptr @ecm_bind._entry, section ".printk_index", align 4
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CDC Ethernet Control Model (ECM)\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CDC Ethernet Data\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CDC ECM\00", [24 x i8] zeroinitializer }, align 32
@ecm_string_table = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @ecm_string_defs }, [24 x i8] zeroinitializer }, align 32
@ecm_notify_complete.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.23, ptr @.str.12, ptr @.str.24, i8 0, i8 115, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ecm_notify_complete\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"event %02x --> %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ecm_do_notify.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.25, ptr @.str.12, ptr @.str.26, i8 0, i8 100, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ecm_do_notify\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"notify connect %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@ecm_do_notify.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.25, ptr @.str.12, ptr @.str.29, i8 0, i8 104, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"notify speed %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ecm_do_notify.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.25, ptr @.str.12, ptr @.str.30, i8 0, i8 107, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"notify --> %d\0A\00", [17 x i8] zeroinitializer }, align 32
@ecm_header_desc = internal global { %struct.usb_cdc_header_desc, [27 x i8] } { %struct.usb_cdc_header_desc <{ i8 5, i8 36, i8 0, i16 4097 }>, [27 x i8] zeroinitializer }, align 32
@ss_ecm_intr_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 4096 }, [26 x i8] zeroinitializer }, align 32
@ss_ecm_bulk_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@ecm_open.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.31, ptr @.str.12, ptr @.str.32, i8 0, i8 -91, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ecm_open\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@ecm_close.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.33, ptr @.str.12, ptr @.str.32, i8 0, i8 -88, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ecm_close\00", [22 x i8] zeroinitializer }, align 32
@ecm_unbind.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.34, ptr @.str.12, ptr @.str.35, i8 0, i8 -29, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ecm_unbind\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ecm unbind\0A\00", [20 x i8] zeroinitializer }, align 32
@ecm_set_alt.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.36, ptr @.str.12, ptr @.str.37, i8 0, i8 -121, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ecm_set_alt\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reset ecm control %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ecm_set_alt.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.36, ptr @.str.12, ptr @.str.38, i8 0, i8 -120, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"init ecm ctrl %d\0A\00", [46 x i8] zeroinitializer }, align 32
@ecm_set_alt.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.36, ptr @.str.12, ptr @.str.39, i8 0, i8 -117, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reset ecm\0A\00", [21 x i8] zeroinitializer }, align 32
@ecm_set_alt.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.36, ptr @.str.12, ptr @.str.40, i8 0, i8 -115, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init ecm\0A\00", [22 x i8] zeroinitializer }, align 32
@ecm_set_alt.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.36, ptr @.str.12, ptr @.str.41, i8 0, i8 -110, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"activate ecm\0A\00", [18 x i8] zeroinitializer }, align 32
@ecm_setup.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.42, ptr @.str.12, ptr @.str.43, i8 0, i8 122, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ecm_setup\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"packet filter %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@ecm_setup.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.42, ptr @.str.12, ptr @.str.44, i8 0, i8 127, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"invalid control req%02x.%02x v%04x i%04x l%d\0A\00", [50 x i8] zeroinitializer }, align 32
@ecm_setup.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.42, ptr @.str.12, ptr @.str.45, i8 0, i8 -127, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ecm req%02x.%02x v%04x i%04x l%d\0A\00", [62 x i8] zeroinitializer }, align 32
@ecm_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.42, ptr @.str.12, i32 525, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ecm req %02x.%02x response err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ecm_setup._entry_ptr = internal global ptr @ecm_setup._entry, section ".printk_index", align 4
@ecm_disable.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.47, ptr @.str.12, ptr @.str.48, i8 0, i8 -100, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ecm_disable\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ecm deactivated\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967188, i64 4294967192]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.50 = private unnamed_addr constant [12 x i8] c"ecmusb_func\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 963, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 878, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 887, i32 54 }
@___asan_gen_.65 = private unnamed_addr constant [14 x i8] c"ecm_func_type\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 853, i32 38 }
@___asan_gen_.69 = private unnamed_addr constant [41 x i8] c"../drivers/usb/gadget/function/u_ether.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 140, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant [13 x i8] c"ecm_item_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 831, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [10 x i8] c"ecm_attrs\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 845, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant [23 x i8] c"ecm_opts_attr_dev_addr\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [24 x i8] c"ecm_opts_attr_host_addr\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"ecm_opts_attr_qmult\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [21 x i8] c"ecm_opts_attr_ifname\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 834, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 837, i32 1 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 840, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 843, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 950, i32 24 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"ecm_string_defs\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 355, i32 26 }
@___asan_gen_.110 = private unnamed_addr constant [12 x i8] c"ecm_strings\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 368, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"ecm_control_intf\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 114, i32 40 }
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"ecm_data_intf\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 173, i32 40 }
@___asan_gen_.119 = private unnamed_addr constant [9 x i8] c"ecm_desc\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 143, i32 34 }
@___asan_gen_.122 = private unnamed_addr constant [19 x i8] c"ecm_iad_descriptor\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 101, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"ecm_union_desc\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 135, i32 34 }
@___asan_gen_.128 = private unnamed_addr constant [18 x i8] c"ecm_data_nop_intf\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 158, i32 40 }
@___asan_gen_.131 = private unnamed_addr constant [15 x i8] c"fs_ecm_in_desc\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 198, i32 39 }
@___asan_gen_.134 = private unnamed_addr constant [16 x i8] c"fs_ecm_out_desc\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 206, i32 39 }
@___asan_gen_.137 = private unnamed_addr constant [19 x i8] c"fs_ecm_notify_desc\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 188, i32 39 }
@___asan_gen_.140 = private unnamed_addr constant [15 x i8] c"hs_ecm_in_desc\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 245, i32 39 }
@___asan_gen_.143 = private unnamed_addr constant [16 x i8] c"hs_ecm_out_desc\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 254, i32 39 }
@___asan_gen_.146 = private unnamed_addr constant [19 x i8] c"hs_ecm_notify_desc\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 235, i32 39 }
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"ss_ecm_in_desc\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 304, i32 39 }
@___asan_gen_.152 = private unnamed_addr constant [16 x i8] c"ss_ecm_out_desc\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 313, i32 39 }
@___asan_gen_.155 = private unnamed_addr constant [19 x i8] c"ss_ecm_notify_desc\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 284, i32 39 }
@___asan_gen_.158 = private unnamed_addr constant [16 x i8] c"ecm_fs_function\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 214, i32 38 }
@___asan_gen_.161 = private unnamed_addr constant [16 x i8] c"ecm_hs_function\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 263, i32 38 }
@___asan_gen_.164 = private unnamed_addr constant [16 x i8] c"ecm_ss_function\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 331, i32 38 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 806, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 819, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 356, i32 10 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 358, i32 10 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 359, i32 10 }
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"ecm_string_table\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 363, i32 34 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 460, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 401, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 417, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 428, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant [16 x i8] c"ecm_header_desc\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 127, i32 35 }
@___asan_gen_.239 = private unnamed_addr constant [22 x i8] c"ss_ecm_intr_comp_desc\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 294, i32 41 }
@___asan_gen_.242 = private unnamed_addr constant [22 x i8] c"ss_ecm_bulk_comp_desc\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 322, i32 41 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 662, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 672, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 909, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 543, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 546, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 558, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 564, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 587, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 489, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 509, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 516, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 523, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.300 = private constant [39 x i8] c"../drivers/usb/gadget/function/f_ecm.c\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 625, i32 2 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_alias356, ptr @__UNIQUE_ID_author360, ptr @__UNIQUE_ID_file358, ptr @__UNIQUE_ID_license359, ptr @__exitcall_ecmmod_exit, ptr @__initcall__kmod_usb_f_ecm__357_963_ecmmod_init6, ptr @ecm_bind._entry, ptr @ecm_bind._entry_ptr, ptr @ecm_setup._entry, ptr @ecm_setup._entry_ptr, ptr @ecmmod_exit, ptr @ecmusb_func, ptr @.str, ptr @ecm_alloc_inst.__key, ptr @.str.1, ptr @.str.2, ptr @ecm_func_type, ptr @.str.3, ptr @ecm_item_ops, ptr @ecm_attrs, ptr @ecm_opts_attr_dev_addr, ptr @ecm_opts_attr_host_addr, ptr @ecm_opts_attr_qmult, ptr @ecm_opts_attr_ifname, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ecm_string_defs, ptr @ecm_strings, ptr @ecm_control_intf, ptr @ecm_data_intf, ptr @ecm_desc, ptr @ecm_iad_descriptor, ptr @ecm_union_desc, ptr @ecm_data_nop_intf, ptr @fs_ecm_in_desc, ptr @fs_ecm_out_desc, ptr @fs_ecm_notify_desc, ptr @hs_ecm_in_desc, ptr @hs_ecm_out_desc, ptr @hs_ecm_notify_desc, ptr @ss_ecm_in_desc, ptr @ss_ecm_out_desc, ptr @ss_ecm_notify_desc, ptr @ecm_fs_function, ptr @ecm_hs_function, ptr @ecm_ss_function, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @ecm_string_table, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @ecm_header_desc, ptr @ss_ecm_intr_comp_desc, ptr @ss_ecm_bulk_comp_desc, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecmusb_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_alloc_inst.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_func_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_opts_attr_dev_addr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_opts_attr_host_addr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_opts_attr_qmult to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_opts_attr_ifname to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_string_defs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_control_intf to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_data_intf to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_desc to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_iad_descriptor to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_union_desc to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_data_nop_intf to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_ecm_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_ecm_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_ecm_notify_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_ecm_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_ecm_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_ecm_notify_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_ecm_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_ecm_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_ecm_notify_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_fs_function to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_hs_function to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_ss_function to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_string_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_header_desc to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_ecm_intr_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_ecm_bulk_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ecmmod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_function_unregister(ptr noundef nonnull @ecmusb_func) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ecmmod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_function_register(ptr noundef nonnull @ecmusb_func) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ecm_alloc_inst() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 204) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.f_ecm_opts, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ecm_alloc_inst.__key) #10
  %free_func_inst = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %free_func_inst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ecm_free_inst, ptr %free_func_inst, align 8
  %call.i = tail call ptr @gether_setup_name_default(ptr noundef nonnull @.str.3) #10
  %net = getelementptr inbounds %struct.f_ecm_opts, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %net, align 4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end9:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @ecm_func_type) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.then5 ], [ %call7.i.i, %if.end9 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ecm_alloc(ptr noundef %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 196) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.f_ecm_opts, ptr %fi, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %refcnt = getelementptr inbounds %struct.f_ecm_opts, ptr %fi, i32 0, i32 4
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %refcnt, align 4
  %net = getelementptr inbounds %struct.f_ecm_opts, ptr %fi, i32 0, i32 1
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %ethaddr = getelementptr inbounds %struct.f_ecm, ptr %call7.i.i, i32 0, i32 3
  %call2 = tail call i32 @gether_get_host_addr_cdc(ptr noundef %4, ptr noundef %ethaddr, i32 noundef 14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call2)
  %cmp = icmp slt i32 %call2, 12
  br i1 %cmp, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 2304
  %ioport = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %ioport to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %ioport, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %cdc_filter = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %cdc_filter to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 15, ptr %cdc_filter, align 2
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.9, ptr %call7.i.i, align 8
  %bind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ecm_bind, ptr %bind, align 4
  %unbind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ecm_unbind, ptr %unbind, align 8
  %set_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 13
  %12 = ptrtoint ptr %set_alt to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ecm_set_alt, ptr %set_alt, align 4
  %get_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 14
  %13 = ptrtoint ptr %get_alt to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @ecm_get_alt, ptr %get_alt, align 8
  %setup = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 16
  %14 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ecm_setup, ptr %setup, align 8
  %disable = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 15
  %15 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ecm_disable, ptr %disable, align 4
  %free_func = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 11
  %16 = ptrtoint ptr %free_func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ecm_free, ptr %free_func, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then3 ], [ %call7.i.i, %if.end6 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ecm_free_inst(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bound = getelementptr inbounds %struct.f_ecm_opts, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %bound to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bound, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %net1 = getelementptr inbounds %struct.f_ecm_opts, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net1, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  tail call void @gether_cleanup(ptr noundef %add.ptr.i) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @free_netdev(ptr noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @kfree(ptr noundef %f) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gether_setup_name_default(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ecm_attr_release(ptr noundef %item) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_put_function_instance(ptr noundef %item) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecm_opts_dev_addr_show(ptr noundef %item, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ecm_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %net = getelementptr inbounds %struct.f_ecm_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_get_dev_addr(ptr noundef %1, ptr noundef %page, i32 noundef 4096) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecm_opts_dev_addr_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ecm_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %refcnt = getelementptr inbounds %struct.f_ecm_opts, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %net = getelementptr inbounds %struct.f_ecm_opts, ptr %item, i32 0, i32 1
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %call2 = tail call i32 @gether_set_dev_addr(ptr noundef %3, ptr noundef %page) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %tobool4.not, i32 %len, i32 %call2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_get_dev_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_dev_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecm_opts_host_addr_show(ptr noundef %item, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ecm_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %net = getelementptr inbounds %struct.f_ecm_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_get_host_addr(ptr noundef %1, ptr noundef %page, i32 noundef 4096) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecm_opts_host_addr_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ecm_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %refcnt = getelementptr inbounds %struct.f_ecm_opts, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %net = getelementptr inbounds %struct.f_ecm_opts, ptr %item, i32 0, i32 1
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %call2 = tail call i32 @gether_set_host_addr(ptr noundef %3, ptr noundef %page) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %tobool4.not, i32 %len, i32 %call2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_get_host_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_host_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecm_opts_qmult_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ecm_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %net = getelementptr inbounds %struct.f_ecm_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_get_qmult(ptr noundef %1) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.7, i32 noundef %call1)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecm_opts_qmult_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !179
  %lock = getelementptr inbounds %struct.f_ecm_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %refcnt = getelementptr inbounds %struct.f_ecm_opts, ptr %item, i32 0, i32 4
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %net = getelementptr inbounds %struct.f_ecm_opts, ptr %item, i32 0, i32 1
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %conv = zext i8 %6 to i32
  call void @gether_set_qmult(ptr noundef %4, i32 noundef %conv) #10
  br label %out

out:                                              ; preds = %if.end4, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_get_qmult(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_set_qmult(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecm_opts_ifname_show(ptr noundef %item, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ecm_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %net = getelementptr inbounds %struct.f_ecm_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_get_ifname(ptr noundef %1, ptr noundef %page, i32 noundef 4096) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecm_opts_ifname_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ecm_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %refcnt = getelementptr inbounds %struct.f_ecm_opts, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %4

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %net = getelementptr inbounds %struct.f_ecm_opts, ptr %item, i32 0, i32 1
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_set_ifname(ptr noundef %3, ptr noundef %page, i32 noundef %len) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool3.not = icmp eq i32 %call1, 0
  %spec.select = select i1 %tobool3.not, i32 %len, i32 %call1
  br label %4

4:                                                ; preds = %if.end, %if.end.thread
  %5 = phi i32 [ -16, %if.end.thread ], [ %spec.select, %if.end ]
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_get_ifname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_ifname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_get_host_addr_cdc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecm_bind(ptr noundef %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %6 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fi, align 4
  %bound = getelementptr inbounds %struct.f_ecm_opts, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bound to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bound, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then3:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.f_ecm_opts, ptr %7, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %net = getelementptr inbounds %struct.f_ecm_opts, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void @gether_set_gadget(ptr noundef %11, ptr noundef %13) #10
  %14 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net, align 4
  %call6 = tail call i32 @gether_register_netdev(ptr noundef %15) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool8.not = icmp eq i32 %call6, 0
  br i1 %tobool8.not, label %if.end10, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %bound to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %bound, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.end.if.end12_crit_edge
  %ethaddr = getelementptr inbounds %struct.f_ecm, ptr %f, i32 0, i32 3
  store ptr %ethaddr, ptr getelementptr inbounds ([5 x %struct.usb_string], ptr @ecm_string_defs, i32 0, i32 1, i32 1), align 4
  %call13 = tail call ptr @usb_gstrings_attach(ptr noundef %1, ptr noundef nonnull @ecm_strings, i32 noundef 5) #10
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %18 = ptrtoint ptr %call13 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %call13, align 4
  store i8 %19, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ecm_control_intf, i32 0, i32 8), align 1
  %arrayidx18 = getelementptr %struct.usb_string, ptr %call13, i32 2
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx18, align 4
  store i8 %21, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ecm_data_intf, i32 0, i32 8), align 1
  %arrayidx20 = getelementptr %struct.usb_string, ptr %call13, i32 1
  %22 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx20, align 4
  store i8 %23, ptr getelementptr inbounds (%struct.usb_cdc_ether_desc, ptr @ecm_desc, i32 0, i32 3), align 1
  %arrayidx22 = getelementptr %struct.usb_string, ptr %call13, i32 3
  %24 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx22, align 4
  store i8 %25, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @ecm_iad_descriptor, i32 0, i32 7), align 1
  %call24 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.end17.fail_crit_edge, label %if.end26

if.end17.fail_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end26:                                         ; preds = %if.end17
  %conv = trunc i32 %call24 to i8
  %ctrl_id = getelementptr inbounds %struct.f_ecm, ptr %f, i32 0, i32 1
  %26 = ptrtoint ptr %ctrl_id to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv, ptr %ctrl_id, align 4
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @ecm_iad_descriptor, i32 0, i32 2), align 1
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ecm_control_intf, i32 0, i32 2), align 1
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @ecm_union_desc, i32 0, i32 3), align 1
  %call30 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end26.fail_crit_edge, label %if.end34

if.end26.fail_crit_edge:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end34:                                         ; preds = %if.end26
  %conv35 = trunc i32 %call30 to i8
  %data_id = getelementptr inbounds %struct.f_ecm, ptr %f, i32 0, i32 2
  %27 = ptrtoint ptr %data_id to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv35, ptr %data_id, align 1
  store i8 %conv35, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ecm_data_nop_intf, i32 0, i32 2), align 1
  store i8 %conv35, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ecm_data_intf, i32 0, i32 2), align 1
  store i8 %conv35, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @ecm_union_desc, i32 0, i32 4), align 1
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call40 = tail call ptr @usb_ep_autoconfig(ptr noundef %29, ptr noundef nonnull @fs_ecm_in_desc) #10
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.end34.fail_crit_edge, label %if.end43

if.end34.fail_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end43:                                         ; preds = %if.end34
  %in_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 2
  %30 = ptrtoint ptr %in_ep to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call40, ptr %in_ep, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call45 = tail call ptr @usb_ep_autoconfig(ptr noundef %32, ptr noundef nonnull @fs_ecm_out_desc) #10
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end43.fail_crit_edge, label %if.end48

if.end43.fail_crit_edge:                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end48:                                         ; preds = %if.end43
  %out_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 3
  %33 = ptrtoint ptr %out_ep to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call45, ptr %out_ep, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call51 = tail call ptr @usb_ep_autoconfig(ptr noundef %35, ptr noundef nonnull @fs_ecm_notify_desc) #10
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %if.end48.fail_crit_edge, label %if.end54

if.end48.fail_crit_edge:                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end54:                                         ; preds = %if.end48
  %notify = getelementptr inbounds %struct.f_ecm, ptr %f, i32 0, i32 4
  %36 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call51, ptr %notify, align 4
  %call55 = tail call ptr @usb_ep_alloc_request(ptr noundef nonnull %call51, i32 noundef 3264) #10
  %notify_req = getelementptr inbounds %struct.f_ecm, ptr %f, i32 0, i32 5
  %37 = ptrtoint ptr %notify_req to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call55, ptr %notify_req, align 4
  %tobool57.not = icmp eq ptr %call55, null
  br i1 %tobool57.not, label %if.end54.fail_crit_edge, label %if.end59

if.end54.fail_crit_edge:                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end59:                                         ; preds = %if.end54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3264, i32 noundef 16) #13
  %39 = ptrtoint ptr %notify_req to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %notify_req, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i, ptr %40, align 4
  %42 = load ptr, ptr %notify_req, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %tobool64.not = icmp eq ptr %44, null
  br i1 %tobool64.not, label %if.end59.fail_crit_edge, label %if.end66

if.end59.fail_crit_edge:                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end66:                                         ; preds = %if.end59
  %context = getelementptr inbounds %struct.usb_request, ptr %42, i32 0, i32 8
  %45 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %f, ptr %context, align 4
  %46 = ptrtoint ptr %notify_req to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %notify_req, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @ecm_notify_complete, ptr %complete, align 4
  %49 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_ecm_in_desc, i32 0, i32 2), align 1
  store i8 %49, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_ecm_in_desc, i32 0, i32 2), align 1
  %50 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_ecm_out_desc, i32 0, i32 2), align 1
  store i8 %50, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_ecm_out_desc, i32 0, i32 2), align 1
  %51 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_ecm_notify_desc, i32 0, i32 2), align 1
  store i8 %51, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_ecm_notify_desc, i32 0, i32 2), align 1
  store i8 %49, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_ecm_in_desc, i32 0, i32 2), align 1
  store i8 %50, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_ecm_out_desc, i32 0, i32 2), align 1
  store i8 %51, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_ecm_notify_desc, i32 0, i32 2), align 1
  %call69 = tail call i32 @usb_assign_descriptors(ptr noundef %f, ptr noundef nonnull @ecm_fs_function, ptr noundef nonnull @ecm_hs_function, ptr noundef nonnull @ecm_ss_function, ptr noundef nonnull @ecm_ss_function) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end66.fail_crit_edge

if.end66.fail_crit_edge:                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %open = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 13
  %52 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @ecm_open, ptr %open, align 4
  %close = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 14
  %53 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @ecm_close, ptr %close, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ecm_bind.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ecm_bind, %cleanup)) #10
          to label %if.then81 [label %cleanup], !srcloc !180

if.then81:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cdev1, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %max_speed.i = getelementptr inbounds %struct.usb_gadget, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %61)
  %cmp.i186 = icmp ult i32 %61, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %61)
  %cmp.i188 = icmp ult i32 %61, 3
  %cond = select i1 %cmp.i188, ptr @.str.16, ptr @.str.15
  %cond91 = select i1 %cmp.i186, ptr %cond, ptr @.str.14
  %62 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %in_ep, align 4
  %name = getelementptr inbounds %struct.usb_ep, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name, align 4
  %66 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %out_ep, align 4
  %name96 = getelementptr inbounds %struct.usb_ep, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %name96 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %name96, align 4
  %70 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %notify, align 4
  %name98 = getelementptr inbounds %struct.usb_ep, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %name98 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %name98, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ecm_bind.__UNIQUE_ID_ddebug354, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond91, ptr noundef %65, ptr noundef %69, ptr noundef %73) #10
  br label %cleanup

fail:                                             ; preds = %if.end66.fail_crit_edge, %if.end59.fail_crit_edge, %if.end54.fail_crit_edge, %if.end48.fail_crit_edge, %if.end43.fail_crit_edge, %if.end34.fail_crit_edge, %if.end26.fail_crit_edge, %if.end17.fail_crit_edge
  %status.0 = phi i32 [ %call24, %if.end17.fail_crit_edge ], [ %call30, %if.end26.fail_crit_edge ], [ %call69, %if.end66.fail_crit_edge ], [ -12, %if.end59.fail_crit_edge ], [ -12, %if.end54.fail_crit_edge ], [ -19, %if.end48.fail_crit_edge ], [ -19, %if.end43.fail_crit_edge ], [ -19, %if.end34.fail_crit_edge ]
  %notify_req100 = getelementptr inbounds %struct.f_ecm, ptr %f, i32 0, i32 5
  %74 = ptrtoint ptr %notify_req100 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %notify_req100, align 4
  %tobool101.not = icmp eq ptr %75, null
  br i1 %tobool101.not, label %fail.do.end110_crit_edge, label %if.then102

fail.do.end110_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end110

if.then102:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  tail call void @kfree(ptr noundef %77) #10
  %notify105 = getelementptr inbounds %struct.f_ecm, ptr %f, i32 0, i32 4
  %78 = ptrtoint ptr %notify105 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %notify105, align 4
  %80 = ptrtoint ptr %notify_req100 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %notify_req100, align 4
  tail call void @usb_ep_free_request(ptr noundef %79, ptr noundef %81) #10
  br label %do.end110

do.end110:                                        ; preds = %if.then102, %fail.do.end110_crit_edge
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  %dev112 = getelementptr inbounds %struct.usb_gadget, ptr %83, i32 0, i32 11
  %84 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev112, ptr noundef nonnull @.str.17, ptr noundef %85, i32 noundef %status.0) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end110, %if.then81, %if.end72, %if.then15, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then15 ], [ %status.0, %do.end110 ], [ -22, %entry.cleanup_crit_edge ], [ %call6, %if.then3.cleanup_crit_edge ], [ 0, %if.then81 ], [ 0, %if.end72 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ecm_unbind(ptr nocapture noundef readonly %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ecm_unbind.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ecm_unbind, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ecm_unbind.__UNIQUE_ID_ddebug355, ptr noundef %dev, ptr noundef nonnull @.str.35) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @usb_free_all_descriptors(ptr noundef %f) #10
  %notify_count = getelementptr inbounds %struct.f_ecm, ptr %f, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %notify_count, i32 noundef 4) #10
  %4 = ptrtoint ptr %notify_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %notify_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %do.end.if.end10_crit_edge, label %if.then7

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %notify = getelementptr inbounds %struct.f_ecm, ptr %f, i32 0, i32 4
  %6 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %notify, align 4
  %notify_req = getelementptr inbounds %struct.f_ecm, ptr %f, i32 0, i32 5
  %8 = ptrtoint ptr %notify_req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %notify_req, align 4
  %call8 = tail call i32 @usb_ep_dequeue(ptr noundef %7, ptr noundef %9) #10
  %call.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef %notify_count, i32 noundef 4) #10
  %10 = ptrtoint ptr %notify_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %notify_count, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %do.end.if.end10_crit_edge
  %notify_req11 = getelementptr inbounds %struct.f_ecm, ptr %f, i32 0, i32 5
  %11 = ptrtoint ptr %notify_req11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %notify_req11, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %14) #10
  %notify12 = getelementptr inbounds %struct.f_ecm, ptr %f, i32 0, i32 4
  %15 = ptrtoint ptr %notify12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %notify12, align 4
  %17 = ptrtoint ptr %notify_req11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %notify_req11, align 4
  tail call void @usb_ep_free_request(ptr noundef %16, ptr noundef %18) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecm_set_alt(ptr noundef %f, i32 noundef %intf, i32 noundef %alt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  %ctrl_id = getelementptr inbounds %struct.f_ecm, ptr %f, i32 0, i32 1
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
  br i1 %cmp3.not, label %do.body, label %if.then.cleanup164_crit_edge

if.then.cleanup164_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup164

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ecm_set_alt.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ecm_set_alt, %do.end)) #10
          to label %if.then10 [label %do.end], !srcloc !180

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ecm_set_alt.__UNIQUE_ID_ddebug346, ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %intf) #10
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %notify = getelementptr inbounds %struct.f_ecm, ptr %f, i32 0, i32 4
  %8 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %notify, align 4
  %call12 = tail call i32 @usb_ep_disable(ptr noundef %9) #10
  %10 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %notify, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %do.body16, label %do.end.if.end42_crit_edge

do.end.if.end42_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

do.body16:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ecm_set_alt.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ecm_set_alt, %do.end35)) #10
          to label %if.then30 [label %do.end35], !srcloc !180

if.then30:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %dev32 = getelementptr inbounds %struct.usb_gadget, ptr %15, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ecm_set_alt.__UNIQUE_ID_ddebug347, ptr noundef %dev32, ptr noundef nonnull @.str.38, i32 noundef %intf) #10
  br label %do.end35

do.end35:                                         ; preds = %if.then30, %do.body16
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %18 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %notify, align 4
  %call38 = tail call i32 @config_ep_by_speed(ptr noundef %17, ptr noundef %f, ptr noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.end35.if.end42_crit_edge, label %do.end35.cleanup164_crit_edge

do.end35.cleanup164_crit_edge:                    ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup164

do.end35.if.end42_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end42:                                         ; preds = %do.end35.if.end42_crit_edge, %do.end.if.end42_crit_edge
  %20 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %notify, align 4
  %call44 = tail call i32 @usb_ep_enable(ptr noundef %21) #10
  br label %cleanup164

if.else:                                          ; preds = %entry
  %data_id = getelementptr inbounds %struct.f_ecm, ptr %f, i32 0, i32 2
  %22 = ptrtoint ptr %data_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data_id, align 1
  %conv45 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv45, i32 %intf)
  %cmp46 = icmp ne i32 %conv45, %intf
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %alt)
  %cmp49 = icmp ugt i32 %alt, 1
  %or.cond = or i1 %cmp49, %cmp46
  br i1 %or.cond, label %if.else.cleanup164_crit_edge, label %if.end52

if.else.cleanup164_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup164

if.end52:                                         ; preds = %if.else
  %in_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 2
  %24 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %in_ep, align 4
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enabled, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool53.not = icmp eq i8 %27, 0
  br i1 %tobool53.not, label %if.end52.if.end76_crit_edge, label %do.body55

if.end52.if.end76_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end76

do.body55:                                        ; preds = %if.end52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ecm_set_alt.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ecm_set_alt, %do.end74)) #10
          to label %if.then69 [label %do.end74], !srcloc !180

if.then69:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %dev71 = getelementptr inbounds %struct.usb_gadget, ptr %29, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ecm_set_alt.__UNIQUE_ID_ddebug348, ptr noundef %dev71, ptr noundef nonnull @.str.39) #10
  br label %do.end74

do.end74:                                         ; preds = %if.then69, %do.body55
  tail call void @gether_disconnect(ptr noundef %f) #10
  br label %if.end76

if.end76:                                         ; preds = %do.end74, %if.end52.if.end76_crit_edge
  %30 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %in_ep, align 4
  %desc79 = getelementptr inbounds %struct.usb_ep, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %desc79 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc79, align 4
  %tobool80.not = icmp eq ptr %33, null
  br i1 %tobool80.not, label %if.end76.do.body85_crit_edge, label %lor.lhs.false

if.end76.do.body85_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body85

lor.lhs.false:                                    ; preds = %if.end76
  %out_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 3
  %34 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %out_ep, align 4
  %desc82 = getelementptr inbounds %struct.usb_ep, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %desc82 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %desc82, align 4
  %tobool83.not = icmp eq ptr %37, null
  br i1 %tobool83.not, label %lor.lhs.false.do.body85_crit_edge, label %lor.lhs.false.if.end124_crit_edge

lor.lhs.false.if.end124_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

lor.lhs.false.do.body85_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body85

do.body85:                                        ; preds = %lor.lhs.false.do.body85_crit_edge, %if.end76.do.body85_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ecm_set_alt.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ecm_set_alt, %do.end104)) #10
          to label %if.then99 [label %do.end104], !srcloc !180

if.then99:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %dev101 = getelementptr inbounds %struct.usb_gadget, ptr %39, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ecm_set_alt.__UNIQUE_ID_ddebug349, ptr noundef %dev101, ptr noundef nonnull @.str.40) #10
  br label %do.end104

do.end104:                                        ; preds = %if.then99, %do.body85
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %42 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %in_ep, align 4
  %call108 = tail call i32 @config_ep_by_speed(ptr noundef %41, ptr noundef %f, ptr noundef %43) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %lor.lhs.false110, label %do.end104.if.then116_crit_edge

do.end104.if.then116_crit_edge:                   ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then116

lor.lhs.false110:                                 ; preds = %do.end104
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  %out_ep113 = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 3
  %46 = ptrtoint ptr %out_ep113 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %out_ep113, align 4
  %call114 = tail call i32 @config_ep_by_speed(ptr noundef %45, ptr noundef %f, ptr noundef %47) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %lor.lhs.false110.if.end124_crit_edge, label %lor.lhs.false110.if.then116_crit_edge

lor.lhs.false110.if.then116_crit_edge:            ; preds = %lor.lhs.false110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then116

lor.lhs.false110.if.end124_crit_edge:             ; preds = %lor.lhs.false110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then116:                                       ; preds = %lor.lhs.false110.if.then116_crit_edge, %do.end104.if.then116_crit_edge
  %48 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %in_ep, align 4
  %desc119 = getelementptr inbounds %struct.usb_ep, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %desc119 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %desc119, align 4
  %out_ep121 = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 3
  %51 = ptrtoint ptr %out_ep121 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %out_ep121, align 4
  %desc122 = getelementptr inbounds %struct.usb_ep, ptr %52, i32 0, i32 9
  %53 = ptrtoint ptr %desc122 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %desc122, align 4
  br label %cleanup164

if.end124:                                        ; preds = %lor.lhs.false110.if.end124_crit_edge, %lor.lhs.false.if.end124_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %alt)
  %cmp125 = icmp eq i32 %alt, 1
  br i1 %cmp125, label %if.then127, label %if.end124.if.end160_crit_edge

if.end124.if.end160_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end160

if.then127:                                       ; preds = %if.end124
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 4
  %quirk_zlp_not_supp.i = getelementptr inbounds %struct.usb_gadget, ptr %55, i32 0, i32 17
  %56 = ptrtoint ptr %quirk_zlp_not_supp.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load.i = load i32, ptr %quirk_zlp_not_supp.i, align 4
  %is_zlp_ok = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 4
  %57 = lshr i32 %bf.load.i, 20
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  %61 = ptrtoint ptr %is_zlp_ok to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %is_zlp_ok, align 4
  %cdc_filter = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 5
  %62 = ptrtoint ptr %cdc_filter to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 15, ptr %cdc_filter, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ecm_set_alt.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ecm_set_alt, %do.end153)) #10
          to label %if.then148 [label %do.end153], !srcloc !180

if.then148:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 4
  %dev150 = getelementptr inbounds %struct.usb_gadget, ptr %64, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ecm_set_alt.__UNIQUE_ID_ddebug350, ptr noundef %dev150, ptr noundef nonnull @.str.41) #10
  br label %do.end153

do.end153:                                        ; preds = %if.then148, %if.then127
  %call155 = tail call ptr @gether_connect(ptr noundef %f) #10
  %cmp.i = icmp ugt ptr %call155, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %do.end153.if.end160_crit_edge

do.end153.if.end160_crit_edge:                    ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end160

cleanup.thread:                                   ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %call155 to i32
  br label %cleanup164

if.end160:                                        ; preds = %do.end153.if.end160_crit_edge, %if.end124.if.end160_crit_edge
  %notify_state.i = getelementptr inbounds %struct.f_ecm, ptr %f, i32 0, i32 6
  %66 = ptrtoint ptr %notify_state.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %notify_state.i, align 4
  tail call fastcc void @ecm_do_notify(ptr noundef %f) #10
  br label %cleanup164

cleanup164:                                       ; preds = %if.end160, %cleanup.thread, %if.then116, %if.else.cleanup164_crit_edge, %if.end42, %do.end35.cleanup164_crit_edge, %if.then.cleanup164_crit_edge
  %retval.1 = phi i32 [ 0, %if.end160 ], [ 0, %if.end42 ], [ -22, %if.else.cleanup164_crit_edge ], [ -22, %do.end35.cleanup164_crit_edge ], [ -22, %if.then.cleanup164_crit_edge ], [ -22, %if.then116 ], [ %65, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ecm_get_alt(ptr nocapture noundef readonly %f, i32 noundef %intf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_id = getelementptr inbounds %struct.f_ecm, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %ctrl_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctrl_id, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %intf)
  %cmp = icmp eq i32 %conv, %intf
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %in_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 2
  %2 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_ep, align 4
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 1, !range !178
  %6 = zext i8 %5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecm_setup(ptr nocapture noundef %f, ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %conv = zext i8 %16 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %17 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bRequest, align 1
  %conv3 = zext i8 %18 to i32
  %or = or i32 %shl, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8515, i32 %or)
  %cond = icmp eq i32 %or, 8515
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.not = icmp eq i16 %13, 0
  %or.cond = select i1 %cond, i1 %cmp.not, i1 false
  br i1 %or.cond, label %lor.lhs.false, label %entry.do.body17_crit_edge

entry.do.body17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

lor.lhs.false:                                    ; preds = %entry
  %ctrl_id = getelementptr inbounds %struct.f_ecm, ptr %f, i32 0, i32 1
  %19 = ptrtoint ptr %ctrl_id to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ctrl_id, align 4
  %21 = zext i8 %20 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %21)
  %cmp8.not = icmp eq i16 %8, %21
  br i1 %cmp8.not, label %do.body, label %lor.lhs.false.do.body17_crit_edge

lor.lhs.false.do.body17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

do.body:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ecm_setup.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ecm_setup, %do.body47)) #10
          to label %if.then14 [label %do.body47], !srcloc !180

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %23, i32 0, i32 11
  %conv15 = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ecm_setup.__UNIQUE_ID_ddebug343, ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %conv15) #10
  br label %do.body47

do.body17:                                        ; preds = %lor.lhs.false.do.body17_crit_edge, %entry.do.body17_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ecm_setup.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ecm_setup, %if.end89)) #10
          to label %if.then31 [label %if.end89], !srcloc !180

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %dev33 = getelementptr inbounds %struct.usb_gadget, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ctrl, align 1
  %conv35 = zext i8 %27 to i32
  %28 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bRequest, align 1
  %conv37 = zext i8 %29 to i32
  %conv38 = zext i16 %11 to i32
  %conv39 = zext i16 %8 to i32
  %conv40 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ecm_setup.__UNIQUE_ID_ddebug344, ptr noundef %dev33, ptr noundef nonnull @.str.44, i32 noundef %conv35, i32 noundef %conv37, i32 noundef %conv38, i32 noundef %conv39, i32 noundef %conv40) #10
  br label %if.end89

do.body47:                                        ; preds = %if.then14, %do.body
  %cdc_filter = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 5
  %30 = ptrtoint ptr %cdc_filter to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %11, ptr %cdc_filter, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ecm_setup.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ecm_setup, %do.end73)) #10
          to label %if.then61 [label %do.end73], !srcloc !180

if.then61:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %dev63 = getelementptr inbounds %struct.usb_gadget, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ctrl, align 1
  %conv65 = zext i8 %34 to i32
  %35 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bRequest, align 1
  %conv67 = zext i8 %36 to i32
  %conv68 = zext i16 %11 to i32
  %conv69 = zext i16 %8 to i32
  %conv70 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ecm_setup.__UNIQUE_ID_ddebug345, ptr noundef %dev63, ptr noundef nonnull @.str.45, i32 noundef %conv65, i32 noundef %conv67, i32 noundef %conv68, i32 noundef %conv69, i32 noundef %conv70) #10
  br label %do.end73

do.end73:                                         ; preds = %if.then61, %do.body47
  %zero = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 6
  %37 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load = load i32, ptr %zero, align 4
  %bf.clear = and i32 %bf.load, -8193
  store i32 %bf.clear, ptr %zero, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 1
  %38 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %length, align 4
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ep0, align 4
  %call75 = tail call i32 @usb_ep_queue(ptr noundef %42, ptr noundef %5, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %do.end81, label %do.end73.if.end89_crit_edge

do.end73.if.end89_crit_edge:                      ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

do.end81:                                         ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %3, align 4
  %dev83 = getelementptr inbounds %struct.usb_gadget, ptr %44, i32 0, i32 11
  %45 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ctrl, align 1
  %conv85 = zext i8 %46 to i32
  %47 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bRequest, align 1
  %conv87 = zext i8 %48 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev83, ptr noundef nonnull @.str.46, i32 noundef %conv85, i32 noundef %conv87, i32 noundef %call75) #14
  br label %if.end89

if.end89:                                         ; preds = %do.end81, %do.end73.if.end89_crit_edge, %if.then31, %do.body17
  %value.1 = phi i32 [ %call75, %do.end81 ], [ %call75, %do.end73.if.end89_crit_edge ], [ -95, %if.then31 ], [ -95, %do.body17 ]
  ret i32 %value.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ecm_disable(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ecm_disable.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ecm_disable, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ecm_disable.__UNIQUE_ID_ddebug351, ptr noundef %dev, ptr noundef nonnull @.str.48) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %in_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %in_ep, align 4
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled, align 1, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gether_disconnect(ptr noundef %f) #10
  br label %if.end13

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %desc = getelementptr inbounds %struct.usb_ep, ptr %7, i32 0, i32 9
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %desc, align 4
  %out_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 3
  %11 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %out_ep, align 4
  %desc12 = getelementptr inbounds %struct.usb_ep, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %desc12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %desc12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then7
  %notify = getelementptr inbounds %struct.f_ecm, ptr %f, i32 0, i32 4
  %14 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %notify, align 4
  %call14 = tail call i32 @usb_ep_disable(ptr noundef %15) #10
  %16 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %notify, align 4
  %desc16 = getelementptr inbounds %struct.usb_ep, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %desc16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %desc16, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ecm_free(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi, align 4
  tail call void @kfree(ptr noundef %f) #10
  %lock = getelementptr inbounds %struct.f_ecm_opts, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %refcnt = getelementptr inbounds %struct.f_ecm_opts, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcnt, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_set_gadget(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ecm_notify_complete(ptr nocapture noundef readnone %ep, ptr nocapture noundef readonly %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.body [
    i32 0, label %sw.bb
    i32 -104, label %entry.sw.bb2_crit_edge
    i32 -108, label %entry.sw.bb2_crit_edge20
  ]

entry.sw.bb2_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %notify_count = getelementptr inbounds %struct.f_ecm, ptr %1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %notify_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %notify_count, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %notify_count, ptr %notify_count, i32 1, ptr elementtype(i32) %notify_count) #10, !srcloc !181
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge20
  %notify_count3 = getelementptr inbounds %struct.f_ecm, ptr %1, i32 0, i32 7
  %call.i.i17 = tail call zeroext i1 @__kasan_check_write(ptr noundef %notify_count3, i32 noundef 4) #10
  %12 = ptrtoint ptr %notify_count3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %notify_count3, align 4
  %notify_state = getelementptr inbounds %struct.f_ecm, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %notify_state to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %notify_state, align 4
  br label %sw.epilog

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ecm_notify_complete.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ecm_notify_complete, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !180

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %15, i32 0, i32 11
  %bNotificationType = getelementptr inbounds %struct.usb_cdc_notification, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %bNotificationType to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bNotificationType, align 1
  %conv = zext i8 %17 to i32
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ecm_notify_complete.__UNIQUE_ID_ddebug342, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %conv, i32 noundef %19) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %notify_count8 = getelementptr inbounds %struct.f_ecm, ptr %1, i32 0, i32 7
  %call.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef %notify_count8, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %notify_count8, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %notify_count8, ptr %notify_count8, i32 1, ptr elementtype(i32) %notify_count8) #10, !srcloc !181
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %sw.bb
  tail call fastcc void @ecm_do_notify(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ecm_open(ptr noundef %geth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ecm_open.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ecm_open, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %config = getelementptr inbounds %struct.usb_function, ptr %geth, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ecm_open.__UNIQUE_ID_ddebug352, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %is_open = getelementptr inbounds %struct.f_ecm, ptr %geth, i32 0, i32 8
  %6 = ptrtoint ptr %is_open to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %is_open, align 4
  %notify_state.i = getelementptr inbounds %struct.f_ecm, ptr %geth, i32 0, i32 6
  %7 = ptrtoint ptr %notify_state.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %notify_state.i, align 4
  tail call fastcc void @ecm_do_notify(ptr noundef %geth) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ecm_close(ptr noundef %geth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ecm_close.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ecm_close, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %config = getelementptr inbounds %struct.usb_function, ptr %geth, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ecm_close.__UNIQUE_ID_ddebug353, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %is_open = getelementptr inbounds %struct.f_ecm, ptr %geth, i32 0, i32 8
  %6 = ptrtoint ptr %is_open to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %is_open, align 4
  %notify_state.i = getelementptr inbounds %struct.f_ecm, ptr %geth, i32 0, i32 6
  %7 = ptrtoint ptr %notify_state.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %notify_state.i, align 4
  tail call fastcc void @ecm_do_notify(ptr noundef %geth) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ecm_do_notify(ptr noundef %ecm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %notify_req = getelementptr inbounds %struct.f_ecm, ptr %ecm, i32 0, i32 5
  %0 = ptrtoint ptr %notify_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify_req, align 4
  %config = getelementptr inbounds %struct.usb_function, ptr %ecm, i32 0, i32 6
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev1, align 4
  %notify_count = getelementptr inbounds %struct.f_ecm, ptr %ecm, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %notify_count, i32 noundef 4) #10
  %6 = ptrtoint ptr %notify_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %notify_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %notify_state = getelementptr inbounds %struct.f_ecm, ptr %ecm, i32 0, i32 6
  %10 = ptrtoint ptr %notify_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %notify_state, align 4
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %11, label %if.end.sw.epilog_crit_edge [
    i8 0, label %if.end.cleanup_crit_edge
    i8 1, label %sw.bb2
    i8 2, label %sw.bb18
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bNotificationType = getelementptr inbounds %struct.usb_cdc_notification, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %bNotificationType to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %bNotificationType, align 1
  %is_open = getelementptr inbounds %struct.f_ecm, ptr %ecm, i32 0, i32 8
  %14 = ptrtoint ptr %is_open to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_open, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not = icmp eq i8 %15, 0
  %spec.select = select i1 %tobool3.not, i16 0, i16 256
  %16 = getelementptr inbounds %struct.usb_cdc_notification, ptr %9, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %spec.select, ptr %16, align 1
  %wLength = getelementptr inbounds %struct.usb_cdc_notification, ptr %9, i32 0, i32 4
  %18 = ptrtoint ptr %wLength to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 0, ptr %wLength, align 1
  %length = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ecm_do_notify.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ecm_do_notify, %sw.epilog.sink.split)) #10
          to label %if.then12 [label %sw.epilog.sink.split], !srcloc !180

if.then12:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %is_open to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_open, align 4, !range !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool14.not = icmp eq i8 %23, 0
  %cond = select i1 %tobool14.not, ptr @.str.28, ptr @.str.27
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ecm_do_notify.__UNIQUE_ID_ddebug339, ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond) #10
  br label %sw.epilog.sink.split

sw.bb18:                                          ; preds = %if.end
  %bNotificationType19 = getelementptr inbounds %struct.usb_cdc_notification, ptr %9, i32 0, i32 1
  %24 = ptrtoint ptr %bNotificationType19 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 42, ptr %bNotificationType19, align 1
  %wValue20 = getelementptr inbounds %struct.usb_cdc_notification, ptr %9, i32 0, i32 2
  %25 = ptrtoint ptr %wValue20 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 0, ptr %wValue20, align 1
  %wLength21 = getelementptr inbounds %struct.usb_cdc_notification, ptr %9, i32 0, i32 4
  %26 = ptrtoint ptr %wLength21 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 2048, ptr %wLength21, align 1
  %length22 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %length22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16, ptr %length22, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %29, i32 8
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 4
  %max_speed.i.i = getelementptr inbounds %struct.usb_gadget, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %max_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %33)
  %cmp.i.i = icmp ult i32 %33, 5
  br i1 %cmp.i.i, label %if.else.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sw.bb18
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %31, i32 0, i32 5
  %34 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %35)
  %cmp.i = icmp eq i32 %35, 5
  br i1 %cmp.i, label %land.lhs.true.i.ecm_bitrate.exit_crit_edge, label %land.lhs.true.i.land.lhs.true3.i_crit_edge

land.lhs.true.i.land.lhs.true3.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true3.i

land.lhs.true.i.ecm_bitrate.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ecm_bitrate.exit

if.else.i:                                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp.i12.i = icmp ult i32 %33, 3
  br i1 %cmp.i12.i, label %if.else.i.if.else7.i_crit_edge, label %if.else.i.land.lhs.true3.i_crit_edge

if.else.i.land.lhs.true3.i_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true3.i

if.else.i.if.else7.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else7.i

land.lhs.true3.i:                                 ; preds = %if.else.i.land.lhs.true3.i_crit_edge, %land.lhs.true.i.land.lhs.true3.i_crit_edge
  %speed4.i = getelementptr inbounds %struct.usb_gadget, ptr %31, i32 0, i32 5
  %36 = ptrtoint ptr %speed4.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %speed4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp5.i = icmp eq i32 %37, 3
  br i1 %cmp5.i, label %land.lhs.true3.i.ecm_bitrate.exit_crit_edge, label %land.lhs.true3.i.if.else7.i_crit_edge

land.lhs.true3.i.if.else7.i_crit_edge:            ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else7.i

land.lhs.true3.i.ecm_bitrate.exit_crit_edge:      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ecm_bitrate.exit

if.else7.i:                                       ; preds = %land.lhs.true3.i.if.else7.i_crit_edge, %if.else.i.if.else7.i_crit_edge
  br label %ecm_bitrate.exit

ecm_bitrate.exit:                                 ; preds = %if.else7.i, %land.lhs.true3.i.ecm_bitrate.exit_crit_edge, %land.lhs.true.i.ecm_bitrate.exit_crit_edge
  %retval.0.i120 = phi i32 [ 9728000, %if.else7.i ], [ 851968000, %land.lhs.true.i.ecm_bitrate.exit_crit_edge ], [ 425984000, %land.lhs.true3.i.ecm_bitrate.exit_crit_edge ]
  %38 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i120)
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %add.ptr, align 4
  %arrayidx27 = getelementptr i8, ptr %29, i32 12
  %40 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %38, ptr %arrayidx27, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ecm_do_notify.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ecm_do_notify, %sw.epilog.sink.split)) #10
          to label %if.then42 [label %sw.epilog.sink.split], !srcloc !180

if.then42:                                        ; preds = %ecm_bitrate.exit
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %5, align 4
  %dev44 = getelementptr inbounds %struct.usb_gadget, ptr %42, i32 0, i32 11
  %max_speed.i.i121 = getelementptr inbounds %struct.usb_gadget, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %max_speed.i.i121 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_speed.i.i121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %44)
  %cmp.i.i122 = icmp ult i32 %44, 5
  br i1 %cmp.i.i122, label %if.else.i127, label %land.lhs.true.i125

land.lhs.true.i125:                               ; preds = %if.then42
  %speed.i123 = getelementptr inbounds %struct.usb_gadget, ptr %42, i32 0, i32 5
  %45 = ptrtoint ptr %speed.i123 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %speed.i123, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %46)
  %cmp.i124 = icmp eq i32 %46, 5
  br i1 %cmp.i124, label %land.lhs.true.i125.ecm_bitrate.exit133_crit_edge, label %land.lhs.true.i125.land.lhs.true3.i130_crit_edge

land.lhs.true.i125.land.lhs.true3.i130_crit_edge: ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true3.i130

land.lhs.true.i125.ecm_bitrate.exit133_crit_edge: ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #12
  br label %ecm_bitrate.exit133

if.else.i127:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %cmp.i12.i126 = icmp ult i32 %44, 3
  br i1 %cmp.i12.i126, label %if.else.i127.if.else7.i131_crit_edge, label %if.else.i127.land.lhs.true3.i130_crit_edge

if.else.i127.land.lhs.true3.i130_crit_edge:       ; preds = %if.else.i127
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true3.i130

if.else.i127.if.else7.i131_crit_edge:             ; preds = %if.else.i127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else7.i131

land.lhs.true3.i130:                              ; preds = %if.else.i127.land.lhs.true3.i130_crit_edge, %land.lhs.true.i125.land.lhs.true3.i130_crit_edge
  %speed4.i128 = getelementptr inbounds %struct.usb_gadget, ptr %42, i32 0, i32 5
  %47 = ptrtoint ptr %speed4.i128 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %speed4.i128, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp5.i129 = icmp eq i32 %48, 3
  br i1 %cmp5.i129, label %land.lhs.true3.i130.ecm_bitrate.exit133_crit_edge, label %land.lhs.true3.i130.if.else7.i131_crit_edge

land.lhs.true3.i130.if.else7.i131_crit_edge:      ; preds = %land.lhs.true3.i130
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else7.i131

land.lhs.true3.i130.ecm_bitrate.exit133_crit_edge: ; preds = %land.lhs.true3.i130
  call void @__sanitizer_cov_trace_pc() #12
  br label %ecm_bitrate.exit133

if.else7.i131:                                    ; preds = %land.lhs.true3.i130.if.else7.i131_crit_edge, %if.else.i127.if.else7.i131_crit_edge
  br label %ecm_bitrate.exit133

ecm_bitrate.exit133:                              ; preds = %if.else7.i131, %land.lhs.true3.i130.ecm_bitrate.exit133_crit_edge, %land.lhs.true.i125.ecm_bitrate.exit133_crit_edge
  %retval.0.i132 = phi i32 [ 9728000, %if.else7.i131 ], [ 851968000, %land.lhs.true.i125.ecm_bitrate.exit133_crit_edge ], [ 425984000, %land.lhs.true3.i130.ecm_bitrate.exit133_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ecm_do_notify.__UNIQUE_ID_ddebug340, ptr noundef %dev44, ptr noundef nonnull @.str.29, i32 noundef %retval.0.i132) #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %ecm_bitrate.exit133, %ecm_bitrate.exit, %if.then12, %sw.bb2
  %.sink = phi i8 [ 2, %sw.bb2 ], [ 2, %if.then12 ], [ 0, %ecm_bitrate.exit ], [ 0, %ecm_bitrate.exit133 ]
  %49 = ptrtoint ptr %notify_state to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %.sink, ptr %notify_state, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %50 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -95, ptr %9, align 1
  %ctrl_id = getelementptr inbounds %struct.f_ecm, ptr %ecm, i32 0, i32 1
  %51 = ptrtoint ptr %ctrl_id to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ctrl_id, align 4
  %conv51 = zext i8 %52 to i16
  %53 = shl nuw i16 %conv51, 8
  %wIndex = getelementptr inbounds %struct.usb_cdc_notification, ptr %9, i32 0, i32 3
  %54 = ptrtoint ptr %wIndex to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %53, ptr %wIndex, align 1
  %call.i.i115 = tail call zeroext i1 @__kasan_check_write(ptr noundef %notify_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %notify_count, i32 1, i32 3, i32 1) #10
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %notify_count, ptr %notify_count, i32 1, ptr elementtype(i32) %notify_count) #10, !srcloc !182
  %notify = getelementptr inbounds %struct.f_ecm, ptr %ecm, i32 0, i32 4
  %56 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %notify, align 4
  %call53 = tail call i32 @usb_ep_queue(ptr noundef %57, ptr noundef %1, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp = icmp slt i32 %call53, 0
  br i1 %cmp, label %if.then55, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then55:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i116 = tail call zeroext i1 @__kasan_check_write(ptr noundef %notify_count, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %notify_count, i32 1, i32 3, i32 1) #10
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %notify_count, ptr %notify_count, i32 1, ptr elementtype(i32) %notify_count) #10, !srcloc !181
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ecm_do_notify.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ecm_do_notify, %cleanup)) #10
          to label %if.then71 [label %cleanup], !srcloc !180

if.then71:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %5, align 4
  %dev73 = getelementptr inbounds %struct.usb_gadget, ptr %60, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ecm_do_notify.__UNIQUE_ID_ddebug341, ptr noundef %dev73, ptr noundef nonnull @.str.30, i32 noundef %call53) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %if.then55, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gether_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !11, !13, !14, !16, !18, !20, !22, !24, !26, !27, !29, !30, !32, !33, !34, !36, !37, !39, !41, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !90, !91, !92, !93, !94, !96, !97, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !127, !128, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !155, !157, !158, !160, !161, !163, !164, !165, !167, !168}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !{ptr @__UNIQUE_ID_alias356, !1, !"__UNIQUE_ID_alias356", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 963, i32 1}
!2 = !{ptr @__initcall__kmod_usb_f_ecm__357_963_ecmmod_init6, !1, !"__initcall__kmod_usb_f_ecm__357_963_ecmmod_init6", i1 false, i1 false}
!3 = !{ptr @__exitcall_ecmmod_exit, !1, !"__exitcall_ecmmod_exit", i1 false, i1 false}
!4 = !{ptr @__UNIQUE_ID_file358, !5, !"__UNIQUE_ID_file358", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 964, i32 1}
!6 = !{ptr @__UNIQUE_ID_license359, !5, !"__UNIQUE_ID_license359", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author360, !8, !"__UNIQUE_ID_author360", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 965, i32 1}
!9 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ecmusb_func, !1, !"ecmusb_func", i1 false, i1 false}
!11 = !{ptr @ecm_alloc_inst.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 878, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 887, i32 54}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/function/u_ether.h", i32 140, i32 35}
!18 = !{ptr @ecm_func_type, !19, !"ecm_func_type", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 853, i32 38}
!20 = !{ptr @ecm_item_ops, !21, !"ecm_item_ops", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 831, i32 1}
!22 = !{ptr @ecm_attrs, !23, !"ecm_attrs", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 845, i32 35}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 834, i32 1}
!26 = !{ptr @ecm_opts_attr_dev_addr, !25, !"ecm_opts_attr_dev_addr", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 837, i32 1}
!29 = !{ptr @ecm_opts_attr_host_addr, !28, !"ecm_opts_attr_host_addr", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 840, i32 1}
!32 = !{ptr @ecm_opts_attr_qmult, !31, !"ecm_opts_attr_qmult", i1 false, i1 false}
!33 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 843, i32 1}
!36 = !{ptr @ecm_opts_attr_ifname, !35, !"ecm_opts_attr_ifname", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 950, i32 24}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 806, i32 2}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ecm_bind.__UNIQUE_ID_ddebug354, !40, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!45 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 819, i32 2}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ecm_bind._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @ecm_bind._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 356, i32 10}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 358, i32 10}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 359, i32 10}
!60 = !{ptr @ecm_string_defs, !61, !"ecm_string_defs", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 355, i32 26}
!62 = !{ptr @ecm_strings, !63, !"ecm_strings", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 368, i32 35}
!64 = !{ptr @ecm_string_table, !65, !"ecm_string_table", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 363, i32 34}
!66 = !{ptr @ecm_control_intf, !67, !"ecm_control_intf", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 114, i32 40}
!68 = !{ptr @ecm_data_intf, !69, !"ecm_data_intf", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 173, i32 40}
!70 = !{ptr @ecm_desc, !71, !"ecm_desc", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 143, i32 34}
!72 = !{ptr @ecm_iad_descriptor, !73, !"ecm_iad_descriptor", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 101, i32 1}
!74 = !{ptr @ecm_union_desc, !75, !"ecm_union_desc", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 135, i32 34}
!76 = !{ptr @ecm_data_nop_intf, !77, !"ecm_data_nop_intf", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 158, i32 40}
!78 = !{ptr @fs_ecm_in_desc, !79, !"fs_ecm_in_desc", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 198, i32 39}
!80 = !{ptr @fs_ecm_out_desc, !81, !"fs_ecm_out_desc", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 206, i32 39}
!82 = !{ptr @fs_ecm_notify_desc, !83, !"fs_ecm_notify_desc", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 188, i32 39}
!84 = !{ptr @.str.23, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 460, i32 3}
!86 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ecm_notify_complete.__UNIQUE_ID_ddebug342, !85, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 401, i32 3}
!90 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ecm_do_notify.__UNIQUE_ID_ddebug339, !89, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!92 = !{ptr @.str.27, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.29, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 417, i32 3}
!96 = !{ptr @ecm_do_notify.__UNIQUE_ID_ddebug340, !95, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!97 = !{ptr @.str.30, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 428, i32 3}
!99 = !{ptr @ecm_do_notify.__UNIQUE_ID_ddebug341, !98, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!100 = !{ptr @hs_ecm_in_desc, !101, !"hs_ecm_in_desc", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 245, i32 39}
!102 = !{ptr @hs_ecm_out_desc, !103, !"hs_ecm_out_desc", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 254, i32 39}
!104 = !{ptr @hs_ecm_notify_desc, !105, !"hs_ecm_notify_desc", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 235, i32 39}
!106 = !{ptr @ss_ecm_in_desc, !107, !"ss_ecm_in_desc", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 304, i32 39}
!108 = !{ptr @ss_ecm_out_desc, !109, !"ss_ecm_out_desc", i1 false, i1 false}
!109 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 313, i32 39}
!110 = !{ptr @ss_ecm_notify_desc, !111, !"ss_ecm_notify_desc", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 284, i32 39}
!112 = !{ptr @ecm_fs_function, !113, !"ecm_fs_function", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 214, i32 38}
!114 = !{ptr @ecm_header_desc, !115, !"ecm_header_desc", i1 false, i1 false}
!115 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 127, i32 35}
!116 = !{ptr @ecm_hs_function, !117, !"ecm_hs_function", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 263, i32 38}
!118 = !{ptr @ecm_ss_function, !119, !"ecm_ss_function", i1 false, i1 false}
!119 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 331, i32 38}
!120 = !{ptr @ss_ecm_intr_comp_desc, !121, !"ss_ecm_intr_comp_desc", i1 false, i1 false}
!121 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 294, i32 41}
!122 = !{ptr @ss_ecm_bulk_comp_desc, !123, !"ss_ecm_bulk_comp_desc", i1 false, i1 false}
!123 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 322, i32 41}
!124 = !{ptr @.str.31, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 662, i32 2}
!126 = !{ptr @.str.32, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @ecm_open.__UNIQUE_ID_ddebug352, !125, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!128 = !{ptr @.str.33, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 672, i32 2}
!130 = !{ptr @ecm_close.__UNIQUE_ID_ddebug353, !129, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!131 = !{ptr @.str.34, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 909, i32 2}
!133 = !{ptr @.str.35, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @ecm_unbind.__UNIQUE_ID_ddebug355, !132, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!135 = !{ptr @.str.36, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 543, i32 3}
!137 = !{ptr @.str.37, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @ecm_set_alt.__UNIQUE_ID_ddebug346, !136, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!139 = !{ptr @.str.38, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 546, i32 4}
!141 = !{ptr @ecm_set_alt.__UNIQUE_ID_ddebug347, !140, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!142 = !{ptr @.str.39, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 558, i32 4}
!144 = !{ptr @ecm_set_alt.__UNIQUE_ID_ddebug348, !143, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!145 = !{ptr @.str.40, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 564, i32 4}
!147 = !{ptr @ecm_set_alt.__UNIQUE_ID_ddebug349, !146, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!148 = !{ptr @.str.41, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 587, i32 4}
!150 = !{ptr @ecm_set_alt.__UNIQUE_ID_ddebug350, !149, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!151 = !{ptr @.str.42, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 489, i32 3}
!153 = !{ptr @.str.43, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @ecm_setup.__UNIQUE_ID_ddebug343, !152, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!155 = !{ptr @.str.44, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 509, i32 3}
!157 = !{ptr @ecm_setup.__UNIQUE_ID_ddebug344, !156, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!158 = !{ptr @.str.45, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 516, i32 3}
!160 = !{ptr @ecm_setup.__UNIQUE_ID_ddebug345, !159, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!161 = !{ptr @.str.46, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 523, i32 4}
!163 = !{ptr @ecm_setup._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @ecm_setup._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.47, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/gadget/function/f_ecm.c", i32 625, i32 2}
!167 = !{ptr @.str.48, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @ecm_disable.__UNIQUE_ID_ddebug351, !166, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{i8 0, i8 2}
!179 = !{!"auto-init"}
!180 = !{i64 2148226524, i64 2148226529, i64 2148226542, i64 2148226586, i64 2148226620, i64 2148226641}
!181 = !{i64 2148608263, i64 2148608289, i64 2148608318, i64 2148608352, i64 2148608383, i64 2148608406}
!182 = !{i64 2148605798, i64 2148605824, i64 2148605853, i64 2148605887, i64 2148605918, i64 2148605941}
