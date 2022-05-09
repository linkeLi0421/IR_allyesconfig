; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/f_ncm.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_ncm.c"
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
%struct.ndp_parser_opts = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_cdc_ncm_ntb_parameters = type { i16, i16, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_ether_desc = type <{ i8, i8, i8, i8, i32, i16, i16, i8 }>
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_union_desc = type { i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_cdc_header_desc = type <{ i8, i8, i8, i16 }>
%struct.usb_cdc_ncm_desc = type <{ i8, i8, i8, i16, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.f_ncm_opts = type { %struct.usb_function_instance, ptr, i8, ptr, %struct.usb_os_desc, [16 x i8], %struct.mutex, i32 }
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
%struct.f_ncm = type { %struct.gether, i8, i8, [14 x i8], ptr, ptr, i8, %struct.atomic_t, i8, ptr, i8, i32, %struct.spinlock, ptr, ptr, ptr, i16, %struct.hrtimer }
%struct.gether = type { %struct.usb_function, ptr, ptr, ptr, i8, i16, i32, i8, i32, i32, i8, ptr, ptr, ptr, ptr }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_os_desc_table = type { i32, ptr }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.usb_cdc_notification = type { i8, i8, i16, i16, i16 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_alias370 = internal constant [28 x i8] c"usb_f_ncm.alias=usbfunc:ncm\00", section ".modinfo", align 1
@ncmusb_func = internal global { %struct.usb_function_driver, [40 x i8] } { %struct.usb_function_driver { ptr @.str, ptr null, %struct.list_head zeroinitializer, ptr @ncm_alloc_inst, ptr @ncm_alloc }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_usb_f_ncm__371_1740_ncmmod_init6 = internal global ptr @ncmmod_init, section ".initcall6.init", align 4
@__exitcall_ncmmod_exit = internal global ptr @ncmmod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file372 = internal constant [53 x i8] c"usb_f_ncm.file=drivers/usb/gadget/function/usb_f_ncm\00", section ".modinfo", align 1
@__UNIQUE_ID_license373 = internal constant [22 x i8] c"usb_f_ncm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author374 = internal constant [33 x i8] c"usb_f_ncm.author=Yauheni Kaliuta\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ncm\00", [28 x i8] zeroinitializer }, align 32
@ncm_alloc_inst.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&opts->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ncm_func_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @ncm_item_ops, ptr null, ptr @ncm_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@ncm_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @ncm_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@ncm_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @ncm_opts_attr_dev_addr, ptr @ncm_opts_attr_host_addr, ptr @ncm_opts_attr_qmult, ptr @ncm_opts_attr_ifname, ptr null], [44 x i8] zeroinitializer }, align 32
@ncm_opts_attr_dev_addr = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.4, ptr null, i16 420, ptr @ncm_opts_dev_addr_show, ptr @ncm_opts_dev_addr_store }, [44 x i8] zeroinitializer }, align 32
@ncm_opts_attr_host_addr = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.5, ptr null, i16 420, ptr @ncm_opts_host_addr_show, ptr @ncm_opts_host_addr_store }, [44 x i8] zeroinitializer }, align 32
@ncm_opts_attr_qmult = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.6, ptr null, i16 420, ptr @ncm_opts_qmult_show, ptr @ncm_opts_qmult_store }, [44 x i8] zeroinitializer }, align 32
@ncm_opts_attr_ifname = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.8, ptr null, i16 420, ptr @ncm_opts_ifname_show, ptr @ncm_opts_ifname_store }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"host_addr\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qmult\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ifname\00", [25 x i8] zeroinitializer }, align 32
@ncm_string_defs = internal global { [5 x %struct.usb_string], [56 x i8] } { [5 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.11 }, %struct.usb_string { i8 0, ptr @.str.2 }, %struct.usb_string { i8 0, ptr @.str.12 }, %struct.usb_string { i8 0, ptr @.str.13 }, %struct.usb_string zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ncm_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ncm->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cdc_network\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CDC Network Control Model (NCM)\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CDC Network Data\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CDC NCM\00", [24 x i8] zeroinitializer }, align 32
@ndp16_opts = internal constant { %struct.ndp_parser_opts, [48 x i8] } { %struct.ndp_parser_opts { i32 1213023054, i32 810369870, i32 12, i32 8, i32 4, i32 4, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1 }, [48 x i8] zeroinitializer }, align 32
@ntb_parameters = internal constant { %struct.usb_cdc_ncm_ntb_parameters, [36 x i8] } { %struct.usb_cdc_ncm_ntb_parameters { i16 7168, i16 768, i32 4194304, i16 1024, i16 0, i16 1024, i16 0, i32 4194304, i16 1024, i16 0, i16 1024, i16 0 }, [36 x i8] zeroinitializer }, align 32
@ncm_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ncm_string_table, ptr null], [24 x i8] zeroinitializer }, align 32
@ncm_control_intf = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 1, i8 2, i8 13, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@ncm_data_nop_intf = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 1, i8 0, i8 0, i8 10, i8 0, i8 1, i8 0 }, [23 x i8] zeroinitializer }, align 32
@ncm_data_intf = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 1, i8 1, i8 2, i8 10, i8 0, i8 1, i8 0 }, [23 x i8] zeroinitializer }, align 32
@ecm_desc = internal global { %struct.usb_cdc_ether_desc, [19 x i8] } { %struct.usb_cdc_ether_desc <{ i8 13, i8 36, i8 15, i8 0, i32 0, i16 -5627, i16 0, i8 0 }>, [19 x i8] zeroinitializer }, align 32
@ncm_iad_desc = internal global { %struct.usb_interface_assoc_descriptor, [24 x i8] } { %struct.usb_interface_assoc_descriptor { i8 8, i8 11, i8 0, i8 2, i8 2, i8 13, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@ncm_union_desc = internal global { %struct.usb_cdc_union_desc, [27 x i8] } { %struct.usb_cdc_union_desc { i8 5, i8 36, i8 6, i8 0, i8 0 }, [27 x i8] zeroinitializer }, align 32
@fs_ncm_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@fs_ncm_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@fs_ncm_notify_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 4096, i8 32, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hs_ncm_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hs_ncm_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hs_ncm_notify_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 4096, i8 9, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_ncm_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_ncm_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_ncm_notify_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 4096, i8 9, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ncm_fs_function = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @ncm_iad_desc, ptr @ncm_control_intf, ptr @ncm_header_desc, ptr @ncm_union_desc, ptr @ecm_desc, ptr @ncm_desc, ptr @fs_ncm_notify_desc, ptr @ncm_data_nop_intf, ptr @ncm_data_intf, ptr @fs_ncm_in_desc, ptr @fs_ncm_out_desc, ptr null], [48 x i8] zeroinitializer }, align 32
@ncm_hs_function = internal global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @ncm_iad_desc, ptr @ncm_control_intf, ptr @ncm_header_desc, ptr @ncm_union_desc, ptr @ecm_desc, ptr @ncm_desc, ptr @hs_ncm_notify_desc, ptr @ncm_data_nop_intf, ptr @ncm_data_intf, ptr @hs_ncm_in_desc, ptr @hs_ncm_out_desc, ptr null], [48 x i8] zeroinitializer }, align 32
@ncm_ss_function = internal global { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @ncm_iad_desc, ptr @ncm_control_intf, ptr @ncm_header_desc, ptr @ncm_union_desc, ptr @ecm_desc, ptr @ncm_desc, ptr @ss_ncm_notify_desc, ptr @ss_ncm_notify_comp_desc, ptr @ncm_data_nop_intf, ptr @ncm_data_intf, ptr @ss_ncm_in_desc, ptr @ss_ncm_bulk_comp_desc, ptr @ss_ncm_out_desc, ptr @ss_ncm_bulk_comp_desc, ptr null], [36 x i8] zeroinitializer }, align 32
@ncm_bind.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, i8 1, i8 -124, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb_f_ncm\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ncm_bind\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/usb/gadget/function/f_ncm.c\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CDC Network: %s speed IN/%s OUT/%s NOTIFY/%s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"super\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dual\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@ncm_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.15, ptr @.str.16, i32 1565, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: can't bind, err %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ncm_bind._entry_ptr = internal global ptr @ncm_bind._entry, section ".printk_index", align 4
@ncm_string_table = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @ncm_string_defs }, [24 x i8] zeroinitializer }, align 32
@ncm_notify_complete.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.24, ptr @.str.16, ptr @.str.25, i8 0, i8 -97, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ncm_notify_complete\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Notification %02x sent\0A\00", [40 x i8] zeroinitializer }, align 32
@ncm_notify_complete.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.24, ptr @.str.16, ptr @.str.26, i8 0, i8 -95, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"event %02x --> %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ncm_do_notify.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.27, ptr @.str.16, ptr @.str.28, i8 0, i8 -114, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ncm_do_notify\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"notify connect %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@ncm_do_notify.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.27, ptr @.str.16, ptr @.str.31, i8 0, i8 -110, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"notify speed %u\0A\00", [47 x i8] zeroinitializer }, align 32
@ncm_do_notify.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.27, ptr @.str.16, ptr @.str.32, i8 0, i8 -106, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"notify --> %d\0A\00", [17 x i8] zeroinitializer }, align 32
@ncm_header_desc = internal global { %struct.usb_cdc_header_desc, [27 x i8] } { %struct.usb_cdc_header_desc <{ i8 5, i8 36, i8 0, i16 4097 }>, [27 x i8] zeroinitializer }, align 32
@ncm_desc = internal global { %struct.usb_cdc_ncm_desc, [26 x i8] } { %struct.usb_cdc_ncm_desc <{ i8 6, i8 36, i8 26, i16 1, i8 17 }>, [26 x i8] zeroinitializer }, align 32
@ss_ncm_notify_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 4096 }, [26 x i8] zeroinitializer }, align 32
@ss_ncm_bulk_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 15, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@ncm_open.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.33, ptr @.str.16, ptr @.str.34, i8 1, i8 91, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ncm_open\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@ncm_close.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.35, ptr @.str.16, ptr @.str.34, i8 1, i8 94, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ncm_close\00", [22 x i8] zeroinitializer }, align 32
@ncm_unbind.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.36, ptr @.str.16, ptr @.str.37, i8 1, i8 -94, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ncm_unbind\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ncm unbind\0A\00", [20 x i8] zeroinitializer }, align 32
@ncm_set_alt.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.38, ptr @.str.16, ptr @.str.39, i8 0, i8 -38, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ncm_set_alt\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reset ncm control %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ncm_set_alt.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.38, ptr @.str.16, ptr @.str.40, i8 0, i8 -37, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"init ncm ctrl %d\0A\00", [46 x i8] zeroinitializer }, align 32
@ncm_set_alt.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.38, ptr @.str.16, ptr @.str.41, i8 0, i8 -34, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reset ncm\0A\00", [21 x i8] zeroinitializer }, align 32
@ncm_set_alt.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.38, ptr @.str.16, ptr @.str.42, i8 0, i8 -30, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init ncm\0A\00", [22 x i8] zeroinitializer }, align 32
@ncm_set_alt.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.38, ptr @.str.16, ptr @.str.43, i8 0, i8 -26, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"activate ncm\0A\00", [18 x i8] zeroinitializer }, align 32
@ncm_setup.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.44, ptr @.str.16, ptr @.str.45, i8 0, i8 -80, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ncm_setup\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"packet filter %02x\0A\00", [44 x i8] zeroinitializer }, align 32
@ncm_setup.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.44, ptr @.str.16, ptr @.str.46, i8 0, i8 -73, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Host asked NTB parameters\0A\00", [37 x i8] zeroinitializer }, align 32
@ncm_setup.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.44, ptr @.str.16, ptr @.str.47, i8 0, i8 -70, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Host asked INPUT SIZE, sending %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ncm_setup.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.44, ptr @.str.16, ptr @.str.48, i8 0, i8 -64, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Host asked NTB FORMAT, sending %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ncm_setup.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.44, ptr @.str.16, ptr @.str.49, i8 0, i8 -61, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NCM16 selected\0A\00", [16 x i8] zeroinitializer }, align 32
@ndp32_opts = internal constant { %struct.ndp_parser_opts, [48 x i8] } { %struct.ndp_parser_opts { i32 1751999342, i32 812475246, i32 16, i32 16, i32 8, i32 8, i32 2, i32 2, i32 2, i32 1, i32 2, i32 2 }, [48 x i8] zeroinitializer }, align 32
@ncm_setup.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.44, ptr @.str.16, ptr @.str.50, i8 0, i8 -60, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NCM32 selected\0A\00", [16 x i8] zeroinitializer }, align 32
@ncm_setup.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.44, ptr @.str.16, ptr @.str.51, i8 0, i8 -55, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Host asked CRC MODE, sending %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ncm_setup.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.44, ptr @.str.16, ptr @.str.52, i8 0, i8 -52, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"non-CRC mode selected\0A\00", [41 x i8] zeroinitializer }, align 32
@ncm_setup.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.44, ptr @.str.16, ptr @.str.53, i8 0, i8 -51, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CRC mode selected\0A\00", [45 x i8] zeroinitializer }, align 32
@ncm_setup.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.44, ptr @.str.16, ptr @.str.54, i8 0, i8 -46, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"invalid control req%02x.%02x v%04x i%04x l%d\0A\00", [50 x i8] zeroinitializer }, align 32
@ncm_setup.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.44, ptr @.str.16, ptr @.str.55, i8 0, i8 -44, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ncm req%02x.%02x v%04x i%04x l%d\0A\00", [62 x i8] zeroinitializer }, align 32
@ncm_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.44, ptr @.str.16, i32 856, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ncm req %02x.%02x response err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ncm_setup._entry_ptr = internal global ptr @ncm_setup._entry, section ".printk_index", align 4
@ncm_ep0out_complete.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.57, ptr @.str.16, ptr @.str.58, i8 0, i8 -90, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ncm_ep0out_complete\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Bad control-OUT transfer\0A\00", [38 x i8] zeroinitializer }, align 32
@ncm_ep0out_complete.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.57, ptr @.str.16, ptr @.str.59, i8 0, i8 -89, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Got wrong INPUT SIZE (%d) from host\0A\00", [59 x i8] zeroinitializer }, align 32
@ncm_ep0out_complete.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.57, ptr @.str.16, ptr @.str.60, i8 0, i8 -87, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Set NTB INPUT SIZE %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ncm_disable.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.61, ptr @.str.16, ptr @.str.62, i8 1, i8 82, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ncm_disable\00", [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ncm deactivated\0A\00", [47 x i8] zeroinitializer }, align 32
@ncm_unwrap_ntb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.16, i32 1193, ptr @.str.65, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Wrong NTH SIGN, skblen %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ncm_unwrap_ntb\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ncm_unwrap_ntb._entry_ptr = internal global ptr @ncm_unwrap_ntb._entry, section ".printk_index", align 4
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HEAD:\00", [26 x i8] zeroinitializer }, align 32
@ncm_unwrap_ntb._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.64, ptr @.str.16, i32 1202, ptr @.str.65, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Wrong NTB headersize\0A\00", [42 x i8] zeroinitializer }, align 32
@ncm_unwrap_ntb._entry_ptr.69 = internal global ptr @ncm_unwrap_ntb._entry.67, section ".printk_index", align 4
@ncm_unwrap_ntb._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.64, ptr @.str.16, i32 1210, ptr @.str.65, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"OUT size exceeded\0A\00", [45 x i8] zeroinitializer }, align 32
@ncm_unwrap_ntb._entry_ptr.72 = internal global ptr @ncm_unwrap_ntb._entry.70, section ".printk_index", align 4
@ncm_unwrap_ntb._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.64, ptr @.str.16, i32 1227, ptr @.str.65, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Bad index: %#X\0A\00", [16 x i8] zeroinitializer }, align 32
@ncm_unwrap_ntb._entry_ptr.75 = internal global ptr @ncm_unwrap_ntb._entry.73, section ".printk_index", align 4
@ncm_unwrap_ntb._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.64, ptr @.str.16, i32 1237, ptr @.str.65, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Wrong NDP SIGN\0A\00", [16 x i8] zeroinitializer }, align 32
@ncm_unwrap_ntb._entry_ptr.78 = internal global ptr @ncm_unwrap_ntb._entry.76, section ".printk_index", align 4
@ncm_unwrap_ntb._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.64, ptr @.str.16, i32 1255, ptr @.str.65, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bad NDP length: %#X\0A\00", [43 x i8] zeroinitializer }, align 32
@ncm_unwrap_ntb._entry_ptr.81 = internal global ptr @ncm_unwrap_ntb._entry.79, section ".printk_index", align 4
@ncm_unwrap_ntb._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.64, ptr @.str.16, i32 1274, ptr @.str.65, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@ncm_unwrap_ntb._entry_ptr.83 = internal global ptr @ncm_unwrap_ntb._entry.82, section ".printk_index", align 4
@ncm_unwrap_ntb._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.64, ptr @.str.16, i32 1286, ptr @.str.65, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Bad dgram length: %#X\0A\00", [41 x i8] zeroinitializer }, align 32
@ncm_unwrap_ntb._entry_ptr.86 = internal global ptr @ncm_unwrap_ntb._entry.84, section ".printk_index", align 4
@ncm_unwrap_ntb._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.64, ptr @.str.16, i32 1300, ptr @.str.65, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Bad CRC\0A\00", [23 x i8] zeroinitializer }, align 32
@ncm_unwrap_ntb._entry_ptr.89 = internal global ptr @ncm_unwrap_ntb._entry.87, section ".printk_index", align 4
@ncm_unwrap_ntb._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.64, ptr @.str.16, i32 1311, ptr @.str.65, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@ncm_unwrap_ntb._entry_ptr.91 = internal global ptr @ncm_unwrap_ntb._entry.90, section ".printk_index", align 4
@ncm_unwrap_ntb.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.64, ptr @.str.16, ptr @.str.92, i8 1, i8 78, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Parsed NTB with %d frames\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 16, i64 8515, i64 8580, i64 8582, i64 8586, i64 41344, i64 41347, i64 41349, i64 41353]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967188, i64 4294967192]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.106 = private unnamed_addr constant [12 x i8] c"ncmusb_func\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1740, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1630, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1643, i32 54 }
@___asan_gen_.121 = private unnamed_addr constant [14 x i8] c"ncm_func_type\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1599, i32 38 }
@___asan_gen_.125 = private unnamed_addr constant [41 x i8] c"../drivers/usb/gadget/function/u_ether.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 140, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant [13 x i8] c"ncm_item_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1577, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant [10 x i8] c"ncm_attrs\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1591, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant [23 x i8] c"ncm_opts_attr_dev_addr\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [24 x i8] c"ncm_opts_attr_host_addr\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c"ncm_opts_attr_qmult\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [21 x i8] c"ncm_opts_attr_ifname\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1580, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1583, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1586, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1589, i32 1 }
@___asan_gen_.160 = private unnamed_addr constant [16 x i8] c"ncm_string_defs\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 410, i32 26 }
@___asan_gen_.163 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1717, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1724, i32 24 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 411, i32 24 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 413, i32 24 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 414, i32 23 }
@___asan_gen_.181 = private unnamed_addr constant [11 x i8] c"ndp16_opts\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 484, i32 37 }
@___asan_gen_.184 = private unnamed_addr constant [15 x i8] c"ntb_parameters\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 122, i32 42 }
@___asan_gen_.187 = private unnamed_addr constant [12 x i8] c"ncm_strings\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 423, i32 35 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"ncm_control_intf\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 159, i32 40 }
@___asan_gen_.193 = private unnamed_addr constant [18 x i8] c"ncm_data_nop_intf\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 214, i32 40 }
@___asan_gen_.196 = private unnamed_addr constant [14 x i8] c"ncm_data_intf\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 229, i32 40 }
@___asan_gen_.199 = private unnamed_addr constant [9 x i8] c"ecm_desc\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 187, i32 34 }
@___asan_gen_.202 = private unnamed_addr constant [13 x i8] c"ncm_iad_desc\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 145, i32 46 }
@___asan_gen_.205 = private unnamed_addr constant [15 x i8] c"ncm_union_desc\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 179, i32 34 }
@___asan_gen_.208 = private unnamed_addr constant [15 x i8] c"fs_ncm_in_desc\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 254, i32 39 }
@___asan_gen_.211 = private unnamed_addr constant [16 x i8] c"fs_ncm_out_desc\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 262, i32 39 }
@___asan_gen_.214 = private unnamed_addr constant [19 x i8] c"fs_ncm_notify_desc\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 244, i32 39 }
@___asan_gen_.217 = private unnamed_addr constant [15 x i8] c"hs_ncm_in_desc\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 298, i32 39 }
@___asan_gen_.220 = private unnamed_addr constant [16 x i8] c"hs_ncm_out_desc\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 307, i32 39 }
@___asan_gen_.223 = private unnamed_addr constant [19 x i8] c"hs_ncm_notify_desc\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 289, i32 39 }
@___asan_gen_.226 = private unnamed_addr constant [15 x i8] c"ss_ncm_in_desc\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 356, i32 39 }
@___asan_gen_.229 = private unnamed_addr constant [16 x i8] c"ss_ncm_out_desc\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 365, i32 39 }
@___asan_gen_.232 = private unnamed_addr constant [19 x i8] c"ss_ncm_notify_desc\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 336, i32 39 }
@___asan_gen_.235 = private unnamed_addr constant [16 x i8] c"ncm_fs_function\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 270, i32 38 }
@___asan_gen_.238 = private unnamed_addr constant [16 x i8] c"ncm_hs_function\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 316, i32 38 }
@___asan_gen_.241 = private unnamed_addr constant [16 x i8] c"ncm_ss_function\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 383, i32 38 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1549, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1565, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"ncm_string_table\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 418, i32 34 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 635, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 645, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 568, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 584, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 603, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [16 x i8] c"ncm_header_desc\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 171, i32 35 }
@___asan_gen_.310 = private unnamed_addr constant [9 x i8] c"ncm_desc\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 202, i32 32 }
@___asan_gen_.313 = private unnamed_addr constant [24 x i8] c"ss_ncm_notify_comp_desc\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 346, i32 41 }
@___asan_gen_.316 = private unnamed_addr constant [22 x i8] c"ss_ncm_bulk_comp_desc\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 374, i32 41 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1389, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1401, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1673, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 874, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 878, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 890, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 905, i32 5 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 923, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 707, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 734, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 744, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 771, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 783, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant [11 x i8] c"ndp32_opts\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 485, i32 37 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 787, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 805, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 817, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 821, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 838, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 847, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 854, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 664, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 671, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 676, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1352, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1192, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1194, i32 29 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1202, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1210, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1226, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1237, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1254, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1273, i32 5 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1285, i32 5 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1299, i32 6 }
@___asan_gen_.475 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1310, i32 5 }
@___asan_gen_.478 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.479 = private constant [39 x i8] c"../drivers/usb/gadget/function/f_ncm.c\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 1338, i32 2 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @__UNIQUE_ID_alias370, ptr @__UNIQUE_ID_author374, ptr @__UNIQUE_ID_file372, ptr @__UNIQUE_ID_license373, ptr @__exitcall_ncmmod_exit, ptr @__initcall__kmod_usb_f_ncm__371_1740_ncmmod_init6, ptr @ncm_bind._entry, ptr @ncm_bind._entry_ptr, ptr @ncm_setup._entry, ptr @ncm_setup._entry_ptr, ptr @ncm_unwrap_ntb._entry, ptr @ncm_unwrap_ntb._entry.67, ptr @ncm_unwrap_ntb._entry.70, ptr @ncm_unwrap_ntb._entry.73, ptr @ncm_unwrap_ntb._entry.76, ptr @ncm_unwrap_ntb._entry.79, ptr @ncm_unwrap_ntb._entry.82, ptr @ncm_unwrap_ntb._entry.84, ptr @ncm_unwrap_ntb._entry.87, ptr @ncm_unwrap_ntb._entry.90, ptr @ncm_unwrap_ntb._entry_ptr, ptr @ncm_unwrap_ntb._entry_ptr.69, ptr @ncm_unwrap_ntb._entry_ptr.72, ptr @ncm_unwrap_ntb._entry_ptr.75, ptr @ncm_unwrap_ntb._entry_ptr.78, ptr @ncm_unwrap_ntb._entry_ptr.81, ptr @ncm_unwrap_ntb._entry_ptr.83, ptr @ncm_unwrap_ntb._entry_ptr.86, ptr @ncm_unwrap_ntb._entry_ptr.89, ptr @ncm_unwrap_ntb._entry_ptr.91, ptr @ncmmod_exit, ptr @ncmusb_func, ptr @.str, ptr @ncm_alloc_inst.__key, ptr @.str.1, ptr @.str.2, ptr @ncm_func_type, ptr @.str.3, ptr @ncm_item_ops, ptr @ncm_attrs, ptr @ncm_opts_attr_dev_addr, ptr @ncm_opts_attr_host_addr, ptr @ncm_opts_attr_qmult, ptr @ncm_opts_attr_ifname, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ncm_string_defs, ptr @ncm_alloc.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @ndp16_opts, ptr @ntb_parameters, ptr @ncm_strings, ptr @ncm_control_intf, ptr @ncm_data_nop_intf, ptr @ncm_data_intf, ptr @ecm_desc, ptr @ncm_iad_desc, ptr @ncm_union_desc, ptr @fs_ncm_in_desc, ptr @fs_ncm_out_desc, ptr @fs_ncm_notify_desc, ptr @hs_ncm_in_desc, ptr @hs_ncm_out_desc, ptr @hs_ncm_notify_desc, ptr @ss_ncm_in_desc, ptr @ss_ncm_out_desc, ptr @ss_ncm_notify_desc, ptr @ncm_fs_function, ptr @ncm_hs_function, ptr @ncm_ss_function, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @ncm_string_table, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @ncm_header_desc, ptr @ncm_desc, ptr @ss_ncm_notify_comp_desc, ptr @ss_ncm_bulk_comp_desc, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @ndp32_opts, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.85, ptr @.str.88, ptr @.str.92], section "llvm.metadata"
@0 = internal global [125 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncmusb_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_alloc_inst.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_func_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_opts_attr_dev_addr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_opts_attr_host_addr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_opts_attr_qmult to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_opts_attr_ifname to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_string_defs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndp16_opts to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntb_parameters to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_control_intf to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_data_nop_intf to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_data_intf to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_desc to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_iad_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_union_desc to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_ncm_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_ncm_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_ncm_notify_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_ncm_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_ncm_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_ncm_notify_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_ncm_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_ncm_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_ncm_notify_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_fs_function to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_hs_function to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_ss_function to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_string_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_header_desc to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_ncm_notify_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_ncm_bulk_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndp32_opts to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_unwrap_ntb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_unwrap_ntb._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_unwrap_ntb._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_unwrap_ntb._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_unwrap_ntb._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_unwrap_ntb._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_unwrap_ntb._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_unwrap_ntb._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_unwrap_ntb._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncm_unwrap_ntb._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ncmmod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_function_unregister(ptr noundef nonnull @ncmusb_func) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ncmmod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_function_register(ptr noundef nonnull @ncmusb_func) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ncm_alloc_inst() #2 align 64 {
entry:
  %descs = alloca [1 x ptr], align 4
  %names = alloca [1 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %descs) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %names) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 332) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ncm_ext_compat_id = getelementptr inbounds %struct.f_ncm_opts, ptr %call7.i.i, i32 0, i32 5
  %ncm_os_desc = getelementptr inbounds %struct.f_ncm_opts, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %ncm_os_desc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ncm_ext_compat_id, ptr %ncm_os_desc, align 8
  %lock = getelementptr inbounds %struct.f_ncm_opts, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ncm_alloc_inst.__key) #11
  %free_func_inst = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %free_func_inst to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ncm_free_inst, ptr %free_func_inst, align 8
  %call.i = tail call ptr @gether_setup_name_default(ptr noundef nonnull @.str.3) #11
  %net = getelementptr inbounds %struct.f_ncm_opts, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %net, align 4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %ext_prop = getelementptr inbounds %struct.f_ncm_opts, ptr %call7.i.i, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %ext_prop to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %ext_prop, ptr %ext_prop, align 4
  %prev.i = getelementptr inbounds %struct.f_ncm_opts, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ext_prop, ptr %prev.i, align 8
  %6 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ncm_os_desc, ptr %descs, align 4
  %7 = ptrtoint ptr %names to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str, ptr %names, align 4
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @ncm_func_type) #11
  %call18 = call ptr @usb_os_desc_prepare_interf_dir(ptr noundef nonnull %call7.i.i, i32 noundef 1, ptr noundef nonnull %descs, ptr noundef nonnull %names, ptr noundef null) #11
  %cmp.i46 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i46, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end9
  %bound.i = getelementptr inbounds %struct.f_ncm_opts, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %bound.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bound.i, align 8, !range !271
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 2304
  call void @gether_cleanup(ptr noundef %add.ptr.i.i) #11
  br label %ncm_free_inst.exit

