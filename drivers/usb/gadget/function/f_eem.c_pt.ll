; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/f_eem.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_eem.c"
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
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.f_eem_opts = type { %struct.usb_function_instance, ptr, i8, %struct.mutex, i32 }
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
%struct.gether = type { %struct.usb_function, ptr, ptr, ptr, i8, i16, i32, i8, i32, i32, i8, ptr, ptr, ptr, ptr }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.f_eem = type { %struct.gether, i8 }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.in_context = type { ptr, ptr }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }

@__UNIQUE_ID_alias351 = internal constant [28 x i8] c"usb_f_eem.alias=usbfunc:eem\00", section ".modinfo", align 1
@eemusb_func = internal global { %struct.usb_function_driver, [40 x i8] } { %struct.usb_function_driver { ptr @.str, ptr null, %struct.list_head zeroinitializer, ptr @eem_alloc_inst, ptr @eem_alloc }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_usb_f_eem__352_678_eemmod_init6 = internal global ptr @eemmod_init, section ".initcall6.init", align 4
@__exitcall_eemmod_exit = internal global ptr @eemmod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file353 = internal constant [53 x i8] c"usb_f_eem.file=drivers/usb/gadget/function/usb_f_eem\00", section ".modinfo", align 1
@__UNIQUE_ID_license354 = internal constant [22 x i8] c"usb_f_eem.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author355 = internal constant [32 x i8] c"usb_f_eem.author=David Brownell\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eem\00", [28 x i8] zeroinitializer }, align 32
@eem_alloc_inst.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&opts->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@eem_func_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @eem_item_ops, ptr null, ptr @eem_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"usb\00", [28 x i8] zeroinitializer }, align 32
@eem_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @eem_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@eem_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @eem_opts_attr_dev_addr, ptr @eem_opts_attr_host_addr, ptr @eem_opts_attr_qmult, ptr @eem_opts_attr_ifname, ptr null], [44 x i8] zeroinitializer }, align 32
@eem_opts_attr_dev_addr = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.4, ptr null, i16 420, ptr @eem_opts_dev_addr_show, ptr @eem_opts_dev_addr_store }, [44 x i8] zeroinitializer }, align 32
@eem_opts_attr_host_addr = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.5, ptr null, i16 420, ptr @eem_opts_host_addr_show, ptr @eem_opts_host_addr_store }, [44 x i8] zeroinitializer }, align 32
@eem_opts_attr_qmult = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.6, ptr null, i16 420, ptr @eem_opts_qmult_show, ptr @eem_opts_qmult_store }, [44 x i8] zeroinitializer }, align 32
@eem_opts_attr_ifname = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.8, ptr null, i16 420, ptr @eem_opts_ifname_show, ptr @eem_opts_ifname_store }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"host_addr\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"qmult\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ifname\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cdc_eem\00", [24 x i8] zeroinitializer }, align 32
@eem_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @eem_string_table, ptr null], [24 x i8] zeroinitializer }, align 32
@eem_intf = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 2, i8 2, i8 12, i8 7, i8 0 }, [23 x i8] zeroinitializer }, align 32
@eem_fs_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@eem_fs_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@eem_hs_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@eem_hs_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@eem_ss_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@eem_ss_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@eem_fs_function = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @eem_intf, ptr @eem_fs_in_desc, ptr @eem_fs_out_desc, ptr null], [16 x i8] zeroinitializer }, align 32
@eem_hs_function = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @eem_intf, ptr @eem_hs_in_desc, ptr @eem_hs_out_desc, ptr null], [16 x i8] zeroinitializer }, align 32
@eem_ss_function = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @eem_intf, ptr @eem_ss_in_desc, ptr @eem_ss_bulk_comp_desc, ptr @eem_ss_out_desc, ptr @eem_ss_bulk_comp_desc, ptr null], [40 x i8] zeroinitializer }, align 32
@eem_bind.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, i8 0, i8 79, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb_f_eem\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"eem_bind\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/usb/gadget/function/f_eem.c\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"CDC Ethernet (EEM): %s speed IN/%s OUT/%s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"super\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dual\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@eem_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.12, i32 321, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: can't bind, err %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@eem_bind._entry_ptr = internal global ptr @eem_bind._entry, section ".printk_index", align 4
@eem_string_table = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @eem_string_defs }, [24 x i8] zeroinitializer }, align 32
@eem_string_defs = internal global { [2 x %struct.usb_string], [16 x i8] } { [2 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.20 }, %struct.usb_string zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CDC Ethernet Emulation Model (EEM)\00", [61 x i8] zeroinitializer }, align 32
@eem_ss_bulk_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@eem_unbind.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.21, ptr @.str.12, ptr @.str.22, i8 0, i8 -96, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"eem_unbind\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"eem unbind\0A\00", [20 x i8] zeroinitializer }, align 32
@eem_set_alt.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.23, ptr @.str.12, ptr @.str.24, i8 0, i8 49, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"eem_set_alt\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reset eem\0A\00", [21 x i8] zeroinitializer }, align 32
@eem_set_alt.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.23, ptr @.str.12, ptr @.str.25, i8 0, i8 50, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init eem\0A\00", [22 x i8] zeroinitializer }, align 32
@eem_set_alt.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.23, ptr @.str.12, ptr @.str.26, i8 0, i8 54, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"activate eem\0A\00", [18 x i8] zeroinitializer }, align 32
@eem_setup.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.27, ptr @.str.12, ptr @.str.28, i8 0, i8 45, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eem_setup\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"invalid control req%02x.%02x v%04x i%04x l%d\0A\00", [50 x i8] zeroinitializer }, align 32
@eem_disable.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.29, ptr @.str.12, ptr @.str.30, i8 0, i8 58, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"eem_disable\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"eem deactivated\0A\00", [47 x i8] zeroinitializer }, align 32
@eem_unwrap.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.31, ptr @.str.12, ptr @.str.32, i8 0, i8 102, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"eem_unwrap\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid EEM header\0A\00", [44 x i8] zeroinitializer }, align 32
@eem_unwrap.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.31, ptr @.str.12, ptr @.str.33, i8 0, i8 111, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"EEM echo response error\0A\00", [39 x i8] zeroinitializer }, align 32
@eem_unwrap.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.31, ptr @.str.12, ptr @.str.34, i8 0, i8 120, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"echo response queue fail\0A\00", [38 x i8] zeroinitializer }, align 32
@eem_unwrap.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.31, ptr @.str.12, ptr @.str.35, i8 0, i8 -125, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid EEM CRC\0A\00", [47 x i8] zeroinitializer }, align 32
@eem_unwrap.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.31, ptr @.str.12, ptr @.str.36, i8 0, i8 -123, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to unframe EEM packet\0A\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.37 = private unnamed_addr constant [12 x i8] c"eemusb_func\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 678, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 611, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 620, i32 54 }
@___asan_gen_.52 = private unnamed_addr constant [14 x i8] c"eem_func_type\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 586, i32 38 }
@___asan_gen_.56 = private unnamed_addr constant [41 x i8] c"../drivers/usb/gadget/function/u_ether.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 140, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"eem_item_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 564, i32 1 }
@___asan_gen_.61 = private unnamed_addr constant [10 x i8] c"eem_attrs\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 578, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant [23 x i8] c"eem_opts_attr_dev_addr\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [24 x i8] c"eem_opts_attr_host_addr\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [20 x i8] c"eem_opts_attr_qmult\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [21 x i8] c"eem_opts_attr_ifname\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 567, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 570, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 573, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 576, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 663, i32 24 }
@___asan_gen_.94 = private unnamed_addr constant [12 x i8] c"eem_strings\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 164, i32 35 }
@___asan_gen_.97 = private unnamed_addr constant [9 x i8] c"eem_intf\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 47, i32 40 }
@___asan_gen_.100 = private unnamed_addr constant [15 x i8] c"eem_fs_in_desc\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 61, i32 39 }
@___asan_gen_.103 = private unnamed_addr constant [16 x i8] c"eem_fs_out_desc\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 69, i32 39 }
@___asan_gen_.106 = private unnamed_addr constant [15 x i8] c"eem_hs_in_desc\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 87, i32 39 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"eem_hs_out_desc\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 96, i32 39 }
@___asan_gen_.112 = private unnamed_addr constant [15 x i8] c"eem_ss_in_desc\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 115, i32 39 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"eem_ss_out_desc\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 124, i32 39 }
@___asan_gen_.118 = private unnamed_addr constant [16 x i8] c"eem_fs_function\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 77, i32 38 }
@___asan_gen_.121 = private unnamed_addr constant [16 x i8] c"eem_hs_function\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 105, i32 38 }
@___asan_gen_.124 = private unnamed_addr constant [16 x i8] c"eem_ss_function\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 142, i32 38 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 314, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 321, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"eem_string_table\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 159, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant [16 x i8] c"eem_string_defs\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 154, i32 26 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 155, i32 10 }
@___asan_gen_.169 = private unnamed_addr constant [22 x i8] c"eem_ss_bulk_comp_desc\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 133, i32 41 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 640, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 198, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 202, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 218, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 178, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 235, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 408, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 446, i32 6 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 483, i32 6 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 526, i32 5 }
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private constant [39 x i8] c"../drivers/usb/gadget/function/f_eem.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 532, i32 5 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_alias351, ptr @__UNIQUE_ID_author355, ptr @__UNIQUE_ID_file353, ptr @__UNIQUE_ID_license354, ptr @__exitcall_eemmod_exit, ptr @__initcall__kmod_usb_f_eem__352_678_eemmod_init6, ptr @eem_bind._entry, ptr @eem_bind._entry_ptr, ptr @eemmod_exit, ptr @eemusb_func, ptr @.str, ptr @eem_alloc_inst.__key, ptr @.str.1, ptr @.str.2, ptr @eem_func_type, ptr @.str.3, ptr @eem_item_ops, ptr @eem_attrs, ptr @eem_opts_attr_dev_addr, ptr @eem_opts_attr_host_addr, ptr @eem_opts_attr_qmult, ptr @eem_opts_attr_ifname, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @eem_strings, ptr @eem_intf, ptr @eem_fs_in_desc, ptr @eem_fs_out_desc, ptr @eem_hs_in_desc, ptr @eem_hs_out_desc, ptr @eem_ss_in_desc, ptr @eem_ss_out_desc, ptr @eem_fs_function, ptr @eem_hs_function, ptr @eem_ss_function, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @eem_string_table, ptr @eem_string_defs, ptr @.str.20, ptr @eem_ss_bulk_comp_desc, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eemusb_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_alloc_inst.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_func_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_opts_attr_dev_addr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_opts_attr_host_addr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_opts_attr_qmult to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_opts_attr_ifname to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_intf to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_fs_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_fs_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_hs_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_hs_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_ss_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_ss_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_fs_function to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_hs_function to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_ss_function to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_string_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_string_defs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eem_ss_bulk_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @eemmod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_function_unregister(ptr noundef nonnull @eemusb_func) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @eemmod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_function_register(ptr noundef nonnull @eemusb_func) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @eem_alloc_inst() #2 align 64 {
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
  %lock = getelementptr inbounds %struct.f_eem_opts, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @eem_alloc_inst.__key) #10
  %free_func_inst = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %free_func_inst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @eem_free_inst, ptr %free_func_inst, align 8
  %call.i = tail call ptr @gether_setup_name_default(ptr noundef nonnull @.str.3) #10
  %net = getelementptr inbounds %struct.f_eem_opts, ptr %call7.i.i, i32 0, i32 1
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
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @eem_func_type) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.then5 ], [ %call7.i.i, %if.end9 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @eem_alloc(ptr noundef %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 164) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.f_eem_opts, ptr %fi, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %refcnt = getelementptr inbounds %struct.f_eem_opts, ptr %fi, i32 0, i32 4
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %refcnt, align 4
  %net = getelementptr inbounds %struct.f_eem_opts, ptr %fi, i32 0, i32 1
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 2304
  %ioport = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %ioport to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i, ptr %ioport, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %cdc_filter = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %cdc_filter to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 15, ptr %cdc_filter, align 2
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.9, ptr %call7.i.i, align 8
  %bind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 9
  %8 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @eem_bind, ptr %bind, align 4
  %unbind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @eem_unbind, ptr %unbind, align 8
  %set_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 13
  %10 = ptrtoint ptr %set_alt to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @eem_set_alt, ptr %set_alt, align 4
  %setup = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @eem_setup, ptr %setup, align 8
  %disable = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 15
  %12 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @eem_disable, ptr %disable, align 4
  %free_func = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %free_func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @eem_free, ptr %free_func, align 4
  %wrap = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 11
  %14 = ptrtoint ptr %wrap to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @eem_wrap, ptr %wrap, align 8
  %unwrap = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 12
  %15 = ptrtoint ptr %unwrap to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @eem_unwrap, ptr %unwrap, align 4
  %header_len = getelementptr inbounds %struct.gether, ptr %call7.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %header_len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %header_len, align 4
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
define internal void @eem_free_inst(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bound = getelementptr inbounds %struct.f_eem_opts, ptr %f, i32 0, i32 2
  %0 = ptrtoint ptr %bound to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bound, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %net1 = getelementptr inbounds %struct.f_eem_opts, ptr %f, i32 0, i32 1
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

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gether_setup_name_default(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eem_attr_release(ptr noundef %item) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_put_function_instance(ptr noundef %item) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eem_opts_dev_addr_show(ptr noundef %item, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_eem_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %net = getelementptr inbounds %struct.f_eem_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_get_dev_addr(ptr noundef %1, ptr noundef %page, i32 noundef 4096) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eem_opts_dev_addr_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_eem_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %refcnt = getelementptr inbounds %struct.f_eem_opts, ptr %item, i32 0, i32 4
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
  %net = getelementptr inbounds %struct.f_eem_opts, ptr %item, i32 0, i32 1
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
define internal i32 @eem_opts_host_addr_show(ptr noundef %item, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_eem_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %net = getelementptr inbounds %struct.f_eem_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_get_host_addr(ptr noundef %1, ptr noundef %page, i32 noundef 4096) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eem_opts_host_addr_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_eem_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %refcnt = getelementptr inbounds %struct.f_eem_opts, ptr %item, i32 0, i32 4
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
  %net = getelementptr inbounds %struct.f_eem_opts, ptr %item, i32 0, i32 1
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
define internal i32 @eem_opts_qmult_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_eem_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %net = getelementptr inbounds %struct.f_eem_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_get_qmult(ptr noundef %1) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.7, i32 noundef %call1)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eem_opts_qmult_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !132
  %lock = getelementptr inbounds %struct.f_eem_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %refcnt = getelementptr inbounds %struct.f_eem_opts, ptr %item, i32 0, i32 4
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
  %net = getelementptr inbounds %struct.f_eem_opts, ptr %item, i32 0, i32 1
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
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_set_qmult(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eem_opts_ifname_show(ptr noundef %item, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_eem_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %net = getelementptr inbounds %struct.f_eem_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call1 = tail call i32 @gether_get_ifname(ptr noundef %1, ptr noundef %page, i32 noundef 4096) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eem_opts_ifname_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_eem_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %refcnt = getelementptr inbounds %struct.f_eem_opts, ptr %item, i32 0, i32 4
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
  %net = getelementptr inbounds %struct.f_eem_opts, ptr %item, i32 0, i32 1
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eem_bind(ptr noundef %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev1, align 4
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %2 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fi, align 4
  %bound = getelementptr inbounds %struct.f_eem_opts, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bound to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bound, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.f_eem_opts, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %net = getelementptr inbounds %struct.f_eem_opts, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @gether_set_gadget(ptr noundef %7, ptr noundef %9) #10
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  %call3 = tail call i32 @gether_register_netdev(ptr noundef %11) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool5.not = icmp eq i32 %call3, 0
  br i1 %tobool5.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %bound to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %bound, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %call9 = tail call ptr @usb_gstrings_attach(ptr noundef %1, ptr noundef nonnull @eem_strings, i32 noundef 2) #10
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %14 = ptrtoint ptr %call9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %call9, align 4
  store i8 %15, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @eem_intf, i32 0, i32 8), align 1
  %call14 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.end13.do.end58_crit_edge, label %if.end16

if.end13.do.end58_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end58

if.end16:                                         ; preds = %if.end13
  %conv = trunc i32 %call14 to i8
  %ctrl_id = getelementptr inbounds %struct.f_eem, ptr %f, i32 0, i32 1
  %16 = ptrtoint ptr %ctrl_id to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %ctrl_id, align 4
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @eem_intf, i32 0, i32 2), align 1
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call19 = tail call ptr @usb_ep_autoconfig(ptr noundef %18, ptr noundef nonnull @eem_fs_in_desc) #10
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end16.do.end58_crit_edge, label %if.end22

if.end16.do.end58_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end58

if.end22:                                         ; preds = %if.end16
  %in_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 2
  %19 = ptrtoint ptr %in_ep to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call19, ptr %in_ep, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call24 = tail call ptr @usb_ep_autoconfig(ptr noundef %21, ptr noundef nonnull @eem_fs_out_desc) #10
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end22.do.end58_crit_edge, label %if.end27

if.end22.do.end58_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end58

if.end27:                                         ; preds = %if.end22
  %out_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 3
  %22 = ptrtoint ptr %out_ep to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call24, ptr %out_ep, align 4
  %23 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @eem_fs_in_desc, i32 0, i32 2), align 1
  store i8 %23, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @eem_hs_in_desc, i32 0, i32 2), align 1
  %24 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @eem_fs_out_desc, i32 0, i32 2), align 1
  store i8 %24, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @eem_hs_out_desc, i32 0, i32 2), align 1
  store i8 %23, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @eem_ss_in_desc, i32 0, i32 2), align 1
  store i8 %24, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @eem_ss_out_desc, i32 0, i32 2), align 1
  %call29 = tail call i32 @usb_assign_descriptors(ptr noundef %f, ptr noundef nonnull @eem_fs_function, ptr noundef nonnull @eem_hs_function, ptr noundef nonnull @eem_ss_function, ptr noundef nonnull @eem_ss_function) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.body, label %if.end27.do.end58_crit_edge

