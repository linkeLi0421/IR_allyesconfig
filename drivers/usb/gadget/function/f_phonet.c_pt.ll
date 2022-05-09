; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/f_phonet.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_phonet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_function_driver = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_union_desc = type { i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_cdc_header_desc = type <{ i8, i8, i8, i16 }>
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.102 }
%struct.atomic_t = type { i32 }
%union.anon.102 = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.f_phonet = type { %struct.usb_function, %struct.anon.118, ptr, ptr, ptr, ptr, [0 x ptr] }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.anon.118 = type { ptr, %struct.spinlock }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.f_phonet_opts = type { %struct.usb_function_instance, i8, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.26, %union.anon.100, %struct.atomic_t, i32 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.100 = type { %struct.atomic_t }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"upnlink%d\00", [22 x i8] zeroinitializer }, align 32
@gphonet_setup_default.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&port->lock\00", [20 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias337 = internal constant [34 x i8] c"usb_f_phonet.alias=usbfunc:phonet\00", section ".modinfo", align 1
@phonetusb_func = internal global { %struct.usb_function_driver, [40 x i8] } { %struct.usb_function_driver { ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr @phonet_alloc_inst, ptr @phonet_alloc }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_usb_f_phonet__338_732_phonetmod_init6 = internal global ptr @phonetmod_init, section ".initcall6.init", align 4
@__exitcall_phonetmod_exit = internal global ptr @phonetmod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author339 = internal constant [41 x i8] c"usb_f_phonet.author=R\C3\A9mi Denis-Courmont\00", section ".modinfo", align 1
@__UNIQUE_ID_file340 = internal constant [59 x i8] c"usb_f_phonet.file=drivers/usb/gadget/function/usb_f_phonet\00", section ".modinfo", align 1
@__UNIQUE_ID_license341 = internal constant [25 x i8] c"usb_f_phonet.license=GPL\00", section ".modinfo", align 1
@pn_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @pn_net_open, ptr @pn_net_close, ptr @pn_net_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@phonet_header_ops = external dso_local constant %struct.header_ops, align 4
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"phonet\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@phonet_func_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @phonet_item_ops, ptr null, ptr @phonet_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@phonet_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @phonet_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@phonet_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @f_phonet_attr_ifname, ptr null], [24 x i8] zeroinitializer }, align 32
@f_phonet_attr_ifname = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.4, ptr null, i16 292, ptr @f_phonet_ifname_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ifname\00", [25 x i8] zeroinitializer }, align 32
@phonet_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&fp->rx.lock\00", [19 x i8] zeroinitializer }, align 32
@pn_control_intf_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 2, i8 -2, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@pn_union_desc = internal global { %struct.usb_cdc_union_desc, [27 x i8] } { %struct.usb_cdc_union_desc { i8 5, i8 36, i8 6, i8 0, i8 0 }, [27 x i8] zeroinitializer }, align 32
@pn_data_nop_intf_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 10, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@pn_data_intf_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 1, i8 2, i8 10, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@pn_fs_sink_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@pn_fs_source_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@pn_hs_sink_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@pn_hs_source_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@fs_pn_function = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @pn_control_intf_desc, ptr @pn_header_desc, ptr @pn_phonet_desc, ptr @pn_union_desc, ptr @pn_data_nop_intf_desc, ptr @pn_data_intf_desc, ptr @pn_fs_sink_desc, ptr @pn_fs_source_desc, ptr null], [60 x i8] zeroinitializer }, align 32
@hs_pn_function = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @pn_control_intf_desc, ptr @pn_header_desc, ptr @pn_phonet_desc, ptr @pn_union_desc, ptr @pn_data_nop_intf_desc, ptr @pn_data_intf_desc, ptr @pn_hs_sink_desc, ptr @pn_hs_source_desc, ptr null], [60 x i8] zeroinitializer }, align 32
@pn_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 561, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"USB CDC Phonet function\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pn_bind\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/usb/gadget/function/f_phonet.c\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pn_bind._entry_ptr = internal global ptr @pn_bind._entry, section ".printk_index", align 4
@pn_bind._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 563, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"using %s, OUT %s, IN %s\0A\00", [39 x i8] zeroinitializer }, align 32
@pn_bind._entry_ptr.13 = internal global ptr @pn_bind._entry.11, section ".printk_index", align 4
@pn_bind._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 571, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"USB CDC Phonet: cannot autoconfigure\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pn_bind._entry_ptr.17 = internal global ptr @pn_bind._entry.14, section ".printk_index", align 4
@pn_header_desc = internal constant { %struct.usb_cdc_header_desc, [27 x i8] } { %struct.usb_cdc_header_desc <{ i8 5, i8 36, i8 0, i16 4097 }>, [27 x i8] zeroinitializer }, align 32
@pn_phonet_desc = internal constant { %struct.usb_cdc_header_desc, [27 x i8] } { %struct.usb_cdc_header_desc <{ i8 5, i8 36, i8 -85, i16 1301 }>, [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967188, i64 4294967192]
@__sancov_gen_cov_switch_values.20 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967193, i64 4294967221]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 699, i32 8 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 705, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"phonetusb_func\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"pn_netdev_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 262, i32 36 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 732, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 638, i32 54 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"phonet_func_type\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 604, i32 38 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"phonet_item_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 588, i32 40 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"phonet_attrs\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 599, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant [21 x i8] c"f_phonet_attr_ifname\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 597, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 688, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [21 x i8] c"pn_control_intf_desc\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 67, i32 1 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"pn_union_desc\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 93, i32 1 }
@___asan_gen_.69 = private unnamed_addr constant [22 x i8] c"pn_data_nop_intf_desc\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 103, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"pn_data_intf_desc\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 114, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant [16 x i8] c"pn_fs_sink_desc\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 125, i32 1 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"pn_fs_source_desc\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 144, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"pn_hs_sink_desc\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 134, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"pn_hs_source_desc\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 153, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"fs_pn_function\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 162, i32 38 }
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"hs_pn_function\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 174, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 561, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 562, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 571, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [15 x i8] c"pn_header_desc\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 77, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant [15 x i8] c"pn_phonet_desc\00", align 1
@___asan_gen_.130 = private constant [42 x i8] c"../drivers/usb/gadget/function/f_phonet.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 85, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 717, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_alias337, ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_file340, ptr @__UNIQUE_ID_license341, ptr @__exitcall_phonetmod_exit, ptr @__initcall__kmod_usb_f_phonet__338_732_phonetmod_init6, ptr @phonetmod_exit, ptr @pn_bind._entry, ptr @pn_bind._entry.11, ptr @pn_bind._entry.14, ptr @pn_bind._entry_ptr, ptr @pn_bind._entry_ptr.13, ptr @pn_bind._entry_ptr.17, ptr @.str, ptr @gphonet_setup_default.__key, ptr @.str.1, ptr @phonetusb_func, ptr @pn_netdev_ops, ptr @.str.2, ptr @.str.3, ptr @phonet_func_type, ptr @phonet_item_ops, ptr @phonet_attrs, ptr @f_phonet_attr_ifname, ptr @.str.4, ptr @phonet_alloc.__key, ptr @.str.5, ptr @pn_control_intf_desc, ptr @pn_union_desc, ptr @pn_data_nop_intf_desc, ptr @pn_data_intf_desc, ptr @pn_fs_sink_desc, ptr @pn_fs_source_desc, ptr @pn_hs_sink_desc, ptr @pn_hs_source_desc, ptr @fs_pn_function, ptr @hs_pn_function, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @pn_header_desc, ptr @pn_phonet_desc, ptr @.str.18], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gphonet_setup_default.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phonetusb_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phonet_func_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phonet_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phonet_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_phonet_attr_ifname to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phonet_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn_control_intf_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn_union_desc to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn_data_nop_intf_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn_data_intf_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn_fs_sink_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn_fs_source_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn_hs_sink_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn_hs_source_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_pn_function to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_pn_function to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn_bind._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn_bind._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn_header_desc to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn_phonet_desc to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gphonet_setup_default() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_netdev_mqs(i32 noundef 48, ptr noundef nonnull @.str, i8 noundef zeroext 0, ptr noundef nonnull @pn_net_setup, i32 noundef 1, i32 noundef 1) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr i8, ptr %call, i32 2308
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @gphonet_setup_default.__key, i16 noundef signext 3) #9
  tail call void @netif_carrier_off(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pn_net_setup(ptr noundef %dev) #0 align 64 {
entry:
  %addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #9
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 27, ptr %addr, align 1
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %1 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %features, align 16
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 820, ptr %type, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 144, ptr %flags, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65541, ptr %mtu, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %5 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 6, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %6 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 65541, ptr %max_mtu, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %7 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %hard_header_len, align 2
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %8 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %addr_len, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 1) #9
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %9 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %tx_queue_len, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %10 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pn_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %11 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %needs_free_netdev, align 8
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %12 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @phonet_header_ops, ptr %header_ops, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @gphonet_set_gadget(ptr nocapture noundef writeonly %net, ptr noundef %g) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %g, i32 0, i32 11
  %parent = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %parent, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gphonet_register_netdev(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdev(ptr noundef %net) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @free_netdev(ptr noundef %net) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gphonet_cleanup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_netdev(ptr noundef %dev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phonetmod_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_function_unregister(ptr noundef nonnull @phonetusb_func) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phonetmod_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_function_register(ptr noundef nonnull @phonetusb_func) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn_net_open(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn_net_close(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn_net_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 245, i16 %1)
  %cmp.not = icmp eq i16 %1, 245
  br i1 %cmp.not, label %do.body2, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body2:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 2308
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body2.out_unlock_crit_edge, label %if.end13, !prof !89

do.body2.out_unlock_crit_edge:                    ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end13:                                         ; preds = %do.body2
  %in_req = getelementptr inbounds %struct.f_phonet, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %in_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_req, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %5, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %length, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 7
  %12 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @pn_tx_complete, ptr %complete, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 6
  %13 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load = load i32, ptr %zero, align 4
  %bf.set = or i32 %bf.load, 8192
  store i32 %bf.set, ptr %zero, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %skb, ptr %context, align 4
  %in_ep = getelementptr inbounds %struct.f_phonet, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %in_ep, align 4
  %call14 = tail call i32 @usb_ep_queue(ptr noundef %16, ptr noundef %5, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end23, label %if.end13.out_unlock_crit_edge, !prof !90

if.end13.out_unlock_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end23:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %17 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %out_unlock

out_unlock:                                       ; preds = %if.end23, %if.end13.out_unlock_crit_edge, %do.body2.out_unlock_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %do.body2.out_unlock_crit_edge ], [ %skb, %if.end13.out_unlock_crit_edge ], [ null, %if.end23 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #9
  br label %out

out:                                              ; preds = %out_unlock, %entry.out_crit_edge
  %skb.addr.1 = phi ptr [ %skb, %entry.out_crit_edge ], [ %skb.addr.0, %out_unlock ]
  %tobool25.not = icmp eq ptr %skb.addr.1, null
  br i1 %tobool25.not, label %out.if.end33_crit_edge, label %if.then32, !prof !90

out.if.end33_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then32:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef nonnull %skb.addr.1) #9
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %19 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %out.if.end33_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pn_tx_complete(ptr nocapture noundef readonly %ep, ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %dev1 = getelementptr inbounds %struct.f_phonet, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.sw.default_crit_edge [
    i32 0, label %sw.bb
    i32 -108, label %entry.sw.bb3_crit_edge
    i32 -104, label %entry.sw.bb3_crit_edge16
  ]

entry.sw.bb3_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 1
  %9 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %tx_packets, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 3
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge16
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 16
  %13 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_aborted_errors, align 8
  %inc5 = add i32 %14, 1
  store i32 %inc5, ptr %tx_aborted_errors, align 8
  br label %sw.default

sw.default:                                       ; preds = %sw.bb3, %entry.sw.default_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %tx_errors.sink15 = phi ptr [ %tx_errors, %sw.default ], [ %tx_bytes, %sw.bb ]
  %.sink14 = phi i32 [ 1, %sw.default ], [ %12, %sw.bb ]
  %15 = ptrtoint ptr %tx_errors.sink15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_errors.sink15, align 4
  %inc7 = add i32 %16, %.sink14
  store i32 %inc7, ptr %tx_errors.sink15, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %5, i32 noundef 1) #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %17 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %18) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @phonet_alloc_inst() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 108) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %free_func_inst = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %free_func_inst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @phonet_free_inst, ptr %free_func_inst, align 8
  %call.i = tail call ptr @alloc_netdev_mqs(i32 noundef 48, ptr noundef nonnull @.str, i8 noundef zeroext 0, ptr noundef nonnull @pn_net_setup, i32 noundef 1, i32 noundef 1) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %gphonet_setup_default.exit.thread, label %gphonet_setup_default.exit

gphonet_setup_default.exit.thread:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %net20 = getelementptr inbounds %struct.f_phonet_opts, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %net20 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -12 to ptr), ptr %net20, align 8
  br label %if.then5

gphonet_setup_default.exit:                       ; preds = %if.end
  %lock.i = getelementptr i8, ptr %call.i, i32 2308
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @gphonet_setup_default.__key, i16 noundef signext 3) #9
  tail call void @netif_carrier_off(ptr noundef nonnull %call.i) #9
  %net = getelementptr inbounds %struct.f_phonet_opts, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %net, align 8
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %gphonet_setup_default.exit.if.then5_crit_edge, label %if.end9

gphonet_setup_default.exit.if.then5_crit_edge:    ; preds = %gphonet_setup_default.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.then5:                                         ; preds = %gphonet_setup_default.exit.if.then5_crit_edge, %gphonet_setup_default.exit.thread
  %retval.0.i22 = phi ptr [ inttoptr (i32 -12 to ptr), %gphonet_setup_default.exit.thread ], [ %call.i, %gphonet_setup_default.exit.if.then5_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end9:                                          ; preds = %gphonet_setup_default.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @phonet_func_type) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i22, %if.then5 ], [ %call7.i.i, %if.end9 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @phonet_alloc(ptr nocapture noundef readonly %fi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 240) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.f_phonet_opts, ptr %fi, i32 0, i32 2
  %1 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net, align 4
  %dev = getelementptr inbounds %struct.f_phonet, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %dev, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %call7.i.i, align 8
  %bind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 9
  %5 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @pn_bind, ptr %bind, align 4
  %unbind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @pn_unbind, ptr %unbind, align 8
  %set_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 13
  %7 = ptrtoint ptr %set_alt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @pn_set_alt, ptr %set_alt, align 4
  %get_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 14
  %8 = ptrtoint ptr %get_alt to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pn_get_alt, ptr %get_alt, align 8
  %disable = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 15
  %9 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @pn_disconnect, ptr %disable, align 4
  %free_func = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %free_func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @phonet_free, ptr %free_func, align 4
  %lock = getelementptr inbounds %struct.f_phonet, ptr %call7.i.i, i32 0, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @phonet_alloc.__key, i16 noundef signext 3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @phonet_free_inst(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bound = getelementptr inbounds %struct.f_phonet_opts, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %bound to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bound, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %net1 = getelementptr inbounds %struct.f_phonet_opts, ptr %f, i32 0, i32 2
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net1, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unregister_netdev(ptr noundef %3) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @free_netdev(ptr noundef %3) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @kfree(ptr noundef %f) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @phonet_attr_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_put_function_instance(ptr noundef %item) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_phonet_ifname_show(ptr nocapture noundef readonly %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.f_phonet_opts, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_get_ifname(ptr noundef %1, ptr noundef %page, i32 noundef 4096) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_get_ifname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn_bind(ptr noundef %c, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %4 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fi, align 4
  %bound = getelementptr inbounds %struct.f_phonet_opts, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bound to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bound, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then:                                          ; preds = %entry
  %net = getelementptr inbounds %struct.f_phonet_opts, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 11
  %parent.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 133, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev.i, ptr %parent.i, align 8
  %11 = load ptr, ptr %net, align 4
  %call.i = tail call i32 @register_netdev(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %gphonet_register_netdev.exit

gphonet_register_netdev.exit:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @free_netdev(ptr noundef %11) #9
  br label %cleanup75

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %bound to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %bound, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %call9 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end8.do.end72_crit_edge, label %if.end11

if.end8.do.end72_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end72

if.end11:                                         ; preds = %if.end8
  %conv = trunc i32 %call9 to i8
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @pn_control_intf_desc, i32 0, i32 2), align 1
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @pn_union_desc, i32 0, i32 3), align 1
  %call13 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end11.do.end72_crit_edge, label %if.end17

if.end11.do.end72_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end72

if.end17:                                         ; preds = %if.end11
  %conv18 = trunc i32 %call13 to i8
  store i8 %conv18, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @pn_data_nop_intf_desc, i32 0, i32 2), align 1
  store i8 %conv18, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @pn_data_intf_desc, i32 0, i32 2), align 1
  store i8 %conv18, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @pn_union_desc, i32 0, i32 4), align 1
  %call21 = tail call ptr @usb_ep_autoconfig(ptr noundef %3, ptr noundef nonnull @pn_fs_sink_desc) #9
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end17.do.end72_crit_edge, label %if.end24