if.else.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  call void @free_netdev(ptr noundef %11) #11
  br label %ncm_free_inst.exit

ncm_free_inst.exit:                               ; preds = %if.else.i, %if.then.i
  %ncm_interf_group.i = getelementptr inbounds %struct.f_ncm_opts, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %ncm_interf_group.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ncm_interf_group.i, align 4
  call void @kfree(ptr noundef %13) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %ncm_interf_group24 = getelementptr inbounds %struct.f_ncm_opts, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %ncm_interf_group24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call18, ptr %ncm_interf_group24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %ncm_free_inst.exit, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.then5 ], [ %call18, %ncm_free_inst.exit ], [ %call7.i.i, %if.end23 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %names) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %descs) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ncm_alloc(ptr noundef %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 320) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.f_ncm_opts, ptr %fi, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_ncm_opts, ptr %fi, i32 0, i32 7
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %refcnt, align 4
  %net = getelementptr inbounds %struct.f_ncm_opts, ptr %fi, i32 0, i32 1
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %ethaddr = getelementptr inbounds %struct.f_ncm, ptr %call7.i.i, i32 0, i32 3
  %call2 = tail call i32 @gether_get_host_addr_cdc(ptr noundef %4, ptr noundef %ethaddr, i32 noundef 14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call2)
  %cmp = icmp slt i32 %call2, 12
  br i1 %cmp, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %ethaddr, ptr getelementptr inbounds ([5 x %struct.usb_string], ptr @ncm_string_defs, i32 0, i32 1, i32 1), align 4
  %lock9 = getelementptr inbounds %struct.f_ncm, ptr %call7.i.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %lock9, ptr noundef nonnull @.str.9, ptr noundef nonnull @ncm_alloc.__key, i16 noundef signext 3) #11
  %parser_opts.i = getelementptr inbounds %struct.f_ncm, ptr %call7.i.i, i32 0, i32 9
  %5 = ptrtoint ptr %parser_opts.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ndp16_opts, ptr %parser_opts.i, align 4
  %is_crc.i = getelementptr inbounds %struct.f_ncm, ptr %call7.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %is_crc.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %is_crc.i, align 8
  %ndp_sign2.i = getelementptr inbounds %struct.f_ncm, ptr %call7.i.i, i32 0, i32 11
  %7 = ptrtoint ptr %ndp_sign2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 810369870, ptr %ndp_sign2.i, align 4
  %cdc_filter.i = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %cdc_filter.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 15, ptr %cdc_filter.i, align 2
  %header_len.i = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %header_len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %header_len.i, align 4
  %fixed_out_len.i = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %fixed_out_len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16384, ptr %fixed_out_len.i, align 4
  %fixed_in_len.i = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 9
  %11 = ptrtoint ptr %fixed_in_len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16384, ptr %fixed_in_len.i, align 8
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 2304
  %ioport = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %ioport to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %ioport, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %is_fixed = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %is_fixed to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %is_fixed, align 8
  %supports_multi_frame = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %supports_multi_frame to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %supports_multi_frame, align 4
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.10, ptr %call7.i.i, align 8
  %bind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 9
  %18 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ncm_bind, ptr %bind, align 4
  %unbind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ncm_unbind, ptr %unbind, align 8
  %set_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 13
  %20 = ptrtoint ptr %set_alt to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ncm_set_alt, ptr %set_alt, align 4
  %get_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 14
  %21 = ptrtoint ptr %get_alt to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ncm_get_alt, ptr %get_alt, align 8
  %setup = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 16
  %22 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ncm_setup, ptr %setup, align 8
  %disable = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 15
  %23 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ncm_disable, ptr %disable, align 4
  %free_func = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 11
  %24 = ptrtoint ptr %free_func to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ncm_free, ptr %free_func, align 4
  %wrap = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 11
  %25 = ptrtoint ptr %wrap to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ncm_wrap_ntb, ptr %wrap, align 8
  %unwrap = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 12
  %26 = ptrtoint ptr %unwrap to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ncm_unwrap_ntb, ptr %unwrap, align 4
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
define internal void @ncm_free_inst(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bound = getelementptr inbounds %struct.f_ncm_opts, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %bound to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bound, align 4, !range !271
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %net1 = getelementptr inbounds %struct.f_ncm_opts, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net1, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  tail call void @gether_cleanup(ptr noundef %add.ptr.i) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @free_netdev(ptr noundef %3) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ncm_interf_group = getelementptr inbounds %struct.f_ncm_opts, ptr %f, i32 0, i32 3
  %4 = ptrtoint ptr %ncm_interf_group to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ncm_interf_group, align 4
  tail call void @kfree(ptr noundef %5) #11
  tail call void @kfree(ptr noundef %f) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_os_desc_prepare_interf_dir(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gether_setup_name_default(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ncm_attr_release(ptr noundef %item) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_put_function_instance(ptr noundef %item) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncm_opts_dev_addr_show(ptr noundef %item, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ncm_opts, ptr %item, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %net = getelementptr inbounds %struct.f_ncm_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_get_dev_addr(ptr noundef %1, ptr noundef %page, i32 noundef 4096) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncm_opts_dev_addr_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ncm_opts, ptr %item, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_ncm_opts, ptr %item, i32 0, i32 7
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %net = getelementptr inbounds %struct.f_ncm_opts, ptr %item, i32 0, i32 1
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %call2 = tail call i32 @gether_set_dev_addr(ptr noundef %3, ptr noundef %page) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
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
define internal i32 @ncm_opts_host_addr_show(ptr noundef %item, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ncm_opts, ptr %item, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %net = getelementptr inbounds %struct.f_ncm_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_get_host_addr(ptr noundef %1, ptr noundef %page, i32 noundef 4096) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncm_opts_host_addr_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ncm_opts, ptr %item, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_ncm_opts, ptr %item, i32 0, i32 7
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %net = getelementptr inbounds %struct.f_ncm_opts, ptr %item, i32 0, i32 1
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %call2 = tail call i32 @gether_set_host_addr(ptr noundef %3, ptr noundef %page) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
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
define internal i32 @ncm_opts_qmult_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ncm_opts, ptr %item, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %net = getelementptr inbounds %struct.f_ncm_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_get_qmult(ptr noundef %1) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.7, i32 noundef %call1)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncm_opts_qmult_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !272
  %lock = getelementptr inbounds %struct.f_ncm_opts, ptr %item, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_ncm_opts, ptr %item, i32 0, i32 7
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %net = getelementptr inbounds %struct.f_ncm_opts, ptr %item, i32 0, i32 1
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %conv = zext i8 %6 to i32
  call void @gether_set_qmult(ptr noundef %4, i32 noundef %conv) #11
  br label %out

out:                                              ; preds = %if.end4, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #11
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
define internal i32 @ncm_opts_ifname_show(ptr noundef %item, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ncm_opts, ptr %item, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %net = getelementptr inbounds %struct.f_ncm_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_get_ifname(ptr noundef %1, ptr noundef %page, i32 noundef 4096) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncm_opts_ifname_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ncm_opts, ptr %item, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_ncm_opts, ptr %item, i32 0, i32 7
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %4

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %net = getelementptr inbounds %struct.f_ncm_opts, ptr %item, i32 0, i32 1
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_set_ifname(ptr noundef %3, ptr noundef %page, i32 noundef %len) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncm_bind(ptr noundef %c, ptr noundef %f) #2 align 64 {
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
  %quirk_altset_not_supp.i.i = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %quirk_altset_not_supp.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i.i = load i32, ptr %quirk_altset_not_supp.i.i, align 4
  %5 = and i32 %bf.load.i.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %6 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fi, align 4
  %use_os_string = getelementptr inbounds %struct.usb_composite_dev, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %use_os_string to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %use_os_string, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 8) #14
  %os_desc_table = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 7
  %10 = ptrtoint ptr %os_desc_table to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %os_desc_table, align 4
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.then3.cleanup_crit_edge, label %if.end8

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %os_desc_n = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 8
  %11 = ptrtoint ptr %os_desc_n to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %os_desc_n, align 4
  %ncm_os_desc = getelementptr inbounds %struct.f_ncm_opts, ptr %7, i32 0, i32 4
  %os_desc = getelementptr inbounds %struct.usb_os_desc_table, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %os_desc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ncm_os_desc, ptr %os_desc, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end8, %if.end.if.end10_crit_edge
  %bound = getelementptr inbounds %struct.f_ncm_opts, ptr %7, i32 0, i32 2
  %13 = ptrtoint ptr %bound to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bound, align 4, !range !271
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool11.not = icmp eq i8 %14, 0
  br i1 %tobool11.not, label %if.then12, label %if.end10.if.end21_crit_edge

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then12:                                        ; preds = %if.end10
  %lock = getelementptr inbounds %struct.f_ncm_opts, ptr %7, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %net = getelementptr inbounds %struct.f_ncm_opts, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  tail call void @gether_set_gadget(ptr noundef %16, ptr noundef %18) #11
  %19 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net, align 4
  %call15 = tail call i32 @gether_register_netdev(ptr noundef %20) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool17.not = icmp eq i32 %call15, 0
  br i1 %tobool17.not, label %if.end19, label %if.then12.fail_crit_edge

if.then12.fail_crit_edge:                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end19:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %bound to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %bound, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.end10.if.end21_crit_edge
  %call22 = tail call ptr @usb_gstrings_attach(ptr noundef %1, ptr noundef nonnull @ncm_strings, i32 noundef 5) #11
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %call22 to i32
  br label %fail

if.end26:                                         ; preds = %if.end21
  %23 = ptrtoint ptr %call22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %call22, align 4
  store i8 %24, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ncm_control_intf, i32 0, i32 8), align 1
  %arrayidx28 = getelementptr %struct.usb_string, ptr %call22, i32 2
  %25 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx28, align 4
  store i8 %26, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ncm_data_nop_intf, i32 0, i32 8), align 1
  %27 = load i8, ptr %arrayidx28, align 4
  store i8 %27, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ncm_data_intf, i32 0, i32 8), align 1
  %arrayidx32 = getelementptr %struct.usb_string, ptr %call22, i32 1
  %28 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx32, align 4
  store i8 %29, ptr getelementptr inbounds (%struct.usb_cdc_ether_desc, ptr @ecm_desc, i32 0, i32 3), align 1
  %arrayidx34 = getelementptr %struct.usb_string, ptr %call22, i32 3
  %30 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx34, align 4
  store i8 %31, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @ncm_iad_desc, i32 0, i32 7), align 1
  %call36 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp = icmp slt i32 %call36, 0
  br i1 %cmp, label %if.end26.fail_crit_edge, label %if.end38

