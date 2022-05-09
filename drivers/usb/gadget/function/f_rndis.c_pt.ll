; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/f_rndis.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_rndis.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rndis_borrow_net\22, \22a\22\09"
module asm "\09.weak\09__crc_rndis_borrow_net\09\09\09\09"
module asm "\09.long\09__crc_rndis_borrow_net\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rndis_borrow_net:\09\09\09\09\09"
module asm "\09.asciz \09\22rndis_borrow_net\22\09\09\09\09\09"
module asm "__kstrtabns_rndis_borrow_net:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.usb_function_driver = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_union_desc = type { i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.usb_cdc_header_desc = type <{ i8, i8, i8, i16 }>
%struct.usb_cdc_call_mgmt_descriptor = type { i8, i8, i8, i8, i8 }
%struct.usb_cdc_acm_descriptor = type { i8, i8, i8, i8 }
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.f_rndis_opts = type { %struct.usb_function_instance, i32, ptr, ptr, i8, i8, ptr, %struct.usb_os_desc, [16 x i8], i8, i8, i8, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_os_desc = type { ptr, %struct.list_head, i32, i32, ptr, %struct.config_group, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.f_rndis = type { %struct.gether, i8, i8, [6 x i8], i32, ptr, ptr, ptr, ptr, %struct.atomic_t }
%struct.gether = type { %struct.usb_function, ptr, ptr, ptr, i8, i16, i32, i8, i32, i32, i8, ptr, ptr, ptr, ptr }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.usb_os_desc_table = type { i32, ptr }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
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
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }

@__kstrtab_rndis_borrow_net = external dso_local constant [0 x i8], align 1
@__kstrtabns_rndis_borrow_net = external dso_local constant [0 x i8], align 1
@__ksymtab_rndis_borrow_net = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rndis_borrow_net to i32), ptr @__kstrtab_rndis_borrow_net, ptr @__kstrtabns_rndis_borrow_net }, section "___ksymtab_gpl+rndis_borrow_net", align 4
@__UNIQUE_ID_alias353 = internal constant [32 x i8] c"usb_f_rndis.alias=usbfunc:rndis\00", section ".modinfo", align 1
@rndisusb_func = internal global { %struct.usb_function_driver, [40 x i8] } { %struct.usb_function_driver { ptr @.str, ptr null, %struct.list_head zeroinitializer, ptr @rndis_alloc_inst, ptr @rndis_alloc }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_usb_f_rndis__354_1030_rndismod_init6 = internal global ptr @rndismod_init, section ".initcall6.init", align 4
@__exitcall_rndismod_exit = internal global ptr @rndismod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file355 = internal constant [57 x i8] c"usb_f_rndis.file=drivers/usb/gadget/function/usb_f_rndis\00", section ".modinfo", align 1
@__UNIQUE_ID_license356 = internal constant [24 x i8] c"usb_f_rndis.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author357 = internal constant [34 x i8] c"usb_f_rndis.author=David Brownell\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rndis\00", [26 x i8] zeroinitializer }, align 32
@rndis_alloc_inst.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&opts->lock\00", [20 x i8] zeroinitializer }, align 32
@rndis_iad_descriptor = internal global { %struct.usb_interface_assoc_descriptor, [24 x i8] } { %struct.usb_interface_assoc_descriptor { i8 8, i8 11, i8 0, i8 2, i8 2, i8 6, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@rndis_func_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @rndis_item_ops, ptr null, ptr @rndis_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@rndis_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @rndis_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@rndis_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @rndis_opts_attr_dev_addr, ptr @rndis_opts_attr_host_addr, ptr @rndis_opts_attr_qmult, ptr @rndis_opts_attr_ifname, ptr @rndis_opts_attr_class, ptr @rndis_opts_attr_subclass, ptr @rndis_opts_attr_protocol, ptr null], [32 x i8] zeroinitializer }, align 32
@rndis_opts_attr_dev_addr = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.4, ptr null, i16 420, ptr @rndis_opts_dev_addr_show, ptr @rndis_opts_dev_addr_store }, [44 x i8] zeroinitializer }, align 32
@rndis_opts_attr_host_addr = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.5, ptr null, i16 420, ptr @rndis_opts_host_addr_show, ptr @rndis_opts_host_addr_store }, [44 x i8] zeroinitializer }, align 32
@rndis_opts_attr_qmult = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.6, ptr null, i16 420, ptr @rndis_opts_qmult_show, ptr @rndis_opts_qmult_store }, [44 x i8] zeroinitializer }, align 32
@rndis_opts_attr_ifname = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.8, ptr null, i16 420, ptr @rndis_opts_ifname_show, ptr @rndis_opts_ifname_store }, [44 x i8] zeroinitializer }, align 32
@rndis_opts_attr_class = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.9, ptr null, i16 420, ptr @rndis_opts_class_show, ptr @rndis_opts_class_store }, [44 x i8] zeroinitializer }, align 32
@rndis_opts_attr_subclass = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.12, ptr null, i16 420, ptr @rndis_opts_subclass_show, ptr @rndis_opts_subclass_store }, [44 x i8] zeroinitializer }, align 32
@rndis_opts_attr_protocol = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.13, ptr null, i16 420, ptr @rndis_opts_protocol_show, ptr @rndis_opts_protocol_store }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"host_addr\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qmult\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ifname\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"class\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%02hhx\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"subclass\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"protocol\00", [23 x i8] zeroinitializer }, align 32
@rndis_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @rndis_string_table, ptr null], [24 x i8] zeroinitializer }, align 32
@rndis_control_intf = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 1, i8 2, i8 2, i8 -1, i8 0 }, [23 x i8] zeroinitializer }, align 32
@rndis_data_intf = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 2, i8 10, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@rndis_union_desc = internal global { %struct.usb_cdc_union_desc, [27 x i8] } { %struct.usb_cdc_union_desc { i8 5, i8 36, i8 6, i8 0, i8 0 }, [27 x i8] zeroinitializer }, align 32
@fs_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@fs_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@fs_notify_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 2048, i8 32, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hs_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hs_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hs_notify_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 2048, i8 9, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_notify_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 2048, i8 9, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@eth_fs_function = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @rndis_iad_descriptor, ptr @rndis_control_intf, ptr @header_desc, ptr @call_mgmt_descriptor, ptr @rndis_acm_descriptor, ptr @rndis_union_desc, ptr @fs_notify_desc, ptr @rndis_data_intf, ptr @fs_in_desc, ptr @fs_out_desc, ptr null], [52 x i8] zeroinitializer }, align 32
@eth_hs_function = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @rndis_iad_descriptor, ptr @rndis_control_intf, ptr @header_desc, ptr @call_mgmt_descriptor, ptr @rndis_acm_descriptor, ptr @rndis_union_desc, ptr @hs_notify_desc, ptr @rndis_data_intf, ptr @hs_in_desc, ptr @hs_out_desc, ptr null], [52 x i8] zeroinitializer }, align 32
@eth_ss_function = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @rndis_iad_descriptor, ptr @rndis_control_intf, ptr @header_desc, ptr @call_mgmt_descriptor, ptr @rndis_acm_descriptor, ptr @rndis_union_desc, ptr @ss_notify_desc, ptr @ss_intr_comp_desc, ptr @rndis_data_intf, ptr @ss_in_desc, ptr @ss_bulk_comp_desc, ptr @ss_out_desc, ptr @ss_bulk_comp_desc, ptr null], [40 x i8] zeroinitializer }, align 32
@rndis_bind.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, i8 0, i8 -52, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb_f_rndis\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rndis_bind\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/usb/gadget/function/f_rndis.c\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RNDIS: %s speed IN/%s OUT/%s NOTIFY/%s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"super\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dual\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@rndis_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.15, ptr @.str.16, i32 832, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: can't bind, err %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rndis_bind._entry_ptr = internal global ptr @rndis_bind._entry, section ".printk_index", align 4
@rndis_string_table = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @rndis_string_defs }, [24 x i8] zeroinitializer }, align 32
@rndis_string_defs = internal global { [4 x %struct.usb_string], [32 x i8] } { [4 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.24 }, %struct.usb_string { i8 0, ptr @.str.25 }, %struct.usb_string { i8 0, ptr @.str.26 }, %struct.usb_string zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RNDIS Communications Control\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RNDIS Ethernet Data\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RNDIS\00", [26 x i8] zeroinitializer }, align 32
@rndis_response_complete.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.27, ptr @.str.16, ptr @.str.28, i8 0, i8 107, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rndis_response_complete\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RNDIS %s response error %d, %d/%d\0A\00", [61 x i8] zeroinitializer }, align 32
@rndis_response_complete.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.27, ptr @.str.16, ptr @.str.29, i8 0, i8 111, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"notify/1 --> %d\0A\00", [47 x i8] zeroinitializer }, align 32
@header_desc = internal global { %struct.usb_cdc_header_desc, [27 x i8] } { %struct.usb_cdc_header_desc <{ i8 5, i8 36, i8 0, i16 4097 }>, [27 x i8] zeroinitializer }, align 32
@call_mgmt_descriptor = internal global { %struct.usb_cdc_call_mgmt_descriptor, [27 x i8] } { %struct.usb_cdc_call_mgmt_descriptor { i8 5, i8 36, i8 1, i8 0, i8 1 }, [27 x i8] zeroinitializer }, align 32
@rndis_acm_descriptor = internal global { %struct.usb_cdc_acm_descriptor, [28 x i8] } { %struct.usb_cdc_acm_descriptor { i8 4, i8 36, i8 2, i8 0 }, [28 x i8] zeroinitializer }, align 32
@ss_intr_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 2048 }, [26 x i8] zeroinitializer }, align 32
@ss_bulk_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@rndis_open.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.30, ptr @.str.16, ptr @.str.31, i8 0, i8 -96, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rndis_open\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@rndis_close.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.32, ptr @.str.16, ptr @.str.31, i8 0, i8 -94, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rndis_close\00", [20 x i8] zeroinitializer }, align 32
@rndis_set_alt.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.33, ptr @.str.16, ptr @.str.34, i8 0, i8 -120, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rndis_set_alt\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reset rndis control %d\0A\00", [40 x i8] zeroinitializer }, align 32
@rndis_set_alt.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.33, ptr @.str.16, ptr @.str.35, i8 0, i8 -119, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"init rndis ctrl %d\0A\00", [44 x i8] zeroinitializer }, align 32
@rndis_set_alt.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.33, ptr @.str.16, ptr @.str.36, i8 0, i8 -116, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reset rndis\0A\00", [19 x i8] zeroinitializer }, align 32
@rndis_set_alt.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.33, ptr @.str.16, ptr @.str.37, i8 0, i8 -115, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"init rndis\0A\00", [20 x i8] zeroinitializer }, align 32
@rndis_set_alt.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.33, ptr @.str.16, ptr @.str.38, i8 0, i8 -108, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RNDIS RX/TX early activation ... \0A\00", [61 x i8] zeroinitializer }, align 32
@rndis_setup.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.39, ptr @.str.16, ptr @.str.40, i8 0, i8 -127, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rndis_setup\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"invalid control req%02x.%02x v%04x i%04x l%d\0A\00", [50 x i8] zeroinitializer }, align 32
@rndis_setup.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.39, ptr @.str.16, ptr @.str.41, i8 0, i8 -125, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rndis req%02x.%02x v%04x i%04x l%d\0A\00", [60 x i8] zeroinitializer }, align 32
@rndis_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.39, ptr @.str.16, i32 531, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rndis response on err %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rndis_setup._entry_ptr = internal global ptr @rndis_setup._entry, section ".printk_index", align 4
@rndis_command_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.16, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013RNDIS command error %d, %d/%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rndis_command_complete\00", [41 x i8] zeroinitializer }, align 32
@rndis_command_complete._entry_ptr = internal global ptr @rndis_command_complete._entry, section ".printk_index", align 4
@rndis_disable.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.45, ptr @.str.16, ptr @.str.46, i8 0, i8 -102, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rndis_disable\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rndis deactivated\0A\00", [45 x i8] zeroinitializer }, align 32
@rndis_response_available.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.47, ptr @.str.16, ptr @.str.48, i8 0, i8 101, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rndis_response_available\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"notify/0 --> %d\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 8448, i64 41217]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967188, i64 4294967192]
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"rndisusb_func\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 1030, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 926, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"rndis_iad_descriptor\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 173, i32 1 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 942, i32 54 }
@___asan_gen_.68 = private unnamed_addr constant [16 x i8] c"rndis_func_type\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 892, i32 38 }
@___asan_gen_.72 = private unnamed_addr constant [41 x i8] c"../drivers/usb/gadget/function/u_ether.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 140, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"rndis_item_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 858, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"rndis_attrs\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 881, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant [25 x i8] c"rndis_opts_attr_dev_addr\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [26 x i8] c"rndis_opts_attr_host_addr\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [22 x i8] c"rndis_opts_attr_qmult\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [23 x i8] c"rndis_opts_attr_ifname\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [22 x i8] c"rndis_opts_attr_class\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [25 x i8] c"rndis_opts_attr_subclass\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [25 x i8] c"rndis_opts_attr_protocol\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 861, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 864, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 867, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 870, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 873, i32 1 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 876, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 879, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant [14 x i8] c"rndis_strings\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 363, i32 35 }
@___asan_gen_.134 = private unnamed_addr constant [19 x i8] c"rndis_control_intf\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 111, i32 40 }
@___asan_gen_.137 = private unnamed_addr constant [16 x i8] c"rndis_data_intf\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 159, i32 40 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"rndis_union_desc\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 149, i32 34 }
@___asan_gen_.143 = private unnamed_addr constant [11 x i8] c"fs_in_desc\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 197, i32 39 }
@___asan_gen_.146 = private unnamed_addr constant [12 x i8] c"fs_out_desc\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 205, i32 39 }
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"fs_notify_desc\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 187, i32 39 }
@___asan_gen_.152 = private unnamed_addr constant [11 x i8] c"hs_in_desc\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 243, i32 39 }
@___asan_gen_.155 = private unnamed_addr constant [12 x i8] c"hs_out_desc\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 252, i32 39 }
@___asan_gen_.158 = private unnamed_addr constant [15 x i8] c"hs_notify_desc\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 233, i32 39 }
@___asan_gen_.161 = private unnamed_addr constant [11 x i8] c"ss_in_desc\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 301, i32 39 }
@___asan_gen_.164 = private unnamed_addr constant [12 x i8] c"ss_out_desc\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 310, i32 39 }
@___asan_gen_.167 = private unnamed_addr constant [15 x i8] c"ss_notify_desc\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 281, i32 39 }
@___asan_gen_.170 = private unnamed_addr constant [16 x i8] c"eth_fs_function\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 213, i32 38 }
@___asan_gen_.173 = private unnamed_addr constant [16 x i8] c"eth_hs_function\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 261, i32 38 }
@___asan_gen_.176 = private unnamed_addr constant [16 x i8] c"eth_ss_function\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 328, i32 38 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 814, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 832, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [19 x i8] c"rndis_string_table\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 358, i32 34 }
@___asan_gen_.215 = private unnamed_addr constant [18 x i8] c"rndis_string_defs\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 351, i32 26 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 352, i32 10 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 353, i32 10 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 354, i32 10 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 428, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 444, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant [12 x i8] c"header_desc\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 124, i32 35 }
@___asan_gen_.239 = private unnamed_addr constant [21 x i8] c"call_mgmt_descriptor\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 132, i32 44 }
@___asan_gen_.242 = private unnamed_addr constant [21 x i8] c"rndis_acm_descriptor\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 141, i32 38 }
@___asan_gen_.245 = private unnamed_addr constant [18 x i8] c"ss_intr_comp_desc\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 291, i32 41 }
@___asan_gen_.248 = private unnamed_addr constant [18 x i8] c"ss_bulk_comp_desc\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 319, i32 41 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 640, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 651, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 547, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 551, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 561, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 566, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 594, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 517, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 524, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 531, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 459, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 617, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.312 = private constant [41 x i8] c"../drivers/usb/gadget/function/f_rndis.c\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 407, i32 3 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_alias353, ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_file355, ptr @__UNIQUE_ID_license356, ptr @__exitcall_rndismod_exit, ptr @__initcall__kmod_usb_f_rndis__354_1030_rndismod_init6, ptr @__ksymtab_rndis_borrow_net, ptr @rndis_bind._entry, ptr @rndis_bind._entry_ptr, ptr @rndis_command_complete._entry, ptr @rndis_command_complete._entry_ptr, ptr @rndis_setup._entry, ptr @rndis_setup._entry_ptr, ptr @rndismod_exit, ptr @rndisusb_func, ptr @.str, ptr @rndis_alloc_inst.__key, ptr @.str.1, ptr @rndis_iad_descriptor, ptr @.str.2, ptr @rndis_func_type, ptr @.str.3, ptr @rndis_item_ops, ptr @rndis_attrs, ptr @rndis_opts_attr_dev_addr, ptr @rndis_opts_attr_host_addr, ptr @rndis_opts_attr_qmult, ptr @rndis_opts_attr_ifname, ptr @rndis_opts_attr_class, ptr @rndis_opts_attr_subclass, ptr @rndis_opts_attr_protocol, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @rndis_strings, ptr @rndis_control_intf, ptr @rndis_data_intf, ptr @rndis_union_desc, ptr @fs_in_desc, ptr @fs_out_desc, ptr @fs_notify_desc, ptr @hs_in_desc, ptr @hs_out_desc, ptr @hs_notify_desc, ptr @ss_in_desc, ptr @ss_out_desc, ptr @ss_notify_desc, ptr @eth_fs_function, ptr @eth_hs_function, ptr @eth_ss_function, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @rndis_string_table, ptr @rndis_string_defs, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @header_desc, ptr @call_mgmt_descriptor, ptr @rndis_acm_descriptor, ptr @ss_intr_comp_desc, ptr @ss_bulk_comp_desc, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndisusb_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_alloc_inst.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_iad_descriptor to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_func_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_opts_attr_dev_addr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_opts_attr_host_addr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_opts_attr_qmult to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_opts_attr_ifname to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_opts_attr_class to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_opts_attr_subclass to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_opts_attr_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_control_intf to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_data_intf to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_union_desc to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_notify_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_notify_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_notify_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eth_fs_function to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eth_hs_function to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eth_ss_function to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_string_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_string_defs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @header_desc to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @call_mgmt_descriptor to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_acm_descriptor to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_intr_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_bulk_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rndis_command_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rndis_borrow_net(ptr nocapture noundef %f, ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bound = getelementptr inbounds %struct.f_rndis_opts, ptr %f, i32 0, i32 4
  %0 = ptrtoint ptr %bound to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bound, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %net2 = getelementptr inbounds %struct.f_rndis_opts, ptr %f, i32 0, i32 3
  %2 = ptrtoint ptr %net2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net2, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  tail call void @gether_cleanup(ptr noundef %add.ptr.i) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @free_netdev(ptr noundef %3) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = ptrtoint ptr %bound to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %bound, align 4
  %borrowed_net = getelementptr inbounds %struct.f_rndis_opts, ptr %f, i32 0, i32 5
  %5 = ptrtoint ptr %borrowed_net to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %borrowed_net, align 1
  %net4 = getelementptr inbounds %struct.f_rndis_opts, ptr %f, i32 0, i32 3
  %6 = ptrtoint ptr %net4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %net, ptr %net4, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rndismod_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_function_unregister(ptr noundef nonnull @rndisusb_func) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rndismod_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_function_register(ptr noundef nonnull @rndisusb_func) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rndis_alloc_inst() #0 align 64 {
entry:
  %descs = alloca [1 x ptr], align 4
  %names = alloca [1 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %descs) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %names) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 344) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rndis_ext_compat_id = getelementptr inbounds %struct.f_rndis_opts, ptr %call7.i.i, i32 0, i32 8
  %rndis_os_desc = getelementptr inbounds %struct.f_rndis_opts, ptr %call7.i.i, i32 0, i32 7
  %1 = ptrtoint ptr %rndis_os_desc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rndis_ext_compat_id, ptr %rndis_os_desc, align 8
  %lock = getelementptr inbounds %struct.f_rndis_opts, ptr %call7.i.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rndis_alloc_inst.__key) #9
  %free_func_inst = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %free_func_inst to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rndis_free_inst, ptr %free_func_inst, align 8
  %call.i = tail call ptr @gether_setup_name_default(ptr noundef nonnull @.str.3) #9
  %net = getelementptr inbounds %struct.f_rndis_opts, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %net, align 4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %ext_prop = getelementptr inbounds %struct.f_rndis_opts, ptr %call7.i.i, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %ext_prop to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %ext_prop, ptr %ext_prop, align 4
  %prev.i = getelementptr inbounds %struct.f_rndis_opts, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ext_prop, ptr %prev.i, align 8
  %6 = load i8, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @rndis_iad_descriptor, i32 0, i32 4), align 1
  %class = getelementptr inbounds %struct.f_rndis_opts, ptr %call7.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %class to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %class, align 4
  %8 = load i8, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @rndis_iad_descriptor, i32 0, i32 5), align 1
  %subclass = getelementptr inbounds %struct.f_rndis_opts, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %subclass to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %subclass, align 1
  %10 = load i8, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @rndis_iad_descriptor, i32 0, i32 6), align 1
  %protocol = getelementptr inbounds %struct.f_rndis_opts, ptr %call7.i.i, i32 0, i32 11
  %11 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %protocol, align 2
  %12 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rndis_os_desc, ptr %descs, align 4
  %13 = ptrtoint ptr %names to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str, ptr %names, align 4
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @rndis_func_type) #9
  %call18 = call ptr @usb_os_desc_prepare_interf_dir(ptr noundef nonnull %call7.i.i, i32 noundef 1, ptr noundef nonnull %descs, ptr noundef nonnull %names, ptr noundef null) #9
  %cmp.i49 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end9
  %borrowed_net.i = getelementptr inbounds %struct.f_rndis_opts, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %borrowed_net.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %borrowed_net.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then20.rndis_free_inst.exit_crit_edge

