; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/f_subset.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_subset.c"
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
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_cdc_header_desc = type <{ i8, i8, i8, i16 }>
%struct.usb_cdc_mdlm_desc = type <{ i8, i8, i8, i16, [16 x i8] }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.f_gether_opts = type { %struct.usb_function_instance, ptr, i8, %struct.mutex, i32 }
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
%struct.f_gether = type { %struct.gether, [14 x i8] }
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
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }

@__UNIQUE_ID_alias343 = internal constant [36 x i8] c"usb_f_ecm_subset.alias=usbfunc:geth\00", section ".modinfo", align 1
@gethusb_func = internal global { %struct.usb_function_driver, [40 x i8] } { %struct.usb_function_driver { ptr @.str, ptr null, %struct.list_head zeroinitializer, ptr @geth_alloc_inst, ptr @geth_alloc }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_usb_f_ecm_subset__344_504_gethmod_init6 = internal global ptr @gethmod_init, section ".initcall6.init", align 4
@__exitcall_gethmod_exit = internal global ptr @gethmod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file345 = internal constant [67 x i8] c"usb_f_ecm_subset.file=drivers/usb/gadget/function/usb_f_ecm_subset\00", section ".modinfo", align 1
@__UNIQUE_ID_license346 = internal constant [29 x i8] c"usb_f_ecm_subset.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author347 = internal constant [39 x i8] c"usb_f_ecm_subset.author=David Brownell\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"geth\00", [27 x i8] zeroinitializer }, align 32
@geth_alloc_inst.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&opts->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@gether_func_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @gether_item_ops, ptr null, ptr @gether_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@gether_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @gether_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@gether_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @gether_opts_attr_dev_addr, ptr @gether_opts_attr_host_addr, ptr @gether_opts_attr_qmult, ptr @gether_opts_attr_ifname, ptr null], [44 x i8] zeroinitializer }, align 32
@gether_opts_attr_dev_addr = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.4, ptr null, i16 420, ptr @gether_opts_dev_addr_show, ptr @gether_opts_dev_addr_store }, [44 x i8] zeroinitializer }, align 32
@gether_opts_attr_host_addr = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.5, ptr null, i16 420, ptr @gether_opts_host_addr_show, ptr @gether_opts_host_addr_store }, [44 x i8] zeroinitializer }, align 32
@gether_opts_attr_qmult = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.6, ptr null, i16 420, ptr @gether_opts_qmult_show, ptr @gether_opts_qmult_store }, [44 x i8] zeroinitializer }, align 32
@gether_opts_attr_ifname = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.8, ptr null, i16 420, ptr @gether_opts_ifname_show, ptr @gether_opts_ifname_store }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"host_addr\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qmult\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ifname\00", [25 x i8] zeroinitializer }, align 32
@geth_string_defs = internal global { [3 x %struct.usb_string], [40 x i8] } { [3 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.10 }, %struct.usb_string { i8 0, ptr @.str.2 }, %struct.usb_string zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cdc_subset\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CDC Ethernet Subset/SAFE\00", [39 x i8] zeroinitializer }, align 32
@geth_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @geth_string_table, ptr null], [24 x i8] zeroinitializer }, align 32
@subset_data_intf = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 2, i8 2, i8 10, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@ether_desc = internal global { %struct.usb_cdc_ether_desc, [19 x i8] } { %struct.usb_cdc_ether_desc <{ i8 13, i8 36, i8 15, i8 0, i32 0, i16 -5627, i16 0, i8 0 }>, [19 x i8] zeroinitializer }, align 32
@fs_subset_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@fs_subset_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hs_subset_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hs_subset_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_subset_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_subset_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@fs_eth_function = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @subset_data_intf, ptr @mdlm_header_desc, ptr @mdlm_desc, ptr @mdlm_detail_desc, ptr @ether_desc, ptr @fs_subset_in_desc, ptr @fs_subset_out_desc, ptr null], [32 x i8] zeroinitializer }, align 32
@hs_eth_function = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @subset_data_intf, ptr @mdlm_header_desc, ptr @mdlm_desc, ptr @mdlm_detail_desc, ptr @ether_desc, ptr @hs_subset_in_desc, ptr @hs_subset_out_desc, ptr null], [32 x i8] zeroinitializer }, align 32
@ss_eth_function = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @subset_data_intf, ptr @mdlm_header_desc, ptr @mdlm_desc, ptr @mdlm_detail_desc, ptr @ether_desc, ptr @ss_subset_in_desc, ptr @ss_subset_bulk_comp_desc, ptr @ss_subset_out_desc, ptr @ss_subset_bulk_comp_desc, ptr null], [56 x i8] zeroinitializer }, align 32
@geth_bind.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, i8 0, i8 93, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb_f_ecm_subset\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"geth_bind\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/usb/gadget/function/f_subset.c\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CDC Subset: %s speed IN/%s OUT/%s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"super\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dual\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@geth_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.13, i32 377, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: can't bind, err %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@geth_bind._entry_ptr = internal global ptr @geth_bind._entry, section ".printk_index", align 4
@geth_string_table = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @geth_string_defs }, [24 x i8] zeroinitializer }, align 32
@mdlm_header_desc = internal global { %struct.usb_cdc_header_desc, [27 x i8] } { %struct.usb_cdc_header_desc <{ i8 5, i8 36, i8 0, i16 4097 }>, [27 x i8] zeroinitializer }, align 32
@mdlm_desc = internal global { %struct.usb_cdc_mdlm_desc, [43 x i8] } { %struct.usb_cdc_mdlm_desc <{ i8 21, i8 36, i8 18, i16 1, [16 x i8] c"]4\CFf\11\18\11\D6\A2\1A\00\01\02\CA\9A\7F" }>, [43 x i8] zeroinitializer }, align 32
@mdlm_detail_desc = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\06$\13\00\00\00", [26 x i8] zeroinitializer }, align 32
@ss_subset_bulk_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@geth_set_alt.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.21, ptr @.str.13, ptr @.str.22, i8 0, i8 65, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"geth_set_alt\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reset cdc subset\0A\00", [46 x i8] zeroinitializer }, align 32
@geth_set_alt.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.21, ptr @.str.13, ptr @.str.23, i8 0, i8 66, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"init + activate cdc subset\0A\00", [36 x i8] zeroinitializer }, align 32
@geth_disable.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.24, ptr @.str.13, ptr @.str.25, i8 0, i8 70, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"geth_disable\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net deactivated\0A\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"gethusb_func\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 504, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 436, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 445, i32 54 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"gether_func_type\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 411, i32 38 }
@___asan_gen_.45 = private unnamed_addr constant [41 x i8] c"../drivers/usb/gadget/function/u_ether.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 140, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"gether_item_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 389, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"gether_attrs\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 403, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [26 x i8] c"gether_opts_attr_dev_addr\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [27 x i8] c"gether_opts_attr_host_addr\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [23 x i8] c"gether_opts_attr_qmult\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [24 x i8] c"gether_opts_attr_ifname\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 392, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 395, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 398, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 401, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"geth_string_defs\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 235, i32 26 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 494, i32 25 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 236, i32 10 }
@___asan_gen_.89 = private unnamed_addr constant [13 x i8] c"geth_strings\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 246, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"subset_data_intf\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 75, i32 40 }
@___asan_gen_.95 = private unnamed_addr constant [11 x i8] c"ether_desc\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 122, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant [18 x i8] c"fs_subset_in_desc\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 137, i32 39 }
@___asan_gen_.101 = private unnamed_addr constant [19 x i8] c"fs_subset_out_desc\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 145, i32 39 }
@___asan_gen_.104 = private unnamed_addr constant [18 x i8] c"hs_subset_in_desc\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 166, i32 39 }
@___asan_gen_.107 = private unnamed_addr constant [19 x i8] c"hs_subset_out_desc\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 174, i32 39 }
@___asan_gen_.110 = private unnamed_addr constant [18 x i8] c"ss_subset_in_desc\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 195, i32 39 }
@___asan_gen_.113 = private unnamed_addr constant [19 x i8] c"ss_subset_out_desc\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 203, i32 39 }
@___asan_gen_.116 = private unnamed_addr constant [16 x i8] c"fs_eth_function\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 153, i32 38 }
@___asan_gen_.119 = private unnamed_addr constant [16 x i8] c"hs_eth_function\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 182, i32 38 }
@___asan_gen_.122 = private unnamed_addr constant [16 x i8] c"ss_eth_function\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 220, i32 38 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 370, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 377, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [18 x i8] c"geth_string_table\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 241, i32 34 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"mdlm_header_desc\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 88, i32 35 }
@___asan_gen_.164 = private unnamed_addr constant [10 x i8] c"mdlm_desc\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 96, i32 33 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"mdlm_detail_desc\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 112, i32 11 }
@___asan_gen_.170 = private unnamed_addr constant [25 x i8] c"ss_subset_bulk_comp_desc\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 211, i32 41 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 262, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 266, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private constant [42 x i8] c"../drivers/usb/gadget/function/f_subset.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 283, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_alias343, ptr @__UNIQUE_ID_author347, ptr @__UNIQUE_ID_file345, ptr @__UNIQUE_ID_license346, ptr @__exitcall_gethmod_exit, ptr @__initcall__kmod_usb_f_ecm_subset__344_504_gethmod_init6, ptr @geth_bind._entry, ptr @geth_bind._entry_ptr, ptr @gethmod_exit, ptr @gethusb_func, ptr @.str, ptr @geth_alloc_inst.__key, ptr @.str.1, ptr @.str.2, ptr @gether_func_type, ptr @.str.3, ptr @gether_item_ops, ptr @gether_attrs, ptr @gether_opts_attr_dev_addr, ptr @gether_opts_attr_host_addr, ptr @gether_opts_attr_qmult, ptr @gether_opts_attr_ifname, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @geth_string_defs, ptr @.str.9, ptr @.str.10, ptr @geth_strings, ptr @subset_data_intf, ptr @ether_desc, ptr @fs_subset_in_desc, ptr @fs_subset_out_desc, ptr @hs_subset_in_desc, ptr @hs_subset_out_desc, ptr @ss_subset_in_desc, ptr @ss_subset_out_desc, ptr @fs_eth_function, ptr @hs_eth_function, ptr @ss_eth_function, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @geth_string_table, ptr @mdlm_header_desc, ptr @mdlm_desc, ptr @mdlm_detail_desc, ptr @ss_subset_bulk_comp_desc, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gethusb_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geth_alloc_inst.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gether_func_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gether_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gether_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gether_opts_attr_dev_addr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gether_opts_attr_host_addr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gether_opts_attr_qmult to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gether_opts_attr_ifname to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geth_string_defs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geth_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @subset_data_intf to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ether_desc to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_subset_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_subset_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_subset_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_subset_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_subset_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_subset_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_eth_function to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_eth_function to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_eth_function to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geth_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geth_string_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdlm_header_desc to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdlm_desc to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdlm_detail_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_subset_bulk_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gethmod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_function_unregister(ptr noundef nonnull @gethusb_func) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gethmod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_function_register(ptr noundef nonnull @gethusb_func) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @geth_alloc_inst() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 204) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.f_gether_opts, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @geth_alloc_inst.__key) #7
  %free_func_inst = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %free_func_inst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @geth_free_inst, ptr %free_func_inst, align 8
  %call.i = tail call ptr @gether_setup_name_default(ptr noundef nonnull @.str.3) #7
  %net = getelementptr inbounds %struct.f_gether_opts, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %net, align 4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end9:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @gether_func_type) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.then5 ], [ %call7.i.i, %if.end9 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @geth_alloc(ptr noundef %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 176) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.f_gether_opts, ptr %fi, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %refcnt = getelementptr inbounds %struct.f_gether_opts, ptr %fi, i32 0, i32 4
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %refcnt, align 4
  %net = getelementptr inbounds %struct.f_gether_opts, ptr %fi, i32 0, i32 1
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %ethaddr = getelementptr inbounds %struct.f_gether, ptr %call7.i.i, i32 0, i32 1
  %call2 = tail call i32 @gether_get_host_addr_cdc(ptr noundef %4, ptr noundef %ethaddr, i32 noundef 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call2)
  %cmp = icmp slt i32 %call2, 12
  br i1 %cmp, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %ethaddr, ptr getelementptr inbounds ([3 x %struct.usb_string], ptr @geth_string_defs, i32 0, i32 1, i32 1), align 4
  %5 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 2304
  %ioport = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %ioport to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %ioport, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #7
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
  store ptr @geth_bind, ptr %bind, align 4
  %unbind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @geth_unbind, ptr %unbind, align 8
  %set_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 13
  %12 = ptrtoint ptr %set_alt to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @geth_set_alt, ptr %set_alt, align 4
  %disable = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 15
  %13 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @geth_disable, ptr %disable, align 4
  %free_func = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 11
  %14 = ptrtoint ptr %free_func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @geth_free, ptr %free_func, align 4
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
define internal void @geth_free_inst(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bound = getelementptr inbounds %struct.f_gether_opts, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %bound to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bound, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %net1 = getelementptr inbounds %struct.f_gether_opts, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net1, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  tail call void @gether_cleanup(ptr noundef %add.ptr.i) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @free_netdev(ptr noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @kfree(ptr noundef %f) #7
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
define internal void @gether_attr_release(ptr noundef %item) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_put_function_instance(ptr noundef %item) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gether_opts_dev_addr_show(ptr noundef %item, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_gether_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %net = getelementptr inbounds %struct.f_gether_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_get_dev_addr(ptr noundef %1, ptr noundef %page, i32 noundef 4096) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gether_opts_dev_addr_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_gether_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %refcnt = getelementptr inbounds %struct.f_gether_opts, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %net = getelementptr inbounds %struct.f_gether_opts, ptr %item, i32 0, i32 1
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %call2 = tail call i32 @gether_set_dev_addr(ptr noundef %3, ptr noundef %page) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
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
define internal i32 @gether_opts_host_addr_show(ptr noundef %item, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_gether_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %net = getelementptr inbounds %struct.f_gether_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_get_host_addr(ptr noundef %1, ptr noundef %page, i32 noundef 4096) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gether_opts_host_addr_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_gether_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %refcnt = getelementptr inbounds %struct.f_gether_opts, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %net = getelementptr inbounds %struct.f_gether_opts, ptr %item, i32 0, i32 1
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %call2 = tail call i32 @gether_set_host_addr(ptr noundef %3, ptr noundef %page) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
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
define internal i32 @gether_opts_qmult_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_gether_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %net = getelementptr inbounds %struct.f_gether_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_get_qmult(ptr noundef %1) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.7, i32 noundef %call1)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gether_opts_qmult_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !113
  %lock = getelementptr inbounds %struct.f_gether_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %refcnt = getelementptr inbounds %struct.f_gether_opts, ptr %item, i32 0, i32 4
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %net = getelementptr inbounds %struct.f_gether_opts, ptr %item, i32 0, i32 1
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %conv = zext i8 %6 to i32
  call void @gether_set_qmult(ptr noundef %4, i32 noundef %conv) #7
  br label %out

out:                                              ; preds = %if.end4, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
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
define internal i32 @gether_opts_ifname_show(ptr noundef %item, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_gether_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %net = getelementptr inbounds %struct.f_gether_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_get_ifname(ptr noundef %1, ptr noundef %page, i32 noundef 4096) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gether_opts_ifname_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_gether_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %refcnt = getelementptr inbounds %struct.f_gether_opts, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %4

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %net = getelementptr inbounds %struct.f_gether_opts, ptr %item, i32 0, i32 1
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_set_ifname(ptr noundef %3, ptr noundef %page, i32 noundef %len) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
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
define internal i32 @geth_bind(ptr noundef %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev1, align 4
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %2 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fi, align 4
  %bound = getelementptr inbounds %struct.f_gether_opts, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bound to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bound, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.f_gether_opts, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %net = getelementptr inbounds %struct.f_gether_opts, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @gether_set_gadget(ptr noundef %7, ptr noundef %9) #7
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  %call3 = tail call i32 @gether_register_netdev(ptr noundef %11) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool5.not = icmp eq i32 %call3, 0
  br i1 %tobool5.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %bound to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %bound, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %call9 = tail call ptr @usb_gstrings_attach(ptr noundef %1, ptr noundef nonnull @geth_strings, i32 noundef 3) #7
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %14 = ptrtoint ptr %call9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %call9, align 4
  store i8 %15, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @subset_data_intf, i32 0, i32 8), align 1
  %arrayidx14 = getelementptr %struct.usb_string, ptr %call9, i32 1
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx14, align 4
  store i8 %17, ptr getelementptr inbounds (%struct.usb_cdc_ether_desc, ptr @ether_desc, i32 0, i32 3), align 1
  %call16 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %if.end13.do.end59_crit_edge, label %if.end18

if.end13.do.end59_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

if.end18:                                         ; preds = %if.end13
  %conv = trunc i32 %call16 to i8
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @subset_data_intf, i32 0, i32 2), align 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call20 = tail call ptr @usb_ep_autoconfig(ptr noundef %19, ptr noundef nonnull @fs_subset_in_desc) #7
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end18.do.end59_crit_edge, label %if.end23

if.end18.do.end59_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

if.end23:                                         ; preds = %if.end18
  %in_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 2
  %20 = ptrtoint ptr %in_ep to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call20, ptr %in_ep, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call25 = tail call ptr @usb_ep_autoconfig(ptr noundef %22, ptr noundef nonnull @fs_subset_out_desc) #7
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end23.do.end59_crit_edge, label %if.end28

if.end23.do.end59_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

if.end28:                                         ; preds = %if.end23
  %out_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 3
  %23 = ptrtoint ptr %out_ep to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call25, ptr %out_ep, align 4
  %24 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_subset_in_desc, i32 0, i32 2), align 1
  store i8 %24, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_subset_in_desc, i32 0, i32 2), align 1
  %25 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_subset_out_desc, i32 0, i32 2), align 1
  store i8 %25, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_subset_out_desc, i32 0, i32 2), align 1
  store i8 %24, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_subset_in_desc, i32 0, i32 2), align 1
  store i8 %25, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_subset_out_desc, i32 0, i32 2), align 1
  %call30 = tail call i32 @usb_assign_descriptors(ptr noundef %f, ptr noundef nonnull @fs_eth_function, ptr noundef nonnull @hs_eth_function, ptr noundef nonnull @ss_eth_function, ptr noundef nonnull @ss_eth_function) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.body, label %if.end28.do.end59_crit_edge