if.end26.fail_crit_edge:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end38:                                         ; preds = %if.end26
  %conv = trunc i32 %call36 to i8
  %ctrl_id = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 1
  %32 = ptrtoint ptr %ctrl_id to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv, ptr %ctrl_id, align 8
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @ncm_iad_desc, i32 0, i32 2), align 1
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ncm_control_intf, i32 0, i32 2), align 1
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @ncm_union_desc, i32 0, i32 3), align 1
  %33 = ptrtoint ptr %use_os_string to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load43 = load i8, ptr %use_os_string, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load43)
  %tobool46.not = icmp sgt i8 %bf.load43, -1
  br i1 %tobool46.not, label %if.end38.if.end51_crit_edge, label %if.then47

if.end38.if.end51_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then47:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %conv48 = and i32 %call36, 255
  %os_desc_table49 = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 7
  %34 = ptrtoint ptr %os_desc_table49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %os_desc_table49, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv48, ptr %35, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.end38.if.end51_crit_edge
  %call52 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end51.fail_crit_edge, label %if.end56

if.end51.fail_crit_edge:                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end56:                                         ; preds = %if.end51
  %conv57 = trunc i32 %call52 to i8
  %data_id = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 2
  %37 = ptrtoint ptr %data_id to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv57, ptr %data_id, align 1
  store i8 %conv57, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ncm_data_nop_intf, i32 0, i32 2), align 1
  store i8 %conv57, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ncm_data_intf, i32 0, i32 2), align 1
  store i8 %conv57, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @ncm_union_desc, i32 0, i32 4), align 1
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call62 = tail call ptr @usb_ep_autoconfig(ptr noundef %39, ptr noundef nonnull @fs_ncm_in_desc) #11
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.end56.fail_crit_edge, label %if.end65

if.end56.fail_crit_edge:                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end65:                                         ; preds = %if.end56
  %in_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 2
  %40 = ptrtoint ptr %in_ep to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call62, ptr %in_ep, align 8
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call67 = tail call ptr @usb_ep_autoconfig(ptr noundef %42, ptr noundef nonnull @fs_ncm_out_desc) #11
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %if.end65.fail_crit_edge, label %if.end70

if.end65.fail_crit_edge:                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end70:                                         ; preds = %if.end65
  %out_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 3
  %43 = ptrtoint ptr %out_ep to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call67, ptr %out_ep, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call73 = tail call ptr @usb_ep_autoconfig(ptr noundef %45, ptr noundef nonnull @fs_ncm_notify_desc) #11
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %if.end70.fail_crit_edge, label %if.end76

if.end70.fail_crit_edge:                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end76:                                         ; preds = %if.end70
  %notify = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 4
  %46 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call73, ptr %notify, align 8
  %call77 = tail call ptr @usb_ep_alloc_request(ptr noundef nonnull %call73, i32 noundef 3264) #11
  %notify_req = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 5
  %47 = ptrtoint ptr %notify_req to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call77, ptr %notify_req, align 4
  %tobool79.not = icmp eq ptr %call77, null
  br i1 %tobool79.not, label %if.end76.fail_crit_edge, label %if.end81

if.end76.fail_crit_edge:                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end81:                                         ; preds = %if.end76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3264, i32 noundef 16) #14
  %49 = ptrtoint ptr %notify_req to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %notify_req, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i, ptr %50, align 4
  %52 = load ptr, ptr %notify_req, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %tobool86.not = icmp eq ptr %54, null
  br i1 %tobool86.not, label %if.end81.fail_crit_edge, label %if.end88

if.end81.fail_crit_edge:                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end88:                                         ; preds = %if.end81
  %context = getelementptr inbounds %struct.usb_request, ptr %52, i32 0, i32 8
  %55 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %f, ptr %context, align 4
  %56 = ptrtoint ptr %notify_req to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %notify_req, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %57, i32 0, i32 7
  %58 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @ncm_notify_complete, ptr %complete, align 4
  %59 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_ncm_in_desc, i32 0, i32 2), align 1
  store i8 %59, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_ncm_in_desc, i32 0, i32 2), align 1
  %60 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_ncm_out_desc, i32 0, i32 2), align 1
  store i8 %60, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_ncm_out_desc, i32 0, i32 2), align 1
  %61 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_ncm_notify_desc, i32 0, i32 2), align 1
  store i8 %61, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_ncm_notify_desc, i32 0, i32 2), align 1
  store i8 %59, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_ncm_in_desc, i32 0, i32 2), align 1
  store i8 %60, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_ncm_out_desc, i32 0, i32 2), align 1
  store i8 %61, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_ncm_notify_desc, i32 0, i32 2), align 1
  %call91 = tail call i32 @usb_assign_descriptors(ptr noundef %f, ptr noundef nonnull @ncm_fs_function, ptr noundef nonnull @ncm_hs_function, ptr noundef nonnull @ncm_ss_function, ptr noundef nonnull @ncm_ss_function) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end88.fail_crit_edge

if.end88.fail_crit_edge:                          ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end94:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  %open = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 13
  %62 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @ncm_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 14
  %63 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @ncm_close, ptr %close, align 4
  %task_timer = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 17
  tail call void @hrtimer_init(ptr noundef %task_timer, i32 noundef 1, i32 noundef 5) #11
  %function = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 17, i32 2
  %64 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @ncm_tx_timeout, ptr %function, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_bind.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_bind, %cleanup)) #11
          to label %if.then104 [label %cleanup], !srcloc !273

if.then104:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %66, i32 0, i32 11
  %67 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cdev1, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %max_speed.i = getelementptr inbounds %struct.usb_gadget, ptr %70, i32 0, i32 6
  %71 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %72)
  %cmp.i222 = icmp ult i32 %72, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %72)
  %cmp.i224 = icmp ult i32 %72, 3
  %cond = select i1 %cmp.i224, ptr @.str.20, ptr @.str.19
  %cond114 = select i1 %cmp.i222, ptr %cond, ptr @.str.18
  %73 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %in_ep, align 8
  %name = getelementptr inbounds %struct.usb_ep, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name, align 4
  %77 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %out_ep, align 4
  %name119 = getelementptr inbounds %struct.usb_ep, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %name119 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name119, align 4
  %81 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %notify, align 8
  %name121 = getelementptr inbounds %struct.usb_ep, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %name121 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %name121, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_bind.__UNIQUE_ID_ddebug368, ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond114, ptr noundef %76, ptr noundef %80, ptr noundef %84) #11
  br label %cleanup

fail:                                             ; preds = %if.end88.fail_crit_edge, %if.end81.fail_crit_edge, %if.end76.fail_crit_edge, %if.end70.fail_crit_edge, %if.end65.fail_crit_edge, %if.end56.fail_crit_edge, %if.end51.fail_crit_edge, %if.end26.fail_crit_edge, %if.then24, %if.then12.fail_crit_edge
  %status.0 = phi i32 [ %22, %if.then24 ], [ %call36, %if.end26.fail_crit_edge ], [ %call52, %if.end51.fail_crit_edge ], [ %call91, %if.end88.fail_crit_edge ], [ -12, %if.end81.fail_crit_edge ], [ -12, %if.end76.fail_crit_edge ], [ -19, %if.end70.fail_crit_edge ], [ -19, %if.end65.fail_crit_edge ], [ -19, %if.end56.fail_crit_edge ], [ %call15, %if.then12.fail_crit_edge ]
  %os_desc_table123 = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 7
  %85 = ptrtoint ptr %os_desc_table123 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %os_desc_table123, align 4
  tail call void @kfree(ptr noundef %86) #11
  %os_desc_n124 = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 8
  %87 = ptrtoint ptr %os_desc_n124 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %os_desc_n124, align 4
  %notify_req125 = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 5
  %88 = ptrtoint ptr %notify_req125 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %notify_req125, align 4
  %tobool126.not = icmp eq ptr %89, null
  br i1 %tobool126.not, label %fail.do.end135_crit_edge, label %if.then127

fail.do.end135_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end135

if.then127:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  tail call void @kfree(ptr noundef %91) #11
  %notify130 = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 4
  %92 = ptrtoint ptr %notify130 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %notify130, align 8
  %94 = ptrtoint ptr %notify_req125 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %notify_req125, align 4
  tail call void @usb_ep_free_request(ptr noundef %93, ptr noundef %95) #11
  br label %do.end135

do.end135:                                        ; preds = %if.then127, %fail.do.end135_crit_edge
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 4
  %dev137 = getelementptr inbounds %struct.usb_gadget, ptr %97, i32 0, i32 11
  %98 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev137, ptr noundef nonnull @.str.21, ptr noundef %99, i32 noundef %status.0) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end135, %if.then104, %if.end94, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %do.end135 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.then3.cleanup_crit_edge ], [ 0, %if.then104 ], [ 0, %if.end94 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ncm_unbind(ptr nocapture noundef readonly %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_unbind.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_unbind, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_unbind.__UNIQUE_ID_ddebug369, ptr noundef %dev, ptr noundef nonnull @.str.37) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %task_timer = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 17
  %call5 = tail call i32 @hrtimer_cancel(ptr noundef %task_timer) #11
  %os_desc_table = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 7
  %4 = ptrtoint ptr %os_desc_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %os_desc_table, align 4
  tail call void @kfree(ptr noundef %5) #11
  %os_desc_n = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 8
  %6 = ptrtoint ptr %os_desc_n to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %os_desc_n, align 4
  store i8 0, ptr @ncm_string_defs, align 4
  tail call void @usb_free_all_descriptors(ptr noundef %f) #11
  %notify_count = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %notify_count, i32 noundef 4) #11
  %7 = ptrtoint ptr %notify_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %notify_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %do.end.if.end11_crit_edge, label %if.then8

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %notify = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 4
  %9 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %notify, align 8
  %notify_req = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 5
  %11 = ptrtoint ptr %notify_req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %notify_req, align 4
  %call9 = tail call i32 @usb_ep_dequeue(ptr noundef %10, ptr noundef %12) #11
  %call.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %notify_count, i32 noundef 4) #11
  %13 = ptrtoint ptr %notify_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %notify_count, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %do.end.if.end11_crit_edge
  %notify_req12 = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 5
  %14 = ptrtoint ptr %notify_req12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %notify_req12, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %17) #11
  %notify13 = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 4
  %18 = ptrtoint ptr %notify13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %notify13, align 8
  %20 = ptrtoint ptr %notify_req12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %notify_req12, align 4
  tail call void @usb_ep_free_request(ptr noundef %19, ptr noundef %21) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncm_set_alt(ptr noundef %f, i32 noundef %intf, i32 noundef %alt) #2 align 64 {
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
  %ctrl_id = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl_id, align 8
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %intf)
  %cmp = icmp eq i32 %conv, %intf
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alt)
  %cmp3.not = icmp eq i32 %alt, 0
  br i1 %cmp3.not, label %do.body, label %if.then.cleanup166_crit_edge

if.then.cleanup166_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup166

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_set_alt.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_set_alt, %do.end)) #11
          to label %if.then10 [label %do.end], !srcloc !273

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_set_alt.__UNIQUE_ID_ddebug358, ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %intf) #11
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %notify = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 4
  %8 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %notify, align 8
  %call12 = tail call i32 @usb_ep_disable(ptr noundef %9) #11
  %10 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %notify, align 8
  %desc = getelementptr inbounds %struct.usb_ep, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %do.body16, label %do.end.if.end42_crit_edge

do.end.if.end42_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

do.body16:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_set_alt.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_set_alt, %do.end35)) #11
          to label %if.then30 [label %do.end35], !srcloc !273

if.then30:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %dev32 = getelementptr inbounds %struct.usb_gadget, ptr %15, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_set_alt.__UNIQUE_ID_ddebug359, ptr noundef %dev32, ptr noundef nonnull @.str.40, i32 noundef %intf) #11
  br label %do.end35

do.end35:                                         ; preds = %if.then30, %do.body16
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %18 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %notify, align 8
  %call38 = tail call i32 @config_ep_by_speed(ptr noundef %17, ptr noundef %f, ptr noundef %19) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.end35.if.end42_crit_edge, label %do.end35.cleanup166_crit_edge

do.end35.cleanup166_crit_edge:                    ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup166

do.end35.if.end42_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.end42:                                         ; preds = %do.end35.if.end42_crit_edge, %do.end.if.end42_crit_edge
  %20 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %notify, align 8
  %call44 = tail call i32 @usb_ep_enable(ptr noundef %21) #11
  br label %cleanup166

if.else:                                          ; preds = %entry
  %data_id = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 2
  %22 = ptrtoint ptr %data_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data_id, align 1
  %conv45 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv45, i32 %intf)
  %cmp46 = icmp ne i32 %conv45, %intf
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %alt)
  %cmp49 = icmp ugt i32 %alt, 1
  %or.cond = or i1 %cmp49, %cmp46
  br i1 %or.cond, label %if.else.cleanup166_crit_edge, label %if.end52

if.else.cleanup166_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup166

if.end52:                                         ; preds = %if.else
  %in_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 2
  %24 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %in_ep, align 8
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enabled, align 1, !range !271
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool53.not = icmp eq i8 %27, 0
  br i1 %tobool53.not, label %if.end52.if.end76_crit_edge, label %do.body55

if.end52.if.end76_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

do.body55:                                        ; preds = %if.end52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_set_alt.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_set_alt, %do.end74)) #11
          to label %if.then69 [label %do.end74], !srcloc !273

if.then69:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %dev71 = getelementptr inbounds %struct.usb_gadget, ptr %29, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_set_alt.__UNIQUE_ID_ddebug360, ptr noundef %dev71, ptr noundef nonnull @.str.41) #11
  br label %do.end74

do.end74:                                         ; preds = %if.then69, %do.body55
  %netdev = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 13
  %30 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %netdev, align 4
  tail call void @gether_disconnect(ptr noundef %f) #11
  %parser_opts.i = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 9
  %31 = ptrtoint ptr %parser_opts.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ndp16_opts, ptr %parser_opts.i, align 4
  %is_crc.i = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 10
  %32 = ptrtoint ptr %is_crc.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %is_crc.i, align 8
  %ndp_sign2.i = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 11
  %33 = ptrtoint ptr %ndp_sign2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 810369870, ptr %ndp_sign2.i, align 4
  %cdc_filter.i = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 5
  %34 = ptrtoint ptr %cdc_filter.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 15, ptr %cdc_filter.i, align 2
  %header_len.i = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 6
  %35 = ptrtoint ptr %header_len.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %header_len.i, align 4
  %fixed_out_len.i = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 8
  %36 = ptrtoint ptr %fixed_out_len.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16384, ptr %fixed_out_len.i, align 4
  %fixed_in_len.i = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 9
  %37 = ptrtoint ptr %fixed_in_len.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 16384, ptr %fixed_in_len.i, align 8
  br label %if.end76

if.end76:                                         ; preds = %do.end74, %if.end52.if.end76_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %alt)
  %cmp77 = icmp eq i32 %alt, 1
  br i1 %cmp77, label %if.then79, label %if.end76.if.end161_crit_edge

if.end76.if.end161_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end161

if.then79:                                        ; preds = %if.end76
  %38 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %in_ep, align 8
  %desc82 = getelementptr inbounds %struct.usb_ep, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %desc82 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc82, align 4
  %tobool83.not = icmp eq ptr %41, null
  br i1 %tobool83.not, label %if.then79.do.body88_crit_edge, label %lor.lhs.false

if.then79.do.body88_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body88

lor.lhs.false:                                    ; preds = %if.then79
  %out_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 3
  %42 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %out_ep, align 4
  %desc85 = getelementptr inbounds %struct.usb_ep, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %desc85 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %desc85, align 4
  %tobool86.not = icmp eq ptr %45, null
  br i1 %tobool86.not, label %lor.lhs.false.do.body88_crit_edge, label %lor.lhs.false.if.end127_crit_edge

lor.lhs.false.if.end127_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127

lor.lhs.false.do.body88_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body88

do.body88:                                        ; preds = %lor.lhs.false.do.body88_crit_edge, %if.then79.do.body88_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_set_alt.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_set_alt, %do.end107)) #11
          to label %if.then102 [label %do.end107], !srcloc !273

if.then102:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  %dev104 = getelementptr inbounds %struct.usb_gadget, ptr %47, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_set_alt.__UNIQUE_ID_ddebug361, ptr noundef %dev104, ptr noundef nonnull @.str.42) #11
  br label %do.end107

do.end107:                                        ; preds = %if.then102, %do.body88
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 4
  %50 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %in_ep, align 8
  %call111 = tail call i32 @config_ep_by_speed(ptr noundef %49, ptr noundef %f, ptr noundef %51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %lor.lhs.false113, label %do.end107.cleanup_crit_edge

do.end107.cleanup_crit_edge:                      ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false113:                                 ; preds = %do.end107
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 4
  %out_ep116 = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 3
  %54 = ptrtoint ptr %out_ep116 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %out_ep116, align 4
  %call117 = tail call i32 @config_ep_by_speed(ptr noundef %53, ptr noundef %f, ptr noundef %55) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %lor.lhs.false113.if.end127_crit_edge, label %lor.lhs.false113.cleanup_crit_edge

lor.lhs.false113.cleanup_crit_edge:               ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false113.if.end127_crit_edge:             ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127

if.end127:                                        ; preds = %lor.lhs.false113.if.end127_crit_edge, %lor.lhs.false.if.end127_crit_edge
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  %quirk_zlp_not_supp.i = getelementptr inbounds %struct.usb_gadget, ptr %57, i32 0, i32 17
  %58 = ptrtoint ptr %quirk_zlp_not_supp.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load.i = load i32, ptr %quirk_zlp_not_supp.i, align 4
  %is_zlp_ok = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 4
  %59 = lshr i32 %bf.load.i, 20
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  %62 = xor i8 %61, 1
  %63 = ptrtoint ptr %is_zlp_ok to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %is_zlp_ok, align 8
  %cdc_filter = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 5
  %64 = ptrtoint ptr %cdc_filter to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 15, ptr %cdc_filter, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_set_alt.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_set_alt, %do.end153)) #11
          to label %if.then148 [label %do.end153], !srcloc !273

if.then148:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %3, align 4
  %dev150 = getelementptr inbounds %struct.usb_gadget, ptr %66, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_set_alt.__UNIQUE_ID_ddebug362, ptr noundef %dev150, ptr noundef nonnull @.str.43) #11
  br label %do.end153

do.end153:                                        ; preds = %if.then148, %if.end127
  %call155 = tail call ptr @gether_connect(ptr noundef %f) #11
  %cmp.i = icmp ugt ptr %call155, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %cleanup.thread228

cleanup.thread:                                   ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %call155 to i32
  br label %cleanup166

cleanup.thread228:                                ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #13
  %netdev160 = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 13
  %68 = ptrtoint ptr %netdev160 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call155, ptr %netdev160, align 4
  br label %if.end161

cleanup:                                          ; preds = %lor.lhs.false113.cleanup_crit_edge, %do.end107.cleanup_crit_edge
  %69 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %in_ep, align 8
  %desc122 = getelementptr inbounds %struct.usb_ep, ptr %70, i32 0, i32 9
  %71 = ptrtoint ptr %desc122 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %desc122, align 4
  %out_ep124 = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 3
  %72 = ptrtoint ptr %out_ep124 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %out_ep124, align 4
  %desc125 = getelementptr inbounds %struct.usb_ep, ptr %73, i32 0, i32 9
  %74 = ptrtoint ptr %desc125 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %desc125, align 4
  br label %cleanup166

if.end161:                                        ; preds = %cleanup.thread228, %if.end76.if.end161_crit_edge
  %lock = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %notify_state.i = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 6
  %75 = ptrtoint ptr %notify_state.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 2, ptr %notify_state.i, align 8
  tail call fastcc void @ncm_do_notify(ptr noundef %f) #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  br label %cleanup166

