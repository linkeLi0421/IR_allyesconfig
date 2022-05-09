; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/f_hid.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_hid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_function_driver = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.hid_descriptor = type <{ i8, i8, i16, i8, i8, [1 x %struct.hid_class_descriptor] }>
%struct.hid_class_descriptor = type <{ i8, i16 }>
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.f_hid_opts = type { %struct.usb_function_instance, i32, i8, i8, i8, i16, i16, ptr, i8, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.f_hidg = type { i8, i8, i8, i8, i16, ptr, i16, i8, %struct.spinlock, %struct.wait_queue_head, %struct.list_head, i32, ptr, i32, %struct.spinlock, i8, %struct.wait_queue_head, ptr, i32, %struct.cdev, %struct.usb_function, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }
%struct.f_hidg_req_list = type { ptr, i32, %struct.list_head }

@__UNIQUE_ID_alias256 = internal constant [28 x i8] c"usb_f_hid.alias=usbfunc:hid\00", section ".modinfo", align 1
@hidusb_func = internal global { %struct.usb_function_driver, [40 x i8] } { %struct.usb_function_driver { ptr @.str.1, ptr null, %struct.list_head zeroinitializer, ptr @hidg_alloc_inst, ptr @hidg_alloc }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_usb_f_hid__257_1313_hidmod_init6 = internal global ptr @hidmod_init, section ".initcall6.init", align 4
@__exitcall_hidmod_exit = internal global ptr @hidmod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file258 = internal constant [53 x i8] c"usb_f_hid.file=drivers/usb/gadget/function/usb_f_hid\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [22 x i8] c"usb_f_hid.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author260 = internal constant [33 x i8] c"usb_f_hid.author=Fabien Chouteau\00", section ".modinfo", align 1
@ghid_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hidg\00", [27 x i8] zeroinitializer }, align 32
@hidg_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@minors = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hid\00", [28 x i8] zeroinitializer }, align 32
@hidg_alloc_inst.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&opts->lock\00", [20 x i8] zeroinitializer }, align 32
@hidg_ida_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @hidg_ida_lock, i64 52), ptr getelementptr (i8, ptr @hidg_ida_lock, i64 52) }, ptr @hidg_ida_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@hidg_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@hid_func_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @hidg_item_ops, ptr null, ptr @hid_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hidg_ida_lock.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hidg_ida_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hidg_ida.xa_lock\00", [47 x i8] zeroinitializer }, align 32
@hidg_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @hid_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@hid_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @f_hid_opts_attr_subclass, ptr @f_hid_opts_attr_protocol, ptr @f_hid_opts_attr_no_out_endpoint, ptr @f_hid_opts_attr_report_length, ptr @f_hid_opts_attr_report_desc, ptr @f_hid_opts_attr_dev, ptr null], [36 x i8] zeroinitializer }, align 32
@f_hid_opts_attr_subclass = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.7, ptr null, i16 420, ptr @f_hid_opts_subclass_show, ptr @f_hid_opts_subclass_store }, [44 x i8] zeroinitializer }, align 32
@f_hid_opts_attr_protocol = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.9, ptr null, i16 420, ptr @f_hid_opts_protocol_show, ptr @f_hid_opts_protocol_store }, [44 x i8] zeroinitializer }, align 32
@f_hid_opts_attr_no_out_endpoint = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.10, ptr null, i16 420, ptr @f_hid_opts_no_out_endpoint_show, ptr @f_hid_opts_no_out_endpoint_store }, [44 x i8] zeroinitializer }, align 32
@f_hid_opts_attr_report_length = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.11, ptr null, i16 420, ptr @f_hid_opts_report_length_show, ptr @f_hid_opts_report_length_store }, [44 x i8] zeroinitializer }, align 32
@f_hid_opts_attr_report_desc = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.12, ptr null, i16 420, ptr @f_hid_opts_report_desc_show, ptr @f_hid_opts_report_desc_store }, [44 x i8] zeroinitializer }, align 32
@f_hid_opts_attr_dev = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.13, ptr null, i16 292, ptr @f_hid_opts_dev_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"subclass\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"protocol\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no_out_endpoint\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"report_length\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"report_desc\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d:%d\0A\00", [25 x i8] zeroinitializer }, align 32
@ct_func_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ct_func_string_table, ptr null], [24 x i8] zeroinitializer }, align 32
@hidg_interface_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@hidg_fs_in_ep_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 0, i8 10, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hidg_fs_out_ep_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 3, i16 0, i8 10, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hidg_ss_in_ep_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 0, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hidg_ss_in_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@hidg_hs_in_ep_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 0, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hidg_ss_out_ep_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 3, i16 0, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hidg_ss_out_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@hidg_hs_out_ep_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 3, i16 0, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hidg_desc = internal global { %struct.hid_descriptor, [23 x i8] } { %struct.hid_descriptor <{ i8 9, i8 33, i16 257, i8 0, i8 1, [1 x %struct.hid_class_descriptor] zeroinitializer }>, [23 x i8] zeroinitializer }, align 32
@hidg_fs_descriptors_intout = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @hidg_interface_desc, ptr @hidg_desc, ptr @hidg_fs_in_ep_desc, ptr @hidg_fs_out_ep_desc, ptr null], [44 x i8] zeroinitializer }, align 32
@hidg_hs_descriptors_intout = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @hidg_interface_desc, ptr @hidg_desc, ptr @hidg_hs_in_ep_desc, ptr @hidg_hs_out_ep_desc, ptr null], [44 x i8] zeroinitializer }, align 32
@hidg_ss_descriptors_intout = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @hidg_interface_desc, ptr @hidg_desc, ptr @hidg_ss_in_ep_desc, ptr @hidg_ss_in_comp_desc, ptr @hidg_ss_out_ep_desc, ptr @hidg_ss_out_comp_desc, ptr null], [36 x i8] zeroinitializer }, align 32
@hidg_fs_descriptors_ssreport = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @hidg_interface_desc, ptr @hidg_desc, ptr @hidg_fs_in_ep_desc, ptr null], [16 x i8] zeroinitializer }, align 32
@hidg_hs_descriptors_ssreport = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @hidg_interface_desc, ptr @hidg_desc, ptr @hidg_hs_in_ep_desc, ptr null], [16 x i8] zeroinitializer }, align 32
@hidg_ss_descriptors_ssreport = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @hidg_interface_desc, ptr @hidg_desc, ptr @hidg_ss_in_ep_desc, ptr @hidg_ss_in_comp_desc, ptr null], [44 x i8] zeroinitializer }, align 32
@hidg_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&hidg->write_spinlock\00", [42 x i8] zeroinitializer }, align 32
@hidg_bind.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&hidg->read_spinlock\00", [43 x i8] zeroinitializer }, align 32
@hidg_bind.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&hidg->write_queue\00", [45 x i8] zeroinitializer }, align 32
@hidg_bind.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&hidg->read_queue\00", [46 x i8] zeroinitializer }, align 32
@f_hidg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @f_hidg_read, ptr @f_hidg_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @f_hidg_poll, ptr null, ptr null, ptr null, i32 0, ptr @f_hidg_open, ptr null, ptr @f_hidg_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@hidg_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.25, i32 1020, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hidg_bind FAILED\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hidg_bind\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/usb/gadget/function/f_hid.c\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hidg_bind._entry_ptr = internal global ptr @hidg_bind._entry, section ".printk_index", align 4
@ct_func_string_table = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @ct_func_string_defs }, [24 x i8] zeroinitializer }, align 32
@ct_func_string_defs = internal global { [2 x %struct.usb_string], [16 x i8] } { [2 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.28 }, %struct.usb_string zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HID Interface\00", [18 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@f_hidg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.25, i32 458, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hidg->req is NULL\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"f_hidg_write\00", [19 x i8] zeroinitializer }, align 32
@f_hidg_write._entry_ptr = internal global ptr @f_hidg_write._entry, section ".printk_index", align 4
@f_hidg_write._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.25, i32 466, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"copy_from_user error\0A\00", [42 x i8] zeroinitializer }, align 32
@f_hidg_write._entry_ptr.36 = internal global ptr @f_hidg_write._entry.34, section ".printk_index", align 4
@f_hidg_write._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.25, i32 492, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"in_ep is disabled\0A\00", [45 x i8] zeroinitializer }, align 32
@f_hidg_write._entry_ptr.39 = internal global ptr @f_hidg_write._entry.37, section ".printk_index", align 4
@f_hidg_req_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.25, i32 412, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"End Point Request ERROR: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"f_hidg_req_complete\00", [44 x i8] zeroinitializer }, align 32
@f_hidg_req_complete._entry_ptr = internal global ptr @f_hidg_req_complete._entry, section ".printk_index", align 4
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/gadget/u_f.h\00", [39 x i8] zeroinitializer }, align 32
@hidg_set_alt.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.44, ptr @.str.25, ptr @.str.45, i8 0, i8 -56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb_f_hid\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hidg_set_alt\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hidg_set_alt intf:%d alt:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@hidg_set_alt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.25, i32 810, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"config_ep_by_speed FAILED!\0A\00", [36 x i8] zeroinitializer }, align 32
@hidg_set_alt._entry_ptr = internal global ptr @hidg_set_alt._entry, section ".printk_index", align 4
@hidg_set_alt._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.44, ptr @.str.25, i32 815, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Enable IN endpoint FAILED!\0A\00", [36 x i8] zeroinitializer }, align 32
@hidg_set_alt._entry_ptr.49 = internal global ptr @hidg_set_alt._entry.47, section ".printk_index", align 4
@hidg_set_alt._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.25, i32 834, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@hidg_set_alt._entry_ptr.51 = internal global ptr @hidg_set_alt._entry.50, section ".printk_index", align 4
@hidg_set_alt._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.44, ptr @.str.25, i32 839, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Enable OUT endpoint FAILED!\0A\00", [35 x i8] zeroinitializer }, align 32
@hidg_set_alt._entry_ptr.54 = internal global ptr @hidg_set_alt._entry.52, section ".printk_index", align 4
@hidg_set_alt._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.44, ptr @.str.25, i32 858, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s queue req --> %d\0A\00", [43 x i8] zeroinitializer }, align 32
@hidg_set_alt._entry_ptr.57 = internal global ptr @hidg_set_alt._entry.55, section ".printk_index", align 4
@hidg_intout_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.25, i32 576, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to allocate mem for req_list\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hidg_intout_complete\00", [43 x i8] zeroinitializer }, align 32
@hidg_intout_complete._entry_ptr = internal global ptr @hidg_intout_complete._entry, section ".printk_index", align 4
@hidg_intout_complete._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.25, i32 589, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Set report failed %d\0A\00", [42 x i8] zeroinitializer }, align 32
@hidg_intout_complete._entry_ptr.62 = internal global ptr @hidg_intout_complete._entry.60, section ".printk_index", align 4
@hidg_setup.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.63, ptr @.str.25, ptr @.str.64, i8 0, i8 -95, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hidg_setup\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s crtl_request : bRequestType:0x%x bRequest:0x%x Value:0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@hidg_setup.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.63, ptr @.str.25, ptr @.str.65, i8 0, i8 -94, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"get_report\0A\00", [20 x i8] zeroinitializer }, align 32
@hidg_setup.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.63, ptr @.str.25, ptr @.str.66, i8 0, i8 -91, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get_protocol\0A\00", [18 x i8] zeroinitializer }, align 32
@hidg_setup.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.63, ptr @.str.25, ptr @.str.67, i8 0, i8 -89, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"get_idle\0A\00", [22 x i8] zeroinitializer }, align 32
@hidg_setup.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.63, ptr @.str.25, ptr @.str.68, i8 0, i8 -87, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set_report | wLength=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@hidg_setup.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.63, ptr @.str.25, ptr @.str.69, i8 0, i8 -85, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set_protocol\0A\00", [18 x i8] zeroinitializer }, align 32
@hidg_setup.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.63, ptr @.str.25, ptr @.str.70, i8 0, i8 -80, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"set_idle\0A\00", [22 x i8] zeroinitializer }, align 32
@hidg_setup.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.63, ptr @.str.25, ptr @.str.71, i8 0, i8 -77, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"USB_REQ_GET_DESCRIPTOR: HID\0A\00", [35 x i8] zeroinitializer }, align 32
@hidg_setup.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.63, ptr @.str.25, ptr @.str.72, i8 0, i8 -74, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"USB_REQ_GET_DESCRIPTOR: REPORT\0A\00", [32 x i8] zeroinitializer }, align 32
@hidg_setup.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.63, ptr @.str.25, ptr @.str.73, i8 0, i8 -72, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unknown descriptor request 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@hidg_setup.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.63, ptr @.str.25, ptr @.str.74, i8 0, i8 -70, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown request 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@hidg_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.63, ptr @.str.25, i32 759, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"usb_ep_queue error on ep0 %d\0A\00", [34 x i8] zeroinitializer }, align 32
@hidg_setup._entry_ptr = internal global ptr @hidg_setup._entry, section ".printk_index", align 4
@hidg_ssreport_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.25, i32 610, ptr @.str.26, ptr @.str.27 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s FAILED: status=%d, buf=%p, actual=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hidg_ssreport_complete\00", [41 x i8] zeroinitializer }, align 32
@hidg_ssreport_complete._entry_ptr = internal global ptr @hidg_ssreport_complete._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 16, i64 8457, i64 8458, i64 8459, i64 33030, i64 41217, i64 41218, i64 41219]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 8, i64 33, i64 34]
@__sancov_gen_cov_switch_values.79 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967193]
@___asan_gen_.80 = private unnamed_addr constant [12 x i8] c"hidusb_func\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 1322, i32 15 }
@___asan_gen_.89 = private unnamed_addr constant [11 x i8] c"hidg_class\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 26, i32 22 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 25, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"minors\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 25, i32 19 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 1313, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 1210, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"hidg_ida_lock\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [9 x i8] c"hidg_ida\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 1233, i32 54 }
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"hid_func_type\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 1170, i32 38 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 28, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 27, i32 8 }
@___asan_gen_.128 = private unnamed_addr constant [14 x i8] c"hidg_item_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 1053, i32 40 }
@___asan_gen_.131 = private unnamed_addr constant [10 x i8] c"hid_attrs\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 1160, i32 35 }
@___asan_gen_.134 = private unnamed_addr constant [25 x i8] c"f_hid_opts_attr_subclass\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [25 x i8] c"f_hid_opts_attr_protocol\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [32 x i8] c"f_hid_opts_attr_no_out_endpoint\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [30 x i8] c"f_hid_opts_attr_report_length\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [28 x i8] c"f_hid_opts_attr_report_desc\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [20 x i8] c"f_hid_opts_attr_dev\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 1101, i32 1 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 1102, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 1103, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 1104, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 1149, i32 1 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 1158, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 1155, i32 23 }
@___asan_gen_.176 = private unnamed_addr constant [16 x i8] c"ct_func_strings\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 271, i32 35 }
@___asan_gen_.179 = private unnamed_addr constant [20 x i8] c"hidg_interface_desc\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 90, i32 40 }
@___asan_gen_.182 = private unnamed_addr constant [19 x i8] c"hidg_fs_in_ep_desc\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 217, i32 39 }
@___asan_gen_.185 = private unnamed_addr constant [20 x i8] c"hidg_fs_out_ep_desc\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 229, i32 39 }
@___asan_gen_.188 = private unnamed_addr constant [19 x i8] c"hidg_ss_in_ep_desc\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 114, i32 39 }
@___asan_gen_.191 = private unnamed_addr constant [21 x i8] c"hidg_ss_in_comp_desc\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 126, i32 41 }
@___asan_gen_.194 = private unnamed_addr constant [19 x i8] c"hidg_hs_in_ep_desc\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 176, i32 39 }
@___asan_gen_.197 = private unnamed_addr constant [20 x i8] c"hidg_ss_out_ep_desc\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 135, i32 39 }
@___asan_gen_.200 = private unnamed_addr constant [22 x i8] c"hidg_ss_out_comp_desc\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 147, i32 41 }
@___asan_gen_.203 = private unnamed_addr constant [20 x i8] c"hidg_hs_out_ep_desc\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 188, i32 39 }
@___asan_gen_.206 = private unnamed_addr constant [10 x i8] c"hidg_desc\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 102, i32 30 }
@___asan_gen_.209 = private unnamed_addr constant [27 x i8] c"hidg_fs_descriptors_intout\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 241, i32 38 }
@___asan_gen_.212 = private unnamed_addr constant [27 x i8] c"hidg_hs_descriptors_intout\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 200, i32 38 }
@___asan_gen_.215 = private unnamed_addr constant [27 x i8] c"hidg_ss_descriptors_intout\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 156, i32 38 }
@___asan_gen_.218 = private unnamed_addr constant [29 x i8] c"hidg_fs_descriptors_ssreport\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 249, i32 38 }
@___asan_gen_.221 = private unnamed_addr constant [29 x i8] c"hidg_hs_descriptors_ssreport\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 208, i32 38 }
@___asan_gen_.224 = private unnamed_addr constant [29 x i8] c"hidg_ss_descriptors_ssreport\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 166, i32 38 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 992, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 995, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 996, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 997, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant [12 x i8] c"f_hidg_fops\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 892, i32 37 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 1008, i32 11 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 1020, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [21 x i8] c"ct_func_string_table\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 266, i32 34 }
@___asan_gen_.278 = private unnamed_addr constant [20 x i8] c"ct_func_string_defs\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 261, i32 26 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 262, i32 24 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 230, i32 6 }
@___asan_gen_.288 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 214, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 174, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 458, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 465, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 492, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 411, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant [28 x i8] c"../drivers/usb/gadget/u_f.h\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 80, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 801, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 810, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 815, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 834, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 839, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 857, i32 6 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 576, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 589, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 643, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 650, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 661, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 669, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 677, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 687, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 704, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 717, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 729, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 737, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 745, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 759, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.425 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.426 = private constant [39 x i8] c"../drivers/usb/gadget/function/f_hid.c\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.426, i32 608, i32 3 }
@llvm.compiler.used = appending global [137 x ptr] [ptr @__UNIQUE_ID_alias256, ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_file258, ptr @__UNIQUE_ID_license259, ptr @__exitcall_hidmod_exit, ptr @__initcall__kmod_usb_f_hid__257_1313_hidmod_init6, ptr @f_hidg_req_complete._entry, ptr @f_hidg_req_complete._entry_ptr, ptr @f_hidg_write._entry, ptr @f_hidg_write._entry.34, ptr @f_hidg_write._entry.37, ptr @f_hidg_write._entry_ptr, ptr @f_hidg_write._entry_ptr.36, ptr @f_hidg_write._entry_ptr.39, ptr @hidg_bind._entry, ptr @hidg_bind._entry_ptr, ptr @hidg_intout_complete._entry, ptr @hidg_intout_complete._entry.60, ptr @hidg_intout_complete._entry_ptr, ptr @hidg_intout_complete._entry_ptr.62, ptr @hidg_set_alt._entry, ptr @hidg_set_alt._entry.47, ptr @hidg_set_alt._entry.50, ptr @hidg_set_alt._entry.52, ptr @hidg_set_alt._entry.55, ptr @hidg_set_alt._entry_ptr, ptr @hidg_set_alt._entry_ptr.49, ptr @hidg_set_alt._entry_ptr.51, ptr @hidg_set_alt._entry_ptr.54, ptr @hidg_set_alt._entry_ptr.57, ptr @hidg_setup._entry, ptr @hidg_setup._entry_ptr, ptr @hidg_ssreport_complete._entry, ptr @hidg_ssreport_complete._entry_ptr, ptr @hidmod_exit, ptr @hidusb_func, ptr @ghid_setup.__key, ptr @.str, ptr @hidg_class, ptr @major, ptr @minors, ptr @.str.1, ptr @hidg_alloc_inst.__key, ptr @.str.2, ptr @hidg_ida_lock, ptr @hidg_ida, ptr @.str.3, ptr @hid_func_type, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @hidg_item_ops, ptr @hid_attrs, ptr @f_hid_opts_attr_subclass, ptr @f_hid_opts_attr_protocol, ptr @f_hid_opts_attr_no_out_endpoint, ptr @f_hid_opts_attr_report_length, ptr @f_hid_opts_attr_report_desc, ptr @f_hid_opts_attr_dev, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @ct_func_strings, ptr @hidg_interface_desc, ptr @hidg_fs_in_ep_desc, ptr @hidg_fs_out_ep_desc, ptr @hidg_ss_in_ep_desc, ptr @hidg_ss_in_comp_desc, ptr @hidg_hs_in_ep_desc, ptr @hidg_ss_out_ep_desc, ptr @hidg_ss_out_comp_desc, ptr @hidg_hs_out_ep_desc, ptr @hidg_desc, ptr @hidg_fs_descriptors_intout, ptr @hidg_hs_descriptors_intout, ptr @hidg_ss_descriptors_intout, ptr @hidg_fs_descriptors_ssreport, ptr @hidg_hs_descriptors_ssreport, ptr @hidg_ss_descriptors_ssreport, ptr @hidg_bind.__key, ptr @.str.15, ptr @hidg_bind.__key.16, ptr @.str.17, ptr @hidg_bind.__key.18, ptr @.str.19, ptr @hidg_bind.__key.20, ptr @.str.21, ptr @f_hidg_fops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @ct_func_string_table, ptr @ct_func_string_defs, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [116 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidusb_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ghid_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_alloc_inst.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_ida_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_func_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_hid_opts_attr_subclass to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_hid_opts_attr_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_hid_opts_attr_no_out_endpoint to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_hid_opts_attr_report_length to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_hid_opts_attr_report_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_hid_opts_attr_dev to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_func_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_interface_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_fs_in_ep_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_fs_out_ep_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_ss_in_ep_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_ss_in_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_hs_in_ep_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_ss_out_ep_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_ss_out_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_hs_out_ep_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_fs_descriptors_intout to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_hs_descriptors_intout to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_ss_descriptors_intout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_fs_descriptors_ssreport to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_hs_descriptors_ssreport to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_ss_descriptors_ssreport to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_bind.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_bind.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_bind.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_hidg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_func_string_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_func_string_defs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_hidg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_hidg_write._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_hidg_write._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_hidg_req_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_set_alt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_set_alt._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_set_alt._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_set_alt._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_set_alt._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_intout_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_intout_complete._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hidg_ssreport_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hidmod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @usb_function_unregister(ptr noundef nonnull @hidusb_func) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hidmod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_function_register(ptr noundef nonnull @hidusb_func) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ghid_setup(ptr nocapture readnone %g, i32 noundef %count) local_unnamed_addr #2 align 64 {
entry:
  %dev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #13
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dev, align 4, !annotation !236
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @ghid_setup.__key) #13
  store ptr %call, ptr @hidg_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %call to i32
  store ptr null, ptr @hidg_class, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @alloc_chrdev_region(ptr noundef nonnull %dev, i32 noundef 0, i32 noundef %count, ptr noundef nonnull @.str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %2 = load ptr, ptr @hidg_class, align 4
  call void @class_destroy(ptr noundef %2) #13
  store ptr null, ptr @hidg_class, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev, align 4
  %shr = lshr i32 %4, 20
  store i32 %shr, ptr @major, align 4
  store i32 %count, ptr @minors, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %call3, %if.then4 ], [ 0, %if.end5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ghid_cleanup() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %shl = shl i32 %0, 20
  %1 = load i32, ptr @minors, align 4
  tail call void @unregister_chrdev_region(i32 noundef %shl, i32 noundef %1) #13
  store i32 0, ptr @minors, align 4
  store i32 0, ptr @major, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = load ptr, ptr @hidg_class, align 4
  tail call void @class_destroy(ptr noundef %2) #13
  store ptr null, ptr @hidg_class, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hidg_alloc_inst() #2 align 64 {
entry:
  %dev.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.f_hid_opts, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @hidg_alloc_inst.__key) #13
  %free_func_inst = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %free_func_inst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @hidg_free_inst, ptr %free_func_inst, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @hidg_ida_lock, i32 noundef 0) #13
  %2 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @hidg_ida, i32 0, i32 0, i32 2), align 4
  %cmp.i.i = icmp eq ptr %2, null
  br i1 %cmp.i.i, label %if.then4, label %do.body.if.end10_crit_edge

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then4:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev.i) #13
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %dev.i, align 4, !annotation !236
  %call.i = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @ghid_setup.__key) #13
  store ptr %call.i, ptr @hidg_class, align 4
  %cmp.i.i33 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i33, label %ghid_setup.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then4
  %call3.i = call i32 @alloc_chrdev_region(ptr noundef nonnull %dev.i, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @.str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %ghid_setup.exit.thread, label %ghid_setup.exit.thread43

ghid_setup.exit.thread43:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %4 = load ptr, ptr @hidg_class, align 4
  call void @class_destroy(ptr noundef %4) #13
  store ptr null, ptr @hidg_class, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev.i) #13
  br label %if.then7