if.then20.rndis_free_inst.exit_crit_edge:         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %rndis_free_inst.exit

if.then.i:                                        ; preds = %if.then20
  %bound.i = getelementptr inbounds %struct.f_rndis_opts, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %bound.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bound.i, align 8, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool1.not.i = icmp eq i8 %17, 0
  %18 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net, align 4
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 2304
  call void @gether_cleanup(ptr noundef %add.ptr.i.i) #9
  br label %rndis_free_inst.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @free_netdev(ptr noundef %19) #9
  br label %rndis_free_inst.exit

rndis_free_inst.exit:                             ; preds = %if.else.i, %if.then2.i, %if.then20.rndis_free_inst.exit_crit_edge
  %rndis_interf_group.i = getelementptr inbounds %struct.f_rndis_opts, ptr %call7.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %rndis_interf_group.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rndis_interf_group.i, align 4
  call void @kfree(ptr noundef %21) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %rndis_interf_group24 = getelementptr inbounds %struct.f_rndis_opts, ptr %call7.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %rndis_interf_group24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call18, ptr %rndis_interf_group24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %rndis_free_inst.exit, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.then5 ], [ %call18, %rndis_free_inst.exit ], [ %call7.i.i, %if.end23 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %names) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %descs) #9
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rndis_alloc(ptr noundef %fi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 192) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.f_rndis_opts, ptr %fi, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %refcnt = getelementptr inbounds %struct.f_rndis_opts, ptr %fi, i32 0, i32 13
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %refcnt, align 4
  %net = getelementptr inbounds %struct.f_rndis_opts, ptr %fi, i32 0, i32 3
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %ethaddr = getelementptr inbounds %struct.f_rndis, ptr %call7.i.i, i32 0, i32 3
  tail call void @gether_get_host_addr_u8(ptr noundef %4, ptr noundef %ethaddr) #9
  %vendor_id = getelementptr inbounds %struct.f_rndis_opts, ptr %fi, i32 0, i32 1
  %5 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vendor_id, align 4
  %vendorID = getelementptr inbounds %struct.f_rndis, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %vendorID to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %vendorID, align 8
  %manufacturer = getelementptr inbounds %struct.f_rndis_opts, ptr %fi, i32 0, i32 2
  %8 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %manufacturer, align 4
  %manufacturer2 = getelementptr inbounds %struct.f_rndis, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %manufacturer2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %manufacturer2, align 4
  %11 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 2304
  %ioport = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %ioport to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %ioport, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %cdc_filter = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %cdc_filter to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %cdc_filter, align 2
  %header_len = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %header_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 44, ptr %header_len, align 4
  %wrap = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 11
  %16 = ptrtoint ptr %wrap to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @rndis_add_header, ptr %wrap, align 8
  %unwrap = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 12
  %17 = ptrtoint ptr %unwrap to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @rndis_rm_hdr, ptr %unwrap, align 4
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str, ptr %call7.i.i, align 8
  %bind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 9
  %19 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @rndis_bind, ptr %bind, align 4
  %unbind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @rndis_unbind, ptr %unbind, align 8
  %set_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 13
  %21 = ptrtoint ptr %set_alt to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @rndis_set_alt, ptr %set_alt, align 4
  %setup = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 16
  %22 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @rndis_setup, ptr %setup, align 8
  %disable = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 15
  %23 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @rndis_disable, ptr %disable, align 4
  %free_func = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 11
  %24 = ptrtoint ptr %free_func to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @rndis_free, ptr %free_func, align 4
  %call23 = tail call ptr @rndis_register(ptr noundef nonnull @rndis_response_available, ptr noundef nonnull %call7.i.i) #9
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %params28 = getelementptr inbounds %struct.f_rndis, ptr %call7.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %params28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call23, ptr %params28, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then25, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call23, %if.then25 ], [ %call7.i.i, %if.end27 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rndis_free_inst(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %borrowed_net = getelementptr inbounds %struct.f_rndis_opts, ptr %f, i32 0, i32 5
  %0 = ptrtoint ptr %borrowed_net to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %borrowed_net, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %bound = getelementptr inbounds %struct.f_rndis_opts, ptr %f, i32 0, i32 4
  %2 = ptrtoint ptr %bound to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bound, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  %net3 = getelementptr inbounds %struct.f_rndis_opts, ptr %f, i32 0, i32 3
  %4 = ptrtoint ptr %net3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net3, align 4
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %5, i32 2304
  tail call void @gether_cleanup(ptr noundef %add.ptr.i) #9
  br label %if.end4

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @free_netdev(ptr noundef %5) #9
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2, %entry.if.end4_crit_edge
  %rndis_interf_group = getelementptr inbounds %struct.f_rndis_opts, ptr %f, i32 0, i32 6
  %6 = ptrtoint ptr %rndis_interf_group to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rndis_interf_group, align 4
  tail call void @kfree(ptr noundef %7) #9
  tail call void @kfree(ptr noundef %f) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_os_desc_prepare_interf_dir(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gether_setup_name_default(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rndis_attr_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_put_function_instance(ptr noundef %item) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_opts_dev_addr_show(ptr noundef %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %net = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_get_dev_addr(ptr noundef %1, ptr noundef %page, i32 noundef 4096) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_opts_dev_addr_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %refcnt = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 13
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 3
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %call2 = tail call i32 @gether_set_dev_addr(ptr noundef %3, ptr noundef %page) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %tobool4.not, i32 %len, i32 %call2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_get_dev_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_dev_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_opts_host_addr_show(ptr noundef %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %net = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_get_host_addr(ptr noundef %1, ptr noundef %page, i32 noundef 4096) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_opts_host_addr_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %refcnt = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 13
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 3
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %call2 = tail call i32 @gether_set_host_addr(ptr noundef %3, ptr noundef %page) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %tobool4.not, i32 %len, i32 %call2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_get_host_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_host_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_opts_qmult_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %net = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_get_qmult(ptr noundef %1) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.7, i32 noundef %call1)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_opts_qmult_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !183
  %lock = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %refcnt = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 13
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 3
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %conv = zext i8 %6 to i32
  call void @gether_set_qmult(ptr noundef %4, i32 noundef %conv) #9
  br label %out

out:                                              ; preds = %if.end4, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_get_qmult(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_set_qmult(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_opts_ifname_show(ptr noundef %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %net = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_get_ifname(ptr noundef %1, ptr noundef %page, i32 noundef 4096) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_opts_ifname_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %refcnt = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 13
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %4

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 3
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_set_ifname(ptr noundef %3, ptr noundef %page, i32 noundef %len) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool3.not = icmp eq i32 %call1, 0
  %spec.select = select i1 %tobool3.not, i32 %len, i32 %call1
  br label %4

4:                                                ; preds = %if.end, %if.end.thread
  %5 = phi i32 [ -16, %if.end.thread ], [ %spec.select, %if.end ]
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_get_ifname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_ifname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_opts_class_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %class = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 9
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %class, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.10, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_opts_class_store(ptr noundef %item, ptr nocapture noundef readonly %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !183
  %lock = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %page, ptr noundef nonnull @.str.11, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %class = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 9
  %3 = ptrtoint ptr %class to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %class, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %len, %if.then ], [ -22, %entry.if.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #9
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_opts_subclass_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %subclass = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 10
  %0 = ptrtoint ptr %subclass to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %subclass, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.10, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_opts_subclass_store(ptr noundef %item, ptr nocapture noundef readonly %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !183
  %lock = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %page, ptr noundef nonnull @.str.11, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %subclass = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 10
  %3 = ptrtoint ptr %subclass to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %subclass, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %len, %if.then ], [ -22, %entry.if.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_opts_protocol_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %protocol = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 11
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protocol, align 2
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.10, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_opts_protocol_store(ptr noundef %item, ptr nocapture noundef readonly %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !183
  %lock = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %page, ptr noundef nonnull @.str.11, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %protocol = getelementptr inbounds %struct.f_rndis_opts, ptr %item, i32 0, i32 11
  %3 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %protocol, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %len, %if.then ], [ -22, %entry.if.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_get_host_addr_u8(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rndis_add_header(ptr nocapture noundef readnone %port, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @skb_realloc_headroom(ptr noundef nonnull %skb, i32 noundef 44) #9
  tail call void @rndis_add_hdr(ptr noundef %call) #9
  tail call void @consume_skb(ptr noundef nonnull %skb) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rndis_rm_hdr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_bind(ptr noundef %c, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev1, align 4
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %2 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fi, align 4
  %use_os_string = getelementptr inbounds %struct.usb_composite_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %use_os_string to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %use_os_string, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then3

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then3:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 8) #12
  %os_desc_table = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 7
  %6 = ptrtoint ptr %os_desc_table to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %os_desc_table, align 4
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.then3.cleanup_crit_edge, label %if.end8

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %os_desc_n = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 8
  %7 = ptrtoint ptr %os_desc_n to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %os_desc_n, align 4
  %rndis_os_desc = getelementptr inbounds %struct.f_rndis_opts, ptr %3, i32 0, i32 7
  %os_desc = getelementptr inbounds %struct.usb_os_desc_table, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %os_desc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %rndis_os_desc, ptr %os_desc, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %entry.if.end10_crit_edge
  %class = getelementptr inbounds %struct.f_rndis_opts, ptr %3, i32 0, i32 9
  %9 = ptrtoint ptr %class to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %class, align 4
  store i8 %10, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @rndis_iad_descriptor, i32 0, i32 4), align 1
  %subclass = getelementptr inbounds %struct.f_rndis_opts, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %subclass to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %subclass, align 1
  store i8 %12, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @rndis_iad_descriptor, i32 0, i32 5), align 1
  %protocol = getelementptr inbounds %struct.f_rndis_opts, ptr %3, i32 0, i32 11
  %13 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %protocol, align 2
  store i8 %14, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @rndis_iad_descriptor, i32 0, i32 6), align 1
  %bound = getelementptr inbounds %struct.f_rndis_opts, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %bound to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bound, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool11.not = icmp eq i8 %16, 0
  br i1 %tobool11.not, label %if.then12, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then12:                                        ; preds = %if.end10
  %net = getelementptr inbounds %struct.f_rndis_opts, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void @gether_set_gadget(ptr noundef %18, ptr noundef %20) #9
  %21 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net, align 4
  %call14 = tail call i32 @gether_register_netdev(ptr noundef %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then12.fail_crit_edge

if.then12.fail_crit_edge:                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end17:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %bound to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %bound, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.end10.if.end19_crit_edge
  %call20 = tail call ptr @usb_gstrings_attach(ptr noundef %1, ptr noundef nonnull @rndis_strings, i32 noundef 4) #9
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %call20 to i32
  br label %fail

if.end24:                                         ; preds = %if.end19
  %25 = ptrtoint ptr %call20 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %call20, align 4
  store i8 %26, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @rndis_control_intf, i32 0, i32 8), align 1
  %arrayidx26 = getelementptr %struct.usb_string, ptr %call20, i32 1
  %27 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx26, align 4
  store i8 %28, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @rndis_data_intf, i32 0, i32 8), align 1
  %arrayidx28 = getelementptr %struct.usb_string, ptr %call20, i32 2
  %29 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx28, align 4
  store i8 %30, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @rndis_iad_descriptor, i32 0, i32 7), align 1
  %call30 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp = icmp slt i32 %call30, 0
  br i1 %cmp, label %if.end24.fail_crit_edge, label %if.end32

if.end24.fail_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end32:                                         ; preds = %if.end24
  %conv = trunc i32 %call30 to i8
  %ctrl_id = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 1
  %31 = ptrtoint ptr %ctrl_id to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv, ptr %ctrl_id, align 4
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @rndis_iad_descriptor, i32 0, i32 2), align 1
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @rndis_control_intf, i32 0, i32 2), align 1
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @rndis_union_desc, i32 0, i32 3), align 1
  %32 = ptrtoint ptr %use_os_string to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load37 = load i8, ptr %use_os_string, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load37)
  %tobool40.not = icmp sgt i8 %bf.load37, -1
  br i1 %tobool40.not, label %if.end32.if.end45_crit_edge, label %if.then41

if.end32.if.end45_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then41:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %conv42 = and i32 %call30, 255
  %os_desc_table43 = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 7
  %33 = ptrtoint ptr %os_desc_table43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %os_desc_table43, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv42, ptr %34, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end32.if.end45_crit_edge
  %call46 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end45.fail_crit_edge, label %if.end50

if.end45.fail_crit_edge:                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end50:                                         ; preds = %if.end45
  %conv51 = trunc i32 %call46 to i8
  %data_id = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 2
  %36 = ptrtoint ptr %data_id to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv51, ptr %data_id, align 1
  store i8 %conv51, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @rndis_data_intf, i32 0, i32 2), align 1
  store i8 %conv51, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @rndis_union_desc, i32 0, i32 4), align 1
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %call55 = tail call ptr @usb_ep_autoconfig(ptr noundef %38, ptr noundef nonnull @fs_in_desc) #9
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %if.end50.fail_crit_edge, label %if.end58

if.end50.fail_crit_edge:                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end58:                                         ; preds = %if.end50
  %in_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 2
  %39 = ptrtoint ptr %in_ep to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call55, ptr %in_ep, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %call60 = tail call ptr @usb_ep_autoconfig(ptr noundef %41, ptr noundef nonnull @fs_out_desc) #9
  %tobool61.not = icmp eq ptr %call60, null
  br i1 %tobool61.not, label %if.end58.fail_crit_edge, label %if.end63

if.end58.fail_crit_edge:                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end63:                                         ; preds = %if.end58
  %out_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 3
  %42 = ptrtoint ptr %out_ep to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call60, ptr %out_ep, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call66 = tail call ptr @usb_ep_autoconfig(ptr noundef %44, ptr noundef nonnull @fs_notify_desc) #9
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %if.end63.fail_crit_edge, label %if.end69

if.end63.fail_crit_edge:                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end69:                                         ; preds = %if.end63
  %notify = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 7
  %45 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call66, ptr %notify, align 4
  %call70 = tail call ptr @usb_ep_alloc_request(ptr noundef nonnull %call66, i32 noundef 3264) #9
  %notify_req = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 8
  %46 = ptrtoint ptr %notify_req to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call70, ptr %notify_req, align 4
  %tobool72.not = icmp eq ptr %call70, null
  br i1 %tobool72.not, label %if.end69.fail_crit_edge, label %if.end74

if.end69.fail_crit_edge:                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end74:                                         ; preds = %if.end69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3264, i32 noundef 8) #12
  %48 = ptrtoint ptr %notify_req to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %notify_req, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call7.i, ptr %49, align 4
  %51 = load ptr, ptr %notify_req, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %tobool79.not = icmp eq ptr %53, null
  br i1 %tobool79.not, label %if.end74.fail_crit_edge, label %if.end81

if.end74.fail_crit_edge:                          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end81:                                         ; preds = %if.end74
  %length = getelementptr inbounds %struct.usb_request, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 8, ptr %length, align 4
  %55 = ptrtoint ptr %notify_req to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %notify_req, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %f, ptr %context, align 4
  %58 = load ptr, ptr %notify_req, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @rndis_response_complete, ptr %complete, align 4
  %60 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_in_desc, i32 0, i32 2), align 1
  store i8 %60, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_in_desc, i32 0, i32 2), align 1
  %61 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_out_desc, i32 0, i32 2), align 1
  store i8 %61, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_out_desc, i32 0, i32 2), align 1
  %62 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_notify_desc, i32 0, i32 2), align 1
  store i8 %62, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_notify_desc, i32 0, i32 2), align 1
  store i8 %60, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_in_desc, i32 0, i32 2), align 1
  store i8 %61, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_out_desc, i32 0, i32 2), align 1
  store i8 %62, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_notify_desc, i32 0, i32 2), align 1
  %call85 = tail call i32 @usb_assign_descriptors(ptr noundef %f, ptr noundef nonnull @eth_fs_function, ptr noundef nonnull @eth_hs_function, ptr noundef nonnull @eth_ss_function, ptr noundef nonnull @eth_ss_function) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end81.fail_crit_edge