cleanup166:                                       ; preds = %if.end161, %cleanup, %cleanup.thread, %if.else.cleanup166_crit_edge, %if.end42, %do.end35.cleanup166_crit_edge, %if.then.cleanup166_crit_edge
  %retval.1 = phi i32 [ 0, %if.end161 ], [ 0, %if.end42 ], [ %67, %cleanup.thread ], [ -22, %cleanup ], [ -22, %if.else.cleanup166_crit_edge ], [ -22, %do.end35.cleanup166_crit_edge ], [ -22, %if.then.cleanup166_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ncm_get_alt(ptr nocapture noundef readonly %f, i32 noundef %intf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_id = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %ctrl_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctrl_id, align 8
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %intf)
  %cmp = icmp eq i32 %conv, %intf
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %in_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 2
  %2 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_ep, align 8
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 1, !range !271
  %6 = zext i8 %5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncm_setup(ptr noundef %f, ptr nocapture noundef readonly %ctrl) #2 align 64 {
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
  switch i16 %or, label %entry.do.body319_crit_edge [
    i16 8515, label %sw.bb
    i16 -24192, label %sw.bb17
    i16 -24187, label %sw.bb57
    i16 8582, label %sw.bb97
    i16 -24189, label %sw.bb115
    i16 8580, label %sw.bb157
    i16 -24183, label %sw.bb214
    i16 8586, label %sw.bb259
  ]

entry.do.body319_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body319

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.not = icmp eq i16 %13, 0
  br i1 %cmp.not, label %lor.lhs.false, label %sw.bb.do.body319_crit_edge

sw.bb.do.body319_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body319

lor.lhs.false:                                    ; preds = %sw.bb
  %ctrl_id = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 1
  %20 = ptrtoint ptr %ctrl_id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ctrl_id, align 8
  %22 = zext i8 %21 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %22)
  %cmp8.not = icmp eq i16 %8, %22
  br i1 %cmp8.not, label %do.body, label %lor.lhs.false.do.body319_crit_edge

lor.lhs.false.do.body319_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body319

do.body:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_setup.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_setup, %do.end)) #11
          to label %if.then14 [label %do.end], !srcloc !273

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %24, i32 0, i32 11
  %conv15 = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_setup.__UNIQUE_ID_ddebug347, ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %conv15) #11
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %cdc_filter = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 5
  %25 = ptrtoint ptr %cdc_filter to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %11, ptr %cdc_filter, align 2
  br label %sw.epilog346

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp19 = icmp ne i16 %13, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp23.not = icmp eq i16 %10, 0
  %or.cond = select i1 %cmp19, i1 %cmp23.not, i1 false
  br i1 %or.cond, label %lor.lhs.false25, label %sw.bb17.do.body319_crit_edge

sw.bb17.do.body319_crit_edge:                     ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body319

lor.lhs.false25:                                  ; preds = %sw.bb17
  %ctrl_id27 = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 1
  %26 = ptrtoint ptr %ctrl_id27 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ctrl_id27, align 8
  %28 = zext i8 %27 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %28)
  %cmp29.not = icmp eq i16 %8, %28
  br i1 %cmp29.not, label %if.end32, label %lor.lhs.false25.do.body319_crit_edge

lor.lhs.false25.do.body319_crit_edge:             ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body319

if.end32:                                         ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #13
  %29 = tail call i16 @llvm.umin.i16(i16 %14, i16 28)
  %spec.select = zext i16 %29 to i32
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 4
  %32 = call ptr @memcpy(ptr %31, ptr @ntb_parameters, i32 %spec.select)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_setup.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_setup, %sw.epilog346)) #11
          to label %if.then51 [label %sw.epilog346], !srcloc !273

if.then51:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  %dev53 = getelementptr inbounds %struct.usb_gadget, ptr %34, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_setup.__UNIQUE_ID_ddebug348, ptr noundef %dev53, ptr noundef nonnull @.str.46) #11
  br label %sw.epilog346

sw.bb57:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %14)
  %cmp59 = icmp ugt i16 %14, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp63.not = icmp eq i16 %10, 0
  %or.cond501 = select i1 %cmp59, i1 %cmp63.not, i1 false
  br i1 %or.cond501, label %lor.lhs.false65, label %sw.bb57.do.body319_crit_edge

sw.bb57.do.body319_crit_edge:                     ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body319

lor.lhs.false65:                                  ; preds = %sw.bb57
  %ctrl_id67 = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 1
  %35 = ptrtoint ptr %ctrl_id67 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ctrl_id67, align 8
  %37 = zext i8 %36 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %37)
  %cmp69.not = icmp eq i16 %8, %37
  br i1 %cmp69.not, label %if.end72, label %lor.lhs.false65.do.body319_crit_edge

lor.lhs.false65.do.body319_crit_edge:             ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body319

if.end72:                                         ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #13
  %fixed_in_len = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 9
  %38 = ptrtoint ptr %fixed_in_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fixed_in_len, align 8
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %5, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %39) #11
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %41, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_setup.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_setup, %sw.epilog346)) #11
          to label %if.then89 [label %sw.epilog346], !srcloc !273

if.then89:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  %dev91 = getelementptr inbounds %struct.usb_gadget, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %fixed_in_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fixed_in_len, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_setup.__UNIQUE_ID_ddebug349, ptr noundef %dev91, ptr noundef nonnull @.str.47, i32 noundef %47) #11
  br label %sw.epilog346

sw.bb97:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %13)
  %cmp99.not = icmp eq i16 %13, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp103.not = icmp eq i16 %10, 0
  %or.cond502 = select i1 %cmp99.not, i1 %cmp103.not, i1 false
  br i1 %or.cond502, label %lor.lhs.false105, label %sw.bb97.do.body319_crit_edge

sw.bb97.do.body319_crit_edge:                     ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body319

lor.lhs.false105:                                 ; preds = %sw.bb97
  %ctrl_id107 = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 1
  %48 = ptrtoint ptr %ctrl_id107 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ctrl_id107, align 8
  %50 = zext i8 %49 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %50)
  %cmp109.not = icmp eq i16 %8, %50
  br i1 %cmp109.not, label %if.end112, label %lor.lhs.false105.do.body319_crit_edge

lor.lhs.false105.do.body319_crit_edge:            ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body319

if.end112:                                        ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_pc() #13
  %complete = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 7
  %51 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @ncm_ep0out_complete, ptr %complete, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 1
  %52 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %length, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 8
  %53 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %f, ptr %context, align 4
  br label %sw.epilog346

sw.bb115:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %14)
  %cmp117 = icmp ugt i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp121.not = icmp eq i16 %10, 0
  %or.cond503 = select i1 %cmp117, i1 %cmp121.not, i1 false
  br i1 %or.cond503, label %lor.lhs.false123, label %sw.bb115.do.body319_crit_edge

sw.bb115.do.body319_crit_edge:                    ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body319

lor.lhs.false123:                                 ; preds = %sw.bb115
  %ctrl_id125 = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 1
  %54 = ptrtoint ptr %ctrl_id125 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ctrl_id125, align 8
  %56 = zext i8 %55 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %56)
  %cmp127.not = icmp eq i16 %8, %56
  br i1 %cmp127.not, label %if.end130, label %lor.lhs.false123.do.body319_crit_edge

lor.lhs.false123.do.body319_crit_edge:            ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body319

if.end130:                                        ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #13
  %parser_opts = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 9
  %57 = ptrtoint ptr %parser_opts to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %parser_opts, align 4
  %cmp131 = icmp ne ptr %58, @ndp16_opts
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %5, align 4
  %61 = select i1 %cmp131, i16 256, i16 0
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 2)
  store i16 %61, ptr %60, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_setup.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_setup, %sw.epilog346)) #11
          to label %if.then150 [label %sw.epilog346], !srcloc !273

if.then150:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 4
  %dev152 = getelementptr inbounds %struct.usb_gadget, ptr %64, i32 0, i32 11
  %conv153 = zext i1 %cmp131 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_setup.__UNIQUE_ID_ddebug350, ptr noundef %dev152, ptr noundef nonnull @.str.48, i32 noundef %conv153) #11
  br label %sw.epilog346

sw.bb157:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp159.not = icmp eq i16 %13, 0
  br i1 %cmp159.not, label %lor.lhs.false161, label %sw.bb157.do.body319_crit_edge

sw.bb157.do.body319_crit_edge:                    ; preds = %sw.bb157
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body319

lor.lhs.false161:                                 ; preds = %sw.bb157
  %ctrl_id163 = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 1
  %65 = ptrtoint ptr %ctrl_id163 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ctrl_id163, align 8
  %67 = zext i8 %66 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %67)
  %cmp165.not = icmp eq i16 %8, %67
  br i1 %cmp165.not, label %if.end168, label %lor.lhs.false161.do.body319_crit_edge

lor.lhs.false161.do.body319_crit_edge:            ; preds = %lor.lhs.false161
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body319

if.end168:                                        ; preds = %lor.lhs.false161
  %68 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.93)
  switch i16 %11, label %if.end168.do.body319_crit_edge [
    i16 0, label %sw.bb170
    i16 1, label %sw.bb192
  ]

if.end168.do.body319_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body319

sw.bb170:                                         ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #13
  %parser_opts171 = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 9
  %69 = ptrtoint ptr %parser_opts171 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @ndp16_opts, ptr %parser_opts171, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_setup.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_setup, %sw.epilog346)) #11
          to label %if.then186 [label %sw.epilog346], !srcloc !273

if.then186:                                       ; preds = %sw.bb170
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %3, align 4
  %dev188 = getelementptr inbounds %struct.usb_gadget, ptr %71, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_setup.__UNIQUE_ID_ddebug351, ptr noundef %dev188, ptr noundef nonnull @.str.49) #11
  br label %sw.epilog346

sw.bb192:                                         ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #13
  %parser_opts193 = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 9
  %72 = ptrtoint ptr %parser_opts193 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @ndp32_opts, ptr %parser_opts193, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_setup.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_setup, %sw.epilog346)) #11
          to label %if.then208 [label %sw.epilog346], !srcloc !273

if.then208:                                       ; preds = %sw.bb192
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %3, align 4
  %dev210 = getelementptr inbounds %struct.usb_gadget, ptr %74, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_setup.__UNIQUE_ID_ddebug352, ptr noundef %dev210, ptr noundef nonnull @.str.50) #11
  br label %sw.epilog346

sw.bb214:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %14)
  %cmp216 = icmp ugt i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp220.not = icmp eq i16 %10, 0
  %or.cond505 = select i1 %cmp216, i1 %cmp220.not, i1 false
  br i1 %or.cond505, label %lor.lhs.false222, label %sw.bb214.do.body319_crit_edge

sw.bb214.do.body319_crit_edge:                    ; preds = %sw.bb214
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body319

lor.lhs.false222:                                 ; preds = %sw.bb214
  %ctrl_id224 = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 1
  %75 = ptrtoint ptr %ctrl_id224 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ctrl_id224, align 8
  %77 = zext i8 %76 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %77)
  %cmp226.not = icmp eq i16 %8, %77
  br i1 %cmp226.not, label %if.end229, label %lor.lhs.false222.do.body319_crit_edge

lor.lhs.false222.do.body319_crit_edge:            ; preds = %lor.lhs.false222
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body319

if.end229:                                        ; preds = %lor.lhs.false222
  call void @__sanitizer_cov_trace_pc() #13
  %is_crc230 = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 10
  %78 = ptrtoint ptr %is_crc230 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %is_crc230, align 8, !range !271
  %80 = zext i8 %79 to i16
  %81 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %5, align 4
  %83 = shl nuw nsw i16 %80, 8
  %84 = ptrtoint ptr %82 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 2)
  store i16 %83, ptr %82, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_setup.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_setup, %sw.epilog346)) #11
          to label %if.then250 [label %sw.epilog346], !srcloc !273

if.then250:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %3, align 4
  %dev252 = getelementptr inbounds %struct.usb_gadget, ptr %86, i32 0, i32 11
  %conv253 = zext i8 %79 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_setup.__UNIQUE_ID_ddebug353, ptr noundef %dev252, ptr noundef nonnull @.str.51, i32 noundef %conv253) #11
  br label %sw.epilog346

sw.bb259:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp261.not = icmp eq i16 %13, 0
  br i1 %cmp261.not, label %lor.lhs.false263, label %sw.bb259.do.body319_crit_edge

sw.bb259.do.body319_crit_edge:                    ; preds = %sw.bb259
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body319

lor.lhs.false263:                                 ; preds = %sw.bb259
  %ctrl_id265 = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 1
  %87 = ptrtoint ptr %ctrl_id265 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ctrl_id265, align 8
  %89 = zext i8 %88 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %89)
  %cmp267.not = icmp eq i16 %8, %89
  br i1 %cmp267.not, label %if.end270, label %lor.lhs.false263.do.body319_crit_edge

lor.lhs.false263.do.body319_crit_edge:            ; preds = %lor.lhs.false263
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body319

if.end270:                                        ; preds = %lor.lhs.false263
  %90 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.94)
  switch i16 %11, label %if.end270.do.body319_crit_edge [
    i16 0, label %sw.bb272
    i16 1, label %sw.bb294
  ]

if.end270.do.body319_crit_edge:                   ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body319

sw.bb272:                                         ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #13
  %is_crc273 = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 10
  %91 = ptrtoint ptr %is_crc273 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %is_crc273, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_setup.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_setup, %sw.epilog346)) #11
          to label %if.then288 [label %sw.epilog346], !srcloc !273

if.then288:                                       ; preds = %sw.bb272
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %3, align 4
  %dev290 = getelementptr inbounds %struct.usb_gadget, ptr %93, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_setup.__UNIQUE_ID_ddebug354, ptr noundef %dev290, ptr noundef nonnull @.str.52) #11
  br label %sw.epilog346

sw.bb294:                                         ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #13
  %is_crc295 = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 10
  %94 = ptrtoint ptr %is_crc295 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %is_crc295, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_setup.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_setup, %sw.epilog346)) #11
          to label %if.then310 [label %sw.epilog346], !srcloc !273

if.then310:                                       ; preds = %sw.bb294
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %3, align 4
  %dev312 = getelementptr inbounds %struct.usb_gadget, ptr %96, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_setup.__UNIQUE_ID_ddebug355, ptr noundef %dev312, ptr noundef nonnull @.str.53) #11
  br label %sw.epilog346

do.body319:                                       ; preds = %if.end270.do.body319_crit_edge, %lor.lhs.false263.do.body319_crit_edge, %sw.bb259.do.body319_crit_edge, %lor.lhs.false222.do.body319_crit_edge, %sw.bb214.do.body319_crit_edge, %if.end168.do.body319_crit_edge, %lor.lhs.false161.do.body319_crit_edge, %sw.bb157.do.body319_crit_edge, %lor.lhs.false123.do.body319_crit_edge, %sw.bb115.do.body319_crit_edge, %lor.lhs.false105.do.body319_crit_edge, %sw.bb97.do.body319_crit_edge, %lor.lhs.false65.do.body319_crit_edge, %sw.bb57.do.body319_crit_edge, %lor.lhs.false25.do.body319_crit_edge, %sw.bb17.do.body319_crit_edge, %lor.lhs.false.do.body319_crit_edge, %sw.bb.do.body319_crit_edge, %entry.do.body319_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_setup.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_setup, %sw.epilog346)) #11
          to label %if.then333 [label %sw.epilog346], !srcloc !273

if.then333:                                       ; preds = %do.body319
  call void @__sanitizer_cov_trace_pc() #13
  %97 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %3, align 4
  %dev335 = getelementptr inbounds %struct.usb_gadget, ptr %98, i32 0, i32 11
  %99 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ctrl, align 1
  %conv337 = zext i8 %100 to i32
  %101 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %bRequest, align 1
  %conv339 = zext i8 %102 to i32
  %conv340 = zext i16 %11 to i32
  %conv341 = zext i16 %8 to i32
  %conv342 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_setup.__UNIQUE_ID_ddebug356, ptr noundef %dev335, ptr noundef nonnull @.str.54, i32 noundef %conv337, i32 noundef %conv339, i32 noundef %conv340, i32 noundef %conv341, i32 noundef %conv342) #11
  br label %sw.epilog346

sw.epilog346:                                     ; preds = %if.then333, %do.body319, %if.then310, %sw.bb294, %if.then288, %sw.bb272, %if.then250, %if.end229, %if.then208, %sw.bb192, %if.then186, %sw.bb170, %if.then150, %if.end130, %if.end112, %if.then89, %if.end72, %if.then51, %if.end32, %do.end
  %value.3 = phi i32 [ -95, %if.then333 ], [ 4, %if.end112 ], [ 4, %if.then89 ], [ %spec.select, %if.then51 ], [ 0, %do.end ], [ 0, %if.then208 ], [ 0, %if.then186 ], [ 0, %if.then310 ], [ 0, %if.then288 ], [ %spec.select, %if.end32 ], [ 4, %if.end72 ], [ 2, %if.then150 ], [ 2, %if.end130 ], [ 0, %sw.bb170 ], [ 0, %sw.bb192 ], [ 2, %if.then250 ], [ 2, %if.end229 ], [ 0, %sw.bb272 ], [ 0, %sw.bb294 ], [ -95, %do.body319 ]
  %parser_opts347 = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 9
  %103 = ptrtoint ptr %parser_opts347 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %parser_opts347, align 4
  %ndp_sign = getelementptr inbounds %struct.ndp_parser_opts, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %ndp_sign to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ndp_sign, align 4
  %is_crc348 = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 10
  %107 = ptrtoint ptr %is_crc348 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %is_crc348, align 8, !range !271
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool349.not = icmp eq i8 %108, 0
  %cond351 = select i1 %tobool349.not, i32 0, i32 16777216
  %or352 = or i32 %cond351, %106
  %ndp_sign353 = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 11
  %109 = ptrtoint ptr %ndp_sign353 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or352, ptr %ndp_sign353, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %value.3)
  %cmp354 = icmp sgt i32 %value.3, -1
  br i1 %cmp354, label %do.body357, label %sw.epilog346.cleanup401_crit_edge

sw.epilog346.cleanup401_crit_edge:                ; preds = %sw.epilog346
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup401

do.body357:                                       ; preds = %sw.epilog346
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_setup.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_setup, %do.end383)) #11
          to label %if.then371 [label %do.end383], !srcloc !273

if.then371:                                       ; preds = %do.body357
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %3, align 4
  %dev373 = getelementptr inbounds %struct.usb_gadget, ptr %111, i32 0, i32 11
  %112 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %ctrl, align 1
  %conv375 = zext i8 %113 to i32
  %114 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %bRequest, align 1
  %conv377 = zext i8 %115 to i32
  %conv378 = zext i16 %11 to i32
  %conv379 = zext i16 %8 to i32
  %conv380 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_setup.__UNIQUE_ID_ddebug357, ptr noundef %dev373, ptr noundef nonnull @.str.55, i32 noundef %conv375, i32 noundef %conv377, i32 noundef %conv378, i32 noundef %conv379, i32 noundef %conv380) #11
  br label %do.end383

do.end383:                                        ; preds = %if.then371, %do.body357
  %zero = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 6
  %116 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %116)
  %bf.load = load i32, ptr %zero, align 4
  %bf.clear = and i32 %bf.load, -8193
  store i32 %bf.clear, ptr %zero, align 4
  %length384 = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 1
  %117 = ptrtoint ptr %length384 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %value.3, ptr %length384, align 4
  %118 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %3, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ep0, align 4
  %call386 = tail call i32 @usb_ep_queue(ptr noundef %121, ptr noundef %5, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call386)
  %cmp387 = icmp slt i32 %call386, 0
  br i1 %cmp387, label %do.end392, label %do.end383.cleanup401_crit_edge

do.end383.cleanup401_crit_edge:                   ; preds = %do.end383
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup401

do.end392:                                        ; preds = %do.end383
  call void @__sanitizer_cov_trace_pc() #13
  %122 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %3, align 4
  %dev394 = getelementptr inbounds %struct.usb_gadget, ptr %123, i32 0, i32 11
  %124 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %ctrl, align 1
  %conv396 = zext i8 %125 to i32
  %126 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %bRequest, align 1
  %conv398 = zext i8 %127 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev394, ptr noundef nonnull @.str.56, i32 noundef %conv396, i32 noundef %conv398, i32 noundef %call386) #15
  br label %cleanup401