ghid_setup.exit.thread:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev.i, align 4
  %shr.i = lshr i32 %6, 20
  store i32 %shr.i, ptr @major, align 4
  store i32 4, ptr @minors, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev.i) #13
  br label %if.end10

ghid_setup.exit:                                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %call.i to i32
  store ptr null, ptr @hidg_class, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev.i) #13
  br label %if.then7

if.then7:                                         ; preds = %ghid_setup.exit, %ghid_setup.exit.thread43
  %retval.0.i46 = phi i32 [ %call3.i, %ghid_setup.exit.thread43 ], [ %7, %ghid_setup.exit ]
  %8 = inttoptr i32 %retval.0.i46 to ptr
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %unlock

if.end10:                                         ; preds = %ghid_setup.exit.thread, %do.body.if.end10_crit_edge
  %call.i34 = call i32 @ida_alloc_range(ptr noundef nonnull @hidg_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i34)
  %cmp.i = icmp sgt i32 %call.i34, 3
  br i1 %cmp.i, label %hidg_get_minor.exit.thread, label %hidg_get_minor.exit

hidg_get_minor.exit.thread:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  call void @ida_free(ptr noundef nonnull @hidg_ida, i32 noundef %call.i34) #13
  %minor48 = getelementptr inbounds %struct.f_hid_opts, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %minor48 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -19, ptr %minor48, align 4
  br label %if.then13

hidg_get_minor.exit:                              ; preds = %if.end10
  %minor = getelementptr inbounds %struct.f_hid_opts, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i34, ptr %minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %cmp = icmp slt i32 %call.i34, 0
  br i1 %cmp, label %hidg_get_minor.exit.if.then13_crit_edge, label %if.end19

hidg_get_minor.exit.if.then13_crit_edge:          ; preds = %hidg_get_minor.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then13

if.then13:                                        ; preds = %hidg_get_minor.exit.if.then13_crit_edge, %hidg_get_minor.exit.thread
  %ret.0.i50 = phi i32 [ -19, %hidg_get_minor.exit.thread ], [ %call.i34, %hidg_get_minor.exit.if.then13_crit_edge ]
  %11 = inttoptr i32 %ret.0.i50 to ptr
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  %12 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @hidg_ida, i32 0, i32 0, i32 2), align 4
  %cmp.i.i37 = icmp eq ptr %12, null
  br i1 %cmp.i.i37, label %if.then17, label %if.then13.unlock_crit_edge

if.then13.unlock_crit_edge:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %unlock

if.then17:                                        ; preds = %if.then13
  %13 = load i32, ptr @major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i38 = icmp eq i32 %13, 0
  br i1 %tobool.not.i38, label %if.then17.ghid_cleanup.exit_crit_edge, label %if.then.i39

if.then17.ghid_cleanup.exit_crit_edge:            ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  br label %ghid_cleanup.exit

if.then.i39:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i = shl i32 %13, 20
  %14 = load i32, ptr @minors, align 4
  call void @unregister_chrdev_region(i32 noundef %shl.i, i32 noundef %14) #13
  store i32 0, ptr @minors, align 4
  store i32 0, ptr @major, align 4
  br label %ghid_cleanup.exit

ghid_cleanup.exit:                                ; preds = %if.then.i39, %if.then17.ghid_cleanup.exit_crit_edge
  %15 = load ptr, ptr @hidg_class, align 4
  call void @class_destroy(ptr noundef %15) #13
  store ptr null, ptr @hidg_class, align 4
  br label %unlock

if.end19:                                         ; preds = %hidg_get_minor.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @hid_func_type) #13
  br label %unlock

unlock:                                           ; preds = %if.end19, %ghid_cleanup.exit, %if.then13.unlock_crit_edge, %if.then7
  %ret.0 = phi ptr [ %8, %if.then7 ], [ %11, %ghid_cleanup.exit ], [ %11, %if.then13.unlock_crit_edge ], [ %call7.i.i, %if.end19 ]
  call void @mutex_unlock(ptr noundef nonnull @hidg_ida_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.0, %unlock ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hidg_alloc(ptr noundef %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 516) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.f_hid_opts, ptr %fi, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %refcnt = getelementptr inbounds %struct.f_hid_opts, ptr %fi, i32 0, i32 10
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %refcnt, align 4
  %minor = getelementptr inbounds %struct.f_hid_opts, ptr %fi, i32 0, i32 1
  %3 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %minor, align 4
  %minor2 = getelementptr inbounds %struct.f_hidg, ptr %call7.i.i, i32 0, i32 18
  %5 = ptrtoint ptr %minor2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %minor2, align 4
  %subclass = getelementptr inbounds %struct.f_hid_opts, ptr %fi, i32 0, i32 2
  %6 = ptrtoint ptr %subclass to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %subclass, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %call7.i.i, align 8
  %protocol = getelementptr inbounds %struct.f_hid_opts, ptr %fi, i32 0, i32 3
  %9 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %protocol, align 1
  %bInterfaceProtocol = getelementptr inbounds %struct.f_hidg, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %bInterfaceProtocol to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %bInterfaceProtocol, align 1
  %report_length = getelementptr inbounds %struct.f_hid_opts, ptr %fi, i32 0, i32 5
  %12 = ptrtoint ptr %report_length to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %report_length, align 4
  %report_length3 = getelementptr inbounds %struct.f_hidg, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %report_length3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %report_length3, align 4
  %report_desc_length = getelementptr inbounds %struct.f_hid_opts, ptr %fi, i32 0, i32 6
  %15 = ptrtoint ptr %report_desc_length to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %report_desc_length, align 2
  %report_desc_length4 = getelementptr inbounds %struct.f_hidg, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %report_desc_length4 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %report_desc_length4, align 4
  %report_desc = getelementptr inbounds %struct.f_hid_opts, ptr %fi, i32 0, i32 7
  %18 = ptrtoint ptr %report_desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %report_desc, align 4
  %tobool5.not = icmp eq ptr %19, null
  br i1 %tobool5.not, label %if.end.if.end17_crit_edge, label %if.then6

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then6:                                         ; preds = %if.end
  %conv = zext i16 %16 to i32
  %call9 = tail call ptr @kmemdup(ptr noundef nonnull %19, i32 noundef %conv, i32 noundef 3264) #13
  %report_desc10 = getelementptr inbounds %struct.f_hidg, ptr %call7.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %report_desc10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9, ptr %report_desc10, align 8
  %tobool12.not = icmp eq ptr %call9, null
  br i1 %tobool12.not, label %if.then13, label %if.then6.if.end17_crit_edge

if.then6.if.end17_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then13:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  tail call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

if.end17:                                         ; preds = %if.then6.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %no_out_endpoint = getelementptr inbounds %struct.f_hid_opts, ptr %fi, i32 0, i32 4
  %21 = ptrtoint ptr %no_out_endpoint to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %no_out_endpoint, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool18.not = icmp eq i8 %22, 0
  %use_out_ep = getelementptr inbounds %struct.f_hidg, ptr %call7.i.i, i32 0, i32 7
  %frombool = zext i1 %tobool18.not to i8
  %23 = ptrtoint ptr %use_out_ep to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool, ptr %use_out_ep, align 2
  tail call void @mutex_unlock(ptr noundef %lock) #13
  %func = getelementptr inbounds %struct.f_hidg, ptr %call7.i.i, i32 0, i32 20
  %24 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.1, ptr %func, align 8
  %bind = getelementptr inbounds %struct.f_hidg, ptr %call7.i.i, i32 0, i32 20, i32 9
  %25 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @hidg_bind, ptr %bind, align 4
  %unbind = getelementptr inbounds %struct.f_hidg, ptr %call7.i.i, i32 0, i32 20, i32 10
  %26 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @hidg_unbind, ptr %unbind, align 8
  %set_alt = getelementptr inbounds %struct.f_hidg, ptr %call7.i.i, i32 0, i32 20, i32 13
  %27 = ptrtoint ptr %set_alt to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @hidg_set_alt, ptr %set_alt, align 4
  %disable = getelementptr inbounds %struct.f_hidg, ptr %call7.i.i, i32 0, i32 20, i32 15
  %28 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @hidg_disable, ptr %disable, align 4
  %setup = getelementptr inbounds %struct.f_hidg, ptr %call7.i.i, i32 0, i32 20, i32 16
  %29 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @hidg_setup, ptr %setup, align 8
  %free_func = getelementptr inbounds %struct.f_hidg, ptr %call7.i.i, i32 0, i32 20, i32 11
  %30 = ptrtoint ptr %free_func to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @hidg_free, ptr %free_func, align 4
  %qlen = getelementptr inbounds %struct.f_hidg, ptr %call7.i.i, i32 0, i32 11
  %31 = ptrtoint ptr %qlen to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %qlen, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %func, %if.end17 ], [ inttoptr (i32 -12 to ptr), %if.then13 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidg_free_inst(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @hidg_ida_lock, i32 noundef 0) #13
  %minor = getelementptr inbounds %struct.f_hid_opts, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minor, align 4
  tail call void @ida_free(ptr noundef nonnull @hidg_ida, i32 noundef %1) #13
  %2 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @hidg_ida, i32 0, i32 0, i32 2), align 4
  %cmp.i.i = icmp eq ptr %2, null
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then.ghid_cleanup.exit_crit_edge, label %if.then.i