if.end81.fail_crit_edge:                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end88:                                         ; preds = %if.end81
  %open = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 13
  %63 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @rndis_open, ptr %open, align 4
  %close = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 14
  %64 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @rndis_close, ptr %close, align 4
  %params = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 6
  %65 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %params, align 4
  %call91 = tail call i32 @rndis_set_param_medium(ptr noundef %66, i32 noundef 0, i32 noundef 0) #9
  %67 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %params, align 4
  %ethaddr = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 3
  tail call void @rndis_set_host_mac(ptr noundef %68, ptr noundef %ethaddr) #9
  %manufacturer = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 5
  %69 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %manufacturer, align 4
  %tobool93.not = icmp eq ptr %70, null
  br i1 %tobool93.not, label %if.end88.do.body_crit_edge, label %land.lhs.true

if.end88.do.body_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true:                                    ; preds = %if.end88
  %vendorID = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 4
  %71 = ptrtoint ptr %vendorID to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %vendorID, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool94.not = icmp eq i32 %72, 0
  br i1 %tobool94.not, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true95

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true95:                                  ; preds = %land.lhs.true
  %73 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %params, align 4
  %call99 = tail call i32 @rndis_set_param_vendor(ptr noundef %74, i32 noundef %72, ptr noundef nonnull %70) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %land.lhs.true95.do.body_crit_edge, label %if.then101