cleanup401:                                       ; preds = %do.end392, %do.end383.cleanup401_crit_edge, %sw.epilog346.cleanup401_crit_edge
  %value.4 = phi i32 [ %call386, %do.end392 ], [ %call386, %do.end383.cleanup401_crit_edge ], [ %value.3, %sw.epilog346.cleanup401_crit_edge ]
  ret i32 %value.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ncm_disable(ptr noundef %f) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_disable.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_disable, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_disable.__UNIQUE_ID_ddebug365, ptr noundef %dev, ptr noundef nonnull @.str.62) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %in_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %in_ep, align 8
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled, align 1, !range !271
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %do.end.if.end9_crit_edge, label %if.then7

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %netdev = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 13
  %10 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %netdev, align 4
  tail call void @gether_disconnect(ptr noundef %f) #11
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.end.if.end9_crit_edge
  %notify = getelementptr inbounds %struct.f_ncm, ptr %f, i32 0, i32 4
  %11 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %notify, align 8
  %enabled10 = getelementptr inbounds %struct.usb_ep, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %enabled10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enabled10, align 1, !range !271
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool11.not = icmp eq i8 %14, 0
  br i1 %tobool11.not, label %if.end9.if.end16_crit_edge, label %if.then12

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call i32 @usb_ep_disable(ptr noundef %12) #11
  %15 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %notify, align 8
  %desc = getelementptr inbounds %struct.usb_ep, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %desc, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end9.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ncm_free(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi, align 4
  tail call void @kfree(ptr noundef %f) #11
  %lock = getelementptr inbounds %struct.f_ncm_opts, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.f_ncm_opts, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcnt, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ncm_wrap_ntb(ptr noundef %port, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %fixed_in_len = getelementptr inbounds %struct.gether, ptr %port, i32 0, i32 9
  %0 = ptrtoint ptr %fixed_in_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fixed_in_len, align 8
  %parser_opts = getelementptr inbounds %struct.f_ncm, ptr %port, i32 0, i32 9
  %2 = ptrtoint ptr %parser_opts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parser_opts, align 4
  %dgram_item_len = getelementptr inbounds %struct.ndp_parser_opts, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dgram_item_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dgram_item_len, align 4
  %mul = shl i32 %5, 2
  %is_crc = getelementptr inbounds %struct.f_ncm, ptr %port, i32 0, i32 10
  %6 = ptrtoint ptr %is_crc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_crc, align 8, !range !271
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %call6 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %9, i32 noundef %11) #16
  %neg = xor i32 %call6, -1
  %call7 = tail call ptr @skb_put(ptr noundef nonnull %skb, i32 noundef 4) #11
  %12 = tail call i32 @llvm.bswap.i32(i32 %neg) #11
  %13 = ptrtoint ptr %call7 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %call7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %skb_tx_data = getelementptr inbounds %struct.f_ncm, ptr %port, i32 0, i32 14
  %14 = ptrtoint ptr %skb_tx_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb_tx_data, align 8
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %if.end.if.then31_crit_edge, label %land.lhs.true

if.end.if.then31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

land.lhs.true:                                    ; preds = %if.end
  %ndp_dgram_count = getelementptr inbounds %struct.f_ncm, ptr %port, i32 0, i32 16
  %16 = ptrtoint ptr %ndp_dgram_count to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ndp_dgram_count, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %17)
  %cmp = icmp ugt i16 %17, 31
  br i1 %cmp, label %land.lhs.true.if.then23_crit_edge, label %lor.lhs.false

land.lhs.true.if.then23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

lor.lhs.false:                                    ; preds = %land.lhs.true
  %len12 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 6
  %18 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len12, align 4
  %len14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len14, align 4
  %skb_tx_ndp = getelementptr inbounds %struct.f_ncm, ptr %port, i32 0, i32 15
  %22 = ptrtoint ptr %skb_tx_ndp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb_tx_ndp, align 4
  %len16 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len16, align 4
  %mul19 = shl i32 %5, 3
  %add15 = add i32 %mul19, 8
  %add17 = add i32 %add15, %19
  %add18 = add i32 %add17, %21
  %add20 = add i32 %add18, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %add20, i32 %1)
  %cmp21 = icmp ugt i32 %add20, %1
  br i1 %cmp21, label %lor.lhs.false.if.then23_crit_edge, label %lor.lhs.false.if.end28_crit_edge

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false.if.then23_crit_edge, %land.lhs.true.if.then23_crit_edge
  %call24 = tail call fastcc ptr @package_for_tx(ptr noundef %port)
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.then23.if.then108_crit_edge, label %if.then23.if.end28_crit_edge

if.then23.if.end28_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then23.if.then108_crit_edge:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then108

if.end28:                                         ; preds = %if.then23.if.end28_crit_edge, %lor.lhs.false.if.end28_crit_edge
  %skb2.0.ph = phi ptr [ null, %lor.lhs.false.if.end28_crit_edge ], [ %call24, %if.then23.if.end28_crit_edge ]
  %26 = ptrtoint ptr %skb_tx_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load ptr, ptr %skb_tx_data, align 8
  %tobool30.not = icmp eq ptr %.pr, null
  br i1 %tobool30.not, label %if.end28.if.then31_crit_edge, label %if.end28.if.end64_crit_edge

if.end28.if.end64_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.end28.if.then31_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

if.then31:                                        ; preds = %if.end28.if.then31_crit_edge, %if.end.if.then31_crit_edge
  %skb2.0219 = phi ptr [ %skb2.0.ph, %if.end28.if.then31_crit_edge ], [ null, %if.end.if.then31_crit_edge ]
  %nth_size = getelementptr inbounds %struct.ndp_parser_opts, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %nth_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nth_size, align 4
  %add32 = add i32 %28, 3
  %and = and i32 %add32, -4
  %call.i = tail call ptr @__alloc_skb(i32 noundef %1, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %29 = ptrtoint ptr %skb_tx_data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %skb_tx_data, align 8
  %tobool41.not = icmp eq ptr %call.i, null
  br i1 %tobool41.not, label %if.then31.if.then108_crit_edge, label %if.end43

if.then31.if.then108_crit_edge:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then108

if.end43:                                         ; preds = %if.then31
  %netdev = getelementptr inbounds %struct.f_ncm, ptr %port, i32 0, i32 13
  %30 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev, align 4
  %32 = getelementptr inbounds %struct.anon.44, ptr %call.i, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %32, align 8
  %34 = ptrtoint ptr %skb_tx_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %skb_tx_data, align 8
  %call.i198 = tail call ptr @skb_put(ptr noundef %35, i32 noundef %and) #11
  %36 = call ptr @memset(ptr %call.i198, i32 0, i32 %and)
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %3, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #11
  %40 = ptrtoint ptr %call.i198 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %call.i198, align 1
  %add.ptr = getelementptr i16, ptr %call.i198, i32 2
  %41 = ptrtoint ptr %nth_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nth_size, align 4
  %conv48 = trunc i32 %42 to i16
  %43 = tail call i16 @llvm.bswap.i16(i16 %conv48) #11
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %43, ptr %add.ptr, align 1
  %ndp_size = getelementptr inbounds %struct.ndp_parser_opts, ptr %3, i32 0, i32 3
  %45 = ptrtoint ptr %ndp_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ndp_size, align 4
  %dpe_size = getelementptr inbounds %struct.ndp_parser_opts, ptr %3, i32 0, i32 4
  %47 = ptrtoint ptr %dpe_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dpe_size, align 4
  %mul49 = shl i32 %48, 5
  %add50 = add i32 %mul49, %46
  %call.i199 = tail call ptr @__alloc_skb(i32 noundef %add50, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %skb_tx_ndp52 = getelementptr inbounds %struct.f_ncm, ptr %port, i32 0, i32 15
  %49 = ptrtoint ptr %skb_tx_ndp52 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i199, ptr %skb_tx_ndp52, align 4
  %tobool54.not = icmp eq ptr %call.i199, null
  br i1 %tobool54.not, label %if.end43.if.then108_crit_edge, label %if.end56

if.end43.if.then108_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then108

if.end56:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %netdev, align 4
  %52 = getelementptr inbounds %struct.anon.44, ptr %call.i199, i32 0, i32 2
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %51, ptr %52, align 8
  %54 = ptrtoint ptr %skb_tx_ndp52 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %skb_tx_ndp52, align 4
  %56 = ptrtoint ptr %ndp_size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ndp_size, align 4
  %call61 = tail call ptr @skb_put(ptr noundef %55, i32 noundef %57) #11
  %58 = call ptr @memset(ptr %call61, i32 0, i32 %and)
  %ndp_sign = getelementptr inbounds %struct.f_ncm, ptr %port, i32 0, i32 11
  %59 = ptrtoint ptr %ndp_sign to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ndp_sign, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #11
  %62 = ptrtoint ptr %call61 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %61, ptr %call61, align 1
  %ndp_dgram_count63 = getelementptr inbounds %struct.f_ncm, ptr %port, i32 0, i32 16
  %63 = ptrtoint ptr %ndp_dgram_count63 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 1, ptr %ndp_dgram_count63, align 8
  %task_timer = getelementptr inbounds %struct.f_ncm, ptr %port, i32 0, i32 17
  tail call void @hrtimer_start_range_ns(ptr noundef %task_timer, i64 noundef 300000, i64 noundef 0, i32 noundef 5) #11
  br label %if.end64

if.end64:                                         ; preds = %if.end56, %if.end28.if.end64_crit_edge
  %skb2.0218 = phi ptr [ %skb2.0219, %if.end56 ], [ %skb2.0.ph, %if.end28.if.end64_crit_edge ]
  %skb_tx_ndp65 = getelementptr inbounds %struct.f_ncm, ptr %port, i32 0, i32 15
  %64 = ptrtoint ptr %skb_tx_ndp65 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %skb_tx_ndp65, align 4
  %call.i200 = tail call ptr @skb_put(ptr noundef %65, i32 noundef %mul) #11
  %66 = call ptr @memset(ptr %call.i200, i32 0, i32 %mul)
  %67 = ptrtoint ptr %skb_tx_data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %skb_tx_data, align 8
  %len68 = getelementptr inbounds %struct.sk_buff, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %len68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len68, align 4
  %add70 = add i32 %70, 3
  %and73 = and i32 %add70, -4
  %sub75 = sub i32 %and73, %70
  %71 = ptrtoint ptr %dgram_item_len to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dgram_item_len, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %72, label %do.body.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = trunc i32 %and73 to i16
  %74 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #11
  %75 = ptrtoint ptr %call.i200 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 %74, ptr %call.i200, align 1
  br label %put_ncm.exit

sw.bb1.i:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %76 = tail call i32 @llvm.bswap.i32(i32 %and73) #11
  %77 = ptrtoint ptr %call.i200 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %76, ptr %call.i200, align 1
  br label %put_ncm.exit

do.body.i:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_ncm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 498, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

put_ncm.exit:                                     ; preds = %sw.bb1.i, %sw.bb.i
  %add.ptr.i = getelementptr i16, ptr %call.i200, i32 %72
  %78 = ptrtoint ptr %dgram_item_len to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dgram_item_len, align 4
  %len79 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %80 = ptrtoint ptr %len79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len79, align 4
  %82 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %79, label %do.body.i204 [
    i32 1, label %sw.bb.i202
    i32 2, label %sw.bb1.i203
  ]

sw.bb.i202:                                       ; preds = %put_ncm.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i201 = trunc i32 %81 to i16
  %83 = tail call i16 @llvm.bswap.i16(i16 %conv.i201) #11
  %84 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %84, i32 2)
  store i16 %83, ptr %add.ptr.i, align 1
  br label %cleanup

sw.bb1.i203:                                      ; preds = %put_ncm.exit
  call void @__sanitizer_cov_trace_pc() #13
  %85 = tail call i32 @llvm.bswap.i32(i32 %81) #11
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 4)
  store i32 %85, ptr %add.ptr.i, align 1
  br label %cleanup

do.body.i204:                                     ; preds = %put_ncm.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_ncm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 498, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

cleanup:                                          ; preds = %sw.bb1.i203, %sw.bb.i202
  %ndp_dgram_count80 = getelementptr inbounds %struct.f_ncm, ptr %port, i32 0, i32 16
  %87 = ptrtoint ptr %ndp_dgram_count80 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %ndp_dgram_count80, align 8
  %inc = add i16 %88, 1
  store i16 %inc, ptr %ndp_dgram_count80, align 8
  %89 = ptrtoint ptr %skb_tx_data to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %skb_tx_data, align 8
  %call.i207 = tail call ptr @skb_put(ptr noundef %90, i32 noundef %sub75) #11
  %91 = call ptr @memset(ptr %call.i207, i32 0, i32 %sub75)
  %92 = ptrtoint ptr %skb_tx_data to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %skb_tx_data, align 8
  %data84 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %94 = ptrtoint ptr %data84 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data84, align 4
  %96 = ptrtoint ptr %len79 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %len79, align 4
  %call.i208 = tail call ptr @skb_put(ptr noundef %93, i32 noundef %97) #11
  %98 = call ptr @memcpy(ptr %call.i208, ptr %95, i32 %97)
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb, i32 noundef 0) #11
  br label %cleanup120

if.else:                                          ; preds = %entry
  %skb_tx_data96 = getelementptr inbounds %struct.f_ncm, ptr %port, i32 0, i32 14
  %99 = ptrtoint ptr %skb_tx_data96 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %skb_tx_data96, align 8
  %tobool97.not = icmp eq ptr %100, null
  br i1 %tobool97.not, label %if.else.cleanup120_crit_edge, label %if.then98

if.else.cleanup120_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup120

if.then98:                                        ; preds = %if.else
  %call99 = tail call fastcc ptr @package_for_tx(ptr noundef %port)
  %tobool100.not = icmp eq ptr %call99, null
  br i1 %tobool100.not, label %err.thread, label %if.then98.cleanup120_crit_edge

if.then98.cleanup120_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup120

err.thread:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #13
  %netdev105225 = getelementptr inbounds %struct.f_ncm, ptr %port, i32 0, i32 13
  %101 = ptrtoint ptr %netdev105225 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %netdev105225, align 4
  %tx_dropped226 = getelementptr inbounds %struct.net_device, ptr %102, i32 0, i32 36, i32 7
  %103 = ptrtoint ptr %tx_dropped226 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tx_dropped226, align 4
  %inc106227 = add i32 %104, 1
  store i32 %inc106227, ptr %tx_dropped226, align 4
  br label %if.end109

if.then108:                                       ; preds = %if.end43.if.then108_crit_edge, %if.then31.if.then108_crit_edge, %if.then23.if.then108_crit_edge
  %netdev105 = getelementptr inbounds %struct.f_ncm, ptr %port, i32 0, i32 13
  %105 = ptrtoint ptr %netdev105 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %netdev105, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %106, i32 0, i32 36, i32 7
  %107 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tx_dropped, align 4
  %inc106 = add i32 %108, 1
  store i32 %inc106, ptr %tx_dropped, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb, i32 noundef 1) #11
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %err.thread
  %skb_tx_data110 = getelementptr inbounds %struct.f_ncm, ptr %port, i32 0, i32 14
  %109 = ptrtoint ptr %skb_tx_data110 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %skb_tx_data110, align 8
  %tobool111.not = icmp eq ptr %110, null
  br i1 %tobool111.not, label %if.end109.if.end114_crit_edge, label %if.then112

if.end109.if.end114_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %110, i32 noundef 1) #11
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.end109.if.end114_crit_edge
  %skb_tx_ndp115 = getelementptr inbounds %struct.f_ncm, ptr %port, i32 0, i32 15
  %111 = ptrtoint ptr %skb_tx_ndp115 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %skb_tx_ndp115, align 4
  %tobool116.not = icmp eq ptr %112, null
  br i1 %tobool116.not, label %if.end114.cleanup120_crit_edge, label %if.then117

if.end114.cleanup120_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup120

if.then117:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %112, i32 noundef 1) #11
  br label %cleanup120

cleanup120:                                       ; preds = %if.then117, %if.end114.cleanup120_crit_edge, %if.then98.cleanup120_crit_edge, %if.else.cleanup120_crit_edge, %cleanup
  %retval.0 = phi ptr [ %skb2.0218, %cleanup ], [ %call99, %if.then98.cleanup120_crit_edge ], [ null, %if.else.cleanup120_crit_edge ], [ null, %if.then117 ], [ null, %if.end114.cleanup120_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncm_unwrap_ntb(ptr nocapture noundef readonly %port, ptr noundef %skb, ptr noundef %list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = load i16, ptr getelementptr inbounds (%struct.usb_cdc_ether_desc, ptr @ecm_desc, i32 0, i32 5), align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %conv = zext i16 %3 to i32
  %parser_opts = getelementptr inbounds %struct.f_ncm, ptr %port, i32 0, i32 9
  %4 = ptrtoint ptr %parser_opts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parser_opts, align 4
  %is_crc = getelementptr inbounds %struct.f_ncm, ptr %port, i32 0, i32 10
  %6 = ptrtoint ptr %is_crc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_crc, align 8, !range !271
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %cond.neg = select i1 %tobool.not, i32 0, i32 -4
  %cond = select i1 %tobool.not, i32 0, i32 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %1, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not = icmp eq i32 %10, %12
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %config = getelementptr inbounds %struct.usb_function, ptr %port, i32 0, i32 6
  %13 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config, align 4
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cdev, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %18, i32 0, i32 11
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %20) #15
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef 1, i32 noundef 32, i32 noundef 1, ptr noundef %22, i32 noundef 32, i1 noundef zeroext false) #11
  br label %err

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i16, ptr %1, i32 2
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %add.ptr, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #11
  %conv7 = zext i16 %25 to i32
  %nth_size = getelementptr inbounds %struct.ndp_parser_opts, ptr %5, i32 0, i32 2
  %26 = ptrtoint ptr %nth_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nth_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv7)
  %cmp8.not = icmp eq i32 %27, %conv7
  br i1 %cmp8.not, label %if.end19, label %do.end13

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %config15 = getelementptr inbounds %struct.usb_function, ptr %port, i32 0, i32 6
  %28 = ptrtoint ptr %config15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config15, align 4
  %cdev16 = getelementptr inbounds %struct.usb_configuration, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %cdev16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cdev16, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %dev18 = getelementptr inbounds %struct.usb_gadget, ptr %33, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev18, ptr noundef nonnull @.str.68) #15
  br label %err

if.end19:                                         ; preds = %if.end
  %incdec.ptr20 = getelementptr i16, ptr %1, i32 4
  %block_length = getelementptr inbounds %struct.ndp_parser_opts, ptr %5, i32 0, i32 7
  %34 = ptrtoint ptr %block_length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %block_length, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %35, label %do.body.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %incdec.ptr20, align 1
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #11
  %conv.i = zext i16 %39 to i32
  br label %get_ncm.exit

sw.bb1.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %incdec.ptr20, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #11
  br label %get_ncm.exit

do.body.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_ncm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 516, 0\0A.popsection", ""() #11, !srcloc !275
  unreachable

get_ncm.exit:                                     ; preds = %sw.bb1.i, %sw.bb.i
  %tmp.0.i = phi i32 [ %42, %sw.bb1.i ], [ %conv.i, %sw.bb.i ]
  %add.ptr.i = getelementptr i16, ptr %incdec.ptr20, i32 %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %tmp.0.i)
  %cmp22 = icmp ugt i32 %tmp.0.i, 16384
  br i1 %cmp22, label %do.end27, label %if.end33

do.end27:                                         ; preds = %get_ncm.exit
  call void @__sanitizer_cov_trace_pc() #13
  %config29 = getelementptr inbounds %struct.usb_function, ptr %port, i32 0, i32 6
  %43 = ptrtoint ptr %config29 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %config29, align 4
  %cdev30 = getelementptr inbounds %struct.usb_configuration, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %cdev30 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cdev30, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %dev32 = getelementptr inbounds %struct.usb_gadget, ptr %48, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev32, ptr noundef nonnull @.str.71) #15
  br label %err