if.then.ghid_cleanup.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %ghid_cleanup.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i = shl i32 %3, 20
  %4 = load i32, ptr @minors, align 4
  tail call void @unregister_chrdev_region(i32 noundef %shl.i, i32 noundef %4) #13
  store i32 0, ptr @minors, align 4
  store i32 0, ptr @major, align 4
  br label %ghid_cleanup.exit

ghid_cleanup.exit:                                ; preds = %if.then.i, %if.then.ghid_cleanup.exit_crit_edge
  %5 = load ptr, ptr @hidg_class, align 4
  tail call void @class_destroy(ptr noundef %5) #13
  store ptr null, ptr @hidg_class, align 4
  br label %if.end

if.end:                                           ; preds = %ghid_cleanup.exit, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @hidg_ida_lock) #13
  %report_desc_alloc = getelementptr inbounds %struct.f_hid_opts, ptr %f, i32 0, i32 8
  %6 = ptrtoint ptr %report_desc_alloc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %report_desc_alloc, align 4, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %report_desc = getelementptr inbounds %struct.f_hid_opts, ptr %f, i32 0, i32 7
  %8 = ptrtoint ptr %report_desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %report_desc, align 4
  tail call void @kfree(ptr noundef %9) #13
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  tail call void @kfree(ptr noundef %f) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hid_attr_release(ptr noundef %item) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_put_function_instance(ptr noundef %item) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_hid_opts_subclass_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %subclass = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %subclass to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %subclass, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.8, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_hid_opts_subclass_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num) #13
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %num, align 1, !annotation !236
  %lock = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %refcnt = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 10
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end7, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num, align 1
  %subclass = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 2
  %5 = ptrtoint ptr %subclass to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %subclass, align 4
  br label %end

end:                                              ; preds = %if.end7, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end7 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num) #13
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_hid_opts_protocol_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %protocol = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protocol, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.8, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_hid_opts_protocol_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num) #13
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %num, align 1, !annotation !236
  %lock = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %refcnt = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 10
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end7, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num, align 1
  %protocol = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 3
  %5 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %protocol, align 1
  br label %end

end:                                              ; preds = %if.end7, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end7 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_hid_opts_no_out_endpoint_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %no_out_endpoint = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %no_out_endpoint to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %no_out_endpoint, align 2
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.8, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_hid_opts_no_out_endpoint_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num) #13
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %num, align 1, !annotation !236
  %lock = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %refcnt = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 10
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp = icmp ugt i8 %4, 1
  br i1 %cmp, label %if.end4.end_crit_edge, label %if.end7

if.end4.end_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %no_out_endpoint = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 4
  %5 = ptrtoint ptr %no_out_endpoint to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %no_out_endpoint, align 2
  br label %end

end:                                              ; preds = %if.end7, %if.end4.end_crit_edge, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end7 ], [ -16, %entry.end_crit_edge ], [ -22, %if.end4.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_hid_opts_report_length_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %report_length = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %report_length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %report_length, align 4
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.8, i32 noundef %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_hid_opts_report_length_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num) #13
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %num, align 2, !annotation !236
  %lock = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %refcnt = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 10
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end7, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num, align 2
  %report_length = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 5
  %5 = ptrtoint ptr %report_length to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %report_length, align 4
  br label %end

end:                                              ; preds = %if.end7, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end7 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num) #13
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_hid_opts_report_desc_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %report_desc_length = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 6
  %0 = ptrtoint ptr %report_desc_length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %report_desc_length, align 2
  %conv = zext i16 %1 to i32
  %report_desc = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 7
  %2 = ptrtoint ptr %report_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %report_desc, align 4
  %4 = call ptr @memcpy(ptr %page, ptr %3, i32 %conv)
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_hid_opts_report_desc_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %refcnt = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 10
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %len)
  %cmp = icmp ugt i32 %len, 4096
  br i1 %cmp, label %if.end.end_crit_edge, label %if.end2

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end2:                                          ; preds = %if.end
  %call3 = tail call ptr @kmemdup(ptr noundef %page, i32 noundef %len, i32 noundef 3264) #13
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end2.end_crit_edge, label %if.end6

if.end2.end_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end6:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  %report_desc = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 7
  %2 = ptrtoint ptr %report_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %report_desc, align 4
  tail call void @kfree(ptr noundef %3) #13
  %4 = ptrtoint ptr %report_desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %report_desc, align 4
  %conv = trunc i32 %len to i16
  %report_desc_length = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 6
  %5 = ptrtoint ptr %report_desc_length to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %report_desc_length, align 2
  %report_desc_alloc = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 8
  %6 = ptrtoint ptr %report_desc_alloc to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %report_desc_alloc, align 4
  br label %end

end:                                              ; preds = %if.end6, %if.end2.end_crit_edge, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ -16, %entry.end_crit_edge ], [ %len, %if.end6 ], [ -28, %if.end.end_crit_edge ], [ -12, %if.end2.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_hid_opts_dev_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @major, align 4
  %minor = getelementptr inbounds %struct.f_hid_opts, ptr %item, i32 0, i32 1
  %1 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %minor, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.14, i32 noundef %0, i32 noundef %2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidg_bind(ptr noundef %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %f, i32 -400
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  %call1 = tail call ptr @usb_gstrings_attach(ptr noundef %1, ptr noundef nonnull @ct_func_strings, i32 noundef 2) #13
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call1, align 4
  store i8 %4, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @hidg_interface_desc, i32 0, i32 8), align 1
  %call4 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.do.end67_crit_edge, label %if.end6

if.end.do.end67_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.end6:                                          ; preds = %if.end
  %conv = trunc i32 %call4 to i8
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @hidg_interface_desc, i32 0, i32 2), align 1
  %5 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cdev, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call8 = tail call ptr @usb_ep_autoconfig(ptr noundef %8, ptr noundef nonnull @hidg_fs_in_ep_desc) #13
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.end6.do.end67_crit_edge, label %if.end10

if.end6.do.end67_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.end10:                                         ; preds = %if.end6
  %in_ep = getelementptr i8, ptr %f, i32 108
  %9 = ptrtoint ptr %in_ep to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %in_ep, align 4
  %out_ep = getelementptr i8, ptr %f, i32 112
  %10 = ptrtoint ptr %out_ep to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %out_ep, align 4
  %use_out_ep = getelementptr i8, ptr %f, i32 -386
  %11 = ptrtoint ptr %use_out_ep to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %use_out_ep, align 2, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not = icmp eq i8 %12, 0
  br i1 %tobool11.not, label %if.end10.if.end20_crit_edge, label %if.then12

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then12:                                        ; preds = %if.end10
  %13 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cdev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call15 = tail call ptr @usb_ep_autoconfig(ptr noundef %16, ptr noundef nonnull @hidg_fs_out_ep_desc) #13
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then12.do.end67_crit_edge, label %if.end18

if.then12.do.end67_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %out_ep to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call15, ptr %out_ep, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %if.end10.if.end20_crit_edge
  %set_report_buf = getelementptr i8, ptr %f, i32 -276
  %18 = ptrtoint ptr %set_report_buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %set_report_buf, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr.i, align 4
  store i8 %20, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @hidg_interface_desc, i32 0, i32 6), align 1
  %bInterfaceProtocol = getelementptr i8, ptr %f, i32 -399
  %21 = ptrtoint ptr %bInterfaceProtocol to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bInterfaceProtocol, align 1
  store i8 %22, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @hidg_interface_desc, i32 0, i32 7), align 1
  %23 = ptrtoint ptr %use_out_ep to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %use_out_ep, align 2, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool22.not = icmp eq i8 %24, 0
  %conv24 = select i1 %tobool22.not, i8 1, i8 2
  store i8 %conv24, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @hidg_interface_desc, i32 0, i32 4), align 1
  %protocol = getelementptr i8, ptr %f, i32 -398
  %25 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %protocol, align 2
  %idle = getelementptr i8, ptr %f, i32 -397
  %26 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %idle, align 1
  %report_length = getelementptr i8, ptr %f, i32 -388
  %27 = ptrtoint ptr %report_length to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %report_length, align 4
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  store i16 %29, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_ss_in_ep_desc, i32 0, i32 4), align 1
  store i16 %29, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @hidg_ss_in_comp_desc, i32 0, i32 4), align 1
  store i16 %29, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_hs_in_ep_desc, i32 0, i32 4), align 1
  %30 = ptrtoint ptr %report_length to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %report_length, align 4
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  store i16 %32, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_fs_in_ep_desc, i32 0, i32 4), align 1
  store i16 %32, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_ss_out_ep_desc, i32 0, i32 4), align 1
  store i16 %32, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @hidg_ss_out_comp_desc, i32 0, i32 4), align 1
  %33 = ptrtoint ptr %report_length to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %report_length, align 4
  %35 = tail call i16 @llvm.bswap.i16(i16 %34)
  store i16 %35, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_hs_out_ep_desc, i32 0, i32 4), align 1
  store i16 %35, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_fs_out_ep_desc, i32 0, i32 4), align 1
  store i8 34, ptr getelementptr inbounds (%struct.hid_descriptor, ptr @hidg_desc, i32 0, i32 5), align 1
  %report_desc_length = getelementptr i8, ptr %f, i32 -396
  %36 = ptrtoint ptr %report_desc_length to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %report_desc_length, align 4
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  store i16 %38, ptr getelementptr inbounds (%struct.hid_descriptor, ptr @hidg_desc, i32 0, i32 5, i32 0, i32 1), align 1
  %39 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_fs_in_ep_desc, i32 0, i32 2), align 1
  store i8 %39, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_hs_in_ep_desc, i32 0, i32 2), align 1
  %40 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_fs_out_ep_desc, i32 0, i32 2), align 1
  store i8 %40, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_hs_out_ep_desc, i32 0, i32 2), align 1
  store i8 %39, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_ss_in_ep_desc, i32 0, i32 2), align 1
  store i8 %40, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_ss_out_ep_desc, i32 0, i32 2), align 1
  %41 = ptrtoint ptr %use_out_ep to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %use_out_ep, align 2, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool33.not = icmp eq i8 %42, 0
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %call35 = tail call i32 @usb_assign_descriptors(ptr noundef %f, ptr noundef nonnull @hidg_fs_descriptors_intout, ptr noundef nonnull @hidg_hs_descriptors_intout, ptr noundef nonnull @hidg_ss_descriptors_intout, ptr noundef nonnull @hidg_ss_descriptors_intout) #13
  br label %if.end37

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %call36 = tail call i32 @usb_assign_descriptors(ptr noundef %f, ptr noundef nonnull @hidg_fs_descriptors_ssreport, ptr noundef nonnull @hidg_hs_descriptors_ssreport, ptr noundef nonnull @hidg_ss_descriptors_ssreport, ptr noundef nonnull @hidg_ss_descriptors_ssreport) #13
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then34
  %status.0 = phi i32 [ %call35, %if.then34 ], [ %call36, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool38.not = icmp eq i32 %status.0, 0
  br i1 %tobool38.not, label %do.body, label %if.end37.do.end67_crit_edge

if.end37.do.end67_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

do.body:                                          ; preds = %if.end37
  %write_spinlock = getelementptr i8, ptr %f, i32 -268
  tail call void @__raw_spin_lock_init(ptr noundef %write_spinlock, ptr noundef nonnull @.str.15, ptr noundef nonnull @hidg_bind.__key, i16 noundef signext 3) #13
  %write_pending = getelementptr i8, ptr %f, i32 -224
  %43 = ptrtoint ptr %write_pending to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %write_pending, align 4
  %req = getelementptr i8, ptr %f, i32 -168
  %44 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %req, align 4
  %read_spinlock = getelementptr i8, ptr %f, i32 -384
  tail call void @__raw_spin_lock_init(ptr noundef %read_spinlock, ptr noundef nonnull @.str.17, ptr noundef nonnull @hidg_bind.__key.16, i16 noundef signext 3) #13
  %write_queue = getelementptr i8, ptr %f, i32 -220
  tail call void @__init_waitqueue_head(ptr noundef %write_queue, ptr noundef nonnull @.str.19, ptr noundef nonnull @hidg_bind.__key.18) #13
  %read_queue = getelementptr i8, ptr %f, i32 -340
  tail call void @__init_waitqueue_head(ptr noundef %read_queue, ptr noundef nonnull @.str.21, ptr noundef nonnull @hidg_bind.__key.20) #13
  %completed_out_req = getelementptr i8, ptr %f, i32 -288
  %45 = ptrtoint ptr %completed_out_req to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %completed_out_req, ptr %completed_out_req, align 4
  %prev.i = getelementptr i8, ptr %f, i32 -284
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %completed_out_req, ptr %prev.i, align 4
  %cdev52 = getelementptr i8, ptr %f, i32 -160
  tail call void @cdev_init(ptr noundef %cdev52, ptr noundef nonnull @f_hidg_fops) #13
  %47 = load i32, ptr @major, align 4
  %shl = shl i32 %47, 20
  %minor = getelementptr i8, ptr %f, i32 -164
  %48 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %minor, align 4
  %or = or i32 %shl, %49
  %call54 = tail call i32 @cdev_add(ptr noundef %cdev52, i32 noundef %or, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %do.body.fail_free_descs_crit_edge

do.body.fail_free_descs_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail_free_descs

if.end57:                                         ; preds = %do.body
  %50 = load ptr, ptr @hidg_class, align 4
  %51 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %minor, align 4
  %call59 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %50, ptr noundef null, i32 noundef %or, ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str, i32 noundef %52) #13
  %cmp.i136 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136, label %if.then61, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %call59 to i32
  tail call void @cdev_del(ptr noundef %cdev52) #13
  br label %fail_free_descs

fail_free_descs:                                  ; preds = %if.then61, %do.body.fail_free_descs_crit_edge
  %status.1 = phi i32 [ %call54, %do.body.fail_free_descs_crit_edge ], [ %53, %if.then61 ]
  tail call void @usb_free_all_descriptors(ptr noundef %f) #13
  br label %do.end67

do.end67:                                         ; preds = %fail_free_descs, %if.end37.do.end67_crit_edge, %if.then12.do.end67_crit_edge, %if.end6.do.end67_crit_edge, %if.end.do.end67_crit_edge
  %status.2 = phi i32 [ %call4, %if.end.do.end67_crit_edge ], [ %status.0, %if.end37.do.end67_crit_edge ], [ %status.1, %fail_free_descs ], [ -19, %if.then12.do.end67_crit_edge ], [ -19, %if.end6.do.end67_crit_edge ]
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %54 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %config, align 4
  %cdev68 = getelementptr inbounds %struct.usb_configuration, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %cdev68 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cdev68, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %dev70 = getelementptr inbounds %struct.usb_gadget, ptr %59, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev70, ptr noundef nonnull @.str.23) #17
  %req71 = getelementptr i8, ptr %f, i32 -168
  %60 = ptrtoint ptr %req71 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %req71, align 4
  %cmp72.not = icmp eq ptr %61, null
  br i1 %cmp72.not, label %do.end67.cleanup_crit_edge, label %if.then74