land.lhs.true95.do.body_crit_edge:                ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then101:                                       ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_free_all_descriptors(ptr noundef %f) #9
  br label %fail

do.body:                                          ; preds = %land.lhs.true95.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %if.end88.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_bind.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rndis_bind, %cleanup)) #9
          to label %if.then109 [label %cleanup], !srcloc !184

if.then109:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %76, i32 0, i32 11
  %77 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cdev1, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %max_speed.i = getelementptr inbounds %struct.usb_gadget, ptr %80, i32 0, i32 6
  %81 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %max_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %82)
  %cmp.i235 = icmp ult i32 %82, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %82)
  %cmp.i237 = icmp ult i32 %82, 3
  %cond = select i1 %cmp.i237, ptr @.str.20, ptr @.str.19
  %cond119 = select i1 %cmp.i235, ptr %cond, ptr @.str.18
  %83 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %in_ep, align 4
  %name = getelementptr inbounds %struct.usb_ep, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %name, align 4
  %87 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %out_ep, align 4
  %name124 = getelementptr inbounds %struct.usb_ep, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %name124 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %name124, align 4
  %91 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %notify, align 4
  %name126 = getelementptr inbounds %struct.usb_ep, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %name126 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %name126, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rndis_bind.__UNIQUE_ID_ddebug352, ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond119, ptr noundef %86, ptr noundef %90, ptr noundef %94) #9
  br label %cleanup