if.end33:                                         ; preds = %get_ncm.exit
  %ndp_index34 = getelementptr inbounds %struct.ndp_parser_opts, ptr %5, i32 0, i32 8
  %49 = ptrtoint ptr %ndp_index34 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ndp_index34, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %50, label %do.body.i328 [
    i32 1, label %sw.bb.i326
    i32 2, label %sw.bb1.i327
  ]

sw.bb.i326:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %add.ptr.i, align 1
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #11
  %conv.i325 = zext i16 %54 to i32
  br label %get_ncm.exit331

sw.bb1.i327:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %add.ptr.i, align 1
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #11
  br label %get_ncm.exit331

do.body.i328:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_ncm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 516, 0\0A.popsection", ""() #11, !srcloc !275
  unreachable

get_ncm.exit331:                                  ; preds = %sw.bb1.i327, %sw.bb.i326
  %tmp.0.i329 = phi i32 [ %57, %sw.bb1.i327 ], [ %conv.i325, %sw.bb.i326 ]
  %ndp_size = getelementptr inbounds %struct.ndp_parser_opts, ptr %5, i32 0, i32 3
  %ndp_sign = getelementptr inbounds %struct.f_ncm, ptr %port, i32 0, i32 11
  %dgram_item_len = getelementptr inbounds %struct.ndp_parser_opts, ptr %5, i32 0, i32 6
  %ndplen_align = getelementptr inbounds %struct.ndp_parser_opts, ptr %5, i32 0, i32 5
  %reserved1 = getelementptr inbounds %struct.ndp_parser_opts, ptr %5, i32 0, i32 9
  %next_ndp_index = getelementptr inbounds %struct.ndp_parser_opts, ptr %5, i32 0, i32 11
  %reserved2 = getelementptr inbounds %struct.ndp_parser_opts, ptr %5, i32 0, i32 10
  %dpe_size = getelementptr inbounds %struct.ndp_parser_opts, ptr %5, i32 0, i32 4
  %add119 = add nuw nsw i32 %cond, 14
  %netdev = getelementptr inbounds %struct.f_ncm, ptr %port, i32 0, i32 13
  br label %do.body36

do.body36:                                        ; preds = %do.cond207.do.body36_crit_edge, %get_ncm.exit331
  %ndp_index.0 = phi i32 [ %tmp.0.i329, %get_ncm.exit331 ], [ %tmp.0.i336, %do.cond207.do.body36_crit_edge ]
  %58 = and i32 %ndp_index.0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp37.not = icmp eq i32 %58, 0
  br i1 %cmp37.not, label %lor.lhs.false, label %do.body36.do.end48_crit_edge

do.body36.do.end48_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end48

lor.lhs.false:                                    ; preds = %do.body36
  %59 = ptrtoint ptr %nth_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nth_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ndp_index.0, i32 %60)
  %cmp40 = icmp ult i32 %ndp_index.0, %60
  br i1 %cmp40, label %lor.lhs.false.do.end48_crit_edge, label %lor.lhs.false42

lor.lhs.false.do.end48_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end48

lor.lhs.false42:                                  ; preds = %lor.lhs.false
  %61 = ptrtoint ptr %ndp_size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ndp_size, align 4
  %sub = sub i32 %tmp.0.i, %62
  call void @__sanitizer_cov_trace_cmp4(i32 %ndp_index.0, i32 %sub)
  %cmp43 = icmp ugt i32 %ndp_index.0, %sub
  br i1 %cmp43, label %lor.lhs.false42.do.end48_crit_edge, label %if.end54

lor.lhs.false42.do.end48_crit_edge:               ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end48

do.end48:                                         ; preds = %lor.lhs.false42.do.end48_crit_edge, %lor.lhs.false.do.end48_crit_edge, %do.body36.do.end48_crit_edge
  %config50 = getelementptr inbounds %struct.usb_function, ptr %port, i32 0, i32 6
  %63 = ptrtoint ptr %config50 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %config50, align 4
  %cdev51 = getelementptr inbounds %struct.usb_configuration, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %cdev51 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cdev51, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %dev53 = getelementptr inbounds %struct.usb_gadget, ptr %68, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev53, ptr noundef nonnull @.str.74, i32 noundef %ndp_index.0) #15
  br label %err

if.end54:                                         ; preds = %lor.lhs.false42
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data, align 4
  %add.ptr56 = getelementptr i8, ptr %70, i32 %ndp_index.0
  %71 = ptrtoint ptr %add.ptr56 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %add.ptr56, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #11
  %74 = ptrtoint ptr %ndp_sign to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ndp_sign, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp58.not = icmp eq i32 %73, %75
  br i1 %cmp58.not, label %if.end69, label %do.end63

do.end63:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %config65 = getelementptr inbounds %struct.usb_function, ptr %port, i32 0, i32 6
  %76 = ptrtoint ptr %config65 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %config65, align 4
  %cdev66 = getelementptr inbounds %struct.usb_configuration, ptr %77, i32 0, i32 9
  %78 = ptrtoint ptr %cdev66 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cdev66, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %dev68 = getelementptr inbounds %struct.usb_gadget, ptr %81, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev68, ptr noundef nonnull @.str.77) #15
  br label %err

if.end69:                                         ; preds = %if.end54
  %add.ptr70 = getelementptr i16, ptr %add.ptr56, i32 2
  %incdec.ptr71 = getelementptr i16, ptr %add.ptr56, i32 3
  %82 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 2)
  %83 = load i16, ptr %add.ptr70, align 1
  %84 = tail call i16 @llvm.bswap.i16(i16 %83) #11
  %conv73 = zext i16 %84 to i32
  %85 = ptrtoint ptr %dgram_item_len to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dgram_item_len, align 4
  %mul75 = shl i32 %86, 3
  %add = add i32 %mul75, %62
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv73)
  %cmp76 = icmp ugt i32 %add, %conv73
  br i1 %cmp76, label %if.end69.do.end85_crit_edge, label %lor.lhs.false78

if.end69.do.end85_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end85

lor.lhs.false78:                                  ; preds = %if.end69
  %87 = ptrtoint ptr %ndplen_align to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ndplen_align, align 4
  %rem79 = urem i32 %conv73, %88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem79)
  %cmp80.not = icmp eq i32 %rem79, 0
  br i1 %cmp80.not, label %if.end91, label %lor.lhs.false78.do.end85_crit_edge

lor.lhs.false78.do.end85_crit_edge:               ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end85

do.end85:                                         ; preds = %lor.lhs.false78.do.end85_crit_edge, %if.end69.do.end85_crit_edge
  %config87 = getelementptr inbounds %struct.usb_function, ptr %port, i32 0, i32 6
  %89 = ptrtoint ptr %config87 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %config87, align 4
  %cdev88 = getelementptr inbounds %struct.usb_configuration, ptr %90, i32 0, i32 9
  %91 = ptrtoint ptr %cdev88 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cdev88, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %dev90 = getelementptr inbounds %struct.usb_gadget, ptr %94, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev90, ptr noundef nonnull @.str.80, i32 noundef %conv73) #15
  br label %err

if.end91:                                         ; preds = %lor.lhs.false78
  %95 = ptrtoint ptr %reserved1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %reserved1, align 4
  %add.ptr92 = getelementptr i16, ptr %incdec.ptr71, i32 %96
  %97 = ptrtoint ptr %next_ndp_index to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %next_ndp_index, align 4
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %98, label %do.body.i335 [
    i32 1, label %sw.bb.i333
    i32 2, label %sw.bb1.i334
  ]

sw.bb.i333:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %add.ptr92 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %101 = load i16, ptr %add.ptr92, align 1
  %102 = tail call i16 @llvm.bswap.i16(i16 %101) #11
  %conv.i332 = zext i16 %102 to i32
  br label %get_ncm.exit338

sw.bb1.i334:                                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %add.ptr92 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %add.ptr92, align 1
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #11
  br label %get_ncm.exit338

do.body.i335:                                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_ncm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 516, 0\0A.popsection", ""() #11, !srcloc !275
  unreachable

get_ncm.exit338:                                  ; preds = %sw.bb1.i334, %sw.bb.i333
  %tmp.0.i336 = phi i32 [ %105, %sw.bb1.i334 ], [ %conv.i332, %sw.bb.i333 ]
  %add.ptr.i337 = getelementptr i16, ptr %add.ptr92, i32 %98
  %106 = ptrtoint ptr %reserved2 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %reserved2, align 4
  %add.ptr94 = getelementptr i16, ptr %add.ptr.i337, i32 %107
  %sub96 = sub i32 %conv73, %62
  %108 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %86, label %do.body.i342 [
    i32 1, label %sw.bb.i347
    i32 2, label %sw.bb1.i348
  ]

do.body.i342:                                     ; preds = %get_ncm.exit338
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_ncm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 516, 0\0A.popsection", ""() #11, !srcloc !275
  unreachable

sw.bb.i347:                                       ; preds = %get_ncm.exit338
  call void @__sanitizer_cov_trace_pc() #13
  %109 = ptrtoint ptr %add.ptr94 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %110 = load i16, ptr %add.ptr94, align 1
  %111 = tail call i16 @llvm.bswap.i16(i16 %110) #11
  %conv.i339 = zext i16 %111 to i32
  %add.ptr.i344393 = getelementptr i16, ptr %add.ptr94, i32 1
  %112 = ptrtoint ptr %add.ptr.i344393 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 2)
  %113 = load i16, ptr %add.ptr.i344393, align 1
  %114 = tail call i16 @llvm.bswap.i16(i16 %113) #11
  %conv.i346 = zext i16 %114 to i32
  br label %get_ncm.exit352

sw.bb1.i348:                                      ; preds = %get_ncm.exit338
  call void @__sanitizer_cov_trace_pc() #13
  %115 = ptrtoint ptr %add.ptr94 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 4)
  %116 = load i32, ptr %add.ptr94, align 1
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #11
  %add.ptr.i344 = getelementptr i16, ptr %add.ptr94, i32 2
  %118 = ptrtoint ptr %add.ptr.i344 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %add.ptr.i344, align 1
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #11
  br label %get_ncm.exit352

get_ncm.exit352:                                  ; preds = %sw.bb1.i348, %sw.bb.i347
  %tmp.0.i343394 = phi i32 [ %117, %sw.bb1.i348 ], [ %conv.i339, %sw.bb.i347 ]
  %tmp.0.i350 = phi i32 [ %120, %sw.bb1.i348 ], [ %conv.i346, %sw.bb.i347 ]
  %121 = getelementptr i16, ptr %add.ptr94, i32 %86
  %add.ptr.i351 = getelementptr i16, ptr %121, i32 %86
  br label %do.body101

do.body101:                                       ; preds = %if.end184.do.body101_crit_edge, %get_ncm.exit352
  %tmp.0 = phi ptr [ %add.ptr.i351, %get_ncm.exit352 ], [ %add.ptr.i365, %if.end184.do.body101_crit_edge ]
  %dg_len2.0 = phi i32 [ %tmp.0.i350, %get_ncm.exit352 ], [ %tmp.0.i364, %if.end184.do.body101_crit_edge ]
  %ndp_len.0 = phi i32 [ %sub96, %get_ncm.exit352 ], [ %sub192, %if.end184.do.body101_crit_edge ]
  %dgram_counter.0 = phi i32 [ 0, %get_ncm.exit352 ], [ %inc, %if.end184.do.body101_crit_edge ]
  %index2.0 = phi i32 [ %tmp.0.i343394, %get_ncm.exit352 ], [ %tmp.0.i357402, %if.end184.do.body101_crit_edge ]
  %122 = ptrtoint ptr %nth_size to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %nth_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index2.0, i32 %123)
  %cmp103 = icmp ult i32 %index2.0, %123
  br i1 %cmp103, label %do.body101.do.end112_crit_edge, label %lor.lhs.false105

do.body101.do.end112_crit_edge:                   ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end112

lor.lhs.false105:                                 ; preds = %do.body101
  %124 = ptrtoint ptr %dpe_size to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dpe_size, align 4
  %sub106 = sub i32 %tmp.0.i, %125
  call void @__sanitizer_cov_trace_cmp4(i32 %index2.0, i32 %sub106)
  %cmp107 = icmp ugt i32 %index2.0, %sub106
  br i1 %cmp107, label %lor.lhs.false105.do.end112_crit_edge, label %if.end118

lor.lhs.false105.do.end112_crit_edge:             ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end112

do.end112:                                        ; preds = %lor.lhs.false105.do.end112_crit_edge, %do.body101.do.end112_crit_edge
  %config114 = getelementptr inbounds %struct.usb_function, ptr %port, i32 0, i32 6
  %126 = ptrtoint ptr %config114 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %config114, align 4
  %cdev115 = getelementptr inbounds %struct.usb_configuration, ptr %127, i32 0, i32 9
  %128 = ptrtoint ptr %cdev115 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cdev115, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %dev117 = getelementptr inbounds %struct.usb_gadget, ptr %131, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev117, ptr noundef nonnull @.str.74, i32 noundef %index2.0) #15
  br label %err

if.end118:                                        ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_cmp4(i32 %dg_len2.0, i32 %add119)
  %cmp120 = icmp ult i32 %dg_len2.0, %add119
  call void @__sanitizer_cov_trace_cmp4(i32 %dg_len2.0, i32 %conv)
  %cmp123 = icmp ugt i32 %dg_len2.0, %conv
  %or.cond = select i1 %cmp120, i1 true, i1 %cmp123
  br i1 %or.cond, label %do.end128, label %if.end134

do.end128:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #13
  %config130 = getelementptr inbounds %struct.usb_function, ptr %port, i32 0, i32 6
  %132 = ptrtoint ptr %config130 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %config130, align 4
  %cdev131 = getelementptr inbounds %struct.usb_configuration, ptr %133, i32 0, i32 9
  %134 = ptrtoint ptr %cdev131 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cdev131, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  %dev133 = getelementptr inbounds %struct.usb_gadget, ptr %137, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev133, ptr noundef nonnull @.str.85, i32 noundef %dg_len2.0) #15
  br label %err

if.end134:                                        ; preds = %if.end118
  %138 = ptrtoint ptr %is_crc to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %is_crc, align 8, !range !271
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool136.not = icmp eq i8 %139, 0
  br i1 %tobool136.not, label %if.end134.if.end160_crit_edge, label %if.then137

if.end134.if.end160_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

if.then137:                                       ; preds = %if.end134
  %140 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %data, align 4
  %add.ptr139 = getelementptr i8, ptr %141, i32 %index2.0
  %add.ptr140 = getelementptr i8, ptr %add.ptr139, i32 %cond.neg
  %add.ptr141 = getelementptr i8, ptr %add.ptr140, i32 %dg_len2.0
  %142 = ptrtoint ptr %add.ptr141 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %add.ptr141, align 1
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #11
  %sub145 = sub i32 %dg_len2.0, %cond
  %call146 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %add.ptr139, i32 noundef %sub145) #16
  %neg = xor i32 %call146, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %neg)
  %cmp147.not = icmp eq i32 %144, %neg
  br i1 %cmp147.not, label %if.then137.if.end160_crit_edge, label %cleanup

if.then137.if.end160_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end160

cleanup:                                          ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #13
  %config154 = getelementptr inbounds %struct.usb_function, ptr %port, i32 0, i32 6
  %145 = ptrtoint ptr %config154 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %config154, align 4
  %cdev155 = getelementptr inbounds %struct.usb_configuration, ptr %146, i32 0, i32 9
  %147 = ptrtoint ptr %cdev155 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cdev155, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %148, align 4
  %dev157 = getelementptr inbounds %struct.usb_gadget, ptr %150, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev157, ptr noundef nonnull @.str.88) #15
  br label %err

if.end160:                                        ; preds = %if.then137.if.end160_crit_edge, %if.end134.if.end160_crit_edge
  %151 = ptrtoint ptr %dgram_item_len to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %dgram_item_len, align 4
  %153 = zext i32 %152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %152, label %do.body.i356 [
    i32 1, label %sw.bb.i361
    i32 2, label %sw.bb1.i362
  ]

do.body.i356:                                     ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_ncm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 516, 0\0A.popsection", ""() #11, !srcloc !275
  unreachable

sw.bb.i361:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  %154 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_loadN_noabort(i32 %154, i32 2)
  %155 = load i16, ptr %tmp.0, align 1
  %156 = tail call i16 @llvm.bswap.i16(i16 %155) #11
  %conv.i353 = zext i16 %156 to i32
  %add.ptr.i358401 = getelementptr i16, ptr %tmp.0, i32 1
  %157 = ptrtoint ptr %add.ptr.i358401 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 2)
  %158 = load i16, ptr %add.ptr.i358401, align 1
  %159 = tail call i16 @llvm.bswap.i16(i16 %158) #11
  %conv.i360 = zext i16 %159 to i32
  br label %get_ncm.exit366

sw.bb1.i362:                                      ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #13
  %160 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_loadN_noabort(i32 %160, i32 4)
  %161 = load i32, ptr %tmp.0, align 1
  %162 = tail call i32 @llvm.bswap.i32(i32 %161) #11
  %add.ptr.i358 = getelementptr i16, ptr %tmp.0, i32 2
  %163 = ptrtoint ptr %add.ptr.i358 to i32
  call void @__asan_loadN_noabort(i32 %163, i32 4)
  %164 = load i32, ptr %add.ptr.i358, align 1
  %165 = tail call i32 @llvm.bswap.i32(i32 %164) #11
  br label %get_ncm.exit366

get_ncm.exit366:                                  ; preds = %sw.bb1.i362, %sw.bb.i361
  %tmp.0.i357402 = phi i32 [ %162, %sw.bb1.i362 ], [ %conv.i353, %sw.bb.i361 ]
  %tmp.0.i364 = phi i32 [ %165, %sw.bb1.i362 ], [ %conv.i360, %sw.bb.i361 ]
  %166 = getelementptr i16, ptr %tmp.0, i32 %152
  %add.ptr.i365 = getelementptr i16, ptr %166, i32 %152
  %167 = ptrtoint ptr %dpe_size to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %dpe_size, align 4
  %sub166 = sub i32 %tmp.0.i, %168
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp.0.i357402, i32 %sub166)
  %cmp167 = icmp ugt i32 %tmp.0.i357402, %sub166
  br i1 %cmp167, label %do.end172, label %if.end178

do.end172:                                        ; preds = %get_ncm.exit366
  call void @__sanitizer_cov_trace_pc() #13
  %config174 = getelementptr inbounds %struct.usb_function, ptr %port, i32 0, i32 6
  %169 = ptrtoint ptr %config174 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %config174, align 4
  %cdev175 = getelementptr inbounds %struct.usb_configuration, ptr %170, i32 0, i32 9
  %171 = ptrtoint ptr %cdev175 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %cdev175, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  %dev177 = getelementptr inbounds %struct.usb_gadget, ptr %174, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev177, ptr noundef nonnull @.str.74, i32 noundef %tmp.0.i357402) #15
  br label %err

if.end178:                                        ; preds = %get_ncm.exit366
  %175 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %netdev, align 4
  %sub179 = sub i32 %dg_len2.0, %cond
  %add.i.i = add i32 %sub179, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %176, i32 noundef %add.i.i, i32 noundef 2592) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end178.err_crit_edge, label %if.end184

if.end178.err_crit_edge:                          ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end184:                                        ; preds = %if.end178
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %177 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %178, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %179 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %180, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %181 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %data, align 4
  %add.ptr186 = getelementptr i8, ptr %182, i32 %index2.0
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %sub179) #11
  %183 = call ptr @memcpy(ptr %call.i, ptr %add.ptr186, i32 %sub179)
  tail call void @skb_queue_tail(ptr noundef %list, ptr noundef nonnull %call.i.i) #11
  %184 = ptrtoint ptr %dgram_item_len to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %dgram_item_len, align 4
  %mul191 = shl i32 %185, 2
  %sub192 = sub i32 %ndp_len.0, %mul191
  %inc = add i32 %dgram_counter.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp.0.i357402)
  %cmp193 = icmp ne i32 %tmp.0.i357402, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp.0.i364)
  %cmp196 = icmp ne i32 %tmp.0.i364, 0
  %or.cond323 = select i1 %cmp193, i1 %cmp196, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %sub192, i32 %mul191)
  %cmp204 = icmp ugt i32 %sub192, %mul191
  %or.cond324 = select i1 %or.cond323, i1 %cmp204, i1 false
  br i1 %or.cond324, label %if.end184.do.body101_crit_edge, label %do.cond207

