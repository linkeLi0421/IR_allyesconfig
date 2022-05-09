; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/f_loopback.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_loopback.c"
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
%struct.usb_string = type { i8, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.f_lb_opts = type { %struct.usb_function_instance, i32, i32, %struct.mutex, i32 }
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
%struct.f_loopback = type { %struct.usb_function, ptr, ptr, i32, i32 }
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
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }

@__UNIQUE_ID_alias231 = internal constant [35 x i8] c"usb_f_ss_lb.alias=usbfunc:Loopback\00", section ".modinfo", align 1
@Loopbackusb_func = internal global { %struct.usb_function_driver, [40 x i8] } { %struct.usb_function_driver { ptr @.str, ptr null, %struct.list_head zeroinitializer, ptr @loopback_alloc_instance, ptr @loopback_alloc }, [40 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file232 = internal constant [57 x i8] c"usb_f_ss_lb.file=drivers/usb/gadget/function/usb_f_ss_lb\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [24 x i8] c"usb_f_ss_lb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Loopback\00", [23 x i8] zeroinitializer }, align 32
@loopback_alloc_instance.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&lb_opts->lock\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@lb_func_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @lb_item_ops, ptr null, ptr @lb_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lb_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @lb_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@lb_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @f_lb_opts_attr_qlen, ptr @f_lb_opts_attr_bulk_buflen, ptr null], [20 x i8] zeroinitializer }, align 32
@f_lb_opts_attr_qlen = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.3, ptr null, i16 420, ptr @f_lb_opts_qlen_show, ptr @f_lb_opts_qlen_store }, [44 x i8] zeroinitializer }, align 32
@f_lb_opts_attr_bulk_buflen = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.5, ptr null, i16 420, ptr @f_lb_opts_bulk_buflen_show, ptr @f_lb_opts_bulk_buflen_store }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qlen\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bulk_buflen\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"loopback\00", [23 x i8] zeroinitializer }, align 32
@loopback_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @stringtab_loop, ptr null], [24 x i8] zeroinitializer }, align 32
@loopback_intf = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 2, i8 -1, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@strings_loopback = internal global { [2 x %struct.usb_string], [16 x i8] } { [2 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.17 }, %struct.usb_string zeroinitializer], [16 x i8] zeroinitializer }, align 32
@fs_loop_source_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@loopback_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 191, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: can't autoconfigure on %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"loopback_bind\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/usb/gadget/function/f_loopback.c\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@loopback_bind._entry_ptr = internal global ptr @loopback_bind._entry, section ".printk_index", align 4
@fs_loop_sink_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hs_loop_source_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hs_loop_sink_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_loop_source_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_loop_sink_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@fs_loopback_descs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @loopback_intf, ptr @fs_loop_sink_desc, ptr @fs_loop_source_desc, ptr null], [16 x i8] zeroinitializer }, align 32
@hs_loopback_descs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @loopback_intf, ptr @hs_loop_source_desc, ptr @hs_loop_sink_desc, ptr null], [16 x i8] zeroinitializer }, align 32
@ss_loopback_descs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @loopback_intf, ptr @ss_loop_source_desc, ptr @ss_loop_source_comp_desc, ptr @ss_loop_sink_desc, ptr @ss_loop_sink_comp_desc, ptr null], [40 x i8] zeroinitializer }, align 32
@loopback_bind.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.8, ptr @.str.9, ptr @.str.13, i8 0, i8 54, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb_f_ss_lb\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s speed %s: IN/%s, OUT/%s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"super\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dual\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"loop input to output\00", [43 x i8] zeroinitializer }, align 32
@ss_loop_source_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@ss_loop_sink_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@disable_loopback.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.18, ptr @.str.9, ptr @.str.19, i8 0, i8 75, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"disable_loopback\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s disabled\0A\00", [19 x i8] zeroinitializer }, align 32
@enable_loopback.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.20, ptr @.str.9, ptr @.str.21, i8 0, i8 99, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"enable_loopback\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s enabled\0A\00", [20 x i8] zeroinitializer }, align 32
@alloc_requests._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.9, i32 345, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s queue req --> %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"alloc_requests\00", [17 x i8] zeroinitializer }, align 32
@alloc_requests._entry_ptr = internal global ptr @alloc_requests._entry, section ".printk_index", align 4
@loopback_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.9, i32 269, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to loop back buffer to %s: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"loopback_complete\00", [46 x i8] zeroinitializer }, align 32
@loopback_complete._entry_ptr = internal global ptr @loopback_complete._entry, section ".printk_index", align 4
@loopback_complete._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.9, i32 276, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s loop complete --> %d, %d/%d\0A\00", [32 x i8] zeroinitializer }, align 32
@loopback_complete._entry_ptr.28 = internal global ptr @loopback_complete._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/gadget/u_f.h\00", [39 x i8] zeroinitializer }, align 32
@stringtab_loop = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @strings_loopback }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967193]
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"Loopbackusb_func\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 586, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 576, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 581, i32 57 }
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"lb_func_type\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 555, i32 38 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"lb_item_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 469, i32 40 }
@___asan_gen_.51 = private unnamed_addr constant [9 x i8] c"lb_attrs\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 549, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c"f_lb_opts_attr_qlen\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [27 x i8] c"f_lb_opts_attr_bulk_buflen\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 509, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 479, i32 25 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 547, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 445, i32 24 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"loopback_strings\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 159, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"loopback_intf\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 45, i32 40 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"strings_loopback\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 149, i32 26 }
@___asan_gen_.81 = private unnamed_addr constant [20 x i8] c"fs_loop_source_desc\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 56, i32 39 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 190, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"fs_loop_sink_desc\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 64, i32 39 }
@___asan_gen_.105 = private unnamed_addr constant [20 x i8] c"hs_loop_source_desc\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 81, i32 39 }
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"hs_loop_sink_desc\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 89, i32 39 }
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c"ss_loop_source_desc\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 106, i32 39 }
@___asan_gen_.114 = private unnamed_addr constant [18 x i8] c"ss_loop_sink_desc\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 122, i32 39 }
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"fs_loopback_descs\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 72, i32 38 }
@___asan_gen_.120 = private unnamed_addr constant [18 x i8] c"hs_loopback_descs\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 97, i32 38 }
@___asan_gen_.123 = private unnamed_addr constant [18 x i8] c"ss_loopback_descs\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 138, i32 38 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 214, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 150, i32 10 }
@___asan_gen_.144 = private unnamed_addr constant [25 x i8] c"ss_loop_source_comp_desc\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 114, i32 41 }
@___asan_gen_.147 = private unnamed_addr constant [23 x i8] c"ss_loop_sink_comp_desc\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 130, i32 41 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 302, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 396, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 344, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 268, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 275, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [28 x i8] c"../drivers/usb/gadget/u_f.h\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 80, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [15 x i8] c"stringtab_loop\00", align 1
@___asan_gen_.190 = private constant [44 x i8] c"../drivers/usb/gadget/function/f_loopback.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 154, i32 34 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_alias231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @alloc_requests._entry, ptr @alloc_requests._entry_ptr, ptr @lb_modexit, ptr @loopback_bind._entry, ptr @loopback_bind._entry_ptr, ptr @loopback_complete._entry, ptr @loopback_complete._entry.26, ptr @loopback_complete._entry_ptr, ptr @loopback_complete._entry_ptr.28, ptr @Loopbackusb_func, ptr @.str, ptr @loopback_alloc_instance.__key, ptr @.str.1, ptr @.str.2, ptr @lb_func_type, ptr @lb_item_ops, ptr @lb_attrs, ptr @f_lb_opts_attr_qlen, ptr @f_lb_opts_attr_bulk_buflen, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @loopback_strings, ptr @loopback_intf, ptr @strings_loopback, ptr @fs_loop_source_desc, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @fs_loop_sink_desc, ptr @hs_loop_source_desc, ptr @hs_loop_sink_desc, ptr @ss_loop_source_desc, ptr @ss_loop_sink_desc, ptr @fs_loopback_descs, ptr @hs_loopback_descs, ptr @ss_loopback_descs, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @ss_loop_source_comp_desc, ptr @ss_loop_sink_comp_desc, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @stringtab_loop], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Loopbackusb_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_alloc_instance.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lb_func_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lb_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lb_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_lb_opts_attr_qlen to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_lb_opts_attr_bulk_buflen to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_intf to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strings_loopback to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_loop_source_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_loop_sink_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_loop_source_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_loop_sink_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_loop_source_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_loop_sink_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_loopback_descs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_loopback_descs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_loopback_descs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_loop_source_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_loop_sink_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_requests._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loopback_complete._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stringtab_loop to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lb_modinit() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_function_register(ptr noundef nonnull @Loopbackusb_func) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @lb_modexit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_function_unregister(ptr noundef nonnull @Loopbackusb_func) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @loopback_alloc_instance() #2 align 64 {
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
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.f_lb_opts, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @loopback_alloc_instance.__key) #7
  %free_func_inst = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %free_func_inst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @lb_free_instance, ptr %free_func_inst, align 8
  %bulk_buflen = getelementptr inbounds %struct.f_lb_opts, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %bulk_buflen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %bulk_buflen, align 4
  %qlen = getelementptr inbounds %struct.f_lb_opts, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %qlen, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @lb_func_type) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %do.body ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @loopback_alloc(ptr noundef %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 124) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.f_lb_opts, ptr %fi, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %refcnt = getelementptr inbounds %struct.f_lb_opts, ptr %fi, i32 0, i32 4
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %refcnt, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %bulk_buflen = getelementptr inbounds %struct.f_lb_opts, ptr %fi, i32 0, i32 1
  %3 = ptrtoint ptr %bulk_buflen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bulk_buflen, align 4
  %buflen = getelementptr inbounds %struct.f_loopback, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %buflen, align 8
  %qlen = getelementptr inbounds %struct.f_lb_opts, ptr %fi, i32 0, i32 2
  %6 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen, align 4
  %qlen3 = getelementptr inbounds %struct.f_loopback, ptr %call7.i.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  %spec.select = select i1 %tobool5.not, i32 32, i32 %7
  %8 = ptrtoint ptr %qlen3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %qlen3, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.6, ptr %call7.i.i, align 8
  %bind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @loopback_bind, ptr %bind, align 4
  %set_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 13
  %11 = ptrtoint ptr %set_alt to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @loopback_set_alt, ptr %set_alt, align 4
  %disable = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 15
  %12 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @loopback_disable, ptr %disable, align 4
  %strings = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %strings to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @loopback_strings, ptr %strings, align 4
  %free_func = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 11
  %14 = ptrtoint ptr %free_func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @lb_free_func, ptr %free_func, align 4
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
define internal void @lb_free_instance(ptr noundef %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %fi) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lb_attr_release(ptr noundef %item) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_put_function_instance(ptr noundef %item) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_lb_opts_qlen_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_lb_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %qlen = getelementptr inbounds %struct.f_lb_opts, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_lb_opts_qlen_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #7
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !108
  %lock = getelementptr inbounds %struct.f_lb_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %refcnt = getelementptr inbounds %struct.f_lb_opts, ptr %item, i32 0, i32 4
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %qlen = getelementptr inbounds %struct.f_lb_opts, ptr %item, i32 0, i32 2
  %5 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %qlen, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_lb_opts_bulk_buflen_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_lb_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %bulk_buflen = getelementptr inbounds %struct.f_lb_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %bulk_buflen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bulk_buflen, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_lb_opts_bulk_buflen_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #7
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !108
  %lock = getelementptr inbounds %struct.f_lb_opts, ptr %item, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %refcnt = getelementptr inbounds %struct.f_lb_opts, ptr %item, i32 0, i32 4
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %bulk_buflen = getelementptr inbounds %struct.f_lb_opts, ptr %item, i32 0, i32 1
  %5 = ptrtoint ptr %bulk_buflen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %bulk_buflen, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_bind(ptr noundef %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev1, align 4
  %call2 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %call2 to i8
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @loopback_intf, i32 0, i32 2), align 1
  %call3 = tail call i32 @usb_string_id(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %conv8 = trunc i32 %call3 to i8
  store i8 %conv8, ptr @strings_loopback, align 4
  store i8 %conv8, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @loopback_intf, i32 0, i32 8), align 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call10 = tail call ptr @usb_ep_autoconfig(ptr noundef %3, ptr noundef nonnull @fs_loop_source_desc) #7
  %in_ep = getelementptr inbounds %struct.f_loopback, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %in_ep to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %in_ep, align 4
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %if.end7.do.end_crit_edge, label %if.end16

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end16.do.end_crit_edge, %if.end7.do.end_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f, align 4
  %name15 = getelementptr inbounds %struct.usb_gadget, ptr %6, i32 0, i32 10
  %9 = ptrtoint ptr %name15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %8, ptr noundef %10) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call18 = tail call ptr @usb_ep_autoconfig(ptr noundef %12, ptr noundef nonnull @fs_loop_sink_desc) #7
  %out_ep = getelementptr inbounds %struct.f_loopback, ptr %f, i32 0, i32 2
  %13 = ptrtoint ptr %out_ep to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call18, ptr %out_ep, align 4
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %if.end16.do.end_crit_edge, label %if.end22