fail:                                             ; preds = %if.then101, %if.end81.fail_crit_edge, %if.end74.fail_crit_edge, %if.end69.fail_crit_edge, %if.end63.fail_crit_edge, %if.end58.fail_crit_edge, %if.end50.fail_crit_edge, %if.end45.fail_crit_edge, %if.end24.fail_crit_edge, %if.then22, %if.then12.fail_crit_edge
  %status.0 = phi i32 [ %24, %if.then22 ], [ %call30, %if.end24.fail_crit_edge ], [ %call46, %if.end45.fail_crit_edge ], [ %call85, %if.end81.fail_crit_edge ], [ -22, %if.then101 ], [ -12, %if.end74.fail_crit_edge ], [ -12, %if.end69.fail_crit_edge ], [ -19, %if.end63.fail_crit_edge ], [ -19, %if.end58.fail_crit_edge ], [ -19, %if.end50.fail_crit_edge ], [ %call14, %if.then12.fail_crit_edge ]
  %os_desc_table128 = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 7
  %95 = ptrtoint ptr %os_desc_table128 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %os_desc_table128, align 4
  tail call void @kfree(ptr noundef %96) #9
  %os_desc_n129 = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 8
  %97 = ptrtoint ptr %os_desc_n129 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %os_desc_n129, align 4
  %notify_req130 = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 8
  %98 = ptrtoint ptr %notify_req130 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %notify_req130, align 4
  %tobool131.not = icmp eq ptr %99, null
  br i1 %tobool131.not, label %fail.do.end140_crit_edge, label %if.then132

fail.do.end140_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end140

if.then132:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  tail call void @kfree(ptr noundef %101) #9
  %notify135 = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 7
  %102 = ptrtoint ptr %notify135 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %notify135, align 4
  %104 = ptrtoint ptr %notify_req130 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %notify_req130, align 4
  tail call void @usb_ep_free_request(ptr noundef %103, ptr noundef %105) #9
  br label %do.end140

do.end140:                                        ; preds = %if.then132, %fail.do.end140_crit_edge
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 4
  %dev142 = getelementptr inbounds %struct.usb_gadget, ptr %107, i32 0, i32 11
  %108 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev142, ptr noundef nonnull @.str.21, ptr noundef %109, i32 noundef %status.0) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end140, %if.then109, %do.body, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %do.end140 ], [ -12, %if.then3.cleanup_crit_edge ], [ 0, %if.then109 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rndis_unbind(ptr nocapture noundef readnone %c, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %os_desc_table = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 7
  %0 = ptrtoint ptr %os_desc_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %os_desc_table, align 4
  tail call void @kfree(ptr noundef %1) #9
  %os_desc_n = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 8
  %2 = ptrtoint ptr %os_desc_n to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %os_desc_n, align 4
  tail call void @usb_free_all_descriptors(ptr noundef %f) #9
  %notify_req = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 8
  %3 = ptrtoint ptr %notify_req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %notify_req, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %6) #9
  %notify = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 7
  %7 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %notify, align 4
  %9 = ptrtoint ptr %notify_req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %notify_req, align 4
  tail call void @usb_ep_free_request(ptr noundef %8, ptr noundef %10) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_set_alt(ptr noundef %f, i32 noundef %intf, i32 noundef %alt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  %ctrl_id = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl_id, align 4
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %intf)
  %cmp = icmp eq i32 %conv, %intf
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_set_alt.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rndis_set_alt, %do.end)) #9
          to label %if.then7 [label %do.end], !srcloc !184

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rndis_set_alt.__UNIQUE_ID_ddebug344, ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %intf) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %notify = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 7
  %8 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %notify, align 4
  %call8 = tail call i32 @usb_ep_disable(ptr noundef %9) #9
  %10 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %notify, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %do.body12, label %do.end.if.end38_crit_edge

do.end.if.end38_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

do.body12:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_set_alt.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rndis_set_alt, %do.end31)) #9
          to label %if.then26 [label %do.end31], !srcloc !184

if.then26:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %dev28 = getelementptr inbounds %struct.usb_gadget, ptr %15, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rndis_set_alt.__UNIQUE_ID_ddebug345, ptr noundef %dev28, ptr noundef nonnull @.str.35, i32 noundef %intf) #9
  br label %do.end31

do.end31:                                         ; preds = %if.then26, %do.body12
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %18 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %notify, align 4
  %call34 = tail call i32 @config_ep_by_speed(ptr noundef %17, ptr noundef %f, ptr noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.end31.if.end38_crit_edge, label %do.end31.cleanup151_crit_edge

do.end31.cleanup151_crit_edge:                    ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup151

do.end31.if.end38_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.end38:                                         ; preds = %do.end31.if.end38_crit_edge, %do.end.if.end38_crit_edge
  %20 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %notify, align 4
  %call40 = tail call i32 @usb_ep_enable(ptr noundef %21) #9
  br label %cleanup151

if.else:                                          ; preds = %entry
  %data_id = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 2
  %22 = ptrtoint ptr %data_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data_id, align 1
  %conv41 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv41, i32 %intf)
  %cmp42 = icmp eq i32 %conv41, %intf
  br i1 %cmp42, label %if.then44, label %if.else.cleanup151_crit_edge

if.else.cleanup151_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup151

if.then44:                                        ; preds = %if.else
  %in_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 2
  %24 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %in_ep, align 4
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enabled, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool45.not = icmp eq i8 %27, 0
  br i1 %tobool45.not, label %if.then44.if.end68_crit_edge, label %do.body47

if.then44.if.end68_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

do.body47:                                        ; preds = %if.then44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_set_alt.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rndis_set_alt, %do.end66)) #9
          to label %if.then61 [label %do.end66], !srcloc !184

if.then61:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %dev63 = getelementptr inbounds %struct.usb_gadget, ptr %29, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rndis_set_alt.__UNIQUE_ID_ddebug346, ptr noundef %dev63, ptr noundef nonnull @.str.36) #9
  br label %do.end66

do.end66:                                         ; preds = %if.then61, %do.body47
  tail call void @gether_disconnect(ptr noundef %f) #9
  br label %if.end68

if.end68:                                         ; preds = %do.end66, %if.then44.if.end68_crit_edge
  %30 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %in_ep, align 4
  %desc71 = getelementptr inbounds %struct.usb_ep, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %desc71 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc71, align 4
  %tobool72.not = icmp eq ptr %33, null
  br i1 %tobool72.not, label %if.end68.do.body77_crit_edge, label %lor.lhs.false