if.end184.do.body101_crit_edge:                   ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body101

do.cond207:                                       ; preds = %if.end184
  %tobool208.not = icmp eq i32 %tmp.0.i336, 0
  br i1 %tobool208.not, label %do.end209, label %do.cond207.do.body36_crit_edge

do.cond207.do.body36_crit_edge:                   ; preds = %do.cond207
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36

do.end209:                                        ; preds = %do.cond207
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_unwrap_ntb.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_unwrap_ntb, %cleanup226)) #11
          to label %if.then217 [label %cleanup226], !srcloc !273

if.then217:                                       ; preds = %do.end209
  call void @__sanitizer_cov_trace_pc() #13
  %config219 = getelementptr inbounds %struct.usb_function, ptr %port, i32 0, i32 6
  %186 = ptrtoint ptr %config219 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %config219, align 4
  %cdev220 = getelementptr inbounds %struct.usb_configuration, ptr %187, i32 0, i32 9
  %188 = ptrtoint ptr %cdev220 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cdev220, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %189, align 4
  %dev222 = getelementptr inbounds %struct.usb_gadget, ptr %191, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_unwrap_ntb.__UNIQUE_ID_ddebug364, ptr noundef %dev222, ptr noundef nonnull @.str.92, i32 noundef %inc) #11
  br label %cleanup226

err:                                              ; preds = %if.end178.err_crit_edge, %do.end172, %cleanup, %do.end128, %do.end112, %do.end85, %do.end63, %do.end48, %do.end27, %do.end13, %do.end
  tail call void @skb_queue_purge(ptr noundef %list) #11
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %cleanup226

cleanup226:                                       ; preds = %err, %if.then217, %do.end209
  %retval.0 = phi i32 [ -22, %err ], [ 0, %if.then217 ], [ 0, %do.end209 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

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
define internal void @ncm_notify_complete(ptr nocapture noundef readnone %ep, ptr nocapture noundef readonly %req) #2 align 64 {
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
  %3 = load ptr, ptr %config, align 8
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev1, align 4
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req, align 4
  %lock = getelementptr inbounds %struct.f_ncm, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %9, label %do.body7 [
    i32 0, label %do.body
    i32 -104, label %entry.sw.bb5_crit_edge
    i32 -108, label %entry.sw.bb5_crit_edge51
  ]

entry.sw.bb5_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_notify_complete.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_notify_complete, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !273

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %12, i32 0, i32 11
  %bNotificationType = getelementptr inbounds %struct.usb_cdc_notification, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %bNotificationType to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bNotificationType, align 1
  %conv = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_notify_complete.__UNIQUE_ID_ddebug342, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %notify_count = getelementptr inbounds %struct.f_ncm, ptr %1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %notify_count, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %notify_count, i32 1, i32 3, i32 1) #11
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %notify_count, ptr %notify_count, i32 1, ptr elementtype(i32) %notify_count) #11, !srcloc !276
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge51
  %notify_count6 = getelementptr inbounds %struct.f_ncm, ptr %1, i32 0, i32 7
  %call.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %notify_count6, i32 noundef 4) #11
  %16 = ptrtoint ptr %notify_count6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %notify_count6, align 4
  %notify_state = getelementptr inbounds %struct.f_ncm, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %notify_state to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %notify_state, align 8
  br label %sw.epilog

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_notify_complete.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_notify_complete, %do.end29)) #11
          to label %if.then21 [label %do.end29], !srcloc !273

if.then21:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  %dev23 = getelementptr inbounds %struct.usb_gadget, ptr %19, i32 0, i32 11
  %bNotificationType24 = getelementptr inbounds %struct.usb_cdc_notification, ptr %7, i32 0, i32 1
  %20 = ptrtoint ptr %bNotificationType24 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bNotificationType24, align 1
  %conv25 = zext i8 %21 to i32
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_notify_complete.__UNIQUE_ID_ddebug343, ptr noundef %dev23, ptr noundef nonnull @.str.26, i32 noundef %conv25, i32 noundef %23) #11
  br label %do.end29

do.end29:                                         ; preds = %if.then21, %do.body7
  %notify_count30 = getelementptr inbounds %struct.f_ncm, ptr %1, i32 0, i32 7
  %call.i.i48 = tail call zeroext i1 @__kasan_check_write(ptr noundef %notify_count30, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %notify_count30, i32 1, i32 3, i32 1) #11
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %notify_count30, ptr %notify_count30, i32 1, ptr elementtype(i32) %notify_count30) #11, !srcloc !276
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end29, %sw.bb5, %do.end
  tail call fastcc void @ncm_do_notify(ptr noundef %1)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ncm_open(ptr noundef %geth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_open.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_open, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %config = getelementptr inbounds %struct.usb_function, ptr %geth, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 8
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_open.__UNIQUE_ID_ddebug366, ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.f_ncm, ptr %geth, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %is_open = getelementptr inbounds %struct.f_ncm, ptr %geth, i32 0, i32 8
  %6 = ptrtoint ptr %is_open to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %is_open, align 8
  %notify_state.i = getelementptr inbounds %struct.f_ncm, ptr %geth, i32 0, i32 6
  %7 = ptrtoint ptr %notify_state.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %notify_state.i, align 8
  tail call fastcc void @ncm_do_notify(ptr noundef %geth) #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ncm_close(ptr noundef %geth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_close.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_close, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !273

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %config = getelementptr inbounds %struct.usb_function, ptr %geth, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 8
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_close.__UNIQUE_ID_ddebug367, ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.f_ncm, ptr %geth, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %is_open = getelementptr inbounds %struct.f_ncm, ptr %geth, i32 0, i32 8
  %6 = ptrtoint ptr %is_open to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %is_open, align 8
  %notify_state.i = getelementptr inbounds %struct.f_ncm, ptr %geth, i32 0, i32 6
  %7 = ptrtoint ptr %notify_state.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %notify_state.i, align 8
  tail call fastcc void @ncm_do_notify(ptr noundef %geth) #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncm_tx_timeout(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev2 = getelementptr i8, ptr %data, i32 -20
  %0 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %netdev2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops, align 8
  %ndo_start_xmit = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ndo_start_xmit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndo_start_xmit, align 4
  %call = tail call i32 %5(ptr noundef null, ptr noundef nonnull %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ncm_do_notify(ptr noundef %ncm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %notify_req = getelementptr inbounds %struct.f_ncm, ptr %ncm, i32 0, i32 5
  %0 = ptrtoint ptr %notify_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify_req, align 4
  %config = getelementptr inbounds %struct.usb_function, ptr %ncm, i32 0, i32 6
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 8
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev1, align 4
  %notify_count = getelementptr inbounds %struct.f_ncm, ptr %ncm, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %notify_count, i32 noundef 4) #11
  %6 = ptrtoint ptr %notify_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %notify_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %notify_state = getelementptr inbounds %struct.f_ncm, ptr %ncm, i32 0, i32 6
  %10 = ptrtoint ptr %notify_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %notify_state, align 8
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %11, label %if.end.sw.epilog_crit_edge [
    i8 0, label %if.end.cleanup_crit_edge
    i8 1, label %sw.bb2
    i8 2, label %sw.bb18
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %bNotificationType = getelementptr inbounds %struct.usb_cdc_notification, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %bNotificationType to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %bNotificationType, align 1
  %is_open = getelementptr inbounds %struct.f_ncm, ptr %ncm, i32 0, i32 8
  %14 = ptrtoint ptr %is_open to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_open, align 8, !range !271
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_do_notify.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_do_notify, %sw.epilog.sink.split)) #11
          to label %if.then12 [label %sw.epilog.sink.split], !srcloc !273

if.then12:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %is_open to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_open, align 8, !range !271
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool14.not = icmp eq i8 %23, 0
  %cond = select i1 %tobool14.not, ptr @.str.30, ptr @.str.29
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_do_notify.__UNIQUE_ID_ddebug339, ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull %cond) #11
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
  br i1 %cmp.i.i, label %if.else7.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sw.bb18
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %31, i32 0, i32 5
  %34 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %35)
  %cmp.i = icmp ugt i32 %35, 5
  br i1 %cmp.i, label %land.lhs.true.i.ncm_bitrate.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.ncm_bitrate.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ncm_bitrate.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %35)
  %cmp5.i = icmp eq i32 %35, 5
  br i1 %cmp5.i, label %land.lhs.true3.i.ncm_bitrate.exit_crit_edge, label %land.lhs.true3.i.land.lhs.true10.i_crit_edge

land.lhs.true3.i.land.lhs.true10.i_crit_edge:     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true10.i

land.lhs.true3.i.ncm_bitrate.exit_crit_edge:      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ncm_bitrate.exit

if.else7.i:                                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp.i24.i = icmp ult i32 %33, 3
  br i1 %cmp.i24.i, label %if.else7.i.if.else14.i_crit_edge, label %if.else7.i.land.lhs.true10.i_crit_edge

if.else7.i.land.lhs.true10.i_crit_edge:           ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true10.i

if.else7.i.if.else14.i_crit_edge:                 ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14.i

land.lhs.true10.i:                                ; preds = %if.else7.i.land.lhs.true10.i_crit_edge, %land.lhs.true3.i.land.lhs.true10.i_crit_edge
  %speed11.i = getelementptr inbounds %struct.usb_gadget, ptr %31, i32 0, i32 5
  %36 = ptrtoint ptr %speed11.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %speed11.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp12.i = icmp eq i32 %37, 3
  br i1 %cmp12.i, label %land.lhs.true10.i.ncm_bitrate.exit_crit_edge, label %land.lhs.true10.i.if.else14.i_crit_edge

land.lhs.true10.i.if.else14.i_crit_edge:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14.i

land.lhs.true10.i.ncm_bitrate.exit_crit_edge:     ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ncm_bitrate.exit

if.else14.i:                                      ; preds = %land.lhs.true10.i.if.else14.i_crit_edge, %if.else7.i.if.else14.i_crit_edge
  br label %ncm_bitrate.exit

ncm_bitrate.exit:                                 ; preds = %if.else14.i, %land.lhs.true10.i.ncm_bitrate.exit_crit_edge, %land.lhs.true3.i.ncm_bitrate.exit_crit_edge, %land.lhs.true.i.ncm_bitrate.exit_crit_edge
  %retval.0.i123 = phi i32 [ 9728000, %if.else14.i ], [ -44967296, %land.lhs.true.i.ncm_bitrate.exit_crit_edge ], [ -544967296, %land.lhs.true3.i.ncm_bitrate.exit_crit_edge ], [ 425984000, %land.lhs.true10.i.ncm_bitrate.exit_crit_edge ]
  %38 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i123)
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %add.ptr, align 4
  %arrayidx27 = getelementptr i8, ptr %29, i32 12
  %40 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %38, ptr %arrayidx27, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_do_notify.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_do_notify, %sw.epilog.sink.split)) #11
          to label %if.then42 [label %sw.epilog.sink.split], !srcloc !273

if.then42:                                        ; preds = %ncm_bitrate.exit
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %5, align 4
  %dev44 = getelementptr inbounds %struct.usb_gadget, ptr %42, i32 0, i32 11
  %max_speed.i.i124 = getelementptr inbounds %struct.usb_gadget, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %max_speed.i.i124 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_speed.i.i124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %44)
  %cmp.i.i125 = icmp ult i32 %44, 5
  br i1 %cmp.i.i125, label %if.else7.i132, label %land.lhs.true.i128

land.lhs.true.i128:                               ; preds = %if.then42
  %speed.i126 = getelementptr inbounds %struct.usb_gadget, ptr %42, i32 0, i32 5
  %45 = ptrtoint ptr %speed.i126 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %speed.i126, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %46)
  %cmp.i127 = icmp ugt i32 %46, 5
  br i1 %cmp.i127, label %land.lhs.true.i128.ncm_bitrate.exit138_crit_edge, label %land.lhs.true3.i130

land.lhs.true.i128.ncm_bitrate.exit138_crit_edge: ; preds = %land.lhs.true.i128
  call void @__sanitizer_cov_trace_pc() #13
  br label %ncm_bitrate.exit138

land.lhs.true3.i130:                              ; preds = %land.lhs.true.i128
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %46)
  %cmp5.i129 = icmp eq i32 %46, 5
  br i1 %cmp5.i129, label %land.lhs.true3.i130.ncm_bitrate.exit138_crit_edge, label %land.lhs.true3.i130.land.lhs.true10.i135_crit_edge

land.lhs.true3.i130.land.lhs.true10.i135_crit_edge: ; preds = %land.lhs.true3.i130
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true10.i135

land.lhs.true3.i130.ncm_bitrate.exit138_crit_edge: ; preds = %land.lhs.true3.i130
  call void @__sanitizer_cov_trace_pc() #13
  br label %ncm_bitrate.exit138

if.else7.i132:                                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %cmp.i24.i131 = icmp ult i32 %44, 3
  br i1 %cmp.i24.i131, label %if.else7.i132.if.else14.i136_crit_edge, label %if.else7.i132.land.lhs.true10.i135_crit_edge

if.else7.i132.land.lhs.true10.i135_crit_edge:     ; preds = %if.else7.i132
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true10.i135

if.else7.i132.if.else14.i136_crit_edge:           ; preds = %if.else7.i132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14.i136

land.lhs.true10.i135:                             ; preds = %if.else7.i132.land.lhs.true10.i135_crit_edge, %land.lhs.true3.i130.land.lhs.true10.i135_crit_edge
  %speed11.i133 = getelementptr inbounds %struct.usb_gadget, ptr %42, i32 0, i32 5
  %47 = ptrtoint ptr %speed11.i133 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %speed11.i133, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp12.i134 = icmp eq i32 %48, 3
  br i1 %cmp12.i134, label %land.lhs.true10.i135.ncm_bitrate.exit138_crit_edge, label %land.lhs.true10.i135.if.else14.i136_crit_edge

land.lhs.true10.i135.if.else14.i136_crit_edge:    ; preds = %land.lhs.true10.i135
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else14.i136

land.lhs.true10.i135.ncm_bitrate.exit138_crit_edge: ; preds = %land.lhs.true10.i135
  call void @__sanitizer_cov_trace_pc() #13
  br label %ncm_bitrate.exit138

if.else14.i136:                                   ; preds = %land.lhs.true10.i135.if.else14.i136_crit_edge, %if.else7.i132.if.else14.i136_crit_edge
  br label %ncm_bitrate.exit138

ncm_bitrate.exit138:                              ; preds = %if.else14.i136, %land.lhs.true10.i135.ncm_bitrate.exit138_crit_edge, %land.lhs.true3.i130.ncm_bitrate.exit138_crit_edge, %land.lhs.true.i128.ncm_bitrate.exit138_crit_edge
  %retval.0.i137 = phi i32 [ 9728000, %if.else14.i136 ], [ -44967296, %land.lhs.true.i128.ncm_bitrate.exit138_crit_edge ], [ -544967296, %land.lhs.true3.i130.ncm_bitrate.exit138_crit_edge ], [ 425984000, %land.lhs.true10.i135.ncm_bitrate.exit138_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_do_notify.__UNIQUE_ID_ddebug340, ptr noundef %dev44, ptr noundef nonnull @.str.31, i32 noundef %retval.0.i137) #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %ncm_bitrate.exit138, %ncm_bitrate.exit, %if.then12, %sw.bb2
  %.sink = phi i8 [ 0, %sw.bb2 ], [ 0, %if.then12 ], [ 1, %ncm_bitrate.exit ], [ 1, %ncm_bitrate.exit138 ]
  %49 = ptrtoint ptr %notify_state to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %.sink, ptr %notify_state, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %50 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -95, ptr %9, align 1
  %ctrl_id = getelementptr inbounds %struct.f_ncm, ptr %ncm, i32 0, i32 1
  %51 = ptrtoint ptr %ctrl_id to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ctrl_id, align 8
  %conv51 = zext i8 %52 to i16
  %53 = shl nuw i16 %conv51, 8
  %wIndex = getelementptr inbounds %struct.usb_cdc_notification, ptr %9, i32 0, i32 3
  %54 = ptrtoint ptr %wIndex to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %53, ptr %wIndex, align 1
  %call.i.i118 = tail call zeroext i1 @__kasan_check_write(ptr noundef %notify_count, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %notify_count, i32 1, i32 3, i32 1) #11
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %notify_count, ptr %notify_count, i32 1, ptr elementtype(i32) %notify_count) #11, !srcloc !277
  %lock = getelementptr inbounds %struct.f_ncm, ptr %ncm, i32 0, i32 12
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  %notify = getelementptr inbounds %struct.f_ncm, ptr %ncm, i32 0, i32 4
  %56 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %notify, align 8
  %call53 = tail call i32 @usb_ep_queue(ptr noundef %57, ptr noundef %1, i32 noundef 2592) #11
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp = icmp slt i32 %call53, 0
  br i1 %cmp, label %if.then56, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then56:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i119 = tail call zeroext i1 @__kasan_check_write(ptr noundef %notify_count, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %notify_count, i32 1, i32 3, i32 1) #11
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %notify_count, ptr %notify_count, i32 1, ptr elementtype(i32) %notify_count) #11, !srcloc !276
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_do_notify.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_do_notify, %cleanup)) #11
          to label %if.then72 [label %cleanup], !srcloc !273

if.then72:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %5, align 4
  %dev74 = getelementptr inbounds %struct.usb_gadget, ptr %60, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_do_notify.__UNIQUE_ID_ddebug341, ptr noundef %dev74, ptr noundef nonnull @.str.32, i32 noundef %call53) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %if.then56, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ncm_ep0out_complete(ptr noundef %ep, ptr nocapture noundef %req) #2 align 64 {
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
  store ptr null, ptr %context, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %8 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %10 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp eq i32 %9, %11
  br i1 %cmp.not, label %if.end9, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_ep0out_complete.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_ep0out_complete, %invalid)) #11
          to label %if.then8 [label %invalid], !srcloc !273

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %13, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_ep0out_complete.__UNIQUE_ID_ddebug344, ptr noundef %dev, ptr noundef nonnull @.str.58) #11
  br label %invalid

if.end9:                                          ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %15, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #11
  %19 = add i32 %18, -16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14337, i32 %19)
  %20 = icmp ult i32 %19, -14337
  br i1 %20, label %do.body15, label %if.end35

do.body15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_ep0out_complete.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_ep0out_complete, %invalid)) #11
          to label %if.then29 [label %invalid], !srcloc !273

if.then29:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 4
  %dev31 = getelementptr inbounds %struct.usb_gadget, ptr %22, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_ep0out_complete.__UNIQUE_ID_ddebug345, ptr noundef %dev31, ptr noundef nonnull @.str.59, i32 noundef %18) #11
  br label %invalid

if.end35:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %fixed_in_len = getelementptr inbounds %struct.gether, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %fixed_in_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %18, ptr %fixed_in_len, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncm_ep0out_complete.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ncm_ep0out_complete, %cleanup)) #11
          to label %if.then50 [label %cleanup], !srcloc !273

if.then50:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 4
  %dev52 = getelementptr inbounds %struct.usb_gadget, ptr %25, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ncm_ep0out_complete.__UNIQUE_ID_ddebug346, ptr noundef %dev52, ptr noundef nonnull @.str.60, i32 noundef %18) #11
  br label %cleanup

invalid:                                          ; preds = %if.then29, %do.body15, %if.then8, %do.body
  %call56 = tail call i32 @usb_ep_set_halt(ptr noundef %ep) #11
  br label %cleanup