if.end27.do.end58_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end58

do.body:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @eem_bind.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@eem_bind, %cleanup)) #10
          to label %if.then39 [label %cleanup], !srcloc !133

if.then39:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cdev1, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %max_speed.i = getelementptr inbounds %struct.usb_gadget, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %32)
  %cmp.i100 = icmp ult i32 %32, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp.i102 = icmp ult i32 %32, 3
  %cond = select i1 %cmp.i102, ptr @.str.16, ptr @.str.15
  %cond49 = select i1 %cmp.i100, ptr %cond, ptr @.str.14
  %33 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %in_ep, align 4
  %name = getelementptr inbounds %struct.usb_ep, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name, align 4
  %37 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %out_ep, align 4
  %name54 = getelementptr inbounds %struct.usb_ep, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %name54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name54, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @eem_bind.__UNIQUE_ID_ddebug344, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond49, ptr noundef %36, ptr noundef %40) #10
  br label %cleanup

do.end58:                                         ; preds = %if.end27.do.end58_crit_edge, %if.end22.do.end58_crit_edge, %if.end16.do.end58_crit_edge, %if.end13.do.end58_crit_edge
  %status.0 = phi i32 [ %call14, %if.end13.do.end58_crit_edge ], [ %call29, %if.end27.do.end58_crit_edge ], [ -19, %if.end22.do.end58_crit_edge ], [ -19, %if.end16.do.end58_crit_edge ]
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %dev60 = getelementptr inbounds %struct.usb_gadget, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev60, ptr noundef nonnull @.str.17, ptr noundef %44, i32 noundef %status.0) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %if.then39, %do.body, %if.then11, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then11 ], [ %status.0, %do.end58 ], [ %call3, %if.then.cleanup_crit_edge ], [ 0, %if.then39 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eem_unbind(ptr nocapture noundef readonly %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @eem_unbind.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@eem_unbind, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !133

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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @eem_unbind.__UNIQUE_ID_ddebug350, ptr noundef %dev, ptr noundef nonnull @.str.22) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @usb_free_all_descriptors(ptr noundef %f) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eem_set_alt(ptr noundef %f, i32 noundef %intf, i32 noundef %alt) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alt)
  %cmp.not = icmp eq i32 %alt, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl_id = getelementptr inbounds %struct.f_eem, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrl_id, align 4
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %intf)
  %cmp2 = icmp eq i32 %conv, %intf
  br i1 %cmp2, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @eem_set_alt.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@eem_set_alt, %do.end)) #10
          to label %if.then9 [label %do.end], !srcloc !133

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @eem_set_alt.__UNIQUE_ID_ddebug340, ptr noundef %dev, ptr noundef nonnull @.str.24) #10
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  tail call void @gether_disconnect(ptr noundef %f) #10
  %in_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 2
  %8 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %in_ep, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %do.end.do.body17_crit_edge, label %lor.lhs.false