if.end17.do.end72_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end72

if.end24:                                         ; preds = %if.end17
  %out_ep = getelementptr inbounds %struct.f_phonet, ptr %f, i32 0, i32 4
  %13 = ptrtoint ptr %out_ep to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call21, ptr %out_ep, align 4
  %call25 = tail call ptr @usb_ep_autoconfig(ptr noundef %3, ptr noundef nonnull @pn_fs_source_desc) #9
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.do.end72_crit_edge, label %if.end28

if.end24.do.end72_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end72

if.end28:                                         ; preds = %if.end24
  %in_ep = getelementptr inbounds %struct.f_phonet, ptr %f, i32 0, i32 3
  %14 = ptrtoint ptr %in_ep to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call25, ptr %in_ep, align 4
  %15 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @pn_fs_sink_desc, i32 0, i32 2), align 1
  store i8 %15, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @pn_hs_sink_desc, i32 0, i32 2), align 1
  %16 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @pn_fs_source_desc, i32 0, i32 2), align 1
  store i8 %16, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @pn_hs_source_desc, i32 0, i32 2), align 1
  %call29 = tail call i32 @usb_assign_descriptors(ptr noundef %f, ptr noundef nonnull @fs_pn_function, ptr noundef nonnull @hs_pn_function, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end28.for.body_crit_edge, label %if.end28.do.end72_crit_edge

if.end28.do.end72_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end72

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end28.for.body_crit_edge
  %i.0131 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end28.for.body_crit_edge ]
  %17 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %out_ep, align 4
  %call36 = tail call ptr @usb_ep_alloc_request(ptr noundef %18, i32 noundef 3264) #9
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %for.body.land.rhs.preheader_crit_edge, label %for.inc