do.end67.cleanup_crit_edge:                       ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then74:                                        ; preds = %do.end67
  %in_ep75 = getelementptr i8, ptr %f, i32 108
  %62 = ptrtoint ptr %in_ep75 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %in_ep75, align 4
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %61, align 4
  %cmp.i137 = icmp eq ptr %65, null
  br i1 %cmp.i137, label %do.end.i, label %if.then74.free_ep_req.exit_crit_edge, !prof !238

if.then74.free_ep_req.exit_crit_edge:             ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_ep_req.exit

do.end.i:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 80, i32 noundef 9, ptr noundef null) #13
  br label %free_ep_req.exit

free_ep_req.exit:                                 ; preds = %do.end.i, %if.then74.free_ep_req.exit_crit_edge
  %66 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %61, align 4
  tail call void @kfree(ptr noundef %67) #13
  %68 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %61, align 4
  tail call void @usb_ep_free_request(ptr noundef %63, ptr noundef nonnull %61) #13
  br label %cleanup

cleanup:                                          ; preds = %free_ep_req.exit, %do.end67.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end57.cleanup_crit_edge ], [ %status.2, %free_ep_req.exit ], [ %status.2, %do.end67.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidg_unbind(ptr nocapture noundef readnone %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hidg_class, align 4
  %1 = load i32, ptr @major, align 4
  %shl = shl i32 %1, 20
  %minor = getelementptr i8, ptr %f, i32 -164
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minor, align 4
  %or = or i32 %shl, %3
  tail call void @device_destroy(ptr noundef %0, i32 noundef %or) #13
  %cdev = getelementptr i8, ptr %f, i32 -160
  tail call void @cdev_del(ptr noundef %cdev) #13
  tail call void @usb_free_all_descriptors(ptr noundef %f) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidg_set_alt(ptr noundef %f, i32 noundef %intf, i32 noundef %alt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1, align 4
  %add.ptr.i = getelementptr i8, ptr %f, i32 -400
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidg_set_alt.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hidg_set_alt, %do.end)) #13
          to label %if.then [label %do.end], !srcloc !239

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hidg_set_alt.__UNIQUE_ID_ddebug255, ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %intf, i32 noundef %alt) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %in_ep = getelementptr i8, ptr %f, i32 108
  %6 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %in_ep, align 4
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %do.end.if.end38_crit_edge, label %if.then6

do.end.if.end38_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then6:                                         ; preds = %do.end
  %call8 = tail call i32 @usb_ep_disable(ptr noundef nonnull %7) #13
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config, align 4
  %cdev10 = getelementptr inbounds %struct.usb_configuration, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %cdev10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cdev10, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %in_ep, align 4
  %call13 = tail call i32 @config_ep_by_speed(ptr noundef %13, ptr noundef %f, ptr noundef %15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end21, label %do.end18

do.end18:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %dev20 = getelementptr inbounds %struct.usb_gadget, ptr %17, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.46) #17
  br label %cleanup130

if.end21:                                         ; preds = %if.then6
  %18 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %in_ep, align 4
  %call23 = tail call i32 @usb_ep_enable(ptr noundef %19) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %dev30 = getelementptr inbounds %struct.usb_gadget, ptr %21, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.48) #17
  br label %cleanup130

if.end31:                                         ; preds = %if.end21
  %22 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %in_ep, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i, ptr %23, align 4
  %25 = load ptr, ptr %in_ep, align 4
  %report_length = getelementptr i8, ptr %f, i32 -388
  %26 = ptrtoint ptr %report_length to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %report_length, align 4
  %conv = zext i16 %27 to i32
  %call.i = tail call ptr @alloc_ep_req(ptr noundef %25, i32 noundef %conv) #13
  %tobool35.not = icmp eq ptr %call.i, null
  br i1 %tobool35.not, label %if.end31.disable_ep_in_crit_edge, label %if.end31.if.end38_crit_edge

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.end31.disable_ep_in_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable_ep_in

if.end38:                                         ; preds = %if.end31.if.end38_crit_edge, %do.end.if.end38_crit_edge
  %req_in.0 = phi ptr [ %call.i, %if.end31.if.end38_crit_edge ], [ null, %do.end.if.end38_crit_edge ]
  %use_out_ep = getelementptr i8, ptr %f, i32 -386
  %28 = ptrtoint ptr %use_out_ep to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %use_out_ep, align 2, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool39.not = icmp eq i8 %29, 0
  br i1 %tobool39.not, label %if.end38.if.end95_crit_edge, label %land.lhs.true

if.end38.if.end95_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

land.lhs.true:                                    ; preds = %if.end38
  %out_ep = getelementptr i8, ptr %f, i32 112
  %30 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %out_ep, align 4
  %cmp41.not = icmp eq ptr %31, null
  br i1 %cmp41.not, label %land.lhs.true.if.end95_crit_edge, label %if.then43

land.lhs.true.if.end95_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

if.then43:                                        ; preds = %land.lhs.true
  %call45 = tail call i32 @usb_ep_disable(ptr noundef nonnull %31) #13
  %32 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config, align 4
  %cdev47 = getelementptr inbounds %struct.usb_configuration, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %cdev47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cdev47, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %38 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %out_ep, align 4
  %call50 = tail call i32 @config_ep_by_speed(ptr noundef %37, ptr noundef %f, ptr noundef %39) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end58, label %do.end55

do.end55:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %dev57 = getelementptr inbounds %struct.usb_gadget, ptr %41, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev57, ptr noundef nonnull @.str.46) #17
  br label %free_req_in

if.end58:                                         ; preds = %if.then43
  %42 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %out_ep, align 4
  %call60 = tail call i32 @usb_ep_enable(ptr noundef %43) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %do.end66, label %if.end69

do.end66:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  %dev68 = getelementptr inbounds %struct.usb_gadget, ptr %45, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68, ptr noundef nonnull @.str.53) #17
  br label %free_req_in

if.end69:                                         ; preds = %if.end58
  %46 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %out_ep, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr.i, ptr %47, align 4
  %qlen = getelementptr i8, ptr %f, i32 -280
  %49 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp72204 = icmp ne i32 %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp74205 = icmp eq i32 %call60, 0
  %or.cond206 = select i1 %cmp72204, i1 %cmp74205, i1 false
  br i1 %or.cond206, label %for.body.lr.ph, label %if.end69.if.end95_crit_edge

if.end69.if.end95_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

for.body.lr.ph:                                   ; preds = %if.end69
  %report_length77 = getelementptr i8, ptr %f, i32 -388
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0207 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %51 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %out_ep, align 4
  %53 = ptrtoint ptr %report_length77 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %report_length77, align 4
  %conv78 = zext i16 %54 to i32
  %call.i196 = tail call ptr @alloc_ep_req(ptr noundef %52, i32 noundef %conv78) #13
  %tobool80.not = icmp eq ptr %call.i196, null
  br i1 %tobool80.not, label %disable_out_ep, label %if.then81

if.then81:                                        ; preds = %for.body
  %complete = getelementptr inbounds %struct.usb_request, ptr %call.i196, i32 0, i32 7
  %55 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @hidg_intout_complete, ptr %complete, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %call.i196, i32 0, i32 8
  %56 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr.i, ptr %context, align 4
  %57 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %out_ep, align 4
  %call83 = tail call i32 @usb_ep_queue(ptr noundef %58, ptr noundef nonnull %call.i196, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %for.inc, label %do.end88

do.end88:                                         ; preds = %if.then81
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %3, align 4
  %dev90 = getelementptr inbounds %struct.usb_gadget, ptr %60, i32 0, i32 11
  %61 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %out_ep, align 4
  %name = getelementptr inbounds %struct.usb_ep, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev90, ptr noundef nonnull @.str.56, ptr noundef %64, i32 noundef %call83) #17
  %65 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %out_ep, align 4
  %67 = ptrtoint ptr %call.i196 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call.i196, align 4
  %cmp.i = icmp eq ptr %68, null
  br i1 %cmp.i, label %do.end.i, label %do.end88.for.inc.thread_crit_edge, !prof !238

do.end88.for.inc.thread_crit_edge:                ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.thread

do.end.i:                                         ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 80, i32 noundef 9, ptr noundef null) #13
  br label %for.inc.thread

for.inc.thread:                                   ; preds = %do.end.i, %do.end88.for.inc.thread_crit_edge
  %69 = ptrtoint ptr %call.i196 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call.i196, align 4
  tail call void @kfree(ptr noundef %70) #13
  %71 = ptrtoint ptr %call.i196 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %call.i196, align 4
  tail call void @usb_ep_free_request(ptr noundef %66, ptr noundef nonnull %call.i196) #13
  br label %if.end95

for.inc:                                          ; preds = %if.then81
  %inc = add nuw i32 %i.0207, 1
  %72 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %73)
  %cmp72 = icmp ult i32 %inc, %73
  %or.cond = select i1 %cmp72, i1 %tobool84.not, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.if.end95_crit_edge

for.inc.if.end95_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end95:                                         ; preds = %for.inc.if.end95_crit_edge, %for.inc.thread, %if.end69.if.end95_crit_edge, %land.lhs.true.if.end95_crit_edge, %if.end38.if.end95_crit_edge
  %74 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %in_ep, align 4
  %cmp97.not = icmp eq ptr %75, null
  br i1 %cmp97.not, label %if.end95.cleanup130_crit_edge, label %do.body101

if.end95.cleanup130_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup130

do.body101:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  %write_spinlock = getelementptr i8, ptr %f, i32 -268
  %call106 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %write_spinlock) #13
  %req111 = getelementptr i8, ptr %f, i32 -168
  %76 = ptrtoint ptr %req111 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %req_in.0, ptr %req111, align 4
  %write_pending = getelementptr i8, ptr %f, i32 -224
  %77 = ptrtoint ptr %write_pending to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %write_pending, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %write_spinlock, i32 noundef %call106) #13
  %write_queue = getelementptr i8, ptr %f, i32 -220
  tail call void @__wake_up(ptr noundef %write_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %cleanup130

disable_out_ep:                                   ; preds = %for.body
  %78 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %out_ep, align 4
  %tobool115.not = icmp eq ptr %79, null
  br i1 %tobool115.not, label %disable_out_ep.free_req_in_crit_edge, label %if.then116

disable_out_ep.free_req_in_crit_edge:             ; preds = %disable_out_ep
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_req_in

if.then116:                                       ; preds = %disable_out_ep
  call void @__sanitizer_cov_trace_pc() #15
  %call118 = tail call i32 @usb_ep_disable(ptr noundef nonnull %79) #13
  br label %free_req_in

free_req_in:                                      ; preds = %if.then116, %disable_out_ep.free_req_in_crit_edge, %do.end66, %do.end55
  %status.2 = phi i32 [ %call50, %do.end55 ], [ %call60, %do.end66 ], [ -12, %if.then116 ], [ -12, %disable_out_ep.free_req_in_crit_edge ]
  %tobool120.not = icmp eq ptr %req_in.0, null
  br i1 %tobool120.not, label %free_req_in.disable_ep_in_crit_edge, label %if.then121

free_req_in.disable_ep_in_crit_edge:              ; preds = %free_req_in
  call void @__sanitizer_cov_trace_pc() #15
  br label %disable_ep_in

if.then121:                                       ; preds = %free_req_in
  %80 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %in_ep, align 4
  %82 = ptrtoint ptr %req_in.0 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %req_in.0, align 4
  %cmp.i197 = icmp eq ptr %83, null
  br i1 %cmp.i197, label %do.end.i198, label %if.then121.free_ep_req.exit199_crit_edge, !prof !238

if.then121.free_ep_req.exit199_crit_edge:         ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_ep_req.exit199

do.end.i198:                                      ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 80, i32 noundef 9, ptr noundef null) #13
  br label %free_ep_req.exit199

free_ep_req.exit199:                              ; preds = %do.end.i198, %if.then121.free_ep_req.exit199_crit_edge
  %84 = ptrtoint ptr %req_in.0 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %req_in.0, align 4
  tail call void @kfree(ptr noundef %85) #13
  %86 = ptrtoint ptr %req_in.0 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %req_in.0, align 4
  tail call void @usb_ep_free_request(ptr noundef %81, ptr noundef nonnull %req_in.0) #13
  br label %disable_ep_in

disable_ep_in:                                    ; preds = %free_ep_req.exit199, %free_req_in.disable_ep_in_crit_edge, %if.end31.disable_ep_in_crit_edge
  %status.3 = phi i32 [ %status.2, %free_ep_req.exit199 ], [ %status.2, %free_req_in.disable_ep_in_crit_edge ], [ -12, %if.end31.disable_ep_in_crit_edge ]
  %87 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %in_ep, align 4
  %tobool125.not = icmp eq ptr %88, null
  br i1 %tobool125.not, label %disable_ep_in.cleanup130_crit_edge, label %if.then126

disable_ep_in.cleanup130_crit_edge:               ; preds = %disable_ep_in
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup130

if.then126:                                       ; preds = %disable_ep_in
  call void @__sanitizer_cov_trace_pc() #15
  %call128 = tail call i32 @usb_ep_disable(ptr noundef nonnull %88) #13
  br label %cleanup130

cleanup130:                                       ; preds = %if.then126, %disable_ep_in.cleanup130_crit_edge, %do.body101, %if.end95.cleanup130_crit_edge, %do.end28, %do.end18
  %retval.0 = phi i32 [ 0, %do.body101 ], [ 0, %if.end95.cleanup130_crit_edge ], [ %call13, %do.end18 ], [ %call23, %do.end28 ], [ %status.3, %if.then126 ], [ %status.3, %disable_ep_in.cleanup130_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidg_disable(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %in_ep = getelementptr i8, ptr %f, i32 108
  %0 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_ep, align 4
  %call1 = tail call i32 @usb_ep_disable(ptr noundef %1) #13
  %out_ep = getelementptr i8, ptr %f, i32 112
  %2 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out_ep, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body29_crit_edge, label %if.then

entry.do.body29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body29

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @usb_ep_disable(ptr noundef nonnull %3) #13
  %read_spinlock = getelementptr i8, ptr %f, i32 -384
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %read_spinlock) #13
  %completed_out_req = getelementptr i8, ptr %f, i32 -288
  %4 = ptrtoint ptr %completed_out_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %completed_out_req, align 4
  %cmp18.not73 = icmp eq ptr %5, %completed_out_req
  br i1 %cmp18.not73, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn.in74 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %5, %if.then.for.body_crit_edge ]
  %list.0 = getelementptr i8, ptr %.pn.in74, i32 -8
  %6 = ptrtoint ptr %.pn.in74 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in74, align 4
  %7 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %out_ep, align 4
  %9 = ptrtoint ptr %list.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list.0, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %cmp.i = icmp eq ptr %12, null
  br i1 %cmp.i, label %do.end.i, label %for.body.free_ep_req.exit_crit_edge, !prof !238

for.body.free_ep_req.exit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_ep_req.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 80, i32 noundef 9, ptr noundef null) #13
  br label %free_ep_req.exit

free_ep_req.exit:                                 ; preds = %do.end.i, %for.body.free_ep_req.exit_crit_edge
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  tail call void @kfree(ptr noundef %14) #13
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %10, align 4
  tail call void @usb_ep_free_request(ptr noundef %8, ptr noundef %10) #13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in74) #13
  br i1 %call.i.i, label %if.end.i.i, label %free_ep_req.exit.list_del.exit_crit_edge