if.end68.do.body77_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body77

lor.lhs.false:                                    ; preds = %if.end68
  %out_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 3
  %34 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %out_ep, align 4
  %desc74 = getelementptr inbounds %struct.usb_ep, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %desc74 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %desc74, align 4
  %tobool75.not = icmp eq ptr %37, null
  br i1 %tobool75.not, label %lor.lhs.false.do.body77_crit_edge, label %lor.lhs.false.if.end116_crit_edge

lor.lhs.false.if.end116_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

lor.lhs.false.do.body77_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body77

do.body77:                                        ; preds = %lor.lhs.false.do.body77_crit_edge, %if.end68.do.body77_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_set_alt.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rndis_set_alt, %do.end96)) #9
          to label %if.then91 [label %do.end96], !srcloc !184

if.then91:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %dev93 = getelementptr inbounds %struct.usb_gadget, ptr %39, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rndis_set_alt.__UNIQUE_ID_ddebug347, ptr noundef %dev93, ptr noundef nonnull @.str.37) #9
  br label %do.end96

do.end96:                                         ; preds = %if.then91, %do.body77
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %42 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %in_ep, align 4
  %call100 = tail call i32 @config_ep_by_speed(ptr noundef %41, ptr noundef %f, ptr noundef %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %lor.lhs.false102, label %do.end96.cleanup_crit_edge

do.end96.cleanup_crit_edge:                       ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false102:                                 ; preds = %do.end96
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  %out_ep105 = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 3
  %46 = ptrtoint ptr %out_ep105 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %out_ep105, align 4
  %call106 = tail call i32 @config_ep_by_speed(ptr noundef %45, ptr noundef %f, ptr noundef %47) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %lor.lhs.false102.if.end116_crit_edge, label %lor.lhs.false102.cleanup_crit_edge

lor.lhs.false102.cleanup_crit_edge:               ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false102.if.end116_crit_edge:             ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

if.end116:                                        ; preds = %lor.lhs.false102.if.end116_crit_edge, %lor.lhs.false.if.end116_crit_edge
  %is_zlp_ok = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 4
  %48 = ptrtoint ptr %is_zlp_ok to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %is_zlp_ok, align 4
  %cdc_filter = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 5
  %49 = ptrtoint ptr %cdc_filter to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %cdc_filter, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_set_alt.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rndis_set_alt, %do.end138)) #9
          to label %if.then133 [label %do.end138], !srcloc !184

if.then133:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 4
  %dev135 = getelementptr inbounds %struct.usb_gadget, ptr %51, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rndis_set_alt.__UNIQUE_ID_ddebug348, ptr noundef %dev135, ptr noundef nonnull @.str.38) #9
  br label %do.end138

do.end138:                                        ; preds = %if.then133, %if.end116
  %call140 = tail call ptr @gether_connect(ptr noundef %f) #9
  %cmp.i = icmp ugt ptr %call140, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %cleanup.thread206

cleanup.thread:                                   ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %call140 to i32
  br label %cleanup151

cleanup.thread206:                                ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #11
  %params = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 6
  %53 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %params, align 4
  %call147 = tail call i32 @rndis_set_param_dev(ptr noundef %54, ptr noundef %call140, ptr noundef %cdc_filter) #9
  br label %cleanup151

cleanup:                                          ; preds = %lor.lhs.false102.cleanup_crit_edge, %do.end96.cleanup_crit_edge
  %55 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %in_ep, align 4
  %desc111 = getelementptr inbounds %struct.usb_ep, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %desc111 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %desc111, align 4
  %out_ep113 = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 3
  %58 = ptrtoint ptr %out_ep113 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %out_ep113, align 4
  %desc114 = getelementptr inbounds %struct.usb_ep, ptr %59, i32 0, i32 9
  %60 = ptrtoint ptr %desc114 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %desc114, align 4
  br label %cleanup151

cleanup151:                                       ; preds = %cleanup, %cleanup.thread206, %cleanup.thread, %if.else.cleanup151_crit_edge, %if.end38, %do.end31.cleanup151_crit_edge
  %retval.1 = phi i32 [ %52, %cleanup.thread ], [ 0, %cleanup.thread206 ], [ 0, %if.end38 ], [ -22, %cleanup ], [ -22, %if.else.cleanup151_crit_edge ], [ -22, %do.end31.cleanup151_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rndis_setup(ptr noundef %f, ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
    i16 8448, label %sw.bb
    i16 -24319, label %sw.bb9
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %lor.lhs.false, label %sw.bb.do.body_crit_edge

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false:                                    ; preds = %sw.bb
  %ctrl_id = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 1
  %20 = ptrtoint ptr %ctrl_id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ctrl_id, align 4
  %22 = zext i8 %21 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %22)
  %cmp.not = icmp eq i16 %8, %22
  br i1 %cmp.not, label %sw.epilog.thread134, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.epilog.thread134:                              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %conv8 = zext i16 %14 to i32
  %complete = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 7
  %23 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @rndis_command_complete, ptr %complete, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 8
  %24 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %f, ptr %context, align 4
  br label %do.body45

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool11.not = icmp eq i16 %10, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %sw.bb9.do.body_crit_edge

sw.bb9.do.body_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false12:                                  ; preds = %sw.bb9
  %ctrl_id14 = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 1
  %25 = ptrtoint ptr %ctrl_id14 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ctrl_id14, align 4
  %27 = zext i8 %26 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %27)
  %cmp16.not = icmp eq i16 %8, %27
  br i1 %cmp16.not, label %if.else, label %lor.lhs.false12.do.body_crit_edge

lor.lhs.false12.do.body_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.else:                                          ; preds = %lor.lhs.false12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #9
  %28 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %n, align 4, !annotation !183
  %params = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 6
  %29 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %params, align 4
  %call19 = call ptr @rndis_get_next_response(ptr noundef %30, ptr noundef nonnull %n) #9
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %sw.epilog.thread138, label %sw.epilog

sw.epilog.thread138:                              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #9
  br label %if.end86

do.body:                                          ; preds = %lor.lhs.false12.do.body_crit_edge, %sw.bb9.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %sw.bb.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_setup.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rndis_setup, %if.end86)) #9
          to label %if.then33 [label %if.end86], !srcloc !184

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ctrl, align 1
  %conv35 = zext i8 %34 to i32
  %35 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bRequest, align 1
  %conv37 = zext i8 %36 to i32
  %conv38 = zext i16 %11 to i32
  %conv39 = zext i16 %8 to i32
  %conv40 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rndis_setup.__UNIQUE_ID_ddebug342, ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %conv35, i32 noundef %conv37, i32 noundef %conv38, i32 noundef %conv39, i32 noundef %conv40) #9
  br label %if.end86

sw.epilog:                                        ; preds = %if.else
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %5, align 4
  %39 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n, align 4
  %41 = call ptr @memcpy(ptr %38, ptr %call19, i32 %40)
  %complete23 = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 7
  %42 = ptrtoint ptr %complete23 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @rndis_response_complete, ptr %complete23, align 4
  %context24 = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 8
  %43 = ptrtoint ptr %context24 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %f, ptr %context24, align 4
  %44 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %params, align 4
  call void @rndis_free_response(ptr noundef %45, ptr noundef nonnull %call19) #9
  %46 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %cmp42 = icmp sgt i32 %47, -1
  br i1 %cmp42, label %sw.epilog.do.body45_crit_edge, label %sw.epilog.if.end86_crit_edge

sw.epilog.if.end86_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

sw.epilog.do.body45_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body45

do.body45:                                        ; preds = %sw.epilog.do.body45_crit_edge, %sw.epilog.thread134
  %value.1137 = phi i32 [ %conv8, %sw.epilog.thread134 ], [ %47, %sw.epilog.do.body45_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_setup.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rndis_setup, %do.end71)) #9
          to label %if.then59 [label %do.end71], !srcloc !184

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 4
  %dev61 = getelementptr inbounds %struct.usb_gadget, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ctrl, align 1
  %conv63 = zext i8 %51 to i32
  %52 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bRequest, align 1
  %conv65 = zext i8 %53 to i32
  %conv66 = zext i16 %11 to i32
  %conv67 = zext i16 %8 to i32
  %conv68 = zext i16 %14 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rndis_setup.__UNIQUE_ID_ddebug343, ptr noundef %dev61, ptr noundef nonnull @.str.41, i32 noundef %conv63, i32 noundef %conv65, i32 noundef %conv66, i32 noundef %conv67, i32 noundef %conv68) #9
  br label %do.end71

do.end71:                                         ; preds = %if.then59, %do.body45
  %conv72 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %value.1137, i32 %conv72)
  %cmp73 = icmp ult i32 %value.1137, %conv72
  %zero = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 6
  %54 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %54)
  %bf.load = load i32, ptr %zero, align 4
  %bf.shl = select i1 %cmp73, i32 8192, i32 0
  %bf.clear = and i32 %bf.load, -8193
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %zero, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 1
  %55 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %value.1137, ptr %length, align 4
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ep0, align 4
  %call76 = call i32 @usb_ep_queue(ptr noundef %59, ptr noundef %5, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %do.end82, label %do.end71.if.end86_crit_edge

do.end71.if.end86_crit_edge:                      ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

do.end82:                                         ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %3, align 4
  %dev84 = getelementptr inbounds %struct.usb_gadget, ptr %61, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev84, ptr noundef nonnull @.str.42, i32 noundef %call76) #13
  br label %if.end86