for.body.land.rhs.preheader_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.preheader

for.inc:                                          ; preds = %for.body
  %complete = getelementptr inbounds %struct.usb_request, ptr %call36, i32 0, i32 7
  %19 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @pn_rx_complete, ptr %complete, align 4
  %arrayidx = getelementptr %struct.f_phonet, ptr %f, i32 0, i32 6, i32 %i.0131
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call36, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.0131, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %21 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %in_ep, align 4
  %call41 = tail call ptr @usb_ep_alloc_request(ptr noundef %22, i32 noundef 3264) #9
  %in_req = getelementptr inbounds %struct.f_phonet, ptr %f, i32 0, i32 5
  %23 = ptrtoint ptr %in_req to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call41, ptr %in_req, align 4
  %tobool43.not = icmp eq ptr %call41, null
  br i1 %tobool43.not, label %for.end.land.rhs.preheader_crit_edge, label %do.end

for.end.land.rhs.preheader_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %for.end.land.rhs.preheader_crit_edge, %for.body.land.rhs.preheader_crit_edge
  br label %land.rhs

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %25, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.6) #13
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %dev51 = getelementptr inbounds %struct.usb_gadget, ptr %27, i32 0, i32 11
  %name = getelementptr inbounds %struct.usb_gadget, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name, align 4
  %30 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %out_ep, align 4
  %name54 = getelementptr inbounds %struct.usb_ep, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %name54 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name54, align 4
  %34 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %in_ep, align 4
  %name56 = getelementptr inbounds %struct.usb_ep, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %name56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name56, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev51, ptr noundef nonnull @.str.12, ptr noundef %29, ptr noundef %33, ptr noundef %37) #13
  br label %cleanup75