free_ep_req.exit.list_del.exit_crit_edge:         ; preds = %free_ep_req.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %free_ep_req.exit
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in74, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %.pn.in74 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn.in74, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %free_ep_req.exit.list_del.exit_crit_edge
  %22 = ptrtoint ptr %.pn.in74 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in74, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in74, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %list.0) #13
  %cmp18.not = icmp eq ptr %.pn, %completed_out_req
  br i1 %cmp18.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %read_spinlock, i32 noundef %call6) #13
  br label %do.body29

do.body29:                                        ; preds = %for.end, %entry.do.body29_crit_edge
  %write_spinlock = getelementptr i8, ptr %f, i32 -268
  %call36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %write_spinlock) #13
  %write_pending = getelementptr i8, ptr %f, i32 -224
  %24 = ptrtoint ptr %write_pending to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %write_pending, align 4, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool41.not = icmp eq i8 %25, 0
  br i1 %tobool41.not, label %if.then42, label %do.body29.if.end46_crit_edge

do.body29.if.end46_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then42:                                        ; preds = %do.body29
  %26 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %in_ep, align 4
  %req44 = getelementptr i8, ptr %f, i32 -168
  %28 = ptrtoint ptr %req44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %req44, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %cmp.i70 = icmp eq ptr %31, null
  br i1 %cmp.i70, label %do.end.i71, label %if.then42.free_ep_req.exit72_crit_edge, !prof !238

if.then42.free_ep_req.exit72_crit_edge:           ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_ep_req.exit72

do.end.i71:                                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 80, i32 noundef 9, ptr noundef null) #13
  br label %free_ep_req.exit72

free_ep_req.exit72:                               ; preds = %do.end.i71, %if.then42.free_ep_req.exit72_crit_edge
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  tail call void @kfree(ptr noundef %33) #13
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %29, align 4
  tail call void @usb_ep_free_request(ptr noundef %27, ptr noundef %29) #13
  %35 = ptrtoint ptr %write_pending to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %write_pending, align 4
  br label %if.end46

if.end46:                                         ; preds = %free_ep_req.exit72, %do.body29.if.end46_crit_edge
  %req47 = getelementptr i8, ptr %f, i32 -168
  %36 = ptrtoint ptr %req47 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %req47, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %write_spinlock, i32 noundef %call36) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hidg_setup(ptr noundef %f, ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %hidg_desc_copy = alloca %struct.hid_descriptor, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %f, i32 -400
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
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %6 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %wValue, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %9 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %wLength, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidg_setup.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hidg_setup, %do.end)) #13
          to label %if.then [label %do.end], !srcloc !239

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ctrl, align 1
  %conv = zext i8 %15 to i32
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %16 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bRequest, align 1
  %conv7 = zext i8 %17 to i32
  %conv8 = zext i16 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hidg_setup.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv8) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %18 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ctrl, align 1
  %conv10 = zext i8 %19 to i16
  %shl = shl nuw i16 %conv10, 8
  %bRequest11 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %20 = ptrtoint ptr %bRequest11 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bRequest11, align 1
  %conv12 = zext i8 %21 to i16
  %or = or i16 %shl, %conv12
  %22 = zext i16 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i16 %or, label %do.body286 [
    i16 -24319, label %do.body13
    i16 -24317, label %do.body40
    i16 -24318, label %do.body71
    i16 8457, label %do.body103
    i16 8459, label %do.body129
    i16 8458, label %do.body162
    i16 -32506, label %sw.bb185
  ]

do.body13:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidg_setup.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hidg_setup, %do.end32)) #13
          to label %if.then27 [label %do.end32], !srcloc !239

if.then27:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %dev29 = getelementptr inbounds %struct.usb_gadget, ptr %24, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hidg_setup.__UNIQUE_ID_ddebug235, ptr noundef %dev29, ptr noundef nonnull @.str.65) #13
  br label %do.end32

do.end32:                                         ; preds = %if.then27, %do.body13
  %report_length = getelementptr i8, ptr %f, i32 -388
  %25 = ptrtoint ptr %report_length to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %report_length, align 4
  %27 = tail call i16 @llvm.umin.i16(i16 %11, i16 %26)
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %5, align 4
  %conv38 = zext i16 %27 to i32
  %30 = call ptr @memset(ptr %29, i32 0, i32 %conv38)
  br label %respond

do.body40:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidg_setup.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hidg_setup, %do.end59)) #13
          to label %if.then54 [label %do.end59], !srcloc !239

if.then54:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %dev56 = getelementptr inbounds %struct.usb_gadget, ptr %32, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hidg_setup.__UNIQUE_ID_ddebug238, ptr noundef %dev56, ptr noundef nonnull @.str.66) #13
  br label %do.end59

do.end59:                                         ; preds = %if.then54, %do.body40
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp62 = icmp ne i16 %10, 0
  %.393 = zext i1 %cmp62 to i16
  %protocol = getelementptr i8, ptr %f, i32 -398
  %33 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %protocol, align 2
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %5, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %34, ptr %36, align 1
  br label %respond

do.body71:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidg_setup.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hidg_setup, %do.end90)) #13
          to label %if.then85 [label %do.end90], !srcloc !239

if.then85:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %dev87 = getelementptr inbounds %struct.usb_gadget, ptr %39, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hidg_setup.__UNIQUE_ID_ddebug241, ptr noundef %dev87, ptr noundef nonnull @.str.67) #13
  br label %do.end90

do.end90:                                         ; preds = %if.then85, %do.body71
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp93 = icmp ne i16 %10, 0
  %.394 = zext i1 %cmp93 to i16
  %idle = getelementptr i8, ptr %f, i32 -397
  %40 = ptrtoint ptr %idle to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %idle, align 1
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %5, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %41, ptr %43, align 1
  br label %respond

do.body103:                                       ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidg_setup.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hidg_setup, %do.end124)) #13
          to label %if.then117 [label %do.end124], !srcloc !239

if.then117:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  %dev119 = getelementptr inbounds %struct.usb_gadget, ptr %46, i32 0, i32 11
  %47 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %wLength, align 1
  %conv121 = zext i16 %48 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hidg_setup.__UNIQUE_ID_ddebug244, ptr noundef %dev119, ptr noundef nonnull @.str.68, i32 noundef %conv121) #13
  br label %do.end124

do.end124:                                        ; preds = %if.then117, %do.body103
  %use_out_ep = getelementptr i8, ptr %f, i32 -386
  %49 = ptrtoint ptr %use_out_ep to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %use_out_ep, align 2, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool125.not = icmp eq i8 %50, 0
  br i1 %tobool125.not, label %if.end127, label %do.end124.cleanup_crit_edge

do.end124.cleanup_crit_edge:                      ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end127:                                        ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #15
  %complete = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 7
  %51 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @hidg_ssreport_complete, ptr %complete, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 8
  %52 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr.i, ptr %context, align 4
  br label %respond

do.body129:                                       ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidg_setup.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hidg_setup, %do.end148)) #13
          to label %if.then143 [label %do.end148], !srcloc !239

if.then143:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 4
  %dev145 = getelementptr inbounds %struct.usb_gadget, ptr %54, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hidg_setup.__UNIQUE_ID_ddebug245, ptr noundef %dev145, ptr noundef nonnull @.str.69) #13
  br label %do.end148

do.end148:                                        ; preds = %if.then143, %do.body129
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp150 = icmp ugt i16 %8, 1
  br i1 %cmp150, label %do.end148.cleanup_crit_edge, label %if.end153

do.end148.cleanup_crit_edge:                      ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end153:                                        ; preds = %do.end148
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %56)
  %cmp155 = icmp eq i8 %56, 1
  br i1 %cmp155, label %if.then157, label %if.end153.cleanup_crit_edge

if.end153.cleanup_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then157:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #15
  %conv158 = trunc i16 %8 to i8
  %protocol159 = getelementptr i8, ptr %f, i32 -398
  %57 = ptrtoint ptr %protocol159 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv158, ptr %protocol159, align 2
  br label %respond

do.body162:                                       ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidg_setup.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hidg_setup, %do.end181)) #13
          to label %if.then176 [label %do.end181], !srcloc !239

if.then176:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %3, align 4
  %dev178 = getelementptr inbounds %struct.usb_gadget, ptr %59, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hidg_setup.__UNIQUE_ID_ddebug246, ptr noundef %dev178, ptr noundef nonnull @.str.70) #13
  br label %do.end181

do.end181:                                        ; preds = %if.then176, %do.body162
  %60 = lshr i16 %8, 8
  %conv183 = trunc i16 %60 to i8
  %idle184 = getelementptr i8, ptr %f, i32 -397
  %61 = ptrtoint ptr %idle184 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv183, ptr %idle184, align 1
  br label %respond

sw.bb185:                                         ; preds = %do.end
  %62 = lshr i16 %8, 8
  %63 = zext i16 %62 to i32
  %trunc = trunc i16 %62 to i8
  %64 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %trunc, label %do.body263 [
    i8 33, label %sw.bb188
    i8 34, label %do.body228
  ]

sw.bb188:                                         ; preds = %sw.bb185
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %hidg_desc_copy)
  %hidg_desc_copy.6.hidg_desc_copy.6.hidg_desc_copy.6..sroa_idx = getelementptr inbounds i8, ptr %hidg_desc_copy, i32 6
  %hidg_desc_copy.7.hidg_desc_copy.7.hidg_desc_copy.7..sroa_idx = getelementptr inbounds i8, ptr %hidg_desc_copy, i32 7
  %65 = call ptr @memcpy(ptr %hidg_desc_copy, ptr @hidg_desc, i32 6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidg_setup.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hidg_setup, %do.end208)) #13
          to label %if.then203 [label %do.end208], !srcloc !239

if.then203:                                       ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %3, align 4
  %dev205 = getelementptr inbounds %struct.usb_gadget, ptr %67, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hidg_setup.__UNIQUE_ID_ddebug247, ptr noundef %dev205, ptr noundef nonnull @.str.71) #13
  br label %do.end208

do.end208:                                        ; preds = %if.then203, %sw.bb188
  %68 = ptrtoint ptr %hidg_desc_copy.6.hidg_desc_copy.6.hidg_desc_copy.6..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 34, ptr %hidg_desc_copy.6.hidg_desc_copy.6.hidg_desc_copy.6..sroa_idx, align 1
  %report_desc_length = getelementptr i8, ptr %f, i32 -396
  %69 = ptrtoint ptr %report_desc_length to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %report_desc_length, align 4
  %71 = tail call i16 @llvm.bswap.i16(i16 %70)
  %72 = ptrtoint ptr %hidg_desc_copy.7.hidg_desc_copy.7.hidg_desc_copy.7..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %72, i32 2)
  store i16 %71, ptr %hidg_desc_copy.7.hidg_desc_copy.7.hidg_desc_copy.7..sroa_idx, align 1
  %73 = ptrtoint ptr %hidg_desc_copy to i32
  call void @__asan_load1_noabort(i32 %73)
  %hidg_desc_copy.0.hidg_desc_copy.0.hidg_desc_copy.0. = load i8, ptr %hidg_desc_copy, align 1
  %conv214 = zext i16 %11 to i32
  %conv215 = zext i8 %hidg_desc_copy.0.hidg_desc_copy.0.hidg_desc_copy.0. to i32
  %74 = tail call i32 @llvm.umin.i32(i32 %conv214, i32 %conv215)
  %conv224 = trunc i32 %74 to i16
  %75 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %5, align 4
  %77 = call ptr @memcpy(ptr %76, ptr %hidg_desc_copy, i32 %74)
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %hidg_desc_copy)
  br label %respond

do.body228:                                       ; preds = %sw.bb185
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidg_setup.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hidg_setup, %do.end247)) #13
          to label %if.then242 [label %do.end247], !srcloc !239

if.then242:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #15
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %3, align 4
  %dev244 = getelementptr inbounds %struct.usb_gadget, ptr %79, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hidg_setup.__UNIQUE_ID_ddebug250, ptr noundef %dev244, ptr noundef nonnull @.str.72) #13
  br label %do.end247

do.end247:                                        ; preds = %if.then242, %do.body228
  %report_desc_length248 = getelementptr i8, ptr %f, i32 -396
  %80 = ptrtoint ptr %report_desc_length248 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %report_desc_length248, align 4
  %82 = tail call i16 @llvm.umin.i16(i16 %11, i16 %81)
  %83 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %5, align 4
  %report_desc = getelementptr i8, ptr %f, i32 -392
  %85 = ptrtoint ptr %report_desc to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %report_desc, align 4
  %conv262 = zext i16 %82 to i32
  %87 = call ptr @memcpy(ptr %84, ptr %86, i32 %conv262)
  br label %respond

do.body263:                                       ; preds = %sw.bb185
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidg_setup.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hidg_setup, %cleanup)) #13
          to label %if.then277 [label %cleanup], !srcloc !239

if.then277:                                       ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %3, align 4
  %dev279 = getelementptr inbounds %struct.usb_gadget, ptr %89, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hidg_setup.__UNIQUE_ID_ddebug253, ptr noundef %dev279, ptr noundef nonnull @.str.73, i32 noundef %63) #13
  br label %cleanup

do.body286:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hidg_setup.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hidg_setup, %cleanup)) #13
          to label %if.then300 [label %cleanup], !srcloc !239

if.then300:                                       ; preds = %do.body286
  call void @__sanitizer_cov_trace_pc() #15
  %90 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %3, align 4
  %dev302 = getelementptr inbounds %struct.usb_gadget, ptr %91, i32 0, i32 11
  %92 = ptrtoint ptr %bRequest11 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %bRequest11, align 1
  %conv304 = zext i8 %93 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hidg_setup.__UNIQUE_ID_ddebug254, ptr noundef %dev302, ptr noundef nonnull @.str.74, i32 noundef %conv304) #13
  br label %cleanup

respond:                                          ; preds = %do.end247, %do.end208, %do.end181, %if.then157, %if.end127, %do.end90, %do.end59, %do.end32
  %length.0 = phi i16 [ %82, %do.end247 ], [ %conv224, %do.end208 ], [ 0, %do.end181 ], [ 0, %if.then157 ], [ %11, %if.end127 ], [ %.394, %do.end90 ], [ %.393, %do.end59 ], [ %27, %do.end32 ]
  %zero = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 6
  %94 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %94)
  %bf.load = load i32, ptr %zero, align 4
  %bf.clear = and i32 %bf.load, -8193
  store i32 %bf.clear, ptr %zero, align 4
  %conv308 = zext i16 %length.0 to i32
  %length309 = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 1
  %95 = ptrtoint ptr %length309 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %conv308, ptr %length309, align 4
  %96 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %3, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ep0, align 4
  %call311 = tail call i32 @usb_ep_queue(ptr noundef %99, ptr noundef %5, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call311)
  %cmp312 = icmp slt i32 %call311, 0
  br i1 %cmp312, label %do.end317, label %respond.cleanup_crit_edge

respond.cleanup_crit_edge:                        ; preds = %respond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end317:                                        ; preds = %respond
  call void @__sanitizer_cov_trace_pc() #15
  %100 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %3, align 4
  %dev319 = getelementptr inbounds %struct.usb_gadget, ptr %101, i32 0, i32 11
  %conv320 = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev319, ptr noundef nonnull @.str.75, i32 noundef %conv320) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end317, %respond.cleanup_crit_edge, %if.then300, %do.body286, %if.then277, %do.body263, %if.end153.cleanup_crit_edge, %do.end148.cleanup_crit_edge, %do.end124.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then300 ], [ -95, %if.then277 ], [ -95, %if.end153.cleanup_crit_edge ], [ -95, %do.end148.cleanup_crit_edge ], [ -95, %do.end124.cleanup_crit_edge ], [ %call311, %do.end317 ], [ %call311, %respond.cleanup_crit_edge ], [ -95, %do.body263 ], [ -95, %do.body286 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidg_free(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %f, i32 -400
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi, align 4
  %report_desc = getelementptr i8, ptr %f, i32 -392
  %2 = ptrtoint ptr %report_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %report_desc, align 4
  tail call void @kfree(ptr noundef %3) #13
  %set_report_buf = getelementptr i8, ptr %f, i32 -276
  %4 = ptrtoint ptr %set_report_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_report_buf, align 4
  tail call void @kfree(ptr noundef %5) #13
  tail call void @kfree(ptr noundef %add.ptr.i) #13
  %lock = getelementptr inbounds %struct.f_hid_opts, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %refcnt = getelementptr inbounds %struct.f_hid_opts, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %refcnt, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %refcnt, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_hidg_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ptr) #2 align 64 {
entry:
  %__wq_entry.i7 = alloca %struct.wait_queue_entry, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %use_out_ep = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %use_out_ep to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_out_ep, align 2, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not.i9 = icmp eq i32 %count, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i9, label %if.then.cleanup_crit_edge, label %do.body1.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body1.i:                                       ; preds = %if.then
  %read_spinlock.i = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %read_spinlock.i) #13
  %completed_out_req.i = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %completed_out_req.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %completed_out_req.i, align 4
  %cmp.i.not32.i = icmp eq ptr %5, %completed_out_req.i
  br i1 %cmp.i.not32.i, label %while.body.lr.ph.i, label %do.body1.i.while.end.i_crit_edge