do.end.do.body17_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

lor.lhs.false:                                    ; preds = %do.end
  %out_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 3
  %12 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %out_ep, align 4
  %desc14 = getelementptr inbounds %struct.usb_ep, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %desc14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc14, align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %lor.lhs.false.do.body17_crit_edge, label %lor.lhs.false.if.end56_crit_edge

lor.lhs.false.if.end56_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

lor.lhs.false.do.body17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

do.body17:                                        ; preds = %lor.lhs.false.do.body17_crit_edge, %do.end.do.body17_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @eem_set_alt.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@eem_set_alt, %do.end36)) #10
          to label %if.then31 [label %do.end36], !srcloc !133

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %dev33 = getelementptr inbounds %struct.usb_gadget, ptr %17, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @eem_set_alt.__UNIQUE_ID_ddebug341, ptr noundef %dev33, ptr noundef nonnull @.str.25) #10
  br label %do.end36

do.end36:                                         ; preds = %if.then31, %do.body17
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %20 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %in_ep, align 4
  %call40 = tail call i32 @config_ep_by_speed(ptr noundef %19, ptr noundef %f, ptr noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %lor.lhs.false42, label %do.end36.if.then48_crit_edge

do.end36.if.then48_crit_edge:                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48

lor.lhs.false42:                                  ; preds = %do.end36
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %out_ep45 = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 3
  %24 = ptrtoint ptr %out_ep45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %out_ep45, align 4
  %call46 = tail call i32 @config_ep_by_speed(ptr noundef %23, ptr noundef %f, ptr noundef %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %lor.lhs.false42.if.end56_crit_edge, label %lor.lhs.false42.if.then48_crit_edge

lor.lhs.false42.if.then48_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48

lor.lhs.false42.if.end56_crit_edge:               ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then48:                                        ; preds = %lor.lhs.false42.if.then48_crit_edge, %do.end36.if.then48_crit_edge
  %26 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %in_ep, align 4
  %desc51 = getelementptr inbounds %struct.usb_ep, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %desc51 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %desc51, align 4
  %out_ep53 = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 3
  %29 = ptrtoint ptr %out_ep53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %out_ep53, align 4
  %desc54 = getelementptr inbounds %struct.usb_ep, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %desc54 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %desc54, align 4
  br label %cleanup

if.end56:                                         ; preds = %lor.lhs.false42.if.end56_crit_edge, %lor.lhs.false.if.end56_crit_edge
  %is_zlp_ok = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 4
  %32 = ptrtoint ptr %is_zlp_ok to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %is_zlp_ok, align 4
  %cdc_filter = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 5
  %33 = ptrtoint ptr %cdc_filter to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 15, ptr %cdc_filter, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @eem_set_alt.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@eem_set_alt, %do.end78)) #10
          to label %if.then73 [label %do.end78], !srcloc !133