if.end86:                                         ; preds = %do.end82, %do.end71.if.end86_crit_edge, %sw.epilog.if.end86_crit_edge, %if.then33, %do.body, %sw.epilog.thread138
  %value.2 = phi i32 [ %call76, %do.end82 ], [ %call76, %do.end71.if.end86_crit_edge ], [ %47, %sw.epilog.if.end86_crit_edge ], [ -95, %sw.epilog.thread138 ], [ -95, %if.then33 ], [ -95, %do.body ]
  ret i32 %value.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rndis_disable(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  %notify = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 7
  %4 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %notify, align 4
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_disable.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rndis_disable, %do.end)) #9
          to label %if.then7 [label %do.end], !srcloc !184

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rndis_disable.__UNIQUE_ID_ddebug349, ptr noundef %dev, ptr noundef nonnull @.str.46) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %params = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 6
  %10 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %params, align 4
  tail call void @rndis_uninit(ptr noundef %11) #9
  tail call void @gether_disconnect(ptr noundef %f) #9
  %12 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %notify, align 4
  %call10 = tail call i32 @usb_ep_disable(ptr noundef %13) #9
  %14 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %notify, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %desc, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rndis_free(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.f_rndis, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  tail call void @rndis_deregister(ptr noundef %1) #9
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %2 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fi, align 4
  tail call void @kfree(ptr noundef %f) #9
  %lock = getelementptr inbounds %struct.f_rndis_opts, ptr %3, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %refcnt = getelementptr inbounds %struct.f_rndis_opts, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refcnt, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %refcnt, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rndis_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rndis_response_available(ptr noundef %_rndis) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %notify_req = getelementptr inbounds %struct.f_rndis, ptr %_rndis, i32 0, i32 8
  %0 = ptrtoint ptr %notify_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify_req, align 4
  %config = getelementptr inbounds %struct.usb_function, ptr %_rndis, i32 0, i32 6
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev1, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %notify_count = getelementptr inbounds %struct.f_rndis, ptr %_rndis, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %notify_count, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !185
  tail call void @llvm.prefetch.p0(ptr %notify_count, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %notify_count, ptr %notify_count, i32 1, ptr elementtype(i32) %notify_count) #9, !srcloc !186
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !187
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp.not = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16777216, ptr %7, align 4
  %arrayidx2 = getelementptr i32, ptr %7, i32 1
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx2, align 4
  %notify = getelementptr inbounds %struct.f_rndis, ptr %_rndis, i32 0, i32 7
  %11 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %notify, align 4
  %call3 = tail call i32 @usb_ep_queue(ptr noundef %12, ptr noundef %1, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %notify_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %notify_count, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %notify_count, ptr %notify_count, i32 1, ptr elementtype(i32) %notify_count) #9, !srcloc !188
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_response_available.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rndis_response_available, %cleanup)) #9
          to label %if.then11 [label %cleanup], !srcloc !184

if.then11:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %15, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rndis_response_available.__UNIQUE_ID_ddebug339, ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef %call3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rndis_add_hdr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_set_gadget(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rndis_response_complete(ptr noundef readonly %ep, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %status2 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %6 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status2, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %7, label %do.body [
    i32 -104, label %entry.sw.bb_crit_edge
    i32 -108, label %entry.sw.bb_crit_edge60
    i32 0, label %entry.sw.bb6_crit_edge
  ]

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

entry.sw.bb_crit_edge60:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge60
  %notify_count = getelementptr inbounds %struct.f_rndis, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %notify_count, i32 noundef 4) #9
  %9 = ptrtoint ptr %notify_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %notify_count, align 4
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_response_complete.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rndis_response_complete, %sw.bb6)) #9
          to label %if.then [label %sw.bb6], !srcloc !184

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %11, i32 0, i32 11
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %14 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rndis_response_complete.__UNIQUE_ID_ddebug340, ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %13, i32 noundef %7, i32 noundef %15, i32 noundef %17) #9
  br label %sw.bb6

sw.bb6:                                           ; preds = %if.then, %do.body, %entry.sw.bb6_crit_edge
  %notify = getelementptr inbounds %struct.f_rndis, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %notify, align 4
  %cmp.not = icmp eq ptr %19, %ep
  br i1 %cmp.not, label %if.end8, label %sw.bb6.sw.epilog_crit_edge

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end8:                                          ; preds = %sw.bb6
  %notify_count9 = getelementptr inbounds %struct.f_rndis, ptr %1, i32 0, i32 9
  %call.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %notify_count9, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !189
  tail call void @llvm.prefetch.p0(ptr %notify_count9, i32 1, i32 3, i32 1) #9
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %notify_count9, ptr %notify_count9, i32 1, ptr elementtype(i32) %notify_count9) #9, !srcloc !190
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end8.sw.epilog_crit_edge, label %if.end12

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end12:                                         ; preds = %if.end8
  %21 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %notify, align 4
  %call14 = tail call i32 @usb_ep_queue(ptr noundef %22, ptr noundef %req, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end12.sw.epilog_crit_edge, label %if.then16

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %notify_count9, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %notify_count9, i32 1, i32 3, i32 1) #9
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %notify_count9, ptr %notify_count9, i32 1, ptr elementtype(i32) %notify_count9) #9, !srcloc !188
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_response_complete.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rndis_response_complete, %sw.epilog)) #9
          to label %if.then32 [label %sw.epilog], !srcloc !184