if.end28.do.end59_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

do.body:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geth_bind.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@geth_bind, %cleanup)) #7
          to label %if.then40 [label %cleanup], !srcloc !114

if.then40:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cdev1, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %max_speed.i = getelementptr inbounds %struct.usb_gadget, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %33)
  %cmp.i100 = icmp ult i32 %33, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp.i102 = icmp ult i32 %33, 3
  %cond = select i1 %cmp.i102, ptr @.str.17, ptr @.str.16
  %cond50 = select i1 %cmp.i100, ptr %cond, ptr @.str.15
  %34 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %in_ep, align 4
  %name = getelementptr inbounds %struct.usb_ep, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name, align 4
  %38 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %out_ep, align 4
  %name55 = getelementptr inbounds %struct.usb_ep, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %name55 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name55, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @geth_bind.__UNIQUE_ID_ddebug342, ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond50, ptr noundef %37, ptr noundef %41) #7
  br label %cleanup

do.end59:                                         ; preds = %if.end28.do.end59_crit_edge, %if.end23.do.end59_crit_edge, %if.end18.do.end59_crit_edge, %if.end13.do.end59_crit_edge
  %status.0 = phi i32 [ %call16, %if.end13.do.end59_crit_edge ], [ %call30, %if.end28.do.end59_crit_edge ], [ -19, %if.end23.do.end59_crit_edge ], [ -19, %if.end18.do.end59_crit_edge ]
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %dev61 = getelementptr inbounds %struct.usb_gadget, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61, ptr noundef nonnull @.str.18, ptr noundef %45, i32 noundef %status.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.then40, %do.body, %if.then11, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then11 ], [ %status.0, %do.end59 ], [ %call3, %if.then.cleanup_crit_edge ], [ 0, %if.then40 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @geth_unbind(ptr nocapture noundef readnone %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store i8 0, ptr @geth_string_defs, align 4
  tail call void @usb_free_all_descriptors(ptr noundef %f) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @geth_set_alt(ptr noundef %f, i32 noundef %intf, i32 noundef %alt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  %in_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 2
  %4 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_ep, align 4
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.do.body10_crit_edge, label %do.body

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geth_set_alt.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@geth_set_alt, %do.end)) #7
          to label %if.then7 [label %do.end], !srcloc !114

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @geth_set_alt.__UNIQUE_ID_ddebug339, ptr noundef %dev, ptr noundef nonnull @.str.22) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  tail call void @gether_disconnect(ptr noundef %f) #7
  br label %do.body10