do.body1.i.while.end.i_crit_edge:                 ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %do.body1.i
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %read_queue.i = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 9
  br label %while.body.i

while.body.i:                                     ; preds = %do.body40.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %flags.033.i = phi i32 [ %call2.i, %while.body.lr.ph.i ], [ %call48.i, %do.body40.i.while.body.i_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %read_spinlock.i, i32 noundef %flags.033.i) #13
  %6 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %while.body.i.cleanup_crit_edge

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11.i:                                       ; preds = %while.body.i
  call void @__might_sleep(ptr noundef nonnull @.str.25, i32 noundef 301) #13
  %8 = ptrtoint ptr %completed_out_req.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %completed_out_req.i, align 4
  %cmp.i1.not.i = icmp eq ptr %9, %completed_out_req.i
  br i1 %cmp.i1.not.i, label %if.then21.i, label %if.end11.i.do.body40.i_crit_edge

if.end11.i.do.body40.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body40.i

if.then21.i:                                      ; preds = %if.end11.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #13
  %10 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #13
  %call2329.i = call i32 @prepare_to_wait_event(ptr noundef %read_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #13
  %11 = ptrtoint ptr %completed_out_req.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %completed_out_req.i, align 4
  %cmp.i3.not30.i = icmp eq ptr %12, %completed_out_req.i
  br i1 %cmp.i3.not30.i, label %if.then21.i.if.end28.i_crit_edge, label %if.then21.i.if.end34.thread19.i_crit_edge

if.then21.i.if.end34.thread19.i_crit_edge:        ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.thread19.i

if.then21.i.if.end28.i_crit_edge:                 ; preds = %if.then21.i
  br label %if.end28.i

if.end28.i:                                       ; preds = %cleanup.i.if.end28.i_crit_edge, %if.then21.i.if.end28.i_crit_edge
  %call2331.i = phi i32 [ %call23.i, %cleanup.i.if.end28.i_crit_edge ], [ %call2329.i, %if.then21.i.if.end28.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2331.i)
  %tobool29.not.i = icmp eq i32 %call2331.i, 0
  br i1 %tobool29.not.i, label %cleanup.i, label %if.end34.i

cleanup.i:                                        ; preds = %if.end28.i
  call void @schedule() #13
  %call23.i = call i32 @prepare_to_wait_event(ptr noundef %read_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #13
  %13 = ptrtoint ptr %completed_out_req.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %completed_out_req.i, align 4
  %cmp.i3.not.i = icmp eq ptr %14, %completed_out_req.i
  br i1 %cmp.i3.not.i, label %cleanup.i.if.end28.i_crit_edge, label %cleanup.i.if.end34.thread19.i_crit_edge

cleanup.i.if.end34.thread19.i_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34.thread19.i

cleanup.i.if.end28.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28.i

if.end34.thread19.i:                              ; preds = %cleanup.i.if.end34.thread19.i_crit_edge, %if.then21.i.if.end34.thread19.i_crit_edge
  call void @finish_wait(ptr noundef %read_queue.i, ptr noundef nonnull %__wq_entry.i) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #13
  br label %do.body40.i

if.end34.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #13
  br label %cleanup

do.body40.i:                                      ; preds = %if.end34.thread19.i, %if.end11.i.do.body40.i_crit_edge
  %call48.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %read_spinlock.i) #13
  %15 = ptrtoint ptr %completed_out_req.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %completed_out_req.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %completed_out_req.i
  br i1 %cmp.i.not.i, label %do.body40.i.while.body.i_crit_edge, label %do.body40.i.while.end.i_crit_edge

do.body40.i.while.end.i_crit_edge:                ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

do.body40.i.while.body.i_crit_edge:               ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.i:                                      ; preds = %do.body40.i.while.end.i_crit_edge, %do.body1.i.while.end.i_crit_edge
  %flags.0.lcssa.i = phi i32 [ %call2.i, %do.body1.i.while.end.i_crit_edge ], [ %call48.i, %do.body40.i.while.end.i_crit_edge ]
  %.lcssa.i = phi ptr [ %5, %do.body1.i.while.end.i_crit_edge ], [ %16, %do.body40.i.while.end.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %.lcssa.i, i32 -8
  %call.i.i5.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.lcssa.i) #13
  br i1 %call.i.i5.i, label %if.end.i.i6.i, label %while.end.i.list_del.exit.i_crit_edge

while.end.i.list_del.exit.i_crit_edge:            ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i6.i:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.lcssa.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.lcssa.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i6.i, %while.end.i.list_del.exit.i_crit_edge
  %23 = ptrtoint ptr %.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %.lcssa.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.lcssa.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 4
  %actual.i = getelementptr inbounds %struct.usb_request, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %actual.i, align 4
  %pos.i = getelementptr i8, ptr %.lcssa.i, i32 -4
  %29 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pos.i, align 4
  %sub.i = sub i32 %28, %30
  %31 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %count) #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %read_spinlock.i, i32 noundef %flags.0.lcssa.i) #13
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %26, align 4
  %34 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pos.i, align 4
  %add.ptr62.i = getelementptr i8, ptr %33, i32 %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp9.i.i.i = icmp slt i32 %31, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %list_del.exit.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.copy_to_user.exit.i_crit_edge, label %if.then27.i.i.i, !prof !240

land.rhs16.i.i.i.copy_to_user.exit.i_crit_edge:   ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %copy_to_user.exit.i

if.then.i.i.i.i:                                  ; preds = %list_del.exit.i
  call void @__check_object_size(ptr noundef %add.ptr62.i, i32 noundef %31, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 174) #13
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %36 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %31, i32 -1226833920) #18, !srcloc !241
  %asmresult.i.i.i = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr62.i, i32 noundef %31) #13
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef %add.ptr62.i, i32 noundef %31) #13
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %31, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %31, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ], [ %31, %if.then27.i.i.i ], [ %31, %land.rhs16.i.i.i.copy_to_user.exit.i_crit_edge ]
  %sub64.i = sub i32 %31, %n.addr.0.i.i
  %37 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pos.i, align 4
  %add.i = add i32 %38, %sub64.i
  store i32 %add.i, ptr %pos.i, align 4
  %39 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %actual.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %40)
  %cmp68.i = icmp eq i32 %add.i, %40
  br i1 %cmp68.i, label %if.then70.i, label %do.body79.i

if.then70.i:                                      ; preds = %copy_to_user.exit.i
  call void @kfree(ptr noundef %add.ptr.i) #13
  %report_length.i = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 6
  %41 = ptrtoint ptr %report_length.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %report_length.i, align 4
  %conv71.i = zext i16 %42 to i32
  %length.i = getelementptr inbounds %struct.usb_request, ptr %26, i32 0, i32 1
  %43 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv71.i, ptr %length.i, align 4
  %out_ep.i = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 22
  %44 = ptrtoint ptr %out_ep.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %out_ep.i, align 4
  %call72.i = call i32 @usb_ep_queue(ptr noundef %45, ptr noundef %26, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %cmp73.i = icmp slt i32 %call72.i, 0
  br i1 %cmp73.i, label %if.then75.i, label %if.then70.i.cleanup_crit_edge

if.then70.i.cleanup_crit_edge:                    ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then75.i:                                      ; preds = %if.then70.i
  %46 = ptrtoint ptr %out_ep.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %out_ep.i, align 4
  %48 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %26, align 4
  %cmp.i7.i = icmp eq ptr %49, null
  br i1 %cmp.i7.i, label %do.end.i.i, label %if.then75.i.free_ep_req.exit.i_crit_edge, !prof !238

if.then75.i.free_ep_req.exit.i_crit_edge:         ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_ep_req.exit.i

do.end.i.i:                                       ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 80, i32 noundef 9, ptr noundef null) #13
  br label %free_ep_req.exit.i

free_ep_req.exit.i:                               ; preds = %do.end.i.i, %if.then75.i.free_ep_req.exit.i_crit_edge
  %50 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %26, align 4
  call void @kfree(ptr noundef %51) #13
  %52 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %26, align 4
  call void @usb_ep_free_request(ptr noundef %47, ptr noundef %26) #13
  br label %cleanup

do.body79.i:                                      ; preds = %copy_to_user.exit.i
  %call87.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %read_spinlock.i) #13
  %53 = ptrtoint ptr %completed_out_req.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %completed_out_req.i, align 4
  %call.i.i8.i = call zeroext i1 @__list_add_valid(ptr noundef %.lcssa.i, ptr noundef %completed_out_req.i, ptr noundef %54) #13
  br i1 %call.i.i8.i, label %if.end.i.i9.i, label %do.body79.i.list_add.exit.i_crit_edge

do.body79.i.list_add.exit.i_crit_edge:            ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add.exit.i

if.end.i.i9.i:                                    ; preds = %do.body79.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %.lcssa.i, ptr %prev1.i.i.i, align 4
  %56 = ptrtoint ptr %.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %54, ptr %.lcssa.i, align 4
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %completed_out_req.i, ptr %prev.i.i, align 4
  %58 = ptrtoint ptr %completed_out_req.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %.lcssa.i, ptr %completed_out_req.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i9.i, %do.body79.i.list_add.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %read_spinlock.i, i32 noundef %call87.i) #13
  %read_queue95.i = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 9
  call void @__wake_up(ptr noundef %read_queue95.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i9, label %if.else.cleanup_crit_edge, label %do.body1.i12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body1.i12:                                     ; preds = %if.else
  %read_spinlock.i10 = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 8
  %call2.i11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %read_spinlock.i10) #13
  %set_report_buf.i = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 12
  %59 = ptrtoint ptr %set_report_buf.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %set_report_buf.i, align 4
  %cmp5.not23.i = icmp eq ptr %60, null
  br i1 %cmp5.not23.i, label %while.body.lr.ph.i15, label %do.body1.i12.if.then60.i_crit_edge

do.body1.i12.if.then60.i_crit_edge:               ; preds = %do.body1.i12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then60.i

while.body.lr.ph.i15:                             ; preds = %do.body1.i12
  %f_flags.i13 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %read_queue.i14 = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 9
  br label %while.body.i17

while.body.i17:                                   ; preds = %do.body39.i.while.body.i17_crit_edge, %while.body.lr.ph.i15
  %flags.024.i = phi i32 [ %call2.i11, %while.body.lr.ph.i15 ], [ %call47.i, %do.body39.i.while.body.i17_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %read_spinlock.i10, i32 noundef %flags.024.i) #13
  %61 = ptrtoint ptr %f_flags.i13 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %f_flags.i13, align 4
  %and.i16 = and i32 %62, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16)
  %tobool8.not.i = icmp eq i32 %and.i16, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %while.body.i17.cleanup_crit_edge

while.body.i17.cleanup_crit_edge:                 ; preds = %while.body.i17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10.i:                                       ; preds = %while.body.i17
  call void @__might_sleep(ptr noundef nonnull @.str.25, i32 noundef 370) #13
  %63 = ptrtoint ptr %set_report_buf.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %set_report_buf.i, align 4
  %cmp18.not.i = icmp eq ptr %64, null
  br i1 %cmp18.not.i, label %if.then20.i, label %if.end10.i.do.body39.i_crit_edge

if.end10.i.do.body39.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body39.i

if.then20.i:                                      ; preds = %if.end10.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i7) #13
  %65 = call ptr @memset(ptr %__wq_entry.i7, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i7, i32 noundef 0) #13
  %call2220.i = call i32 @prepare_to_wait_event(ptr noundef %read_queue.i14, ptr noundef nonnull %__wq_entry.i7, i32 noundef 1) #13
  %66 = ptrtoint ptr %set_report_buf.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %set_report_buf.i, align 4
  %cmp24.not21.i = icmp eq ptr %67, null
  br i1 %cmp24.not21.i, label %if.then20.i.if.end27.i_crit_edge, label %if.then20.i.if.end33.thread10.i_crit_edge

if.then20.i.if.end33.thread10.i_crit_edge:        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.thread10.i

if.then20.i.if.end27.i_crit_edge:                 ; preds = %if.then20.i
  br label %if.end27.i

if.end27.i:                                       ; preds = %cleanup.i18.if.end27.i_crit_edge, %if.then20.i.if.end27.i_crit_edge
  %call2222.i = phi i32 [ %call22.i, %cleanup.i18.if.end27.i_crit_edge ], [ %call2220.i, %if.then20.i.if.end27.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2222.i)
  %tobool28.not.i = icmp eq i32 %call2222.i, 0
  br i1 %tobool28.not.i, label %cleanup.i18, label %if.end33.i

cleanup.i18:                                      ; preds = %if.end27.i
  call void @schedule() #13
  %call22.i = call i32 @prepare_to_wait_event(ptr noundef %read_queue.i14, ptr noundef nonnull %__wq_entry.i7, i32 noundef 1) #13
  %68 = ptrtoint ptr %set_report_buf.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %set_report_buf.i, align 4
  %cmp24.not.i = icmp eq ptr %69, null
  br i1 %cmp24.not.i, label %cleanup.i18.if.end27.i_crit_edge, label %cleanup.i18.if.end33.thread10.i_crit_edge

cleanup.i18.if.end33.thread10.i_crit_edge:        ; preds = %cleanup.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.thread10.i

cleanup.i18.if.end27.i_crit_edge:                 ; preds = %cleanup.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

if.end33.thread10.i:                              ; preds = %cleanup.i18.if.end33.thread10.i_crit_edge, %if.then20.i.if.end33.thread10.i_crit_edge
  call void @finish_wait(ptr noundef %read_queue.i14, ptr noundef nonnull %__wq_entry.i7) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i7) #13
  br label %do.body39.i

if.end33.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i7) #13
  br label %cleanup

do.body39.i:                                      ; preds = %if.end33.thread10.i, %if.end10.i.do.body39.i_crit_edge
  %call47.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %read_spinlock.i10) #13
  %70 = ptrtoint ptr %set_report_buf.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %set_report_buf.i, align 4
  %cmp5.not.i = icmp eq ptr %71, null
  br i1 %cmp5.not.i, label %do.body39.i.while.body.i17_crit_edge, label %do.body39.i.if.then60.i_crit_edge

do.body39.i.if.then60.i_crit_edge:                ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then60.i

do.body39.i.while.body.i17_crit_edge:             ; preds = %do.body39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i17

if.then60.i:                                      ; preds = %do.body39.i.if.then60.i_crit_edge, %do.body1.i12.if.then60.i_crit_edge
  %flags.0.lcssa.i19 = phi i32 [ %call2.i11, %do.body1.i12.if.then60.i_crit_edge ], [ %call47.i, %do.body39.i.if.then60.i_crit_edge ]
  %.lcssa.i20 = phi ptr [ %60, %do.body1.i12.if.then60.i_crit_edge ], [ %71, %do.body39.i.if.then60.i_crit_edge ]
  %set_report_length.i = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 13
  %72 = ptrtoint ptr %set_report_length.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %set_report_length.i, align 4
  %74 = call i32 @llvm.umin.i32(i32 %73, i32 %count) #13
  %75 = ptrtoint ptr %set_report_buf.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %set_report_buf.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %read_spinlock.i10, i32 noundef %flags.0.lcssa.i19) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp9.i.i.i27 = icmp slt i32 %74, 0
  br i1 %cmp9.i.i.i27, label %land.rhs16.i.i.i30, label %if.then.i.i.i.i33