if.end16.do.end_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end22:                                         ; preds = %if.end16
  %14 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_loop_source_desc, i32 0, i32 2), align 1
  store i8 %14, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_loop_source_desc, i32 0, i32 2), align 1
  %15 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_loop_sink_desc, i32 0, i32 2), align 1
  store i8 %15, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_loop_sink_desc, i32 0, i32 2), align 1
  store i8 %14, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_loop_source_desc, i32 0, i32 2), align 1
  store i8 %15, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_loop_sink_desc, i32 0, i32 2), align 1
  %call23 = tail call i32 @usb_assign_descriptors(ptr noundef %f, ptr noundef nonnull @fs_loopback_descs, ptr noundef nonnull @hs_loopback_descs, ptr noundef nonnull @ss_loopback_descs, ptr noundef nonnull @ss_loopback_descs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %do.body27, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @loopback_bind.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@loopback_bind, %cleanup)) #7
          to label %if.then33 [label %cleanup], !srcloc !109

if.then33:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %dev35 = getelementptr inbounds %struct.usb_gadget, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cdev1, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %max_speed.i = getelementptr inbounds %struct.usb_gadget, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %23)
  %cmp.i = icmp ult i32 %23, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp.i81 = icmp ult i32 %23, 3
  %cond = select i1 %cmp.i81, ptr @.str.16, ptr @.str.15
  %cond44 = select i1 %cmp.i, ptr %cond, ptr @.str.14
  %24 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %f, align 4
  %26 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %in_ep, align 4
  %name47 = getelementptr inbounds %struct.usb_ep, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %name47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name47, align 4
  %30 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %out_ep, align 4
  %name49 = getelementptr inbounds %struct.usb_ep, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %name49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name49, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @loopback_bind.__UNIQUE_ID_ddebug228, ptr noundef %dev35, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond44, ptr noundef %25, ptr noundef %29, ptr noundef %33) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %do.body27, %if.end22.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %call2, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ 0, %if.then33 ], [ 0, %do.body27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @loopback_set_alt(ptr noundef %f, i32 noundef %intf, i32 noundef %alt) #2 align 64 {
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
  %in_ep.i = getelementptr inbounds %struct.f_loopback, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %in_ep.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_ep.i, align 4
  %out_ep.i = getelementptr inbounds %struct.f_loopback, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %out_ep.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out_ep.i, align 4
  tail call void @disable_endpoints(ptr noundef %3, ptr noundef %5, ptr noundef %7, ptr noundef null, ptr noundef null) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @disable_loopback.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@loopback_set_alt, %disable_loopback.exit)) #7
          to label %if.then.i [label %disable_loopback.exit], !srcloc !109

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @disable_loopback.__UNIQUE_ID_ddebug229, ptr noundef %dev.i, ptr noundef nonnull @.str.19, ptr noundef %11) #7
  br label %disable_loopback.exit