do.body10:                                        ; preds = %do.end, %entry.do.body10_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geth_set_alt.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@geth_set_alt, %do.end29)) #7
          to label %if.then24 [label %do.end29], !srcloc !114

if.then24:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %dev26 = getelementptr inbounds %struct.usb_gadget, ptr %11, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @geth_set_alt.__UNIQUE_ID_ddebug340, ptr noundef %dev26, ptr noundef nonnull @.str.23) #7
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %do.body10
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %14 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %in_ep, align 4
  %call33 = tail call i32 @config_ep_by_speed(ptr noundef %13, ptr noundef %f, ptr noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %lor.lhs.false, label %do.end29.if.then39_crit_edge

do.end29.if.then39_crit_edge:                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39

lor.lhs.false:                                    ; preds = %do.end29
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %out_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 3
  %18 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %out_ep, align 4
  %call37 = tail call i32 @config_ep_by_speed(ptr noundef %17, ptr noundef %f, ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end45, label %lor.lhs.false.if.then39_crit_edge

lor.lhs.false.if.then39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false.if.then39_crit_edge, %do.end29.if.then39_crit_edge
  %20 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %in_ep, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %desc, align 4
  %out_ep43 = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 3
  %23 = ptrtoint ptr %out_ep43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %out_ep43, align 4
  %desc44 = getelementptr inbounds %struct.usb_ep, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %desc44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %desc44, align 4
  br label %cleanup

if.end45:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = tail call ptr @gether_connect(ptr noundef %f) #7
  %cmp.i.i = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  %26 = ptrtoint ptr %call47 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %26, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then39
  %retval.0 = phi i32 [ -22, %if.then39 ], [ %spec.select.i, %if.end45 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @geth_disable(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geth_disable.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@geth_disable, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !114

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @geth_disable.__UNIQUE_ID_ddebug341, ptr noundef %dev, ptr noundef nonnull @.str.25) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @gether_disconnect(ptr noundef %f) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @geth_free(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %f) #7
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
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gether_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !11, !13, !14, !16, !18, !20, !22, !24, !26, !27, !29, !30, !32, !33, !34, !36, !37, !39, !41, !43, !45, !46, !47, !48, !49, !50, !51, !52, !54, !55, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !98, !99, !101, !102}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__UNIQUE_ID_alias343, !1, !"__UNIQUE_ID_alias343", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 504, i32 1}
!2 = !{ptr @__initcall__kmod_usb_f_ecm_subset__344_504_gethmod_init6, !1, !"__initcall__kmod_usb_f_ecm_subset__344_504_gethmod_init6", i1 false, i1 false}
!3 = !{ptr @__exitcall_gethmod_exit, !1, !"__exitcall_gethmod_exit", i1 false, i1 false}
!4 = !{ptr @__UNIQUE_ID_file345, !5, !"__UNIQUE_ID_file345", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 505, i32 1}
!6 = !{ptr @__UNIQUE_ID_license346, !5, !"__UNIQUE_ID_license346", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author347, !8, !"__UNIQUE_ID_author347", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 506, i32 1}
!9 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @gethusb_func, !1, !"gethusb_func", i1 false, i1 false}
!11 = !{ptr @geth_alloc_inst.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 436, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 445, i32 54}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/function/u_ether.h", i32 140, i32 35}
!18 = !{ptr @gether_func_type, !19, !"gether_func_type", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 411, i32 38}
!20 = !{ptr @gether_item_ops, !21, !"gether_item_ops", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 389, i32 1}
!22 = !{ptr @gether_attrs, !23, !"gether_attrs", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 403, i32 35}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 392, i32 1}
!26 = !{ptr @gether_opts_attr_dev_addr, !25, !"gether_opts_attr_dev_addr", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 395, i32 1}
!29 = !{ptr @gether_opts_attr_host_addr, !28, !"gether_opts_attr_host_addr", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 398, i32 1}
!32 = !{ptr @gether_opts_attr_qmult, !31, !"gether_opts_attr_qmult", i1 false, i1 false}
!33 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 401, i32 1}
!36 = !{ptr @gether_opts_attr_ifname, !35, !"gether_opts_attr_ifname", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 494, i32 25}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 236, i32 10}
!41 = !{ptr @geth_string_defs, !42, !"geth_string_defs", i1 false, i1 false}
!42 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 235, i32 26}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 370, i32 2}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @geth_bind.__UNIQUE_ID_ddebug342, !44, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!49 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 377, i32 2}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @geth_bind._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @geth_bind._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @geth_strings, !59, !"geth_strings", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 246, i32 35}
!60 = !{ptr @geth_string_table, !61, !"geth_string_table", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 241, i32 34}
!62 = !{ptr @subset_data_intf, !63, !"subset_data_intf", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 75, i32 40}
!64 = !{ptr @ether_desc, !65, !"ether_desc", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 122, i32 34}
!66 = !{ptr @fs_subset_in_desc, !67, !"fs_subset_in_desc", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 137, i32 39}
!68 = !{ptr @fs_subset_out_desc, !69, !"fs_subset_out_desc", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 145, i32 39}
!70 = !{ptr @hs_subset_in_desc, !71, !"hs_subset_in_desc", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 166, i32 39}
!72 = !{ptr @hs_subset_out_desc, !73, !"hs_subset_out_desc", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 174, i32 39}
!74 = !{ptr @ss_subset_in_desc, !75, !"ss_subset_in_desc", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 195, i32 39}
!76 = !{ptr @ss_subset_out_desc, !77, !"ss_subset_out_desc", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 203, i32 39}
!78 = !{ptr @fs_eth_function, !79, !"fs_eth_function", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 153, i32 38}
!80 = !{ptr @mdlm_header_desc, !81, !"mdlm_header_desc", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 88, i32 35}
!82 = !{ptr @mdlm_desc, !83, !"mdlm_desc", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 96, i32 33}
!84 = !{ptr @mdlm_detail_desc, !85, !"mdlm_detail_desc", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 112, i32 11}
!86 = !{ptr @hs_eth_function, !87, !"hs_eth_function", i1 false, i1 false}
!87 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 182, i32 38}
!88 = !{ptr @ss_eth_function, !89, !"ss_eth_function", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 220, i32 38}
!90 = !{ptr @ss_subset_bulk_comp_desc, !91, !"ss_subset_bulk_comp_desc", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 211, i32 41}
!92 = !{ptr @.str.21, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 262, i32 3}
!94 = !{ptr @.str.22, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @geth_set_alt.__UNIQUE_ID_ddebug339, !93, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!96 = !{ptr @.str.23, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 266, i32 2}
!98 = !{ptr @geth_set_alt.__UNIQUE_ID_ddebug340, !97, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!99 = !{ptr @.str.24, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/gadget/function/f_subset.c", i32 283, i32 2}
!101 = !{ptr @.str.25, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @geth_disable.__UNIQUE_ID_ddebug341, !100, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i8 0, i8 2}
!113 = !{!"auto-init"}
!114 = !{i64 2148214164, i64 2148214169, i64 2148214182, i64 2148214226, i64 2148214260, i64 2148214281}