if.then73:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %dev75 = getelementptr inbounds %struct.usb_gadget, ptr %35, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @eem_set_alt.__UNIQUE_ID_ddebug342, ptr noundef %dev75, ptr noundef nonnull @.str.26) #10
  br label %do.end78

do.end78:                                         ; preds = %if.then73, %if.end56
  %call80 = tail call ptr @gether_connect(ptr noundef %f) #10
  %cmp.i = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  %36 = ptrtoint ptr %call80 to i32
  %spec.select = select i1 %cmp.i, i32 %36, i32 0
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %if.then48, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then48 ], [ %spec.select, %do.end78 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eem_setup(ptr nocapture noundef readonly %f, ptr nocapture noundef readonly %ctrl) #2 align 64 {
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
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %4 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %wIndex, align 1
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %6 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %wValue, align 1
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %8 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %wLength, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @eem_setup.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@eem_setup, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !133

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %11 = tail call i16 @llvm.bswap.i16(i16 %7)
  %12 = tail call i16 @llvm.bswap.i16(i16 %5)
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ctrl, align 1
  %conv = zext i8 %16 to i32
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %17 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bRequest, align 1
  %conv5 = zext i8 %18 to i32
  %conv6 = zext i16 %11 to i32
  %conv7 = zext i16 %12 to i32
  %conv8 = zext i16 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @eem_setup.__UNIQUE_ID_ddebug339, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eem_disable(ptr noundef %f) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @eem_disable.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@eem_disable, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !133

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @eem_disable.__UNIQUE_ID_ddebug343, ptr noundef %dev, ptr noundef nonnull @.str.30) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %in_ep = getelementptr inbounds %struct.gether, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %in_ep, align 4
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled, align 1, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %do.end.if.end9_crit_edge, label %if.then7

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gether_disconnect(ptr noundef %f) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %do.end.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eem_free(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi, align 4
  tail call void @kfree(ptr noundef %f) #10
  %lock = getelementptr inbounds %struct.f_eem_opts, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %refcnt = getelementptr inbounds %struct.f_eem_opts, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcnt, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @eem_wrap(ptr nocapture noundef readonly %port, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_ep = getelementptr inbounds %struct.gether, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_ep, align 4
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end.skb_tailroom.exit_crit_edge

if.end.skb_tailroom.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i56 = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i57 = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i58 = sub i32 %sub.ptr.lhs.cast.i56, %sub.ptr.rhs.cast.i57
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i58, %cond.false.i ], [ 0, %if.end.skb_tailroom.exit_crit_edge ]
  %conv3 = and i32 %3, 65535
  %add4 = add nuw nsw i32 %conv3, 6
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %14, i32 7)
  %bf.load = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load, 40
  %bf.cast = trunc i56 %bf.lshr to i32
  %rem = urem i32 %add4, %bf.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  %spec.select = select i1 %cmp, i32 6, i32 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %spec.select)
  %cmp10.not = icmp sge i32 %cond.i, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.ptr.sub.i)
  %cmp12 = icmp sgt i32 %sub.ptr.sub.i, 1
  %or.cond = select i1 %cmp10.not, i1 %cmp12, i1 false
  br i1 %or.cond, label %land.lhs.true14, label %skb_tailroom.exit.if.end18_crit_edge