disable_loopback.exit:                            ; preds = %if.then.i, %entry
  %call2 = tail call fastcc i32 @enable_loopback(ptr noundef %3, ptr noundef %f)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @loopback_disable(ptr nocapture noundef readonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %config.i = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config.i, align 4
  %cdev1.i = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1.i, align 4
  %in_ep.i = getelementptr inbounds %struct.f_loopback, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %in_ep.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_ep.i, align 4
  %out_ep.i = getelementptr inbounds %struct.f_loopback, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %out_ep.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out_ep.i, align 4
  tail call void @disable_endpoints(ptr noundef %3, ptr noundef %5, ptr noundef %7, ptr noundef null, ptr noundef null) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @disable_loopback.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@loopback_disable, %disable_loopback.exit)) #7
          to label %if.then.i [label %disable_loopback.exit], !srcloc !109

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @disable_loopback.__UNIQUE_ID_ddebug229, ptr noundef %dev.i, ptr noundef nonnull @.str.19, ptr noundef %11) #7
  br label %disable_loopback.exit

disable_loopback.exit:                            ; preds = %if.then.i, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lb_free_func(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi, align 4
  %lock = getelementptr inbounds %struct.f_lb_opts, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %refcnt = getelementptr inbounds %struct.f_lb_opts, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcnt, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #7
  tail call void @usb_free_all_descriptors(ptr noundef %f) #7
  tail call void @kfree(ptr noundef %f) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enable_loopback(ptr nocapture noundef readonly %cdev, ptr noundef %loop) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %in_ep = getelementptr inbounds %struct.f_loopback, ptr %loop, i32 0, i32 1
  %0 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_ep, align 4
  %2 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev, align 4
  %call.i = tail call i32 @config_ep_by_speed(ptr noundef %3, ptr noundef %loop, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @usb_ep_enable(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %loop, ptr %1, align 4
  %out_ep = getelementptr inbounds %struct.f_loopback, ptr %loop, i32 0, i32 2
  %5 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %out_ep, align 4
  %7 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cdev, align 4
  %call.i33 = tail call i32 @config_ep_by_speed(ptr noundef %8, ptr noundef %loop, ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool.not.i34 = icmp eq i32 %call.i33, 0
  br i1 %tobool.not.i34, label %if.end.i37, label %if.end.disable_in_crit_edge

if.end.disable_in_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_in

if.end.i37:                                       ; preds = %if.end
  %call1.i35 = tail call i32 @usb_ep_enable(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35)
  %cmp.i36 = icmp slt i32 %call1.i35, 0
  br i1 %cmp.i36, label %if.end.i37.disable_in_crit_edge, label %if.end4

if.end.i37.disable_in_crit_edge:                  ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_in

if.end4:                                          ; preds = %if.end.i37
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %loop, ptr %6, align 4
  %qlen.i = getelementptr inbounds %struct.f_loopback, ptr %loop, i32 0, i32 3
  %10 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp49.not.i = icmp eq i32 %11, 0
  br i1 %cmp49.not.i, label %if.end4.do.body_crit_edge, label %for.body.lr.ph.i

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.lr.ph.i:                                 ; preds = %if.end4
  %buflen.i = getelementptr inbounds %struct.f_loopback, ptr %loop, i32 0, i32 4
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end5.i
  %inc.i = add nuw i32 %i.050.i, 1
  %12 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i, align 4
  %cmp.i41 = icmp ult i32 %inc.i, %13
  br i1 %cmp.i41, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.do.body_crit_edge

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.050.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %in_ep, align 4
  %call.i42 = tail call ptr @usb_ep_alloc_request(ptr noundef %15, i32 noundef 2592) #7
  %tobool.not.i43 = icmp eq ptr %call.i42, null
  br i1 %tobool.not.i43, label %for.body.i.disable_out_crit_edge, label %if.end.i44

for.body.i.disable_out_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_out

if.end.i44:                                       ; preds = %for.body.i
  %16 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %out_ep, align 4
  %18 = ptrtoint ptr %buflen.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buflen.i, align 4
  %call.i.i = tail call ptr @alloc_ep_req(ptr noundef %17, i32 noundef %19) #7
  %tobool3.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i, label %if.end.i44.fail_in.i_crit_edge, label %if.end5.i

if.end.i44.fail_in.i_crit_edge:                   ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_in.i

if.end5.i:                                        ; preds = %if.end.i44
  %complete.i = getelementptr inbounds %struct.usb_request, ptr %call.i42, i32 0, i32 7
  %20 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @loopback_complete, ptr %complete.i, align 4
  %complete6.i = getelementptr inbounds %struct.usb_request, ptr %call.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %complete6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @loopback_complete, ptr %complete6.i, align 4
  %22 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i.i, align 4
  %24 = ptrtoint ptr %call.i42 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %call.i42, align 4
  %context.i = getelementptr inbounds %struct.usb_request, ptr %call.i42, i32 0, i32 8
  %25 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i, ptr %context.i, align 4
  %context8.i = getelementptr inbounds %struct.usb_request, ptr %call.i.i, i32 0, i32 8
  %26 = ptrtoint ptr %context8.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i42, ptr %context8.i, align 4
  %27 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %out_ep, align 4
  %call10.i = tail call i32 @usb_ep_queue(ptr noundef %28, ptr noundef nonnull %call.i.i, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %for.cond.i, label %do.end.i

do.end.i:                                         ; preds = %if.end5.i
  %29 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cdev, align 4
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %out_ep, align 4
  %name.i = getelementptr inbounds %struct.usb_ep, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.22, ptr noundef %34, i32 noundef %call10.i) #11
  %35 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %out_ep, align 4
  %37 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i.i, align 4
  %cmp.i.i = icmp eq ptr %38, null
  br i1 %cmp.i.i, label %do.end.i.i, label %do.end.i.free_ep_req.exit.i_crit_edge, !prof !110

do.end.i.free_ep_req.exit.i_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_ep_req.exit.i

do.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 80, i32 noundef 9, ptr noundef null) #7
  br label %free_ep_req.exit.i

free_ep_req.exit.i:                               ; preds = %do.end.i.i, %do.end.i.free_ep_req.exit.i_crit_edge
  %39 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i.i, align 4
  tail call void @kfree(ptr noundef %40) #7
  %41 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %call.i.i, align 4
  tail call void @usb_ep_free_request(ptr noundef %36, ptr noundef nonnull %call.i.i) #7
  br label %fail_in.i

fail_in.i:                                        ; preds = %free_ep_req.exit.i, %if.end.i44.fail_in.i_crit_edge
  %result.1.i = phi i32 [ %call10.i, %free_ep_req.exit.i ], [ -12, %if.end.i44.fail_in.i_crit_edge ]
  %42 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %in_ep, align 4
  tail call void @usb_ep_free_request(ptr noundef %43, ptr noundef nonnull %call.i42) #7
  br label %disable_out

do.body:                                          ; preds = %for.cond.i.do.body_crit_edge, %if.end4.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enable_loopback.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@enable_loopback, %cleanup)) #7
          to label %if.then14 [label %cleanup], !srcloc !109

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cdev, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %loop to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %loop, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @enable_loopback.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef %47) #7
  br label %cleanup