cleanup:                                          ; preds = %invalid, %if.then50, %if.end35
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @package_for_tx(ptr noundef %ncm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parser_opts = getelementptr inbounds %struct.f_ncm, ptr %ncm, i32 0, i32 9
  %0 = ptrtoint ptr %parser_opts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parser_opts, align 4
  %dgram_item_len = getelementptr inbounds %struct.ndp_parser_opts, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dgram_item_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dgram_item_len, align 4
  %mul = shl i32 %3, 2
  %task_timer = getelementptr inbounds %struct.f_ncm, ptr %ncm, i32 0, i32 17
  %call = tail call i32 @hrtimer_try_to_cancel(ptr noundef %task_timer) #11
  %skb_tx_data = getelementptr inbounds %struct.f_ncm, ptr %ncm, i32 0, i32 14
  %4 = ptrtoint ptr %skb_tx_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb_tx_data, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %add = add i32 %7, 3
  %and = and i32 %add, -4
  %add8 = add i32 %and, %mul
  %skb_tx_ndp = getelementptr inbounds %struct.f_ncm, ptr %ncm, i32 0, i32 15
  %8 = ptrtoint ptr %skb_tx_ndp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skb_tx_ndp, align 4
  %len9 = getelementptr inbounds %struct.sk_buff, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len9, align 4
  %add10 = add i32 %add8, %11
  %data = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i16, ptr %13, i32 4
  %block_length = getelementptr inbounds %struct.ndp_parser_opts, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %block_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %block_length, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %15, label %do.body.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = trunc i32 %add10 to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #11
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %17, ptr %add.ptr, align 1
  br label %put_ncm.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %19 = tail call i32 @llvm.bswap.i32(i32 %add10) #11
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %add.ptr, align 1
  br label %put_ncm.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_ncm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 498, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

put_ncm.exit:                                     ; preds = %sw.bb1.i, %sw.bb.i
  %add.ptr.i = getelementptr i16, ptr %add.ptr, i32 %15
  %ndp_index12 = getelementptr inbounds %struct.ndp_parser_opts, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %ndp_index12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ndp_index12, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %22, label %do.body.i69 [
    i32 1, label %sw.bb.i67
    i32 2, label %sw.bb1.i68
  ]

sw.bb.i67:                                        ; preds = %put_ncm.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i66 = trunc i32 %and to i16
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv.i66) #11
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %add.ptr.i, align 1
  br label %put_ncm.exit71

sw.bb1.i68:                                       ; preds = %put_ncm.exit
  call void @__sanitizer_cov_trace_pc() #13
  %26 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %add.ptr.i, align 1
  br label %put_ncm.exit71

do.body.i69:                                      ; preds = %put_ncm.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_ncm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 498, 0\0A.popsection", ""() #11, !srcloc !274
  unreachable

put_ncm.exit71:                                   ; preds = %sw.bb1.i68, %sw.bb.i67
  %ndp_size = getelementptr inbounds %struct.ndp_parser_opts, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %ndp_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ndp_size, align 4
  %ndp_dgram_count = getelementptr inbounds %struct.f_ncm, ptr %ncm, i32 0, i32 16
  %30 = ptrtoint ptr %ndp_dgram_count to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ndp_dgram_count, align 8
  %conv13 = zext i16 %31 to i32
  %mul14 = mul i32 %mul, %conv13
  %add15 = add i32 %mul14, %29
  store i16 0, ptr %ndp_dgram_count, align 8
  %32 = ptrtoint ptr %skb_tx_ndp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb_tx_ndp, align 4
  %data18 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 19
  %34 = ptrtoint ptr %data18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data18, align 4
  %add.ptr19 = getelementptr i16, ptr %35, i32 2
  %conv20 = trunc i32 %add15 to i16
  %36 = tail call i16 @llvm.bswap.i16(i16 %conv20) #11
  %37 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 %36, ptr %add.ptr19, align 1
  %38 = ptrtoint ptr %skb_tx_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %skb_tx_data, align 8
  store ptr null, ptr %skb_tx_data, align 8
  %sub4 = sub i32 %and, %7
  %call.i = tail call ptr @skb_put(ptr noundef %39, i32 noundef %sub4) #11
  %40 = call ptr @memset(ptr %call.i, i32 0, i32 %sub4)
  %41 = ptrtoint ptr %skb_tx_ndp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %skb_tx_ndp, align 4
  %data28 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 19
  %43 = ptrtoint ptr %data28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data28, align 4
  %len30 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 6
  %45 = ptrtoint ptr %len30 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len30, align 4
  %call.i72 = tail call ptr @skb_put(ptr noundef %39, i32 noundef %46) #11
  %47 = call ptr @memcpy(ptr %call.i72, ptr %44, i32 %46)
  %48 = ptrtoint ptr %skb_tx_ndp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %skb_tx_ndp, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %49, i32 noundef 0) #11
  %50 = ptrtoint ptr %skb_tx_ndp to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %skb_tx_ndp, align 4
  %call.i73 = tail call ptr @skb_put(ptr noundef %39, i32 noundef %mul) #11
  %51 = call ptr @memset(ptr %call.i73, i32 0, i32 %mul)
  ret ptr %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !11, !13, !14, !16, !18, !20, !22, !24, !26, !27, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !60, !61, !62, !63, !65, !66, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !95, !97, !98, !100, !101, !102, !103, !104, !106, !107, !109, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !139, !140, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !210, !211, !213, !215, !216, !217, !219, !220, !221, !222, !223, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !261}
!llvm.module.flags = !{!262, !263, !264, !265, !266, !267, !268, !269}
!llvm.ident = !{!270}

!0 = !{ptr @__UNIQUE_ID_alias370, !1, !"__UNIQUE_ID_alias370", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1740, i32 1}
!2 = !{ptr @__initcall__kmod_usb_f_ncm__371_1740_ncmmod_init6, !1, !"__initcall__kmod_usb_f_ncm__371_1740_ncmmod_init6", i1 false, i1 false}
!3 = !{ptr @__exitcall_ncmmod_exit, !1, !"__exitcall_ncmmod_exit", i1 false, i1 false}
!4 = !{ptr @__UNIQUE_ID_file372, !5, !"__UNIQUE_ID_file372", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1741, i32 1}
!6 = !{ptr @__UNIQUE_ID_license373, !5, !"__UNIQUE_ID_license373", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author374, !8, !"__UNIQUE_ID_author374", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1742, i32 1}
!9 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ncmusb_func, !1, !"ncmusb_func", i1 false, i1 false}
!11 = !{ptr @ncm_alloc_inst.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1630, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1643, i32 54}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/function/u_ether.h", i32 140, i32 35}
!18 = !{ptr @ncm_func_type, !19, !"ncm_func_type", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1599, i32 38}
!20 = !{ptr @ncm_item_ops, !21, !"ncm_item_ops", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1577, i32 1}
!22 = !{ptr @ncm_attrs, !23, !"ncm_attrs", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1591, i32 35}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1580, i32 1}
!26 = !{ptr @ncm_opts_attr_dev_addr, !25, !"ncm_opts_attr_dev_addr", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1583, i32 1}
!29 = !{ptr @ncm_opts_attr_host_addr, !28, !"ncm_opts_attr_host_addr", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1586, i32 1}
!32 = !{ptr @ncm_opts_attr_qmult, !31, !"ncm_opts_attr_qmult", i1 false, i1 false}
!33 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1589, i32 1}
!36 = !{ptr @ncm_opts_attr_ifname, !35, !"ncm_opts_attr_ifname", i1 false, i1 false}
!37 = !{ptr @ncm_alloc.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1717, i32 2}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1724, i32 24}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 411, i32 24}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 413, i32 24}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 414, i32 23}
!48 = !{ptr @ncm_string_defs, !49, !"ncm_string_defs", i1 false, i1 false}
!49 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 410, i32 26}
!50 = !{ptr @ndp16_opts, !51, !"ndp16_opts", i1 false, i1 false}
!51 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 484, i32 37}
!52 = !{ptr @ntb_parameters, !53, !"ntb_parameters", i1 false, i1 false}
!53 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 122, i32 42}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1549, i32 2}
!56 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ncm_bind.__UNIQUE_ID_ddebug368, !55, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!60 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1565, i32 2}
!65 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ncm_bind._entry, !64, !"_entry", i1 false, i1 false}
!68 = !{ptr @ncm_bind._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @ncm_strings, !70, !"ncm_strings", i1 false, i1 false}
!70 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 423, i32 35}
!71 = !{ptr @ncm_string_table, !72, !"ncm_string_table", i1 false, i1 false}
!72 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 418, i32 34}
!73 = !{ptr @ncm_control_intf, !74, !"ncm_control_intf", i1 false, i1 false}
!74 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 159, i32 40}
!75 = !{ptr @ncm_data_nop_intf, !76, !"ncm_data_nop_intf", i1 false, i1 false}
!76 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 214, i32 40}
!77 = !{ptr @ncm_data_intf, !78, !"ncm_data_intf", i1 false, i1 false}
!78 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 229, i32 40}
!79 = !{ptr @ecm_desc, !80, !"ecm_desc", i1 false, i1 false}
!80 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 187, i32 34}
!81 = !{ptr @ncm_iad_desc, !82, !"ncm_iad_desc", i1 false, i1 false}
!82 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 145, i32 46}
!83 = !{ptr @ncm_union_desc, !84, !"ncm_union_desc", i1 false, i1 false}
!84 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 179, i32 34}
!85 = !{ptr @fs_ncm_in_desc, !86, !"fs_ncm_in_desc", i1 false, i1 false}
!86 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 254, i32 39}
!87 = !{ptr @fs_ncm_out_desc, !88, !"fs_ncm_out_desc", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 262, i32 39}
!89 = !{ptr @fs_ncm_notify_desc, !90, !"fs_ncm_notify_desc", i1 false, i1 false}
!90 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 244, i32 39}
!91 = !{ptr @.str.24, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 635, i32 3}
!93 = !{ptr @.str.25, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @ncm_notify_complete.__UNIQUE_ID_ddebug342, !92, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!95 = !{ptr @.str.26, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 645, i32 3}
!97 = !{ptr @ncm_notify_complete.__UNIQUE_ID_ddebug343, !96, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!98 = !{ptr @.str.27, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 568, i32 3}
!100 = !{ptr @.str.28, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @ncm_do_notify.__UNIQUE_ID_ddebug339, !99, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!102 = !{ptr @.str.29, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 584, i32 3}
!106 = !{ptr @ncm_do_notify.__UNIQUE_ID_ddebug340, !105, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!107 = !{ptr @.str.32, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 603, i32 3}
!109 = !{ptr @ncm_do_notify.__UNIQUE_ID_ddebug341, !108, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!110 = !{ptr @hs_ncm_in_desc, !111, !"hs_ncm_in_desc", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 298, i32 39}
!112 = !{ptr @hs_ncm_out_desc, !113, !"hs_ncm_out_desc", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 307, i32 39}
!114 = !{ptr @hs_ncm_notify_desc, !115, !"hs_ncm_notify_desc", i1 false, i1 false}
!115 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 289, i32 39}
!116 = !{ptr @ss_ncm_in_desc, !117, !"ss_ncm_in_desc", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 356, i32 39}
!118 = !{ptr @ss_ncm_out_desc, !119, !"ss_ncm_out_desc", i1 false, i1 false}
!119 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 365, i32 39}
!120 = !{ptr @ss_ncm_notify_desc, !121, !"ss_ncm_notify_desc", i1 false, i1 false}
!121 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 336, i32 39}
!122 = !{ptr @ncm_fs_function, !123, !"ncm_fs_function", i1 false, i1 false}
!123 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 270, i32 38}
!124 = !{ptr @ncm_header_desc, !125, !"ncm_header_desc", i1 false, i1 false}
!125 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 171, i32 35}
!126 = !{ptr @ncm_desc, !127, !"ncm_desc", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 202, i32 32}
!128 = !{ptr @ncm_hs_function, !129, !"ncm_hs_function", i1 false, i1 false}
!129 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 316, i32 38}
!130 = !{ptr @ncm_ss_function, !131, !"ncm_ss_function", i1 false, i1 false}
!131 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 383, i32 38}
!132 = !{ptr @ss_ncm_notify_comp_desc, !133, !"ss_ncm_notify_comp_desc", i1 false, i1 false}
!133 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 346, i32 41}
!134 = !{ptr @ss_ncm_bulk_comp_desc, !135, !"ss_ncm_bulk_comp_desc", i1 false, i1 false}
!135 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 374, i32 41}
!136 = !{ptr @.str.33, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1389, i32 2}
!138 = !{ptr @.str.34, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @ncm_open.__UNIQUE_ID_ddebug366, !137, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!140 = !{ptr @.str.35, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1401, i32 2}
!142 = !{ptr @ncm_close.__UNIQUE_ID_ddebug367, !141, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!143 = !{ptr @.str.36, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1673, i32 2}
!145 = !{ptr @.str.37, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @ncm_unbind.__UNIQUE_ID_ddebug369, !144, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!147 = !{ptr @.str.38, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 874, i32 3}
!149 = !{ptr @.str.39, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @ncm_set_alt.__UNIQUE_ID_ddebug358, !148, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!151 = !{ptr @.str.40, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 878, i32 4}
!153 = !{ptr @ncm_set_alt.__UNIQUE_ID_ddebug359, !152, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!154 = !{ptr @.str.41, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 890, i32 4}
!156 = !{ptr @ncm_set_alt.__UNIQUE_ID_ddebug360, !155, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!157 = !{ptr @.str.42, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 905, i32 5}
!159 = !{ptr @ncm_set_alt.__UNIQUE_ID_ddebug361, !158, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!160 = !{ptr @.str.43, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 923, i32 4}
!162 = !{ptr @ncm_set_alt.__UNIQUE_ID_ddebug362, !161, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!163 = !{ptr @.str.44, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 707, i32 3}
!165 = !{ptr @.str.45, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @ncm_setup.__UNIQUE_ID_ddebug347, !164, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!167 = !{ptr @.str.46, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 734, i32 3}
!169 = !{ptr @ncm_setup.__UNIQUE_ID_ddebug348, !168, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!170 = !{ptr @.str.47, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 744, i32 3}
!172 = !{ptr @ncm_setup.__UNIQUE_ID_ddebug349, !171, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!173 = !{ptr @.str.48, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 771, i32 3}
!175 = !{ptr @ncm_setup.__UNIQUE_ID_ddebug350, !174, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!176 = !{ptr @.str.49, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 783, i32 4}
!178 = !{ptr @ncm_setup.__UNIQUE_ID_ddebug351, !177, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!179 = !{ptr @.str.50, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 787, i32 4}
!181 = !{ptr @ncm_setup.__UNIQUE_ID_ddebug352, !180, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!182 = !{ptr @.str.51, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 805, i32 3}
!184 = !{ptr @ncm_setup.__UNIQUE_ID_ddebug353, !183, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!185 = !{ptr @.str.52, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 817, i32 4}
!187 = !{ptr @ncm_setup.__UNIQUE_ID_ddebug354, !186, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!188 = !{ptr @.str.53, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 821, i32 4}
!190 = !{ptr @ncm_setup.__UNIQUE_ID_ddebug355, !189, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!191 = !{ptr @.str.54, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 838, i32 3}
!193 = !{ptr @ncm_setup.__UNIQUE_ID_ddebug356, !192, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!194 = !{ptr @.str.55, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 847, i32 3}
!196 = !{ptr @ncm_setup.__UNIQUE_ID_ddebug357, !195, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!197 = !{ptr @.str.56, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 854, i32 4}
!199 = !{ptr @ncm_setup._entry, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @ncm_setup._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.57, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 664, i32 3}
!203 = !{ptr @.str.58, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @ncm_ep0out_complete.__UNIQUE_ID_ddebug344, !202, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!205 = !{ptr @.str.59, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 671, i32 3}
!207 = !{ptr @ncm_ep0out_complete.__UNIQUE_ID_ddebug345, !206, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!208 = !{ptr @.str.60, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 676, i32 2}
!210 = !{ptr @ncm_ep0out_complete.__UNIQUE_ID_ddebug346, !209, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!211 = !{ptr @ndp32_opts, !212, !"ndp32_opts", i1 false, i1 false}
!212 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 485, i32 37}
!213 = !{ptr @.str.61, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1352, i32 2}
!215 = !{ptr @.str.62, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @ncm_disable.__UNIQUE_ID_ddebug365, !214, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!217 = !{ptr @.str.63, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1192, i32 3}
!219 = !{ptr @.str.64, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.65, !218, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @ncm_unwrap_ntb._entry, !218, !"_entry", i1 false, i1 false}
!222 = !{ptr @ncm_unwrap_ntb._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.66, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1194, i32 29}
!225 = !{ptr @.str.68, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1202, i32 3}
!227 = !{ptr @ncm_unwrap_ntb._entry.67, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @ncm_unwrap_ntb._entry_ptr.69, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.71, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1210, i32 3}
!231 = !{ptr @ncm_unwrap_ntb._entry.70, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @ncm_unwrap_ntb._entry_ptr.72, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.74, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1226, i32 4}
!235 = !{ptr @ncm_unwrap_ntb._entry.73, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @ncm_unwrap_ntb._entry_ptr.75, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.77, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1237, i32 4}
!239 = !{ptr @ncm_unwrap_ntb._entry.76, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @ncm_unwrap_ntb._entry_ptr.78, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.80, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1254, i32 4}
!243 = !{ptr @ncm_unwrap_ntb._entry.79, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @ncm_unwrap_ntb._entry_ptr.81, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @ncm_unwrap_ntb._entry.82, !246, !"_entry", i1 false, i1 false}
!246 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1273, i32 5}
!247 = !{ptr @ncm_unwrap_ntb._entry_ptr.83, !246, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.85, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1285, i32 5}
!250 = !{ptr @ncm_unwrap_ntb._entry.84, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @ncm_unwrap_ntb._entry_ptr.86, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.88, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1299, i32 6}
!254 = !{ptr @ncm_unwrap_ntb._entry.87, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @ncm_unwrap_ntb._entry_ptr.89, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @ncm_unwrap_ntb._entry.90, !257, !"_entry", i1 false, i1 false}
!257 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1310, i32 5}
!258 = !{ptr @ncm_unwrap_ntb._entry_ptr.91, !257, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.92, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/usb/gadget/function/f_ncm.c", i32 1338, i32 2}
!261 = !{ptr @ncm_unwrap_ntb.__UNIQUE_ID_ddebug364, !260, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!262 = !{i32 1, !"wchar_size", i32 2}
!263 = !{i32 1, !"min_enum_size", i32 4}
!264 = !{i32 8, !"branch-target-enforcement", i32 0}
!265 = !{i32 8, !"sign-return-address", i32 0}
!266 = !{i32 8, !"sign-return-address-all", i32 0}
!267 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!268 = !{i32 7, !"uwtable", i32 1}
!269 = !{i32 7, !"frame-pointer", i32 2}
!270 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!271 = !{i8 0, i8 2}
!272 = !{!"auto-init"}
!273 = !{i64 2148736907, i64 2148736912, i64 2148736925, i64 2148736969, i64 2148737003, i64 2148737024}
!274 = !{i64 2156167482, i64 2156167982, i64 2156167519, i64 2156167575, i64 2156167609, i64 2156167633, i64 2156167674, i64 2156167695, i64 2156167723, i64 2156167757}
!275 = !{i64 2156169177, i64 2156169677, i64 2156169214, i64 2156169270, i64 2156169304, i64 2156169328, i64 2156169369, i64 2156169390, i64 2156169418, i64 2156169452}
!276 = !{i64 2148257557, i64 2148257583, i64 2148257612, i64 2148257646, i64 2148257677, i64 2148257700}
!277 = !{i64 2148255092, i64 2148255118, i64 2148255147, i64 2148255181, i64 2148255212, i64 2148255235}