skb_tailroom.exit.if.end18_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

land.lhs.true14:                                  ; preds = %skb_tailroom.exit
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %15 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true14.done_crit_edge, label %skb_cloned.exit

land.lhs.true14.done_crit_edge:                   ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

skb_cloned.exit:                                  ; preds = %land.lhs.true14
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %16 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #10
  %18 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %19, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i.not, label %skb_cloned.exit.done_crit_edge, label %skb_cloned.exit.if.end18_crit_edge

skb_cloned.exit.if.end18_crit_edge:               ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

skb_cloned.exit.done_crit_edge:                   ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end18:                                         ; preds = %skb_cloned.exit.if.end18_crit_edge, %skb_tailroom.exit.if.end18_crit_edge
  %call20 = tail call ptr @skb_copy_expand(ptr noundef nonnull %skb, i32 noundef 2, i32 noundef %spec.select, i32 noundef 2592) #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %skb, i32 noundef 1) #10
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end18.cleanup_crit_edge, label %if.end18.done_crit_edge

if.end18.done_crit_edge:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

done:                                             ; preds = %if.end18.done_crit_edge, %skb_cloned.exit.done_crit_edge, %land.lhs.true14.done_crit_edge
  %skb.addr.0 = phi ptr [ %call20, %if.end18.done_crit_edge ], [ %skb, %skb_cloned.exit.done_crit_edge ], [ %skb, %land.lhs.true14.done_crit_edge ]
  %call24 = tail call ptr @skb_put(ptr noundef nonnull %skb.addr.0, i32 noundef 4) #10
  %20 = ptrtoint ptr %call24 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 -559038737, ptr %call24, align 1
  %len25 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %21 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len25, align 4
  %23 = trunc i32 %22 to i16
  %conv28 = and i16 %23, 16383
  %call29 = tail call ptr @skb_push(ptr noundef nonnull %skb.addr.0, i32 noundef 2) #10
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv28) #10
  %25 = ptrtoint ptr %call29 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %call29, align 1
  br i1 %cmp, label %if.then31, label %done.cleanup_crit_edge

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then31:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  %call32 = tail call ptr @skb_put(ptr noundef nonnull %skb.addr.0, i32 noundef 2) #10
  %26 = ptrtoint ptr %call32 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 0, ptr %call32, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %done.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end18.cleanup_crit_edge ], [ %skb.addr.0, %if.then31 ], [ %skb.addr.0, %done.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eem_unwrap(ptr nocapture noundef readonly %port, ptr noundef %skb, ptr noundef %list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %port, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %in_ep = getelementptr inbounds %struct.gether, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %len2, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond235.do.body_crit_edge, %entry
  %5 = phi i32 [ %56, %do.cond235.do.body_crit_edge ], [ %.pr, %entry ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ult i32 %5, 2
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @eem_unwrap.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@eem_unwrap, %cleanup239)) #10
          to label %if.then7 [label %cleanup239], !srcloc !133

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @eem_unwrap.__UNIQUE_ID_ddebug345, ptr noundef %dev, ptr noundef nonnull @.str.32) #10
  br label %cleanup239