disable_out:                                      ; preds = %fail_in.i, %for.body.i.disable_out_crit_edge
  %retval.0.i45 = phi i32 [ %result.1.i, %fail_in.i ], [ -12, %for.body.i.disable_out_crit_edge ]
  %48 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %out_ep, align 4
  %call17 = tail call i32 @usb_ep_disable(ptr noundef %49) #7
  br label %disable_in

disable_in:                                       ; preds = %disable_out, %if.end.i37.disable_in_crit_edge, %if.end.disable_in_crit_edge
  %result.0 = phi i32 [ %retval.0.i45, %disable_out ], [ %call1.i35, %if.end.i37.disable_in_crit_edge ], [ %call.i33, %if.end.disable_in_crit_edge ]
  %50 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %in_ep, align 4
  %call19 = tail call i32 @usb_ep_disable(ptr noundef %51) #7
  br label %cleanup

cleanup:                                          ; preds = %disable_in, %if.then14, %do.body, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then14 ], [ %result.0, %disable_in ], [ %call1.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_endpoints(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @loopback_complete(ptr noundef %ep, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %status2 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %6 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status2, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.end14 [
    i32 0, label %sw.bb
    i32 -103, label %entry.free_req_crit_edge
    i32 -104, label %entry.free_req_crit_edge58
    i32 -108, label %entry.free_req_crit_edge59
  ]

entry.free_req_crit_edge59:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_req

entry.free_req_crit_edge58:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_req

entry.free_req_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_req

sw.bb:                                            ; preds = %entry
  %out_ep = getelementptr inbounds %struct.f_loopback, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %out_ep, align 4
  %cmp = icmp eq ptr %10, %ep
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %11 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %context, align 4
  br i1 %cmp, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %13 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp3 = icmp ult i32 %14, %16
  %zero = getelementptr inbounds %struct.usb_request, ptr %12, i32 0, i32 6
  %17 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load = load i32, ptr %zero, align 4
  %bf.shl = select i1 %cmp3, i32 8192, i32 0
  %bf.clear = and i32 %bf.load, -8193
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %zero, align 4
  %18 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %actual, align 4
  %length5 = getelementptr inbounds %struct.usb_request, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %length5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %length5, align 4
  %in_ep = getelementptr inbounds %struct.f_loopback, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %in_ep, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %ep.addr.0 = phi ptr [ %22, %if.then ], [ %10, %sw.bb.if.end_crit_edge ]
  %call = tail call i32 @usb_ep_queue(ptr noundef %ep.addr.0, ptr noundef %12, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp eq i32 %call, 0
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %24, i32 0, i32 11
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep.addr.0, i32 0, i32 1
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef %26, i32 noundef %call) #11
  br label %free_req

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  %dev16 = getelementptr inbounds %struct.usb_gadget, ptr %28, i32 0, i32 11
  %name17 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %29 = ptrtoint ptr %name17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name17, align 4
  %actual18 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %31 = ptrtoint ptr %actual18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %actual18, align 4
  %length19 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %33 = ptrtoint ptr %length19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.27, ptr noundef %30, i32 noundef %7, i32 noundef %32, i32 noundef %34) #11
  br label %free_req

free_req:                                         ; preds = %do.end14, %do.end, %entry.free_req_crit_edge, %entry.free_req_crit_edge58, %entry.free_req_crit_edge59
  %req.addr.1 = phi ptr [ %req, %do.end14 ], [ %req, %entry.free_req_crit_edge ], [ %req, %entry.free_req_crit_edge58 ], [ %req, %entry.free_req_crit_edge59 ], [ %12, %do.end ]
  %ep.addr.1 = phi ptr [ %ep, %do.end14 ], [ %ep, %entry.free_req_crit_edge ], [ %ep, %entry.free_req_crit_edge58 ], [ %ep, %entry.free_req_crit_edge59 ], [ %ep.addr.0, %do.end ]
  %in_ep21 = getelementptr inbounds %struct.f_loopback, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %in_ep21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %in_ep21, align 4
  %cmp22 = icmp eq ptr %ep.addr.1, %36
  br i1 %cmp22, label %cond.true, label %free_req.cond.end_crit_edge

free_req.cond.end_crit_edge:                      ; preds = %free_req
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %free_req
  call void @__sanitizer_cov_trace_pc() #9
  %out_ep24 = getelementptr inbounds %struct.f_loopback, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %out_ep24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %out_ep24, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %free_req.cond.end_crit_edge
  %cond = phi ptr [ %38, %cond.true ], [ %36, %free_req.cond.end_crit_edge ]
  %context26 = getelementptr inbounds %struct.usb_request, ptr %req.addr.1, i32 0, i32 8
  %39 = ptrtoint ptr %context26 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %context26, align 4
  tail call void @usb_ep_free_request(ptr noundef %cond, ptr noundef %40) #7
  %41 = ptrtoint ptr %req.addr.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %req.addr.1, align 4
  %cmp.i = icmp eq ptr %42, null
  br i1 %cmp.i, label %do.end.i, label %cond.end.free_ep_req.exit_crit_edge, !prof !110

cond.end.free_ep_req.exit_crit_edge:              ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_ep_req.exit

do.end.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 80, i32 noundef 9, ptr noundef null) #7
  br label %free_ep_req.exit

free_ep_req.exit:                                 ; preds = %do.end.i, %cond.end.free_ep_req.exit_crit_edge
  %43 = ptrtoint ptr %req.addr.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %req.addr.1, align 4
  tail call void @kfree(ptr noundef %44) #7
  %45 = ptrtoint ptr %req.addr.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %req.addr.1, align 4
  tail call void @usb_ep_free_request(ptr noundef %ep.addr.1, ptr noundef %req.addr.1) #7
  br label %cleanup

cleanup:                                          ; preds = %free_ep_req.exit, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_ep_req(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !25, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__UNIQUE_ID_alias231, !1, !"__UNIQUE_ID_alias231", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 586, i32 1}
!2 = !{ptr @__UNIQUE_ID_file232, !3, !"__UNIQUE_ID_file232", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 598, i32 1}
!4 = !{ptr @__UNIQUE_ID_license233, !3, !"__UNIQUE_ID_license233", i1 false, i1 false}
!5 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @Loopbackusb_func, !1, !"Loopbackusb_func", i1 false, i1 false}
!7 = !{ptr @loopback_alloc_instance.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 576, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 581, i32 57}
!12 = !{ptr @lb_func_type, !13, !"lb_func_type", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 555, i32 38}
!14 = !{ptr @lb_item_ops, !15, !"lb_item_ops", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 469, i32 40}
!16 = !{ptr @lb_attrs, !17, !"lb_attrs", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 549, i32 35}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 509, i32 1}
!20 = !{ptr @f_lb_opts_attr_qlen, !19, !"f_lb_opts_attr_qlen", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 479, i32 25}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 547, i32 1}
!25 = !{ptr @f_lb_opts_attr_bulk_buflen, !24, !"f_lb_opts_attr_bulk_buflen", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 445, i32 24}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 190, i32 3}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @loopback_bind._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @loopback_bind._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 214, i32 2}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @loopback_bind.__UNIQUE_ID_ddebug228, !37, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!40 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @loopback_intf, !44, !"loopback_intf", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 45, i32 40}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 150, i32 10}
!47 = !{ptr @strings_loopback, !48, !"strings_loopback", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 149, i32 26}
!49 = !{ptr @fs_loop_source_desc, !50, !"fs_loop_source_desc", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 56, i32 39}
!51 = !{ptr @fs_loop_sink_desc, !52, !"fs_loop_sink_desc", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 64, i32 39}
!53 = !{ptr @hs_loop_source_desc, !54, !"hs_loop_source_desc", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 81, i32 39}
!55 = !{ptr @hs_loop_sink_desc, !56, !"hs_loop_sink_desc", i1 false, i1 false}
!56 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 89, i32 39}
!57 = !{ptr @ss_loop_source_desc, !58, !"ss_loop_source_desc", i1 false, i1 false}
!58 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 106, i32 39}
!59 = !{ptr @ss_loop_sink_desc, !60, !"ss_loop_sink_desc", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 122, i32 39}
!61 = !{ptr @fs_loopback_descs, !62, !"fs_loopback_descs", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 72, i32 38}
!63 = !{ptr @hs_loopback_descs, !64, !"hs_loopback_descs", i1 false, i1 false}
!64 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 97, i32 38}
!65 = !{ptr @ss_loopback_descs, !66, !"ss_loopback_descs", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 138, i32 38}
!67 = !{ptr @ss_loop_source_comp_desc, !68, !"ss_loop_source_comp_desc", i1 false, i1 false}
!68 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 114, i32 41}
!69 = !{ptr @ss_loop_sink_comp_desc, !70, !"ss_loop_sink_comp_desc", i1 false, i1 false}
!70 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 130, i32 41}
!71 = !{ptr @.str.18, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 302, i32 2}
!73 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @disable_loopback.__UNIQUE_ID_ddebug229, !72, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!75 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 396, i32 2}
!77 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @enable_loopback.__UNIQUE_ID_ddebug230, !76, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 344, i32 4}
!81 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @alloc_requests._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @alloc_requests._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 268, i32 4}
!86 = !{ptr @.str.25, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @loopback_complete._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @loopback_complete._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 275, i32 3}
!91 = !{ptr @loopback_complete._entry.26, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @loopback_complete._entry_ptr.28, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/gadget/u_f.h", i32 80, i32 2}
!95 = !{ptr @loopback_strings, !96, !"loopback_strings", i1 false, i1 false}
!96 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 159, i32 35}
!97 = !{ptr @stringtab_loop, !98, !"stringtab_loop", i1 false, i1 false}
!98 = !{!"../drivers/usb/gadget/function/f_loopback.c", i32 154, i32 34}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{!"auto-init"}
!109 = !{i64 2148213686, i64 2148213691, i64 2148213704, i64 2148213748, i64 2148213782, i64 2148213803}
!110 = !{!"branch_weights", i32 1, i32 2000}