if.then32:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 4
  %dev34 = getelementptr inbounds %struct.usb_gadget, ptr %25, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rndis_response_complete.__UNIQUE_ID_ddebug341, ptr noundef %dev34, ptr noundef nonnull @.str.29, i32 noundef %call14) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then32, %if.then16, %if.end12.sw.epilog_crit_edge, %if.end8.sw.epilog_crit_edge, %sw.bb6.sw.epilog_crit_edge, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rndis_open(ptr nocapture noundef readonly %geth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %geth, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev2 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_open.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rndis_open, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !184

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rndis_open.__UNIQUE_ID_ddebug350, ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %params = getelementptr inbounds %struct.f_rndis, ptr %geth, i32 0, i32 6
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %params, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %max_speed.i.i = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %max_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %cmp.i.i = icmp ult i32 %11, 5
  br i1 %cmp.i.i, label %if.else.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp.i = icmp ugt i32 %13, 5
  br i1 %cmp.i, label %land.lhs.true.i.bitrate.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.bitrate.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bitrate.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp5.i = icmp eq i32 %13, 5
  br i1 %cmp5.i, label %land.lhs.true3.i.bitrate.exit_crit_edge, label %land.lhs.true3.i.land.lhs.true9.i_crit_edge

land.lhs.true3.i.land.lhs.true9.i_crit_edge:      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true9.i

land.lhs.true3.i.bitrate.exit_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bitrate.exit

if.else.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i23.i = icmp ult i32 %11, 3
  br i1 %cmp.i23.i, label %if.else.i.if.else13.i_crit_edge, label %if.else.i.land.lhs.true9.i_crit_edge

if.else.i.land.lhs.true9.i_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true9.i

if.else.i.if.else13.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i

land.lhs.true9.i:                                 ; preds = %if.else.i.land.lhs.true9.i_crit_edge, %land.lhs.true3.i.land.lhs.true9.i_crit_edge
  %speed10.i = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 5
  %14 = ptrtoint ptr %speed10.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %speed10.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp11.i = icmp eq i32 %15, 3
  br i1 %cmp11.i, label %land.lhs.true9.i.bitrate.exit_crit_edge, label %land.lhs.true9.i.if.else13.i_crit_edge

land.lhs.true9.i.if.else13.i_crit_edge:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else13.i

land.lhs.true9.i.bitrate.exit_crit_edge:          ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bitrate.exit

if.else13.i:                                      ; preds = %land.lhs.true9.i.if.else13.i_crit_edge, %if.else.i.if.else13.i_crit_edge
  br label %bitrate.exit

bitrate.exit:                                     ; preds = %if.else13.i, %land.lhs.true9.i.bitrate.exit_crit_edge, %land.lhs.true3.i.bitrate.exit_crit_edge, %land.lhs.true.i.bitrate.exit_crit_edge
  %retval.0.i15 = phi i32 [ 97280, %if.else13.i ], [ 42500000, %land.lhs.true.i.bitrate.exit_crit_edge ], [ 37500000, %land.lhs.true3.i.bitrate.exit_crit_edge ], [ 4259840, %land.lhs.true9.i.bitrate.exit_crit_edge ]
  %call9 = tail call i32 @rndis_set_param_medium(ptr noundef %7, i32 noundef 0, i32 noundef %retval.0.i15) #9
  %16 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %params, align 4
  %call11 = tail call i32 @rndis_signal_connect(ptr noundef %17) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rndis_close(ptr nocapture noundef readonly %geth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rndis_close.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rndis_close, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !184

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rndis_close.__UNIQUE_ID_ddebug351, ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %params = getelementptr inbounds %struct.f_rndis, ptr %geth, i32 0, i32 6
  %6 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %params, align 4
  %call6 = tail call i32 @rndis_set_param_medium(ptr noundef %7, i32 noundef 0, i32 noundef 0) #9
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %params, align 4
  %call8 = tail call i32 @rndis_signal_disconnect(ptr noundef %9) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rndis_set_param_medium(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rndis_set_host_mac(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rndis_set_param_vendor(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rndis_signal_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rndis_signal_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gether_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rndis_set_param_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rndis_command_complete(ptr nocapture noundef readnone %ep, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %params = getelementptr inbounds %struct.f_rndis, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %params, align 4
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %call = tail call i32 @rndis_msg_parser(ptr noundef %3, ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %6 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %call, i32 noundef %7, i32 noundef %9) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rndis_get_next_response(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rndis_free_response(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rndis_msg_parser(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rndis_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rndis_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !11, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !46, !48, !49, !51, !52, !54, !55, !56, !57, !58, !59, !60, !61, !63, !64, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !95, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !132, !133, !135, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !153, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @__ksymtab_rndis_borrow_net, !1, !"__ksymtab_rndis_borrow_net", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 849, i32 1}
!2 = !{ptr @__UNIQUE_ID_alias353, !3, !"__UNIQUE_ID_alias353", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 1030, i32 1}
!4 = !{ptr @__initcall__kmod_usb_f_rndis__354_1030_rndismod_init6, !3, !"__initcall__kmod_usb_f_rndis__354_1030_rndismod_init6", i1 false, i1 false}
!5 = !{ptr @__exitcall_rndismod_exit, !3, !"__exitcall_rndismod_exit", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_file355, !7, !"__UNIQUE_ID_file355", i1 false, i1 false}
!7 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 1031, i32 1}
!8 = !{ptr @__UNIQUE_ID_license356, !7, !"__UNIQUE_ID_license356", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author357, !10, !"__UNIQUE_ID_author357", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 1032, i32 1}
!11 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rndisusb_func, !3, !"rndisusb_func", i1 false, i1 false}
!13 = !{ptr @rndis_alloc_inst.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 926, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 942, i32 54}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/function/u_ether.h", i32 140, i32 35}
!20 = !{ptr @rndis_iad_descriptor, !21, !"rndis_iad_descriptor", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 173, i32 1}
!22 = !{ptr @rndis_func_type, !23, !"rndis_func_type", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 892, i32 38}
!24 = !{ptr @rndis_item_ops, !25, !"rndis_item_ops", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 858, i32 1}
!26 = !{ptr @rndis_attrs, !27, !"rndis_attrs", i1 false, i1 false}
!27 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 881, i32 35}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 861, i32 1}
!30 = !{ptr @rndis_opts_attr_dev_addr, !29, !"rndis_opts_attr_dev_addr", i1 false, i1 false}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 864, i32 1}
!33 = !{ptr @rndis_opts_attr_host_addr, !32, !"rndis_opts_attr_host_addr", i1 false, i1 false}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 867, i32 1}
!36 = !{ptr @rndis_opts_attr_qmult, !35, !"rndis_opts_attr_qmult", i1 false, i1 false}
!37 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 870, i32 1}
!40 = !{ptr @rndis_opts_attr_ifname, !39, !"rndis_opts_attr_ifname", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 873, i32 1}
!43 = !{ptr @rndis_opts_attr_class, !42, !"rndis_opts_attr_class", i1 false, i1 false}
!44 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 876, i32 1}
!48 = !{ptr @rndis_opts_attr_subclass, !47, !"rndis_opts_attr_subclass", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 879, i32 1}
!51 = !{ptr @rndis_opts_attr_protocol, !50, !"rndis_opts_attr_protocol", i1 false, i1 false}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 814, i32 2}
!54 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @rndis_bind.__UNIQUE_ID_ddebug352, !53, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!58 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 832, i32 2}
!63 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @rndis_bind._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @rndis_bind._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @rndis_strings, !68, !"rndis_strings", i1 false, i1 false}
!68 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 363, i32 35}
!69 = !{ptr @rndis_string_table, !70, !"rndis_string_table", i1 false, i1 false}
!70 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 358, i32 34}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 352, i32 10}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 353, i32 10}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 354, i32 10}
!77 = !{ptr @rndis_string_defs, !78, !"rndis_string_defs", i1 false, i1 false}
!78 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 351, i32 26}
!79 = !{ptr @rndis_control_intf, !80, !"rndis_control_intf", i1 false, i1 false}
!80 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 111, i32 40}
!81 = !{ptr @rndis_data_intf, !82, !"rndis_data_intf", i1 false, i1 false}
!82 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 159, i32 40}
!83 = !{ptr @rndis_union_desc, !84, !"rndis_union_desc", i1 false, i1 false}
!84 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 149, i32 34}
!85 = !{ptr @fs_in_desc, !86, !"fs_in_desc", i1 false, i1 false}
!86 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 197, i32 39}
!87 = !{ptr @fs_out_desc, !88, !"fs_out_desc", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 205, i32 39}
!89 = !{ptr @fs_notify_desc, !90, !"fs_notify_desc", i1 false, i1 false}
!90 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 187, i32 39}
!91 = !{ptr @.str.27, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 428, i32 3}
!93 = !{ptr @.str.28, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @rndis_response_complete.__UNIQUE_ID_ddebug340, !92, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!95 = !{ptr @.str.29, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 444, i32 4}
!97 = !{ptr @rndis_response_complete.__UNIQUE_ID_ddebug341, !96, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!98 = !{ptr @hs_in_desc, !99, !"hs_in_desc", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 243, i32 39}
!100 = !{ptr @hs_out_desc, !101, !"hs_out_desc", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 252, i32 39}
!102 = !{ptr @hs_notify_desc, !103, !"hs_notify_desc", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 233, i32 39}
!104 = !{ptr @ss_in_desc, !105, !"ss_in_desc", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 301, i32 39}
!106 = !{ptr @ss_out_desc, !107, !"ss_out_desc", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 310, i32 39}
!108 = !{ptr @ss_notify_desc, !109, !"ss_notify_desc", i1 false, i1 false}
!109 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 281, i32 39}
!110 = !{ptr @eth_fs_function, !111, !"eth_fs_function", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 213, i32 38}
!112 = !{ptr @header_desc, !113, !"header_desc", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 124, i32 35}
!114 = !{ptr @call_mgmt_descriptor, !115, !"call_mgmt_descriptor", i1 false, i1 false}
!115 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 132, i32 44}
!116 = !{ptr @rndis_acm_descriptor, !117, !"rndis_acm_descriptor", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 141, i32 38}
!118 = !{ptr @eth_hs_function, !119, !"eth_hs_function", i1 false, i1 false}
!119 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 261, i32 38}
!120 = !{ptr @eth_ss_function, !121, !"eth_ss_function", i1 false, i1 false}
!121 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 328, i32 38}
!122 = !{ptr @ss_intr_comp_desc, !123, !"ss_intr_comp_desc", i1 false, i1 false}
!123 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 291, i32 41}
!124 = !{ptr @ss_bulk_comp_desc, !125, !"ss_bulk_comp_desc", i1 false, i1 false}
!125 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 319, i32 41}
!126 = !{ptr @.str.30, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 640, i32 2}
!128 = !{ptr @.str.31, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @rndis_open.__UNIQUE_ID_ddebug350, !127, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!130 = !{ptr @.str.32, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 651, i32 2}
!132 = !{ptr @rndis_close.__UNIQUE_ID_ddebug351, !131, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!133 = !{ptr @.str.33, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 547, i32 3}
!135 = !{ptr @.str.34, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @rndis_set_alt.__UNIQUE_ID_ddebug344, !134, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!137 = !{ptr @.str.35, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 551, i32 4}
!139 = !{ptr @rndis_set_alt.__UNIQUE_ID_ddebug345, !138, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!140 = !{ptr @.str.36, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 561, i32 4}
!142 = !{ptr @rndis_set_alt.__UNIQUE_ID_ddebug346, !141, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!143 = !{ptr @.str.37, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 566, i32 4}
!145 = !{ptr @rndis_set_alt.__UNIQUE_ID_ddebug347, !144, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!146 = !{ptr @.str.38, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 594, i32 3}
!148 = !{ptr @rndis_set_alt.__UNIQUE_ID_ddebug348, !147, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!149 = !{ptr @.str.39, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 517, i32 3}
!151 = !{ptr @.str.40, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @rndis_setup.__UNIQUE_ID_ddebug342, !150, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!153 = !{ptr @.str.41, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 524, i32 3}
!155 = !{ptr @rndis_setup.__UNIQUE_ID_ddebug343, !154, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!156 = !{ptr @.str.42, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 531, i32 4}
!158 = !{ptr @rndis_setup._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @rndis_setup._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.43, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 459, i32 3}
!162 = !{ptr @.str.44, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @rndis_command_complete._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @rndis_command_complete._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.45, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 617, i32 2}
!167 = !{ptr @.str.46, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @rndis_disable.__UNIQUE_ID_ddebug349, !166, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!169 = !{ptr @.str.47, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/gadget/function/f_rndis.c", i32 407, i32 3}
!171 = !{ptr @.str.48, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @rndis_response_available.__UNIQUE_ID_ddebug339, !170, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{i8 0, i8 2}
!183 = !{!"auto-init"}
!184 = !{i64 2148229155, i64 2148229160, i64 2148229173, i64 2148229217, i64 2148229251, i64 2148229272}
!185 = !{i64 2148693864}
!186 = !{i64 2148609149, i64 2148609181, i64 2148609210, i64 2148609244, i64 2148609275, i64 2148609298}
!187 = !{i64 2148694093}
!188 = !{i64 2148610894, i64 2148610920, i64 2148610949, i64 2148610983, i64 2148611014, i64 2148611037}
!189 = !{i64 2148696905}
!190 = !{i64 2148611614, i64 2148611646, i64 2148611675, i64 2148611709, i64 2148611740, i64 2148611763}
!191 = !{i64 2148697134}