if.end8:                                          ; preds = %do.body
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %9, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #10
  %call10 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #10
  %conv = zext i16 %12 to i32
  %and = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end8
  %and14 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %13 = and i16 %12, 14336
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cond = icmp eq i16 %13, 0
  %or.cond309 = select i1 %tobool15.not, i1 %cond, i1 false
  br i1 %or.cond309, label %sw.bb, label %if.then12.do.cond235_crit_edge

if.then12.do.cond235_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond235

sw.bb:                                            ; preds = %if.then12
  %and23 = and i16 %12, 2047
  %14 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len2, align 4
  %conv26 = zext i16 %and23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv26)
  %cmp27 = icmp ult i32 %15, %conv26
  br i1 %cmp27, label %sw.bb.cleanup239_crit_edge, label %if.end30

sw.bb.cleanup239_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup239

if.end30:                                         ; preds = %sw.bb
  %call31 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #10
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %do.body42, label %if.end62, !prof !134

do.body42:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @eem_unwrap.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@eem_unwrap, %next)) #10
          to label %if.then56 [label %next], !srcloc !133

if.then56:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %dev58 = getelementptr inbounds %struct.usb_gadget, ptr %17, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @eem_unwrap.__UNIQUE_ID_ddebug346, ptr noundef %dev58, ptr noundef nonnull @.str.33) #10
  br label %next

if.end62:                                         ; preds = %if.end30
  tail call void @skb_trim(ptr noundef nonnull %call31, i32 noundef %conv26) #10
  %or = or i16 %and23, -30720
  %call66 = tail call ptr @skb_push(ptr noundef nonnull %call31, i32 noundef 2) #10
  %18 = tail call i16 @llvm.bswap.i16(i16 %or) #10
  %19 = ptrtoint ptr %call66 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %call66, align 1
  %20 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %in_ep, align 4
  %call67 = tail call ptr @usb_ep_alloc_request(ptr noundef %21, i32 noundef 2592) #10
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call31, i32 noundef 1) #10
  br label %next

if.end70:                                         ; preds = %if.end62
  %len71 = getelementptr inbounds %struct.sk_buff, ptr %call31, i32 0, i32 6
  %22 = ptrtoint ptr %len71 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len71, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3264) #15
  %24 = ptrtoint ptr %call67 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i, ptr %call67, align 4
  %tobool74.not = icmp eq ptr %call9.i, null
  br i1 %tobool74.not, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_ep_free_request(ptr noundef %21, ptr noundef nonnull %call67) #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call31, i32 noundef 1) #10
  br label %next

if.end76:                                         ; preds = %if.end70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i319 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 8) #13
  %tobool78.not = icmp eq ptr %call7.i319, null
  br i1 %tobool78.not, label %if.then79, label %if.end81

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %call67 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call67, align 4
  tail call void @kfree(ptr noundef %27) #10
  tail call void @usb_ep_free_request(ptr noundef %21, ptr noundef nonnull %call67) #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call31, i32 noundef 1) #10
  br label %next

if.end81:                                         ; preds = %if.end76
  %28 = ptrtoint ptr %call7.i319 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call31, ptr %call7.i319, align 8
  %ep83 = getelementptr inbounds %struct.in_context, ptr %call7.i319, i32 0, i32 1
  %29 = ptrtoint ptr %ep83 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %21, ptr %ep83, align 4
  %30 = ptrtoint ptr %call67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call67, align 4
  %32 = ptrtoint ptr %len71 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len71, align 4
  %call86 = tail call i32 @skb_copy_bits(ptr noundef nonnull %call31, i32 noundef 0, ptr noundef %31, i32 noundef %33) #10
  %34 = ptrtoint ptr %len71 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len71, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %call67, i32 0, i32 1
  %36 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %length, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %call67, i32 0, i32 7
  %37 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @eem_cmd_complete, ptr %complete, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %call67, i32 0, i32 6
  %38 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %38)
  %bf.load = load i32, ptr %zero, align 4
  %bf.set = or i32 %bf.load, 8192
  store i32 %bf.set, ptr %zero, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %call67, i32 0, i32 8
  %39 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i319, ptr %context, align 4
  %40 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %in_ep, align 4
  %call89 = tail call i32 @usb_ep_queue(ptr noundef %41, ptr noundef nonnull %call67, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end81.next_crit_edge, label %do.body92

if.end81.next_crit_edge:                          ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %next

do.body92:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @eem_unwrap.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@eem_unwrap, %next)) #10
          to label %if.then106 [label %next], !srcloc !133

if.then106:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 4
  %dev108 = getelementptr inbounds %struct.usb_gadget, ptr %43, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @eem_unwrap.__UNIQUE_ID_ddebug347, ptr noundef %dev108, ptr noundef nonnull @.str.34) #10
  br label %next

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp118 = icmp eq i16 %11, 0
  br i1 %cmp118, label %if.else.do.cond235_crit_edge, label %if.end121