land.rhs:                                         ; preds = %for.body63.land.rhs_crit_edge, %land.rhs.preheader
  %i.1132 = phi i32 [ %inc68, %for.body63.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  %arrayidx61 = getelementptr %struct.f_phonet, ptr %f, i32 0, i32 6, i32 %i.1132
  %38 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx61, align 4
  %tobool62.not = icmp eq ptr %39, null
  br i1 %tobool62.not, label %land.rhs.for.end69_crit_edge, label %for.body63

land.rhs.for.end69_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end69

for.body63:                                       ; preds = %land.rhs
  %40 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %out_ep, align 4
  tail call void @usb_ep_free_request(ptr noundef %41, ptr noundef nonnull %39) #9
  %inc68 = add nuw nsw i32 %i.1132, 1
  %exitcond133.not = icmp eq i32 %inc68, 17
  br i1 %exitcond133.not, label %for.body63.for.end69_crit_edge, label %for.body63.land.rhs_crit_edge

for.body63.land.rhs_crit_edge:                    ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.body63.for.end69_crit_edge:                   ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end69

for.end69:                                        ; preds = %for.body63.for.end69_crit_edge, %land.rhs.for.end69_crit_edge
  tail call void @usb_free_all_descriptors(ptr noundef %f) #9
  br label %do.end72

do.end72:                                         ; preds = %for.end69, %if.end28.do.end72_crit_edge, %if.end24.do.end72_crit_edge, %if.end17.do.end72_crit_edge, %if.end11.do.end72_crit_edge, %if.end8.do.end72_crit_edge
  %status.0 = phi i32 [ %call9, %if.end8.do.end72_crit_edge ], [ %call13, %if.end11.do.end72_crit_edge ], [ %call29, %if.end28.do.end72_crit_edge ], [ -12, %for.end69 ], [ -19, %if.end24.do.end72_crit_edge ], [ -19, %if.end17.do.end72_crit_edge ]
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %dev74 = getelementptr inbounds %struct.usb_gadget, ptr %43, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev74, ptr noundef nonnull @.str.15) #13
  br label %cleanup75