land.rhs16.i.i.i30:                               ; preds = %if.then60.i
  %.b71.i.i.i29 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i29, label %land.rhs16.i.i.i30.if.end62.i_crit_edge, label %if.then27.i.i.i31, !prof !240

land.rhs16.i.i.i30.if.end62.i_crit_edge:          ; preds = %land.rhs16.i.i.i30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62.i

if.then27.i.i.i31:                                ; preds = %land.rhs16.i.i.i30
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %if.end62.i

if.then.i.i.i.i33:                                ; preds = %if.then60.i
  call void @__check_object_size(ptr noundef nonnull %.lcssa.i20, i32 noundef %74, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 174) #13
  %call.i.i.i34 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i34, label %if.then.i.i.i.i33.if.end62.i_crit_edge, label %if.end.i.i.i38

if.then.i.i.i.i33.if.end62.i_crit_edge:           ; preds = %if.then.i.i.i.i33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62.i

if.end.i.i.i38:                                   ; preds = %if.then.i.i.i.i33
  %76 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %74, i32 -1226833920) #18, !srcloc !241
  %asmresult.i.i.i36 = extractvalue { i32, i32 } %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i36)
  %cmp.i6.i.i37 = icmp eq i32 %asmresult.i.i.i36, 0
  br i1 %cmp.i6.i.i37, label %if.then2.i.i.i41, label %if.end.i.i.i38.if.end62.i_crit_edge

if.end.i.i.i38.if.end62.i_crit_edge:              ; preds = %if.end.i.i.i38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62.i

if.then2.i.i.i41:                                 ; preds = %if.end.i.i.i38
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i39 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %.lcssa.i20, i32 noundef %74) #13
  %call.i12.i.i.i40 = call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef nonnull %.lcssa.i20, i32 noundef %74) #13
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then2.i.i.i41, %if.end.i.i.i38.if.end62.i_crit_edge, %if.then.i.i.i.i33.if.end62.i_crit_edge, %if.then27.i.i.i31, %land.rhs16.i.i.i30.if.end62.i_crit_edge
  %n.addr.0.i.i42 = phi i32 [ %74, %if.then.i.i.i.i33.if.end62.i_crit_edge ], [ %call.i12.i.i.i40, %if.then2.i.i.i41 ], [ %74, %if.end.i.i.i38.if.end62.i_crit_edge ], [ %74, %if.then27.i.i.i31 ], [ %74, %land.rhs16.i.i.i30.if.end62.i_crit_edge ]
  %sub.i43 = sub i32 %74, %n.addr.0.i.i42
  call void @kfree(ptr noundef nonnull %.lcssa.i20) #13
  %read_queue63.i = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 9
  call void @__wake_up(ptr noundef %read_queue63.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end62.i, %if.end33.i, %while.body.i17.cleanup_crit_edge, %if.else.cleanup_crit_edge, %list_add.exit.i, %free_ep_req.exit.i, %if.then70.i.cleanup_crit_edge, %if.end34.i, %while.body.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call72.i, %free_ep_req.exit.i ], [ 0, %if.then.cleanup_crit_edge ], [ -512, %if.end34.i ], [ %sub64.i, %if.then70.i.cleanup_crit_edge ], [ %sub64.i, %list_add.exit.i ], [ %sub.i43, %if.end62.i ], [ 0, %if.else.cleanup_crit_edge ], [ -512, %if.end33.i ], [ -11, %while.body.i17.cleanup_crit_edge ], [ -11, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_hidg_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %offp) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %write_spinlock = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %write_spinlock) #13
  %req5 = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %req5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req5, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %try_again.preheader

try_again.preheader:                              ; preds = %entry
  %write_pending = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 15
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %write_queue = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 16
  %report_length = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 6
  %in_ep = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 21
  br label %try_again

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %write_spinlock, i32 noundef %call2) #13
  br label %cleanup133

try_again:                                        ; preds = %free_ep_req.exit, %try_again.preheader
  %flags.0 = phi i32 [ %call87, %free_ep_req.exit ], [ %call2, %try_again.preheader ]
  %count.addr.0 = phi i32 [ %22, %free_ep_req.exit ], [ %count, %try_again.preheader ]
  %4 = ptrtoint ptr %write_pending to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %write_pending, align 4, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not227 = icmp eq i8 %5, 0
  br i1 %tobool7.not227, label %try_again.while.end_crit_edge, label %try_again.while.body_crit_edge

try_again.while.body_crit_edge:                   ; preds = %try_again
  br label %while.body

try_again.while.end_crit_edge:                    ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %do.body39.while.body_crit_edge, %try_again.while.body_crit_edge
  %flags.1228 = phi i32 [ %call47, %do.body39.while.body_crit_edge ], [ %flags.0, %try_again.while.body_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %write_spinlock, i32 noundef %flags.1228) #13
  %6 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags, align 4
  %and = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end12, label %while.body.cleanup133_crit_edge

while.body.cleanup133_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup133

if.end12:                                         ; preds = %while.body
  call void @__might_sleep(ptr noundef nonnull @.str.25, i32 noundef 445) #13
  %8 = ptrtoint ptr %write_pending to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_pending, align 4, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool20.not = icmp eq i8 %9, 0
  br i1 %tobool20.not, label %if.end12.do.body39_crit_edge, label %if.then21

if.end12.do.body39_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body39

if.then21:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %call23224 = call i32 @prepare_to_wait_event(ptr noundef %write_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %11 = ptrtoint ptr %write_pending to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %write_pending, align 4, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool25.not225 = icmp eq i8 %12, 0
  br i1 %tobool25.not225, label %if.then21.if.end33.thread195_crit_edge, label %if.then21.if.end27_crit_edge

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  br label %if.end27

if.then21.if.end33.thread195_crit_edge:           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.thread195

if.end27:                                         ; preds = %cleanup.if.end27_crit_edge, %if.then21.if.end27_crit_edge
  %call23226 = phi i32 [ %call23, %cleanup.if.end27_crit_edge ], [ %call23224, %if.then21.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23226)
  %tobool28.not = icmp eq i32 %call23226, 0
  br i1 %tobool28.not, label %cleanup, label %if.end33

cleanup:                                          ; preds = %if.end27
  call void @schedule() #13
  %call23 = call i32 @prepare_to_wait_event(ptr noundef %write_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %13 = ptrtoint ptr %write_pending to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %write_pending, align 4, !range !237
  %tobool25.not = icmp eq i8 %14, 0
  br i1 %tobool25.not, label %cleanup.if.end33.thread195_crit_edge, label %cleanup.if.end27_crit_edge

cleanup.if.end27_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

cleanup.if.end33.thread195_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33.thread195

if.end33.thread195:                               ; preds = %cleanup.if.end33.thread195_crit_edge, %if.then21.if.end33.thread195_crit_edge
  call void @finish_wait(ptr noundef %write_queue, ptr noundef nonnull %__wq_entry) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %do.body39

if.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %cleanup133

do.body39:                                        ; preds = %if.end33.thread195, %if.end12.do.body39_crit_edge
  %call47 = call i32 @_raw_spin_lock_irqsave(ptr noundef %write_spinlock) #13
  %15 = ptrtoint ptr %write_pending to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %write_pending, align 4, !range !237
  %tobool7.not = icmp eq i8 %16, 0
  br i1 %tobool7.not, label %do.body39.while.end_crit_edge, label %do.body39.while.body_crit_edge

do.body39.while.body_crit_edge:                   ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

do.body39.while.end_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %do.body39.while.end_crit_edge, %try_again.while.end_crit_edge
  %flags.1.lcssa = phi i32 [ %flags.0, %try_again.while.end_crit_edge ], [ %call47, %do.body39.while.end_crit_edge ]
  %17 = ptrtoint ptr %write_pending to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %write_pending, align 4
  %18 = ptrtoint ptr %req5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %req5, align 4
  %20 = ptrtoint ptr %report_length to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %report_length, align 4
  %conv54 = zext i16 %21 to i32
  %22 = call i32 @llvm.umin.i32(i32 %count.addr.0, i32 %conv54)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %write_spinlock, i32 noundef %flags.1.lcssa) #13
  %tobool59.not = icmp eq ptr %19, null
  br i1 %tobool59.not, label %while.end.do.body117.sink.split_crit_edge, label %if.end64

while.end.do.body117.sink.split_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body117.sink.split

if.end64:                                         ; preds = %while.end
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %19, align 4
  call void @__check_object_size(ptr noundef %24, i32 noundef %22, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 156) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end64.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end64.if.end.i.i_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end64
  %25 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %22, i32 -1226833920) #18, !srcloc !242
  %asmresult.i.i = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !240

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %24, i32 noundef %22) #13
  %26 = call i32 @llvm.read_register.i32(metadata !226) #13
  %and.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #11, !srcloc !243
  %and.i.i.i.i = and i32 %28, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !245
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %24, ptr noundef %buffer, i32 noundef %22) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #13, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !245
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end64.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %22, %if.end64.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %22, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body79, label %if.then11.i.i, !prof !240

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i = sub i32 %22, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %sub.i.i
  %29 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %do.body117.sink.split

do.body79:                                        ; preds = %if.end.i.i
  %call87 = call i32 @_raw_spin_lock_irqsave(ptr noundef %write_spinlock) #13
  %30 = ptrtoint ptr %req5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %req5, align 4
  %tobool93.not = icmp eq ptr %31, null
  br i1 %tobool93.not, label %if.then94, label %if.end95

if.then94:                                        ; preds = %do.body79
  %32 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %in_ep, align 4
  %34 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %19, align 4
  %cmp.i = icmp eq ptr %35, null
  br i1 %cmp.i, label %do.end.i, label %if.then94.free_ep_req.exit_crit_edge, !prof !238

if.then94.free_ep_req.exit_crit_edge:             ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_ep_req.exit

do.end.i:                                         ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 80, i32 noundef 9, ptr noundef null) #13
  br label %free_ep_req.exit

free_ep_req.exit:                                 ; preds = %do.end.i, %if.then94.free_ep_req.exit_crit_edge
  %36 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %19, align 4
  call void @kfree(ptr noundef %37) #13
  %38 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %19, align 4
  call void @usb_ep_free_request(ptr noundef %33, ptr noundef nonnull %19) #13
  br label %try_again

if.end95:                                         ; preds = %do.body79
  %status96 = getelementptr inbounds %struct.usb_request, ptr %19, i32 0, i32 11
  %39 = ptrtoint ptr %status96 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %status96, align 4
  %zero = getelementptr inbounds %struct.usb_request, ptr %19, i32 0, i32 6
  %40 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %40)
  %bf.load = load i32, ptr %zero, align 4
  %bf.clear = and i32 %bf.load, -8193
  store i32 %bf.clear, ptr %zero, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %19, i32 0, i32 1
  %41 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %22, ptr %length, align 4
  %complete = getelementptr inbounds %struct.usb_request, ptr %19, i32 0, i32 7
  %42 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @f_hidg_req_complete, ptr %complete, align 4
  %context = getelementptr inbounds %struct.usb_request, ptr %19, i32 0, i32 8
  %43 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %1, ptr %context, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %write_spinlock, i32 noundef %call87) #13
  %44 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %in_ep, align 4
  %enabled = getelementptr inbounds %struct.usb_ep, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %enabled, align 1, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool99.not = icmp eq i8 %47, 0
  br i1 %tobool99.not, label %if.end95.do.body117.sink.split_crit_edge, label %if.end109

if.end95.do.body117.sink.split_crit_edge:         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body117.sink.split

if.end109:                                        ; preds = %if.end95
  %call111 = call i32 @usb_ep_queue(ptr noundef %45, ptr noundef nonnull %19, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %if.end109.do.body117_crit_edge, label %if.end109.cleanup133_crit_edge

if.end109.cleanup133_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup133

if.end109.do.body117_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body117

do.body117.sink.split:                            ; preds = %if.end95.do.body117.sink.split_crit_edge, %if.then11.i.i, %while.end.do.body117.sink.split_crit_edge
  %.str.38.sink = phi ptr [ @.str.35, %if.then11.i.i ], [ @.str.38, %if.end95.do.body117.sink.split_crit_edge ], [ @.str.32, %while.end.do.body117.sink.split_crit_edge ]
  %status.0.ph = phi i32 [ -22, %if.then11.i.i ], [ -108, %if.end95.do.body117.sink.split_crit_edge ], [ -108, %while.end.do.body117.sink.split_crit_edge ]
  %config105 = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 20, i32 6
  %48 = ptrtoint ptr %config105 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %config105, align 4
  %cdev106 = getelementptr inbounds %struct.usb_configuration, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %cdev106 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cdev106, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %dev108 = getelementptr inbounds %struct.usb_gadget, ptr %53, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev108, ptr noundef nonnull %.str.38.sink) #17
  br label %do.body117

do.body117:                                       ; preds = %do.body117.sink.split, %if.end109.do.body117_crit_edge
  %status.0 = phi i32 [ %call111, %if.end109.do.body117_crit_edge ], [ %status.0.ph, %do.body117.sink.split ]
  %call125 = call i32 @_raw_spin_lock_irqsave(ptr noundef %write_spinlock) #13
  %54 = ptrtoint ptr %write_pending to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %write_pending, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %write_spinlock, i32 noundef %call125) #13
  call void @__wake_up(ptr noundef %write_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %cleanup133

cleanup133:                                       ; preds = %do.body117, %if.end109.cleanup133_crit_edge, %if.end33, %while.body.cleanup133_crit_edge, %if.then
  %retval.0 = phi i32 [ %status.0, %do.body117 ], [ -108, %if.then ], [ -512, %if.end33 ], [ %22, %if.end109.cleanup133_crit_edge ], [ -11, %while.body.cleanup133_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_hidg_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %read_queue = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 9
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit30_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit30_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %poll_wait.exit30

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %read_queue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.land.lhs.true.i28_crit_edge, label %if.then.i

land.lhs.true.i.land.lhs.true.i28_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i28

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %3(ptr noundef %file, ptr noundef nonnull %read_queue, ptr noundef nonnull %wait) #13
  br label %land.lhs.true.i28

land.lhs.true.i28:                                ; preds = %if.then.i, %land.lhs.true.i.land.lhs.true.i28_crit_edge
  %write_queue31 = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i25 = icmp eq ptr %5, null
  %tobool3.not.i26 = icmp eq ptr %write_queue31, null
  %or.cond.i27 = or i1 %tobool3.not.i26, %tobool1.not.i25
  br i1 %or.cond.i27, label %land.lhs.true.i28.poll_wait.exit30_crit_edge, label %if.then.i29

land.lhs.true.i28.poll_wait.exit30_crit_edge:     ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #15
  br label %poll_wait.exit30

if.then.i29:                                      ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #15
  tail call void %5(ptr noundef %file, ptr noundef nonnull %write_queue31, ptr noundef nonnull %wait) #13
  br label %poll_wait.exit30

poll_wait.exit30:                                 ; preds = %if.then.i29, %land.lhs.true.i28.poll_wait.exit30_crit_edge, %entry.poll_wait.exit30_crit_edge
  %write_pending = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %write_pending to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %write_pending, align 4, !range !237
  %use_out_ep = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %use_out_ep to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %use_out_ep, align 2, !range !237
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %poll_wait.exit30
  call void @__sanitizer_cov_trace_pc() #15
  %completed_out_req = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %completed_out_req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %completed_out_req, align 4
  %cmp.i.not = icmp eq ptr %11, %completed_out_req
  br label %if.end10

if.else:                                          ; preds = %poll_wait.exit30
  call void @__sanitizer_cov_trace_pc() #15
  %set_report_buf = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %set_report_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_report_buf, align 4
  %cmp.not = icmp eq ptr %13, null
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then2
  %cmp.not.sink = phi i1 [ %cmp.not, %if.else ], [ %cmp.i.not, %if.then2 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %spec.select = select i1 %tobool.not, i32 260, i32 0
  %or8 = or i32 %spec.select, 65
  %spec.select23 = select i1 %cmp.not.sink, i32 %spec.select, i32 %or8
  ret i32 %spec.select23
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @f_hidg_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %fd) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -240
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @f_hidg_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef writeonly %fd) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @f_hidg_req_complete(ptr nocapture noundef readonly %ep, ptr nocapture noundef readonly %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.do.body3_crit_edge, label %do.end

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %config = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 20, i32 6
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cdev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %3) #17
  br label %do.body3

do.body3:                                         ; preds = %do.end, %entry.do.body3_crit_edge
  %write_spinlock = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 14
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %write_spinlock) #13
  %write_pending = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %write_pending to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %write_pending, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %write_spinlock, i32 noundef %call5) #13
  %write_queue = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %write_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidg_intout_complete(ptr noundef %ep, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %config = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 20, i32 6
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
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %7, label %do.end14 [
    i32 0, label %sw.bb
    i32 -103, label %entry.free_req_crit_edge
    i32 -104, label %entry.free_req_crit_edge33
    i32 -108, label %entry.free_req_crit_edge34
  ]

entry.free_req_crit_edge34:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_req

entry.free_req_crit_edge33:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_req

entry.free_req_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_req

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2848, i32 noundef 16) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %11, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #17
  br label %free_req