if.else.do.cond235_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond235

if.end121:                                        ; preds = %if.else
  %and123 = and i16 %12, 16383
  %44 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len2, align 4
  %conv126 = zext i16 %and123 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv126)
  %cmp127 = icmp ult i32 %45, %conv126
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %and123)
  %cmp130 = icmp ult i16 %and123, 18
  %or.cond = or i1 %cmp130, %cmp127
  br i1 %or.cond, label %if.end121.cleanup239_crit_edge, label %if.end133

if.end121.cleanup239_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup239

if.end133:                                        ; preds = %if.end121
  %and135 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %add.ptr148 = getelementptr i8, ptr %47, i32 -4
  %add.ptr149 = getelementptr i8, ptr %add.ptr148, i32 %conv126
  %48 = ptrtoint ptr %add.ptr149 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %add.ptr149, align 1
  br i1 %tobool136.not, label %if.end133.if.end151_crit_edge, label %if.then137

if.end133.if.end151_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151

if.then137:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #10
  %sub = add nsw i32 %conv126, -4
  %call144 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %47, i32 noundef %sub) #16
  %neg = xor i32 %call144, -1
  br label %if.end151

if.end151:                                        ; preds = %if.then137, %if.end133.if.end151_crit_edge
  %crc.0 = phi i32 [ %50, %if.then137 ], [ %49, %if.end133.if.end151_crit_edge ]
  %crc2.0 = phi i32 [ %neg, %if.then137 ], [ -559038737, %if.end133.if.end151_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %crc.0, i32 %crc2.0)
  %cmp152.not = icmp eq i32 %crc.0, %crc2.0
  br i1 %cmp152.not, label %if.end175, label %do.body155

do.body155:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @eem_unwrap.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@eem_unwrap, %next)) #10
          to label %if.then169 [label %next], !srcloc !133

if.then169:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %3, align 4
  %dev171 = getelementptr inbounds %struct.usb_gadget, ptr %52, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @eem_unwrap.__UNIQUE_ID_ddebug348, ptr noundef %dev171, ptr noundef nonnull @.str.35) #10
  br label %next

if.end175:                                        ; preds = %if.end151
  %call176 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #10
  %tobool177.not = icmp eq ptr %call176, null
  br i1 %tobool177.not, label %do.body187, label %if.end207, !prof !134

do.body187:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @eem_unwrap.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@eem_unwrap, %next)) #10
          to label %if.then201 [label %next], !srcloc !133

if.then201:                                       ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 4
  %dev203 = getelementptr inbounds %struct.usb_gadget, ptr %54, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @eem_unwrap.__UNIQUE_ID_ddebug349, ptr noundef %dev203, ptr noundef nonnull @.str.36) #10
  br label %next

if.end207:                                        ; preds = %if.end175
  %sub209 = add nsw i32 %conv126, -4
  tail call void @skb_trim(ptr noundef nonnull %call176, i32 noundef %sub209) #10
  %call210 = tail call ptr @skb_copy_expand(ptr noundef nonnull %call176, i32 noundef 2, i32 noundef 0, i32 noundef 2592) #10
  %tobool211.not = icmp eq ptr %call210, null
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call176, i32 noundef 1) #10
  br i1 %tobool211.not, label %if.end207.next_crit_edge, label %if.end221, !prof !134

if.end207.next_crit_edge:                         ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #12
  br label %next

if.end221:                                        ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_queue_tail(ptr noundef %list, ptr noundef nonnull %call210) #10
  br label %next

next:                                             ; preds = %if.end221, %if.end207.next_crit_edge, %if.then201, %do.body187, %if.then169, %do.body155, %if.then106, %do.body92, %if.end81.next_crit_edge, %if.then79, %if.then75, %if.then69, %if.then56, %do.body42
  %conv228.pre-phi = phi i32 [ %conv126, %do.body187 ], [ %conv126, %do.body155 ], [ %conv126, %if.then201 ], [ %conv126, %if.then169 ], [ %conv126, %if.end221 ], [ %conv26, %do.body92 ], [ %conv26, %do.body42 ], [ %conv26, %if.then106 ], [ %conv26, %if.end81.next_crit_edge ], [ %conv26, %if.then56 ], [ %conv26, %if.then69 ], [ %conv26, %if.then75 ], [ %conv26, %if.then79 ], [ %conv126, %if.end207.next_crit_edge ]
  %call229 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv228.pre-phi) #10
  br label %do.cond235

do.cond235:                                       ; preds = %next, %if.else.do.cond235_crit_edge, %if.then12.do.cond235_crit_edge
  %55 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len2, align 4
  %tobool237.not = icmp eq i32 %56, 0
  br i1 %tobool237.not, label %do.cond235.cleanup239_crit_edge, label %do.cond235.do.body_crit_edge

do.cond235.do.body_crit_edge:                     ; preds = %do.cond235
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.cond235.cleanup239_crit_edge:                  ; preds = %do.cond235
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup239

cleanup239:                                       ; preds = %do.cond235.cleanup239_crit_edge, %if.end121.cleanup239_crit_edge, %sw.bb.cleanup239_crit_edge, %if.then7, %if.then
  %status.4345 = phi i32 [ -22, %if.then7 ], [ -22, %if.then ], [ -75, %sw.bb.cleanup239_crit_edge ], [ -22, %if.end121.cleanup239_crit_edge ], [ 0, %do.cond235.cleanup239_crit_edge ]
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  ret i32 %status.4345
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
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gether_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eem_cmd_complete(ptr nocapture noundef readnone %ep, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %3, i32 noundef 1) #10
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  tail call void @kfree(ptr noundef %5) #10
  %ep1 = getelementptr inbounds %struct.in_context, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ep1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ep1, align 4
  tail call void @usb_ep_free_request(ptr noundef %7, ptr noundef %req) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !11, !13, !14, !16, !18, !20, !22, !24, !26, !27, !29, !30, !32, !33, !34, !36, !37, !39, !41, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !115, !116, !118, !119, !121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @__UNIQUE_ID_alias351, !1, !"__UNIQUE_ID_alias351", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 678, i32 1}