cleanup75:                                        ; preds = %do.end72, %do.end, %gphonet_register_netdev.exit
  %retval.0 = phi i32 [ %status.0, %do.end72 ], [ 0, %do.end ], [ %call.i, %gphonet_register_netdev.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pn_unbind(ptr nocapture noundef readnone %c, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %in_req = getelementptr inbounds %struct.f_phonet, ptr %f, i32 0, i32 5
  %0 = ptrtoint ptr %in_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_req, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %in_ep = getelementptr inbounds %struct.f_phonet, ptr %f, i32 0, i32 3
  %2 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_ep, align 4
  tail call void @usb_ep_free_request(ptr noundef %3, ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %out_ep = getelementptr inbounds %struct.f_phonet, ptr %f, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.017 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.f_phonet, ptr %f, i32 0, i32 6, i32 %i.017
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out_ep, align 4
  tail call void @usb_ep_free_request(ptr noundef %7, ptr noundef nonnull %5) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_free_all_descriptors(ptr noundef %f) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn_set_alt(ptr noundef %f, i32 noundef %intf, i32 noundef %alt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
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
  %6 = load i8, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @pn_control_intf_desc, i32 0, i32 2), align 1
  %conv = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %intf)
  %cmp = icmp eq i32 %conv, %intf
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alt)
  %cmp3.not = icmp eq i32 %alt, 0
  %cond = select i1 %cmp3.not, i32 0, i32 -22
  br label %cleanup46

if.end:                                           ; preds = %entry
  %7 = load i8, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @pn_data_intf_desc, i32 0, i32 2), align 1
  %conv5 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5, i32 %intf)
  %cmp6 = icmp eq i32 %conv5, %intf
  br i1 %cmp6, label %if.then8, label %if.end.cleanup46_crit_edge

if.end.cleanup46_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

if.then8:                                         ; preds = %if.end
  %dev9 = getelementptr inbounds %struct.f_phonet, ptr %f, i32 0, i32 2
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev9, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %alt)
  %cmp11 = icmp ugt i32 %alt, 1
  br i1 %cmp11, label %if.then8.cleanup46_crit_edge, label %if.end14

if.then8.cleanup46_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

if.end14:                                         ; preds = %if.then8
  %lock = getelementptr i8, ptr %9, i32 2308
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %in_ep = getelementptr inbounds %struct.f_phonet, ptr %f, i32 0, i32 3
  %10 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %in_ep, align 4
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled, align 1, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.end14.if.end16_crit_edge, label %if.then15

if.end14.if.end16_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then15:                                        ; preds = %if.end14
  %14 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev9, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 2304
  tail call void @netif_carrier_off(ptr noundef %15) #9
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %add.ptr.i.i, align 4
  %out_ep.i = getelementptr inbounds %struct.f_phonet, ptr %f, i32 0, i32 4
  %17 = ptrtoint ptr %out_ep.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %out_ep.i, align 4
  %call3.i = tail call i32 @usb_ep_disable(ptr noundef %18) #9
  %19 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %in_ep, align 4
  %call4.i = tail call i32 @usb_ep_disable(ptr noundef %20) #9
  %rx.i = getelementptr inbounds %struct.f_phonet, ptr %f, i32 0, i32 1
  %21 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.then15.if.end16_crit_edge, label %if.then.i

if.then15.if.end16_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %22, i32 noundef 1) #9
  %23 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rx.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then.i, %if.then15.if.end16_crit_edge, %if.end14.if.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %alt)
  %cmp17 = icmp eq i32 %alt, 1
  br i1 %cmp17, label %if.then19, label %if.end16.if.end41_crit_edge