if.end:                                           ; preds = %sw.bb
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %req, ptr %call7.i.i, align 8
  %read_spinlock = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 8
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %read_spinlock) #13
  %list = getelementptr inbounds %struct.f_hidg_req_list, ptr %call7.i.i, i32 0, i32 2
  %completed_out_req = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %14, ptr noundef %completed_out_req) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %prev.i, align 4
  %16 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %completed_out_req, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.f_hidg_req_list, ptr %call7.i.i, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %read_spinlock, i32 noundef %call6) #13
  %read_queue = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %read_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %cleanup

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %5, align 4
  %dev16 = getelementptr inbounds %struct.usb_gadget, ptr %20, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.61, i32 noundef %7) #17
  br label %free_req

free_req:                                         ; preds = %do.end14, %do.end, %entry.free_req_crit_edge, %entry.free_req_crit_edge33, %entry.free_req_crit_edge34
  %21 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req, align 4
  %cmp.i = icmp eq ptr %22, null
  br i1 %cmp.i, label %do.end.i, label %free_req.free_ep_req.exit_crit_edge, !prof !238

free_req.free_ep_req.exit_crit_edge:              ; preds = %free_req
  call void @__sanitizer_cov_trace_pc() #15
  br label %free_ep_req.exit

do.end.i:                                         ; preds = %free_req
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.42, i32 noundef 80, i32 noundef 9, ptr noundef null) #13
  br label %free_ep_req.exit

free_ep_req.exit:                                 ; preds = %do.end.i, %free_req.free_ep_req.exit_crit_edge
  %23 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %req, align 4
  tail call void @kfree(ptr noundef %24) #13
  %25 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %req, align 4
  tail call void @usb_ep_free_request(ptr noundef %ep, ptr noundef %req) #13
  br label %cleanup

cleanup:                                          ; preds = %free_ep_req.exit, %list_add_tail.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_ep_req(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hidg_ssreport_complete(ptr nocapture noundef readnone %ep, ptr nocapture noundef readonly %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %config = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 20, i32 6
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
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req, align 4
  %cmp2 = icmp eq ptr %9, null
  br i1 %cmp2, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false3

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %10 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4 = icmp eq i32 %11, 0
  br i1 %cmp4, label %lor.lhs.false3.do.end_crit_edge, label %do.body9

lor.lhs.false3.do.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false3.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req, align 4
  %actual7 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %16 = ptrtoint ptr %actual7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %actual7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef %7, ptr noundef %15, i32 noundef %17) #17
  br label %cleanup

do.body9:                                         ; preds = %lor.lhs.false3
  %read_spinlock = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 8
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %read_spinlock) #13
  %set_report_buf = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %set_report_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_report_buf, align 4
  %20 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %actual, align 4
  %call17 = tail call noalias ptr @krealloc(ptr noundef %19, i32 noundef %21, i32 noundef 2592) #19
  %cmp18 = icmp eq ptr %call17, null
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %read_spinlock, i32 noundef %call11) #13
  br label %cleanup

if.end22:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %set_report_buf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call17, ptr %set_report_buf, align 4
  %23 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %actual, align 4
  %set_report_length = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 13
  %25 = ptrtoint ptr %set_report_length to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %set_report_length, align 4
  %26 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %req, align 4
  %28 = load i32, ptr %actual, align 4
  %29 = call ptr @memcpy(ptr %call17, ptr %27, i32 %28)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %read_spinlock, i32 noundef %call11) #13
  %read_queue = getelementptr inbounds %struct.f_hidg, ptr %1, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %read_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then20, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !12, !14, !16, !18, !19, !20, !22, !23, !25, !27, !28, !29, !31, !32, !34, !36, !38, !40, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !75, !76, !77, !78, !79, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !126, !128, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !192, !193, !195, !196, !198, !199, !201, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !221, !223, !224, !225}
!llvm.named.register.sp = !{!226}
!llvm.module.flags = !{!227, !228, !229, !230, !231, !232, !233, !234}
!llvm.ident = !{!235}

!0 = !{ptr @__UNIQUE_ID_alias256, !1, !"__UNIQUE_ID_alias256", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 1313, i32 1}
!2 = !{ptr @__initcall__kmod_usb_f_hid__257_1313_hidmod_init6, !1, !"__initcall__kmod_usb_f_hid__257_1313_hidmod_init6", i1 false, i1 false}
!3 = !{ptr @__exitcall_hidmod_exit, !1, !"__exitcall_hidmod_exit", i1 false, i1 false}
!4 = !{ptr @__UNIQUE_ID_file258, !5, !"__UNIQUE_ID_file258", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 1314, i32 1}
!6 = !{ptr @__UNIQUE_ID_license259, !5, !"__UNIQUE_ID_license259", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author260, !8, !"__UNIQUE_ID_author260", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 1315, i32 1}
!9 = !{ptr @ghid_setup.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 1322, i32 15}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @major, !13, !"major", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 25, i32 12}
!14 = !{ptr @minors, !15, !"minors", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 25, i32 19}
!16 = !{ptr @hidg_class, !17, !"hidg_class", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 26, i32 22}
!18 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @hidusb_func, !1, !"hidusb_func", i1 false, i1 false}
!20 = !{ptr @hidg_alloc_inst.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 1210, i32 2}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 1233, i32 54}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 28, i32 8}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @hidg_ida_lock, !26, !"hidg_ida_lock", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 27, i32 8}
!31 = !{ptr @hidg_ida, !30, !"hidg_ida", i1 false, i1 false}
!32 = !{ptr @hid_func_type, !33, !"hid_func_type", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 1170, i32 38}
!34 = !{ptr @hidg_item_ops, !35, !"hidg_item_ops", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 1053, i32 40}
!36 = !{ptr @hid_attrs, !37, !"hid_attrs", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 1160, i32 35}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 1101, i32 1}
!40 = !{ptr @f_hid_opts_attr_subclass, !39, !"f_hid_opts_attr_subclass", i1 false, i1 false}
!41 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 1102, i32 1}
!44 = !{ptr @f_hid_opts_attr_protocol, !43, !"f_hid_opts_attr_protocol", i1 false, i1 false}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 1103, i32 1}
!47 = !{ptr @f_hid_opts_attr_no_out_endpoint, !46, !"f_hid_opts_attr_no_out_endpoint", i1 false, i1 false}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 1104, i32 1}
!50 = !{ptr @f_hid_opts_attr_report_length, !49, !"f_hid_opts_attr_report_length", i1 false, i1 false}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 1149, i32 1}
!53 = !{ptr @f_hid_opts_attr_report_desc, !52, !"f_hid_opts_attr_report_desc", i1 false, i1 false}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 1158, i32 1}
!56 = !{ptr @f_hid_opts_attr_dev, !55, !"f_hid_opts_attr_dev", i1 false, i1 false}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 1155, i32 23}
!59 = !{ptr @hidg_bind.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 992, i32 2}
!61 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @hidg_bind.__key.16, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 995, i32 2}
!64 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @hidg_bind.__key.18, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 996, i32 2}
!67 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @hidg_bind.__key.20, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 997, i32 2}
!70 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 1008, i32 11}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 1020, i32 2}
!75 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @hidg_bind._entry, !74, !"_entry", i1 false, i1 false}
!80 = !{ptr @hidg_bind._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @ct_func_strings, !82, !"ct_func_strings", i1 false, i1 false}
!82 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 271, i32 35}
!83 = !{ptr @ct_func_string_table, !84, !"ct_func_string_table", i1 false, i1 false}
!84 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 266, i32 34}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 262, i32 24}
!87 = !{ptr @ct_func_string_defs, !88, !"ct_func_string_defs", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 261, i32 26}
!89 = !{ptr @hidg_interface_desc, !90, !"hidg_interface_desc", i1 false, i1 false}
!90 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 90, i32 40}
!91 = !{ptr @hidg_fs_in_ep_desc, !92, !"hidg_fs_in_ep_desc", i1 false, i1 false}
!92 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 217, i32 39}
!93 = !{ptr @hidg_fs_out_ep_desc, !94, !"hidg_fs_out_ep_desc", i1 false, i1 false}
!94 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 229, i32 39}
!95 = !{ptr @hidg_ss_in_ep_desc, !96, !"hidg_ss_in_ep_desc", i1 false, i1 false}
!96 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 114, i32 39}
!97 = !{ptr @hidg_ss_in_comp_desc, !98, !"hidg_ss_in_comp_desc", i1 false, i1 false}
!98 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 126, i32 41}
!99 = !{ptr @hidg_hs_in_ep_desc, !100, !"hidg_hs_in_ep_desc", i1 false, i1 false}
!100 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 176, i32 39}
!101 = !{ptr @hidg_ss_out_ep_desc, !102, !"hidg_ss_out_ep_desc", i1 false, i1 false}
!102 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 135, i32 39}
!103 = !{ptr @hidg_ss_out_comp_desc, !104, !"hidg_ss_out_comp_desc", i1 false, i1 false}
!104 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 147, i32 41}
!105 = !{ptr @hidg_hs_out_ep_desc, !106, !"hidg_hs_out_ep_desc", i1 false, i1 false}
!106 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 188, i32 39}
!107 = !{ptr @hidg_desc, !108, !"hidg_desc", i1 false, i1 false}
!108 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 102, i32 30}
!109 = !{ptr @hidg_fs_descriptors_intout, !110, !"hidg_fs_descriptors_intout", i1 false, i1 false}
!110 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 241, i32 38}
!111 = !{ptr @hidg_hs_descriptors_intout, !112, !"hidg_hs_descriptors_intout", i1 false, i1 false}
!112 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 200, i32 38}
!113 = !{ptr @hidg_ss_descriptors_intout, !114, !"hidg_ss_descriptors_intout", i1 false, i1 false}
!114 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 156, i32 38}
!115 = !{ptr @hidg_fs_descriptors_ssreport, !116, !"hidg_fs_descriptors_ssreport", i1 false, i1 false}
!116 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 249, i32 38}
!117 = !{ptr @hidg_hs_descriptors_ssreport, !118, !"hidg_hs_descriptors_ssreport", i1 false, i1 false}
!118 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 208, i32 38}
!119 = !{ptr @hidg_ss_descriptors_ssreport, !120, !"hidg_ss_descriptors_ssreport", i1 false, i1 false}
!120 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 166, i32 38}
!121 = !{ptr @f_hidg_fops, !122, !"f_hidg_fops", i1 false, i1 false}
!122 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 892, i32 37}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!125 = !{ptr @.str.29, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.30, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!128 = !{ptr @.str.31, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!130 = !{ptr @.str.32, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 458, i32 3}
!132 = !{ptr @.str.33, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @f_hidg_write._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @f_hidg_write._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.35, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 465, i32 3}
!137 = !{ptr @f_hidg_write._entry.34, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @f_hidg_write._entry_ptr.36, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.38, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 492, i32 3}
!141 = !{ptr @f_hidg_write._entry.37, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @f_hidg_write._entry_ptr.39, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.40, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 411, i32 3}
!145 = !{ptr @.str.41, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @f_hidg_req_complete._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @f_hidg_req_complete._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.42, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/gadget/u_f.h", i32 80, i32 2}
!150 = !{ptr @.str.43, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 801, i32 2}
!152 = !{ptr @.str.44, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.45, !151, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @hidg_set_alt.__UNIQUE_ID_ddebug255, !151, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!155 = !{ptr @.str.46, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 810, i32 4}
!157 = !{ptr @hidg_set_alt._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @hidg_set_alt._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.48, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 815, i32 4}
!161 = !{ptr @hidg_set_alt._entry.47, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @hidg_set_alt._entry_ptr.49, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @hidg_set_alt._entry.50, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 834, i32 4}
!165 = !{ptr @hidg_set_alt._entry_ptr.51, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.53, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 839, i32 4}
!168 = !{ptr @hidg_set_alt._entry.52, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @hidg_set_alt._entry_ptr.54, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.56, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 857, i32 6}
!172 = !{ptr @hidg_set_alt._entry.55, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @hidg_set_alt._entry_ptr.57, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.58, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 576, i32 4}
!176 = !{ptr @.str.59, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @hidg_intout_complete._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @hidg_intout_complete._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.61, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 589, i32 3}
!181 = !{ptr @hidg_intout_complete._entry.60, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @hidg_intout_complete._entry_ptr.62, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.63, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 643, i32 2}
!185 = !{ptr @.str.64, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @hidg_setup.__UNIQUE_ID_ddebug234, !184, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!187 = !{ptr @.str.65, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 650, i32 3}
!189 = !{ptr @hidg_setup.__UNIQUE_ID_ddebug235, !188, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!190 = !{ptr @.str.66, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 661, i32 3}
!192 = !{ptr @hidg_setup.__UNIQUE_ID_ddebug238, !191, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!193 = !{ptr @.str.67, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 669, i32 3}
!195 = !{ptr @hidg_setup.__UNIQUE_ID_ddebug241, !194, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!196 = !{ptr @.str.68, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 677, i32 3}
!198 = !{ptr @hidg_setup.__UNIQUE_ID_ddebug244, !197, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!199 = !{ptr @.str.69, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 687, i32 3}
!201 = !{ptr @hidg_setup.__UNIQUE_ID_ddebug245, !200, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!202 = !{ptr @.str.70, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 704, i32 3}
!204 = !{ptr @hidg_setup.__UNIQUE_ID_ddebug246, !203, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!205 = !{ptr @.str.71, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 717, i32 4}
!207 = !{ptr @hidg_setup.__UNIQUE_ID_ddebug247, !206, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!208 = !{ptr @.str.72, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 729, i32 4}
!210 = !{ptr @hidg_setup.__UNIQUE_ID_ddebug250, !209, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!211 = !{ptr @.str.73, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 737, i32 4}
!213 = !{ptr @hidg_setup.__UNIQUE_ID_ddebug253, !212, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!214 = !{ptr @.str.74, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 745, i32 3}
!216 = !{ptr @hidg_setup.__UNIQUE_ID_ddebug254, !215, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!217 = !{ptr @.str.75, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 759, i32 3}
!219 = !{ptr @hidg_setup._entry, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @hidg_setup._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.76, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/usb/gadget/function/f_hid.c", i32 608, i32 3}
!223 = !{ptr @.str.77, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @hidg_ssreport_complete._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @hidg_ssreport_complete._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{!"sp"}
!227 = !{i32 1, !"wchar_size", i32 2}
!228 = !{i32 1, !"min_enum_size", i32 4}
!229 = !{i32 8, !"branch-target-enforcement", i32 0}
!230 = !{i32 8, !"sign-return-address", i32 0}
!231 = !{i32 8, !"sign-return-address-all", i32 0}
!232 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!233 = !{i32 7, !"uwtable", i32 1}
!234 = !{i32 7, !"frame-pointer", i32 2}
!235 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!236 = !{!"auto-init"}
!237 = !{i8 0, i8 2}
!238 = !{!"branch_weights", i32 1, i32 2000}
!239 = !{i64 2148724305, i64 2148724310, i64 2148724323, i64 2148724367, i64 2148724401, i64 2148724422}
!240 = !{!"branch_weights", i32 2000, i32 1}
!241 = !{i64 2153206151, i64 2153206176}
!242 = !{i64 2153205470, i64 2153205495}
!243 = !{i64 5701025}
!244 = !{i64 5701222}
!245 = !{i64 2153186455}