!2 = !{ptr @__initcall__kmod_usb_f_eem__352_678_eemmod_init6, !1, !"__initcall__kmod_usb_f_eem__352_678_eemmod_init6", i1 false, i1 false}
!3 = !{ptr @__exitcall_eemmod_exit, !1, !"__exitcall_eemmod_exit", i1 false, i1 false}
!4 = !{ptr @__UNIQUE_ID_file353, !5, !"__UNIQUE_ID_file353", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 679, i32 1}
!6 = !{ptr @__UNIQUE_ID_license354, !5, !"__UNIQUE_ID_license354", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author355, !8, !"__UNIQUE_ID_author355", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 680, i32 1}
!9 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @eemusb_func, !1, !"eemusb_func", i1 false, i1 false}
!11 = !{ptr @eem_alloc_inst.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 611, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 620, i32 54}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/function/u_ether.h", i32 140, i32 35}
!18 = !{ptr @eem_func_type, !19, !"eem_func_type", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 586, i32 38}
!20 = !{ptr @eem_item_ops, !21, !"eem_item_ops", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 564, i32 1}
!22 = !{ptr @eem_attrs, !23, !"eem_attrs", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 578, i32 35}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 567, i32 1}
!26 = !{ptr @eem_opts_attr_dev_addr, !25, !"eem_opts_attr_dev_addr", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 570, i32 1}
!29 = !{ptr @eem_opts_attr_host_addr, !28, !"eem_opts_attr_host_addr", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 573, i32 1}
!32 = !{ptr @eem_opts_attr_qmult, !31, !"eem_opts_attr_qmult", i1 false, i1 false}
!33 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 576, i32 1}
!36 = !{ptr @eem_opts_attr_ifname, !35, !"eem_opts_attr_ifname", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 663, i32 24}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 314, i32 2}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @eem_bind.__UNIQUE_ID_ddebug344, !40, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!45 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 321, i32 2}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @eem_bind._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @eem_bind._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @eem_strings, !55, !"eem_strings", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 164, i32 35}
!56 = !{ptr @eem_string_table, !57, !"eem_string_table", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 159, i32 34}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 155, i32 10}
!60 = !{ptr @eem_string_defs, !61, !"eem_string_defs", i1 false, i1 false}
!61 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 154, i32 26}
!62 = !{ptr @eem_intf, !63, !"eem_intf", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 47, i32 40}
!64 = !{ptr @eem_fs_in_desc, !65, !"eem_fs_in_desc", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 61, i32 39}
!66 = !{ptr @eem_fs_out_desc, !67, !"eem_fs_out_desc", i1 false, i1 false}
!67 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 69, i32 39}
!68 = !{ptr @eem_hs_in_desc, !69, !"eem_hs_in_desc", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 87, i32 39}
!70 = !{ptr @eem_hs_out_desc, !71, !"eem_hs_out_desc", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 96, i32 39}
!72 = !{ptr @eem_ss_in_desc, !73, !"eem_ss_in_desc", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 115, i32 39}
!74 = !{ptr @eem_ss_out_desc, !75, !"eem_ss_out_desc", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 124, i32 39}
!76 = !{ptr @eem_fs_function, !77, !"eem_fs_function", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 77, i32 38}
!78 = !{ptr @eem_hs_function, !79, !"eem_hs_function", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 105, i32 38}
!80 = !{ptr @eem_ss_function, !81, !"eem_ss_function", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 142, i32 38}
!82 = !{ptr @eem_ss_bulk_comp_desc, !83, !"eem_ss_bulk_comp_desc", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 133, i32 41}
!84 = !{ptr @.str.21, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 640, i32 2}
!86 = !{ptr @.str.22, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @eem_unbind.__UNIQUE_ID_ddebug350, !85, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!88 = !{ptr @.str.23, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 198, i32 3}
!90 = !{ptr @.str.24, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @eem_set_alt.__UNIQUE_ID_ddebug340, !89, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!92 = !{ptr @.str.25, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 202, i32 4}
!94 = !{ptr @eem_set_alt.__UNIQUE_ID_ddebug341, !93, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!95 = !{ptr @.str.26, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 218, i32 3}
!97 = !{ptr @eem_set_alt.__UNIQUE_ID_ddebug342, !96, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!98 = !{ptr @.str.27, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 178, i32 2}
!100 = !{ptr @.str.28, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @eem_setup.__UNIQUE_ID_ddebug339, !99, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!102 = !{ptr @.str.29, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 235, i32 2}
!104 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @eem_disable.__UNIQUE_ID_ddebug343, !103, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!106 = !{ptr @.str.31, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 408, i32 4}
!108 = !{ptr @.str.32, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @eem_unwrap.__UNIQUE_ID_ddebug345, !107, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!110 = !{ptr @.str.33, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 446, i32 6}
!112 = !{ptr @eem_unwrap.__UNIQUE_ID_ddebug346, !111, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!113 = !{ptr @.str.34, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 483, i32 6}
!115 = !{ptr @eem_unwrap.__UNIQUE_ID_ddebug347, !114, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!116 = !{ptr @.str.35, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 526, i32 5}
!118 = !{ptr @eem_unwrap.__UNIQUE_ID_ddebug348, !117, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!119 = !{ptr @.str.36, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/usb/gadget/function/f_eem.c", i32 532, i32 5}
!121 = !{ptr @eem_unwrap.__UNIQUE_ID_ddebug349, !120, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{i8 0, i8 2}
!132 = !{!"auto-init"}
!133 = !{i64 2148706462, i64 2148706467, i64 2148706480, i64 2148706524, i64 2148706558, i64 2148706579}
!134 = !{!"branch_weights", i32 1, i32 2000}