if.end16.if.end41_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then19:                                        ; preds = %if.end16
  %24 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %in_ep, align 4
  %call21 = tail call i32 @config_ep_by_speed(ptr noundef %5, ptr noundef %f, ptr noundef %25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %lor.lhs.false, label %if.then19.if.then25_crit_edge

if.then19.if.then25_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

lor.lhs.false:                                    ; preds = %if.then19
  %out_ep = getelementptr inbounds %struct.f_phonet, ptr %f, i32 0, i32 4
  %26 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %out_ep, align 4
  %call23 = tail call i32 @config_ep_by_speed(ptr noundef %5, ptr noundef %f, ptr noundef %27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end30, label %lor.lhs.false.if.then25_crit_edge

lor.lhs.false.if.then25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

if.then25:                                        ; preds = %lor.lhs.false.if.then25_crit_edge, %if.then19.if.then25_crit_edge
  %28 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %in_ep, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %desc, align 4
  %out_ep27 = getelementptr inbounds %struct.f_phonet, ptr %f, i32 0, i32 4
  %31 = ptrtoint ptr %out_ep27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %out_ep27, align 4
  %desc28 = getelementptr inbounds %struct.usb_ep, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %desc28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %desc28, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup46

if.end30:                                         ; preds = %lor.lhs.false
  %34 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %out_ep, align 4
  %call32 = tail call i32 @usb_ep_enable(ptr noundef %35) #9
  %36 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %in_ep, align 4
  %call34 = tail call i32 @usb_ep_enable(ptr noundef %37) #9
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %f, ptr %add.ptr.i, align 4
  %39 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %out_ep, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %f, ptr %40, align 4
  %42 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %in_ep, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %f, ptr %43, align 4
  tail call void @netif_carrier_on(ptr noundef %9) #9
  br label %for.body

for.body:                                         ; preds = %pn_rx_submit.exit.for.body_crit_edge, %if.end30
  %i.079 = phi i32 [ 0, %if.end30 ], [ %inc, %pn_rx_submit.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.f_phonet, ptr %f, i32 0, i32 6, i32 %i.079
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx, align 4
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 920096, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %tobool.not.i77 = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool.not.i77, label %for.body.pn_rx_submit.exit_crit_edge, label %if.end.i

for.body.pn_rx_submit.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %pn_rx_submit.exit

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i.i) #9
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call1.i, ptr %46, align 4
  %length.i = getelementptr inbounds %struct.usb_request, ptr %46, i32 0, i32 1
  %48 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 4096, ptr %length.i, align 4
  %context.i = getelementptr inbounds %struct.usb_request, ptr %46, i32 0, i32 8
  %49 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call38.i.i.i.i.i, ptr %context.i, align 4
  %50 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %out_ep, align 4
  %call2.i = tail call i32 @usb_ep_queue(ptr noundef %51, ptr noundef %46, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.pn_rx_submit.exit_crit_edge, label %if.then6.i, !prof !90

if.end.i.pn_rx_submit.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pn_rx_submit.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @put_page(ptr noundef nonnull %call38.i.i.i.i.i) #9
  br label %pn_rx_submit.exit

pn_rx_submit.exit:                                ; preds = %if.then6.i, %if.end.i.pn_rx_submit.exit_crit_edge, %for.body.pn_rx_submit.exit_crit_edge
  %inc = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %pn_rx_submit.exit.if.end41_crit_edge, label %pn_rx_submit.exit.for.body_crit_edge

pn_rx_submit.exit.for.body_crit_edge:             ; preds = %pn_rx_submit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

pn_rx_submit.exit.if.end41_crit_edge:             ; preds = %pn_rx_submit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.end41:                                         ; preds = %pn_rx_submit.exit.if.end41_crit_edge, %if.end16.if.end41_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup46

cleanup46:                                        ; preds = %if.end41, %if.then25, %if.then8.cleanup46_crit_edge, %if.end.cleanup46_crit_edge, %if.then
  %retval.2 = phi i32 [ %cond, %if.then ], [ 0, %if.end41 ], [ -22, %if.then8.cleanup46_crit_edge ], [ -22, %if.then25 ], [ -22, %if.end.cleanup46_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn_get_alt(ptr nocapture noundef readonly %f, i32 noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @pn_control_intf_desc, i32 0, i32 2), align 1
  %conv = zext i8 %0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %intf)
  %cmp = icmp eq i32 %conv, %intf
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @pn_data_intf_desc, i32 0, i32 2), align 1
  %conv2 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %intf)
  %cmp3 = icmp eq i32 %conv2, %intf
  br i1 %cmp3, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.f_phonet, ptr %f, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  %lock = getelementptr i8, ptr %3, i32 2308
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %cmp7 = icmp ne ptr %5, null
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %conv11 = zext i1 %cmp7 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv11, %if.then5 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pn_disconnect(ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.f_phonet, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %lock = getelementptr i8, ptr %1, i32 2308
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2304
  tail call void @netif_carrier_off(ptr noundef %3) #9
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %add.ptr.i.i, align 4
  %out_ep.i = getelementptr inbounds %struct.f_phonet, ptr %f, i32 0, i32 4
  %5 = ptrtoint ptr %out_ep.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %out_ep.i, align 4
  %call3.i = tail call i32 @usb_ep_disable(ptr noundef %6) #9
  %in_ep.i = getelementptr inbounds %struct.f_phonet, ptr %f, i32 0, i32 3
  %7 = ptrtoint ptr %in_ep.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %in_ep.i, align 4
  %call4.i = tail call i32 @usb_ep_disable(ptr noundef %8) #9
  %rx.i = getelementptr inbounds %struct.f_phonet, ptr %f, i32 0, i32 1
  %9 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %entry.__pn_reset.exit_crit_edge, label %if.then.i

entry.__pn_reset.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__pn_reset.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %10, i32 noundef 1) #9
  %11 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rx.i, align 4
  br label %__pn_reset.exit

__pn_reset.exit:                                  ; preds = %if.then.i, %entry.__pn_reset.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @phonet_free(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %f) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pn_rx_complete(ptr nocapture noundef readonly %ep, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %dev1 = getelementptr inbounds %struct.f_phonet, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 4
  %status2 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %6 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status2, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %7, label %entry.sw.default_crit_edge [
    i32 0, label %do.body3
    i32 -108, label %entry.sw.epilog_crit_edge
    i32 -103, label %entry.sw.epilog_crit_edge98
    i32 -104, label %entry.sw.epilog_crit_edge99
    i32 -75, label %sw.bb48
  ]

entry.sw.epilog_crit_edge99:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge98:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default

do.body3:                                         ; preds = %entry
  %rx = getelementptr inbounds %struct.f_phonet, ptr %1, i32 0, i32 1
  %lock = getelementptr inbounds %struct.f_phonet, ptr %1, i32 0, i32 1, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %9 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.then, label %do.body3.if.end_crit_edge

do.body3.if.end_crit_edge:                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %3, i32 noundef 12, i32 noundef 2592) #9
  %11 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %rx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body3.if.end_crit_edge
  %skb.0 = phi ptr [ %10, %do.body3.if.end_crit_edge ], [ %call.i, %if.then ]
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %12 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp12 = icmp ult i32 %13, %15
  br i1 %cmp12, label %if.then14, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rx, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end.if.end17_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  %tobool20.not = icmp eq ptr %skb.0, null
  br i1 %tobool20.not, label %if.end17.sw.epilog_crit_edge, label %if.end25, !prof !89

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end25:                                         ; preds = %if.end17
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp26 = icmp eq i32 %18, 0
  br i1 %cmp26, label %if.then28, label %if.end25.if.end31_crit_edge

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 18
  %19 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 245, ptr %protocol, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 18
  %22 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 21
  %24 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %call29 = tail call ptr @page_address(ptr noundef %5) #9
  %call.i93 = tail call ptr @skb_put(ptr noundef nonnull %skb.0, i32 noundef 1) #9
  %25 = ptrtoint ptr %call29 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %call29, align 1
  %27 = ptrtoint ptr %call.i93 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %call.i93, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end25.if.end31_crit_edge
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 17
  %28 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %nr_frags, align 2
  %conv33 = zext i8 %31 to i32
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp35 = icmp ult i32 %33, 2
  %conv36 = zext i1 %cmp35 to i32
  %34 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %actual, align 4
  tail call void @skb_add_rx_frag(ptr noundef nonnull %skb.0, i32 noundef %conv33, ptr noundef %5, i32 noundef %conv36, i32 noundef %35, i32 noundef 4096) #9
  %36 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %actual, align 4
  %38 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp40 = icmp ult i32 %37, %39
  br i1 %cmp40, label %if.then42, label %if.end31.if.end55_crit_edge

if.end31.if.end55_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then42:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %40 = getelementptr inbounds %struct.anon.0, ptr %skb.0, i32 0, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %3, ptr %40, align 8
  %stats = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36
  %42 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stats, align 8
  %inc = add i32 %43, 1
  store i32 %inc, ptr %stats, align 8
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 2
  %46 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %47, %45
  store i32 %add, ptr %rx_bytes, align 8
  %call45 = tail call i32 @netif_rx(ptr noundef nonnull %skb.0) #9
  br label %if.end55

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 11
  %48 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_over_errors, align 4
  %inc50 = add i32 %49, 1
  store i32 %inc50, ptr %rx_over_errors, align 4
  br label %sw.default

sw.default:                                       ; preds = %sw.bb48, %entry.sw.default_crit_edge
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 4
  %50 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_errors, align 8
  %inc52 = add i32 %51, 1
  store i32 %inc52, ptr %rx_errors, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end17.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge98, %entry.sw.epilog_crit_edge99
  %req.addr.0 = phi ptr [ %req, %sw.default ], [ %req, %if.end17.sw.epilog_crit_edge ], [ null, %entry.sw.epilog_crit_edge ], [ null, %entry.sw.epilog_crit_edge98 ], [ null, %entry.sw.epilog_crit_edge99 ]
  %tobool53.not = icmp eq ptr %5, null
  br i1 %tobool53.not, label %sw.epilog.if.end55_crit_edge, label %if.then54

sw.epilog.if.end55_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then54:                                        ; preds = %sw.epilog
  %52 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 4
  %and.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !90

if.then.i.i:                                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %54, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %55, %if.end.i.i ]
  %56 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %56, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %57 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i.i.i.i = icmp eq i32 %58, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !89

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %56, ptr noundef nonnull @.str.18) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !92
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !94
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %59, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@pn_rx_complete, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !96

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %56, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end55_crit_edge

folio_put_testzero.exit.i.i.if.end55_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %56) #9
  br label %if.end55

if.end55:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end55_crit_edge, %sw.epilog.if.end55_crit_edge, %if.then42, %if.end31.if.end55_crit_edge
  %req.addr.097 = phi ptr [ %req.addr.0, %sw.epilog.if.end55_crit_edge ], [ %req.addr.0, %folio_put_testzero.exit.i.i.if.end55_crit_edge ], [ %req.addr.0, %if.then.i4.i ], [ %req, %if.then42 ], [ %req, %if.end31.if.end55_crit_edge ]
  %tobool56.not = icmp eq ptr %req.addr.097, null
  br i1 %tobool56.not, label %if.end55.if.end59_crit_edge, label %if.then57

if.end55.if.end59_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then57:                                        ; preds = %if.end55
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 920096, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %tobool.not.i = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool.not.i, label %if.then57.if.end59_crit_edge, label %if.end.i

if.then57.if.end59_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end.i:                                         ; preds = %if.then57
  %call1.i = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i.i) #9
  %60 = ptrtoint ptr %req.addr.097 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call1.i, ptr %req.addr.097, align 4
  %length.i = getelementptr inbounds %struct.usb_request, ptr %req.addr.097, i32 0, i32 1
  %61 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4096, ptr %length.i, align 4
  %context.i = getelementptr inbounds %struct.usb_request, ptr %req.addr.097, i32 0, i32 8
  %62 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call38.i.i.i.i.i, ptr %context.i, align 4
  %out_ep.i = getelementptr inbounds %struct.f_phonet, ptr %1, i32 0, i32 4
  %63 = ptrtoint ptr %out_ep.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %out_ep.i, align 4
  %call2.i = tail call i32 @usb_ep_queue(ptr noundef %64, ptr noundef nonnull %req.addr.097, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end59_crit_edge, label %if.then6.i, !prof !90

if.end.i.if.end59_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @put_page(ptr noundef nonnull %call38.i.i.i.i.i) #9
  br label %if.end59

if.end59:                                         ; preds = %if.then6.i, %if.end.i.if.end59_crit_edge, %if.then57.if.end59_crit_edge, %if.end55.if.end59_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !90

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !89

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.18) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !92
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !94
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !96

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #9
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %4) #9
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !11, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !29, !31, !32, !34, !36, !37, !38, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 699, i32 8}
!2 = !{ptr @gphonet_setup_default.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 705, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_alias337, !6, !"__UNIQUE_ID_alias337", i1 false, i1 false}
!6 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 732, i32 1}
!7 = !{ptr @__initcall__kmod_usb_f_phonet__338_732_phonetmod_init6, !6, !"__initcall__kmod_usb_f_phonet__338_732_phonetmod_init6", i1 false, i1 false}
!8 = !{ptr @__exitcall_phonetmod_exit, !6, !"__exitcall_phonetmod_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author339, !10, !"__UNIQUE_ID_author339", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 733, i32 1}
!11 = !{ptr @__UNIQUE_ID_file340, !12, !"__UNIQUE_ID_file340", i1 false, i1 false}
!12 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 734, i32 1}
!13 = !{ptr @__UNIQUE_ID_license341, !12, !"__UNIQUE_ID_license341", i1 false, i1 false}
!14 = !{ptr @pn_netdev_ops, !15, !"pn_netdev_ops", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 262, i32 36}
!16 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @phonetusb_func, !6, !"phonetusb_func", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 638, i32 54}
!20 = !{ptr @phonet_func_type, !21, !"phonet_func_type", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 604, i32 38}
!22 = !{ptr @phonet_item_ops, !23, !"phonet_item_ops", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 588, i32 40}
!24 = !{ptr @phonet_attrs, !25, !"phonet_attrs", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 599, i32 35}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 597, i32 1}
!28 = !{ptr @f_phonet_attr_ifname, !27, !"f_phonet_attr_ifname", i1 false, i1 false}
!29 = !{ptr @phonet_alloc.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 688, i32 2}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"phonet_rxq_size", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 54, i32 12}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 561, i32 2}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pn_bind._entry, !35, !"_entry", i1 false, i1 false}
!41 = !{ptr @pn_bind._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 562, i32 2}
!44 = !{ptr @pn_bind._entry.11, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pn_bind._entry_ptr.13, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 571, i32 2}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @pn_bind._entry.14, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @pn_bind._entry_ptr.17, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @pn_control_intf_desc, !52, !"pn_control_intf_desc", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 67, i32 1}
!53 = !{ptr @pn_union_desc, !54, !"pn_union_desc", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 93, i32 1}
!55 = !{ptr @pn_data_nop_intf_desc, !56, !"pn_data_nop_intf_desc", i1 false, i1 false}
!56 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 103, i32 1}
!57 = !{ptr @pn_data_intf_desc, !58, !"pn_data_intf_desc", i1 false, i1 false}
!58 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 114, i32 1}
!59 = !{ptr @pn_fs_sink_desc, !60, !"pn_fs_sink_desc", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 125, i32 1}
!61 = !{ptr @pn_fs_source_desc, !62, !"pn_fs_source_desc", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 144, i32 1}
!63 = !{ptr @pn_hs_sink_desc, !64, !"pn_hs_sink_desc", i1 false, i1 false}
!64 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 134, i32 1}
!65 = !{ptr @pn_hs_source_desc, !66, !"pn_hs_source_desc", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 153, i32 1}
!67 = !{ptr @fs_pn_function, !68, !"fs_pn_function", i1 false, i1 false}
!68 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 162, i32 38}
!69 = !{ptr @pn_header_desc, !70, !"pn_header_desc", i1 false, i1 false}
!70 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 77, i32 1}
!71 = !{ptr @pn_phonet_desc, !72, !"pn_phonet_desc", i1 false, i1 false}
!72 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 85, i32 1}
!73 = !{ptr @hs_pn_function, !74, !"hs_pn_function", i1 false, i1 false}
!74 = !{!"../drivers/usb/gadget/function/f_phonet.c", i32 174, i32 38}
!75 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/mm.h", i32 717, i32 2}
!77 = distinct !{null, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!79 = !{!"sp"}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"branch_weights", i32 1, i32 2000}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{i8 0, i8 2}
!92 = !{i64 2153126808, i64 2153127291, i64 2153126845, i64 2153126901, i64 2153126935, i64 2153126959, i64 2153127000, i64 2153127021, i64 2153127049, i64 2153127083}
!93 = !{i64 2148769288}
!94 = !{i64 2148683997, i64 2148684029, i64 2148684058, i64 2148684092, i64 2148684123, i64 2148684146}
!95 = !{i64 2148769517}
!96 = !{i64 2148281489, i64 2148281494, i64 2148281507, i64 2148281551, i64 2148281585, i64 2148281606}
