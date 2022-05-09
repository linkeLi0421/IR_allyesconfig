; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/f_printer.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_printer.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.f_printer_opts = type { %struct.usb_function_instance, i32, ptr, i8, i32, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.printer_dev = type { %struct.spinlock, %struct.mutex, ptr, i8, ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32, ptr, i8, i8, i32, %struct.cdev, i8, %struct.wait_queue_head, i32, ptr, %struct.usb_function }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
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

@__UNIQUE_ID_alias259 = internal constant [36 x i8] c"usb_f_printer.alias=usbfunc:printer\00", section ".modinfo", align 1
@printerusb_func = internal global { %struct.usb_function_driver, [40 x i8] } { %struct.usb_function_driver { ptr @.str, ptr null, %struct.list_head zeroinitializer, ptr @gprinter_alloc_inst, ptr @gprinter_alloc }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_usb_f_printer__260_1513_printermod_init6 = internal global ptr @printermod_init, section ".initcall6.init", align 4
@__exitcall_printermod_exit = internal global ptr @printermod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file261 = internal constant [61 x i8] c"usb_f_printer.file=drivers/usb/gadget/function/usb_f_printer\00", section ".modinfo", align 1
@__UNIQUE_ID_license262 = internal constant [26 x i8] c"usb_f_printer.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author263 = internal constant [34 x i8] c"usb_f_printer.author=Craig Nadler\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"printer\00", [24 x i8] zeroinitializer }, align 32
@gprinter_alloc_inst.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&opts->lock\00", [20 x i8] zeroinitializer }, align 32
@printer_ida_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @printer_ida_lock, i64 52), ptr getelementptr (i8, ptr @printer_ida_lock, i64 52) }, ptr @printer_ida_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@printer_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@printer_func_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @printer_item_ops, ptr null, ptr @printer_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"printer_ida_lock.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"printer_ida_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"printer_ida.xa_lock\00", [44 x i8] zeroinitializer }, align 32
@gprinter_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"usb_printer_gadget\00", [45 x i8] zeroinitializer }, align 32
@usb_gadget_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gprinter_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 1526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013unable to create usb_gadget class %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gprinter_setup\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/usb/gadget/function/f_printer.c\00", [56 x i8] zeroinitializer }, align 32
@gprinter_setup._entry_ptr = internal global ptr @gprinter_setup._entry, section ".printk_index", align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"USB printer gadget\00", [45 x i8] zeroinitializer }, align 32
@gprinter_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.9, i32 1532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013alloc_chrdev_region %d\0A\00", [38 x i8] zeroinitializer }, align 32
@gprinter_setup._entry_ptr.13 = internal global ptr @gprinter_setup._entry.11, section ".printk_index", align 4
@major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@minors = internal global { i1, [31 x i8] } zeroinitializer, align 32
@printer_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @printer_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@printer_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @f_printer_opts_attr_pnp_string, ptr @f_printer_opts_attr_q_len, ptr null], [20 x i8] zeroinitializer }, align 32
@f_printer_opts_attr_pnp_string = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.14, ptr null, i16 420, ptr @f_printer_opts_pnp_string_show, ptr @f_printer_opts_pnp_string_store }, [44 x i8] zeroinitializer }, align 32
@f_printer_opts_attr_q_len = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.15, ptr null, i16 420, ptr @f_printer_opts_q_len_show, ptr @f_printer_opts_q_len_store }, [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pnp_string\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"q_len\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@gprinter_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@gprinter_alloc.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&dev->lock_printer_io\00", [42 x i8] zeroinitializer }, align 32
@gprinter_alloc.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dev->rx_wait\00", [18 x i8] zeroinitializer }, align 32
@gprinter_alloc.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dev->tx_wait\00", [18 x i8] zeroinitializer }, align 32
@gprinter_alloc.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->tx_flush_wait\00", [44 x i8] zeroinitializer }, align 32
@intf_desc = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 2, i8 7, i8 1, i8 2, i8 0 }, [23 x i8] zeroinitializer }, align 32
@fs_ep_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@printer_func_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.9, i32 1088, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't autoconfigure on %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"printer_func_bind\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@printer_func_bind._entry_ptr = internal global ptr @printer_func_bind._entry, section ".printk_index", align 4
@fs_ep_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hs_ep_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hs_ep_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_ep_in_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_ep_out_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@fs_printer_function = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @intf_desc, ptr @fs_ep_in_desc, ptr @fs_ep_out_desc, ptr null], [16 x i8] zeroinitializer }, align 32
@hs_printer_function = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @intf_desc, ptr @hs_ep_in_desc, ptr @hs_ep_out_desc, ptr null], [16 x i8] zeroinitializer }, align 32
@ss_printer_function = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @intf_desc, ptr @ss_ep_in_desc, ptr @ss_ep_in_comp_desc, ptr @ss_ep_out_desc, ptr @ss_ep_out_comp_desc, ptr null], [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"g_printer%d\00", [20 x i8] zeroinitializer }, align 32
@printer_func_bind._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.9, i32 1131, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to create device: g_printer\0A\00", [60 x i8] zeroinitializer }, align 32
@printer_func_bind._entry_ptr.33 = internal global ptr @printer_func_bind._entry.31, section ".printk_index", align 4
@printer_io_operations = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @printer_read, ptr @printer_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @printer_poll, ptr @printer_ioctl, ptr null, ptr null, i32 0, ptr @printer_open, ptr null, ptr @printer_close, ptr @printer_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@printer_func_bind._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.9, i32 1144, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to open char device\0A\00", [36 x i8] zeroinitializer }, align 32
@printer_func_bind._entry_ptr.36 = internal global ptr @printer_func_bind._entry.34, section ".printk_index", align 4
@ss_ep_in_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@ss_ep_out_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@printer_read.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.38, ptr @.str.9, ptr @.str.39, i8 0, i8 111, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb_f_printer\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"printer_read\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"printer_read trying to read %d bytes\0A\00", [58 x i8] zeroinitializer }, align 32
@printer_read.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.38, ptr @.str.9, ptr @.str.40, i8 0, i8 -116, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"printer_read returned %d bytes\0A\00", [32 x i8] zeroinitializer }, align 32
@setup_rx_reqs.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.41, ptr @.str.9, ptr @.str.42, i8 0, i8 104, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"setup_rx_reqs\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rx submit --> %d\0A\00", [46 x i8] zeroinitializer }, align 32
@rx_complete.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.43, ptr @.str.9, ptr @.str.44, i8 0, i8 69, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx_complete\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"G_Printer : rx length %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rx_complete.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.43, ptr @.str.9, ptr @.str.45, i8 0, i8 71, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rx shutdown, code %d\0A\00", [42 x i8] zeroinitializer }, align 32
@rx_complete.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.43, ptr @.str.9, ptr @.str.46, i8 0, i8 73, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx %s reset\0A\00", [19 x i8] zeroinitializer }, align 32
@rx_complete.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.43, ptr @.str.9, ptr @.str.47, i8 0, i8 75, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx status %d\0A\00", [18 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@printer_write.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.51, ptr @.str.9, ptr @.str.52, i8 0, i8 -112, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"printer_write\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"printer_write trying to send %d bytes\0A\00", [57 x i8] zeroinitializer }, align 32
@printer_write.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.51, ptr @.str.9, ptr @.str.53, i8 0, i8 -86, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"printer_write sent %d bytes\0A\00", [35 x i8] zeroinitializer }, align 32
@tx_complete.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.54, ptr @.str.9, ptr @.str.55, i8 0, i8 79, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tx_complete\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx err %d\0A\00", [21 x i8] zeroinitializer }, align 32
@printer_ioctl.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.56, ptr @.str.9, ptr @.str.57, i8 0, i8 -66, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"printer_ioctl\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"printer_ioctl: cmd=0x%4.4x, arg=%lu\0A\00", [59 x i8] zeroinitializer }, align 32
@printer_ioctl.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.56, ptr @.str.9, ptr @.str.58, i8 0, i8 -61, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"printer_ioctl: ERROR cmd=0x%4.4xis not supported\0A\00", [46 x i8] zeroinitializer }, align 32
@printer_open.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.59, ptr @.str.9, ptr @.str.60, i8 0, i8 91, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"printer_open\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"printer_open returned %x\0A\00", [38 x i8] zeroinitializer }, align 32
@printer_close.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.61, ptr @.str.9, ptr @.str.62, i8 0, i8 96, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"printer_close\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"printer_close\0A\00", [17 x i8] zeroinitializer }, align 32
@printer_func_setup.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.63, ptr @.str.9, ptr @.str.64, i8 0, i8 -8, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"printer_func_setup\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ctrl req%02x.%02x v%04x i%04x l%d\0A\00", [61 x i8] zeroinitializer }, align 32
@printer_func_setup.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.63, ptr @.str.9, ptr @.str.65, i8 0, i8 -3, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"1284 PNP String: %x %s\0A\00", [40 x i8] zeroinitializer }, align 32
@printer_func_setup.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.63, ptr @.str.9, ptr @.str.66, i8 1, i8 5, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unknown ctrl req%02x.%02x v%04x i%04x l%d\0A\00", [53 x i8] zeroinitializer }, align 32
@printer_func_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.63, ptr @.str.9, i32 1053, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s:%d Error!\0A\00", [18 x i8] zeroinitializer }, align 32
@printer_func_setup._entry_ptr = internal global ptr @printer_func_setup._entry, section ".printk_index", align 4
@printer_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.9, i32 890, ptr @.str.70, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Received Printer Reset Request\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"printer_soft_reset\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@printer_soft_reset._entry_ptr = internal global ptr @printer_soft_reset._entry, section ".printk_index", align 4
@printer_soft_reset.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.69, ptr @.str.9, ptr @.str.71, i8 0, i8 -33, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to disable USB in_ep\0A\00", [35 x i8] zeroinitializer }, align 32
@printer_soft_reset.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.69, ptr @.str.9, ptr @.str.72, i8 0, i8 -33, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to disable USB out_ep\0A\00", [34 x i8] zeroinitializer }, align 32
@printer_soft_reset.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.69, ptr @.str.9, ptr @.str.73, i8 0, i8 -25, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable USB in_ep\0A\00", [36 x i8] zeroinitializer }, align 32
@printer_soft_reset.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.69, ptr @.str.9, ptr @.str.74, i8 0, i8 -24, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable USB out_ep\0A\00", [35 x i8] zeroinitializer }, align 32
@set_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.9, i32 881, ptr @.str.70, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Using interface %x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set_interface\00", [18 x i8] zeroinitializer }, align 32
@set_interface._entry_ptr = internal global ptr @set_interface._entry, section ".printk_index", align 4
@printer_reset_interface.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.77, ptr @.str.9, ptr @.str.78, i8 0, i8 -44, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"printer_reset_interface\00", [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@set_printer_interface.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.79, ptr @.str.9, ptr @.str.80, i8 0, i8 -51, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"set_printer_interface\00", [42 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"enable %s --> %d\0A\00", [46 x i8] zeroinitializer }, align 32
@set_printer_interface.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.79, ptr @.str.9, ptr @.str.80, i8 0, i8 -50, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@printer_func_disable.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.81, ptr @.str.9, ptr @.str.78, i8 1, i8 41, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"printer_func_disable\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 2147575585, i64 3221317410]
@__sancov_gen_cov_switch_values.84 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967193]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967188, i64 4294967192]
@___asan_gen_.86 = private unnamed_addr constant [16 x i8] c"printerusb_func\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1513, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1365, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"printer_ida_lock\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [12 x i8] c"printer_ida\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1391, i32 54 }
@___asan_gen_.107 = private unnamed_addr constant [18 x i8] c"printer_func_type\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1309, i32 38 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 59, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 58, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1522, i32 21 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"usb_gadget_class\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 57, i32 22 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1526, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1530, i32 48 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1532, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 56, i32 12 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"minors\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"printer_item_ops\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1207, i32 40 }
@___asan_gen_.156 = private unnamed_addr constant [14 x i8] c"printer_attrs\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1303, i32 35 }
@___asan_gen_.159 = private unnamed_addr constant [31 x i8] c"f_printer_opts_attr_pnp_string\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [26 x i8] c"f_printer_opts_attr_q_len\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1262, i32 1 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1301, i32 1 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1271, i32 25 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1497, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1498, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1499, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1500, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1501, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [10 x i8] c"intf_desc\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 112, i32 40 }
@___asan_gen_.207 = private unnamed_addr constant [14 x i8] c"fs_ep_in_desc\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 122, i32 39 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1087, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [15 x i8] c"fs_ep_out_desc\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 129, i32 39 }
@___asan_gen_.228 = private unnamed_addr constant [14 x i8] c"hs_ep_in_desc\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 148, i32 39 }
@___asan_gen_.231 = private unnamed_addr constant [15 x i8] c"hs_ep_out_desc\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 155, i32 39 }
@___asan_gen_.234 = private unnamed_addr constant [14 x i8] c"ss_ep_in_desc\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 173, i32 39 }
@___asan_gen_.237 = private unnamed_addr constant [15 x i8] c"ss_ep_out_desc\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 185, i32 39 }
@___asan_gen_.240 = private unnamed_addr constant [20 x i8] c"fs_printer_function\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 136, i32 38 }
@___asan_gen_.243 = private unnamed_addr constant [20 x i8] c"hs_printer_function\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 162, i32 38 }
@___asan_gen_.246 = private unnamed_addr constant [20 x i8] c"ss_printer_function\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 197, i32 38 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1129, i32 13 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1131, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [22 x i8] c"printer_io_operations\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 792, i32 37 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1144, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [19 x i8] c"ss_ep_in_comp_desc\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 180, i32 41 }
@___asan_gen_.270 = private unnamed_addr constant [20 x i8] c"ss_ep_out_comp_desc\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 192, i32 41 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 445, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 561, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 417, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 277, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 286, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 292, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 301, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 230, i32 6 }
@___asan_gen_.310 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 214, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 174, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 579, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 680, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 316, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 761, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 781, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 367, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 385, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 992, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1011, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1041, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1053, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 890, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 893, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 895, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 927, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 929, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 881, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 851, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 821, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.415 = private constant [43 x i8] c"../drivers/usb/gadget/function/f_printer.c\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1188, i32 2 }
@llvm.compiler.used = appending global [126 x ptr] [ptr @__UNIQUE_ID_alias259, ptr @__UNIQUE_ID_author263, ptr @__UNIQUE_ID_file261, ptr @__UNIQUE_ID_license262, ptr @__exitcall_printermod_exit, ptr @__initcall__kmod_usb_f_printer__260_1513_printermod_init6, ptr @gprinter_setup._entry, ptr @gprinter_setup._entry.11, ptr @gprinter_setup._entry_ptr, ptr @gprinter_setup._entry_ptr.13, ptr @printer_func_bind._entry, ptr @printer_func_bind._entry.31, ptr @printer_func_bind._entry.34, ptr @printer_func_bind._entry_ptr, ptr @printer_func_bind._entry_ptr.33, ptr @printer_func_bind._entry_ptr.36, ptr @printer_func_setup._entry, ptr @printer_func_setup._entry_ptr, ptr @printer_soft_reset._entry, ptr @printer_soft_reset._entry_ptr, ptr @printermod_exit, ptr @set_interface._entry, ptr @set_interface._entry_ptr, ptr @printerusb_func, ptr @.str, ptr @gprinter_alloc_inst.__key, ptr @.str.1, ptr @printer_ida_lock, ptr @printer_ida, ptr @.str.2, ptr @printer_func_type, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @gprinter_setup.__key, ptr @.str.6, ptr @usb_gadget_class, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @major, ptr @minors, ptr @printer_item_ops, ptr @printer_attrs, ptr @f_printer_opts_attr_pnp_string, ptr @f_printer_opts_attr_q_len, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @gprinter_alloc.__key, ptr @.str.17, ptr @gprinter_alloc.__key.18, ptr @.str.19, ptr @gprinter_alloc.__key.20, ptr @.str.21, ptr @gprinter_alloc.__key.22, ptr @.str.23, ptr @gprinter_alloc.__key.24, ptr @.str.25, ptr @intf_desc, ptr @fs_ep_in_desc, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @fs_ep_out_desc, ptr @hs_ep_in_desc, ptr @hs_ep_out_desc, ptr @ss_ep_in_desc, ptr @ss_ep_out_desc, ptr @fs_printer_function, ptr @hs_printer_function, ptr @ss_printer_function, ptr @.str.30, ptr @.str.32, ptr @printer_io_operations, ptr @.str.35, ptr @ss_ep_in_comp_desc, ptr @ss_ep_out_comp_desc, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printerusb_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gprinter_alloc_inst.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printer_ida_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printer_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printer_func_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gprinter_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_gadget_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gprinter_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gprinter_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minors to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printer_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printer_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_printer_opts_attr_pnp_string to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_printer_opts_attr_q_len to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gprinter_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gprinter_alloc.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gprinter_alloc.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gprinter_alloc.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gprinter_alloc.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intf_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_ep_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printer_func_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_ep_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_ep_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_ep_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_ep_in_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_ep_out_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_printer_function to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_printer_function to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_printer_function to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printer_func_bind._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printer_io_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printer_func_bind._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_ep_in_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_ep_out_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printer_func_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @printer_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @printermod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @usb_function_unregister(ptr noundef nonnull @printerusb_func) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @printermod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_function_register(ptr noundef nonnull @printerusb_func) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gprinter_alloc_inst() #2 align 64 {
entry:
  %devt.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 212) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.f_printer_opts, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @gprinter_alloc_inst.__key) #14
  %free_func_inst = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %free_func_inst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @gprinter_free_inst, ptr %free_func_inst, align 8
  %q_len = getelementptr inbounds %struct.f_printer_opts, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %q_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10, ptr %q_len, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @printer_ida_lock, i32 noundef 0) #14
  %3 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @printer_ida, i32 0, i32 0, i32 2), align 4
  %cmp.i.i = icmp eq ptr %3, null
  br i1 %cmp.i.i, label %if.then4, label %do.body.if.end10_crit_edge

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then4:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %devt.i) #14
  %4 = ptrtoint ptr %devt.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %devt.i, align 4, !annotation !234
  %call.i = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @gprinter_setup.__key) #14
  store ptr %call.i, ptr @usb_gadget_class, align 4
  %cmp.i.i34 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i34, label %gprinter_setup.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then4
  %call5.i = call i32 @alloc_chrdev_region(ptr noundef nonnull %devt.i, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @.str.10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %gprinter_setup.exit.thread, label %gprinter_setup.exit.thread44

gprinter_setup.exit.thread44:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call5.i) #18
  %5 = load ptr, ptr @usb_gadget_class, align 4
  call void @class_destroy(ptr noundef %5) #14
  store ptr null, ptr @usb_gadget_class, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %devt.i) #14
  br label %if.then7

gprinter_setup.exit.thread:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %devt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devt.i, align 4
  %shr.i = lshr i32 %7, 20
  store i32 %shr.i, ptr @major, align 4
  store i1 true, ptr @minors, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %devt.i) #14
  br label %if.end10

gprinter_setup.exit:                              ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %call.i to i32
  store ptr null, ptr @usb_gadget_class, align 4
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %devt.i) #14
  br label %if.then7

if.then7:                                         ; preds = %gprinter_setup.exit, %gprinter_setup.exit.thread44
  %retval.0.i47 = phi i32 [ %call5.i, %gprinter_setup.exit.thread44 ], [ %8, %gprinter_setup.exit ]
  %9 = inttoptr i32 %retval.0.i47 to ptr
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %unlock

if.end10:                                         ; preds = %gprinter_setup.exit.thread, %do.body.if.end10_crit_edge
  %call.i35 = call i32 @ida_alloc_range(ptr noundef nonnull @printer_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i35)
  %cmp.i = icmp sgt i32 %call.i35, 3
  br i1 %cmp.i, label %gprinter_get_minor.exit.thread, label %gprinter_get_minor.exit

gprinter_get_minor.exit.thread:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  call void @ida_free(ptr noundef nonnull @printer_ida, i32 noundef %call.i35) #14
  %minor49 = getelementptr inbounds %struct.f_printer_opts, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %minor49 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -19, ptr %minor49, align 4
  br label %if.then13

gprinter_get_minor.exit:                          ; preds = %if.end10
  %minor = getelementptr inbounds %struct.f_printer_opts, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i35, ptr %minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp = icmp slt i32 %call.i35, 0
  br i1 %cmp, label %gprinter_get_minor.exit.if.then13_crit_edge, label %if.end19

gprinter_get_minor.exit.if.then13_crit_edge:      ; preds = %gprinter_get_minor.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

if.then13:                                        ; preds = %gprinter_get_minor.exit.if.then13_crit_edge, %gprinter_get_minor.exit.thread
  %ret.0.i51 = phi i32 [ -19, %gprinter_get_minor.exit.thread ], [ %call.i35, %gprinter_get_minor.exit.if.then13_crit_edge ]
  %12 = inttoptr i32 %ret.0.i51 to ptr
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  %13 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @printer_ida, i32 0, i32 0, i32 2), align 4
  %cmp.i.i38 = icmp eq ptr %13, null
  br i1 %cmp.i.i38, label %if.then17, label %if.then13.unlock_crit_edge

if.then13.unlock_crit_edge:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.then17:                                        ; preds = %if.then13
  %14 = load i32, ptr @major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i39 = icmp eq i32 %14, 0
  br i1 %tobool.not.i39, label %if.then17.gprinter_cleanup.exit_crit_edge, label %if.then.i40

if.then17.gprinter_cleanup.exit_crit_edge:        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %gprinter_cleanup.exit

if.then.i40:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  %shl.i = shl i32 %14, 20
  %.b.i = load i1, ptr @minors, align 4
  %15 = select i1 %.b.i, i32 4, i32 0
  call void @unregister_chrdev_region(i32 noundef %shl.i, i32 noundef %15) #14
  store i1 false, ptr @minors, align 4
  store i32 0, ptr @major, align 4
  br label %gprinter_cleanup.exit

gprinter_cleanup.exit:                            ; preds = %if.then.i40, %if.then17.gprinter_cleanup.exit_crit_edge
  %16 = load ptr, ptr @usb_gadget_class, align 4
  call void @class_destroy(ptr noundef %16) #14
  store ptr null, ptr @usb_gadget_class, align 4
  br label %unlock

if.end19:                                         ; preds = %gprinter_get_minor.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @printer_func_type) #14
  br label %unlock

unlock:                                           ; preds = %if.end19, %gprinter_cleanup.exit, %if.then13.unlock_crit_edge, %if.then7
  %ret.0 = phi ptr [ %9, %if.then7 ], [ %12, %gprinter_cleanup.exit ], [ %12, %if.then13.unlock_crit_edge ], [ %call7.i.i, %if.end19 ]
  call void @mutex_unlock(ptr noundef nonnull @printer_ida_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.0, %unlock ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gprinter_alloc(ptr noundef %fi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_printer_opts, ptr %fi, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %minor = getelementptr inbounds %struct.f_printer_opts, ptr %fi, i32 0, i32 1
  %0 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minor, align 4
  %.b = load i1, ptr @minors, align 4
  %2 = select i1 %.b, i32 4, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp.not = icmp slt i32 %1, %2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %lock) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 704) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %lock) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %kref = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  %4 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %kref, align 8
  %refcnt = getelementptr inbounds %struct.f_printer_opts, ptr %fi, i32 0, i32 6
  %5 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %refcnt, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %refcnt, align 4
  %7 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %minor, align 4
  %minor8 = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 20
  %9 = ptrtoint ptr %minor8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %minor8, align 8
  %pnp_string = getelementptr inbounds %struct.f_printer_opts, ptr %fi, i32 0, i32 2
  %10 = ptrtoint ptr %pnp_string to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pnp_string, align 4
  %pnp_string9 = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 25
  %12 = ptrtoint ptr %pnp_string9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %pnp_string9, align 8
  %q_len = getelementptr inbounds %struct.f_printer_opts, ptr %fi, i32 0, i32 4
  %13 = ptrtoint ptr %q_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %q_len, align 4
  %q_len10 = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 24
  %15 = ptrtoint ptr %q_len10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %q_len10, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #14
  %function = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 26
  %16 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str, ptr %function, align 4
  %bind = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 26, i32 9
  %17 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @printer_func_bind, ptr %bind, align 8
  %setup = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 26, i32 16
  %18 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @printer_func_setup, ptr %setup, align 4
  %unbind = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 26, i32 10
  %19 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @printer_func_unbind, ptr %unbind, align 4
  %set_alt = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 26, i32 13
  %20 = ptrtoint ptr %set_alt to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @printer_func_set_alt, ptr %set_alt, align 8
  %disable = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 26, i32 15
  %21 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @printer_func_disable, ptr %disable, align 8
  %req_match = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 26, i32 17
  %22 = ptrtoint ptr %req_match to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @gprinter_req_match, ptr %req_match, align 8
  %free_func = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 26, i32 11
  %23 = ptrtoint ptr %free_func to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @gprinter_free, ptr %free_func, align 8
  %tx_reqs = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 11
  %24 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %tx_reqs, ptr %tx_reqs, align 8
  %prev.i = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 11, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %tx_reqs, ptr %prev.i, align 4
  %rx_reqs = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %rx_reqs to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %rx_reqs, ptr %rx_reqs, align 4
  %prev.i72 = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %prev.i72 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %rx_reqs, ptr %prev.i72, align 8
  %rx_buffers = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 9
  %28 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %rx_buffers, ptr %rx_buffers, align 4
  %prev.i73 = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 9, i32 1
  %29 = ptrtoint ptr %prev.i73 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rx_buffers, ptr %prev.i73, align 8
  %tx_reqs_active = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 12
  %30 = ptrtoint ptr %tx_reqs_active to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %tx_reqs_active, ptr %tx_reqs_active, align 8
  %prev.i74 = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 12, i32 1
  %31 = ptrtoint ptr %prev.i74 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %tx_reqs_active, ptr %prev.i74, align 4
  %rx_reqs_active = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %rx_reqs_active to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %rx_reqs_active, ptr %rx_reqs_active, align 4
  %prev.i75 = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %prev.i75 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %rx_reqs_active, ptr %prev.i75, align 8
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @gprinter_alloc.__key, i16 noundef signext 3) #14
  %lock_printer_io = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock_printer_io, ptr noundef nonnull @.str.19, ptr noundef nonnull @gprinter_alloc.__key.18) #14
  %rx_wait = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %rx_wait, ptr noundef nonnull @.str.21, ptr noundef nonnull @gprinter_alloc.__key.20) #14
  %tx_wait = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %tx_wait, ptr noundef nonnull @.str.23, ptr noundef nonnull @gprinter_alloc.__key.22) #14
  %tx_flush_wait = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 14
  tail call void @__init_waitqueue_head(ptr noundef %tx_flush_wait, ptr noundef nonnull @.str.25, ptr noundef nonnull @gprinter_alloc.__key.24) #14
  %interface = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %interface to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %interface, align 4
  %printer_cdev_open = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 22
  %35 = ptrtoint ptr %printer_cdev_open to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %printer_cdev_open, align 4
  %printer_status = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 18
  %36 = ptrtoint ptr %printer_status to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 8, ptr %printer_status, align 4
  %current_rx_req = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 15
  %37 = ptrtoint ptr %current_rx_req to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %current_rx_req, align 8
  %current_rx_bytes = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 16
  %38 = ptrtoint ptr %current_rx_bytes to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %current_rx_bytes, align 4
  %current_rx_buf = getelementptr inbounds %struct.printer_dev, ptr %call7.i.i, i32 0, i32 17
  %39 = ptrtoint ptr %current_rx_buf to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %current_rx_buf, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then3, %if.then
  %retval.0 = phi ptr [ inttoptr (i32 -2 to ptr), %if.then ], [ %function, %if.end6 ], [ inttoptr (i32 -12 to ptr), %if.then3 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gprinter_free_inst(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @printer_ida_lock, i32 noundef 0) #14
  %minor = getelementptr inbounds %struct.f_printer_opts, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minor, align 4
  tail call void @ida_free(ptr noundef nonnull @printer_ida, i32 noundef %1) #14
  %2 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @printer_ida, i32 0, i32 0, i32 2), align 4
  %cmp.i.i = icmp eq ptr %2, null
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then.gprinter_cleanup.exit_crit_edge, label %if.then.i

if.then.gprinter_cleanup.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %gprinter_cleanup.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %shl.i = shl i32 %3, 20
  %.b.i = load i1, ptr @minors, align 4
  %4 = select i1 %.b.i, i32 4, i32 0
  tail call void @unregister_chrdev_region(i32 noundef %shl.i, i32 noundef %4) #14
  store i1 false, ptr @minors, align 4
  store i32 0, ptr @major, align 4
  br label %gprinter_cleanup.exit

gprinter_cleanup.exit:                            ; preds = %if.then.i, %if.then.gprinter_cleanup.exit_crit_edge
  %5 = load ptr, ptr @usb_gadget_class, align 4
  tail call void @class_destroy(ptr noundef %5) #14
  store ptr null, ptr @usb_gadget_class, align 4
  br label %if.end

if.end:                                           ; preds = %gprinter_cleanup.exit, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @printer_ida_lock) #14
  %pnp_string_allocated = getelementptr inbounds %struct.f_printer_opts, ptr %f, i32 0, i32 3
  %6 = ptrtoint ptr %pnp_string_allocated to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pnp_string_allocated, align 4, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %pnp_string = getelementptr inbounds %struct.f_printer_opts, ptr %f, i32 0, i32 2
  %8 = ptrtoint ptr %pnp_string to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pnp_string, align 4
  tail call void @kfree(ptr noundef %9) #14
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  tail call void @kfree(ptr noundef %f) #14
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @printer_attr_release(ptr noundef %item) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_put_function_instance(ptr noundef %item) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_printer_opts_pnp_string_show(ptr noundef %item, ptr noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_printer_opts, ptr %item, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %pnp_string = getelementptr inbounds %struct.f_printer_opts, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %pnp_string to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pnp_string, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strlcpy(ptr noundef %page, ptr noundef nonnull %1, i32 noundef 4096) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %call2)
  %cmp = icmp ugt i32 %call2, 4095
  br i1 %cmp, label %if.end.unlock_crit_edge, label %if.else

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.else:                                          ; preds = %if.end
  %sub = add nsw i32 %call2, -1
  %arrayidx = getelementptr i8, ptr %page, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp4.not = icmp eq i8 %3, 10
  br i1 %cmp4.not, label %if.else.unlock_crit_edge, label %land.lhs.true

if.else.unlock_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

land.lhs.true:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %call2)
  %cmp6 = icmp ult i32 %call2, 4095
  br i1 %cmp6, label %if.then8, label %land.lhs.true.unlock_crit_edge

land.lhs.true.unlock_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %add = add nuw nsw i32 %call2, 1
  %arrayidx9 = getelementptr i8, ptr %page, i32 %call2
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %arrayidx9, align 1
  %arrayidx10 = getelementptr i8, ptr %page, i32 %add
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx10, align 1
  br label %unlock

unlock:                                           ; preds = %if.then8, %land.lhs.true.unlock_crit_edge, %if.else.unlock_crit_edge, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %result.0 = phi i32 [ %add, %if.then8 ], [ 4095, %land.lhs.true.unlock_crit_edge ], [ %call2, %if.else.unlock_crit_edge ], [ 0, %entry.unlock_crit_edge ], [ 4096, %if.end.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #14
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_printer_opts_pnp_string_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_printer_opts, ptr %item, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %call1 = tail call ptr @kstrndup(ptr noundef %page, i32 noundef %len, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.end:                                           ; preds = %entry
  %pnp_string_allocated = getelementptr inbounds %struct.f_printer_opts, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %pnp_string_allocated to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pnp_string_allocated, align 4, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %pnp_string = getelementptr inbounds %struct.f_printer_opts, ptr %item, i32 0, i32 2
  %2 = ptrtoint ptr %pnp_string to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pnp_string, align 4
  tail call void @kfree(ptr noundef %3) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %4 = ptrtoint ptr %pnp_string_allocated to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %pnp_string_allocated, align 4
  %pnp_string6 = getelementptr inbounds %struct.f_printer_opts, ptr %item, i32 0, i32 2
  %5 = ptrtoint ptr %pnp_string6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %pnp_string6, align 4
  br label %unlock

unlock:                                           ; preds = %if.end4, %entry.unlock_crit_edge
  %result.0 = phi i32 [ %len, %if.end4 ], [ -12, %entry.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #14
  ret i32 %result.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_printer_opts_q_len_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_printer_opts, ptr %item, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %q_len = getelementptr inbounds %struct.f_printer_opts, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %q_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %q_len, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.16, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_printer_opts_q_len_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #2 align 64 {
entry:
  %num = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num) #14
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %num, align 2, !annotation !234
  %lock = getelementptr inbounds %struct.f_printer_opts, ptr %item, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %refcnt = getelementptr inbounds %struct.f_printer_opts, ptr %item, i32 0, i32 6
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num, align 2
  %conv = zext i16 %4 to i32
  %q_len = getelementptr inbounds %struct.f_printer_opts, ptr %item, i32 0, i32 4
  %5 = ptrtoint ptr %q_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %q_len, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num) #14
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @printer_func_bind(ptr noundef %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call4 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %call4 to i8
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @intf_desc, i32 0, i32 2), align 1
  %gadget5 = getelementptr i8, ptr %f, i32 -460
  %4 = ptrtoint ptr %gadget5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %gadget5, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call7 = tail call ptr @usb_ep_autoconfig(ptr noundef %6, ptr noundef nonnull @fs_ep_in_desc) #14
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %if.end12

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

do.end:                                           ; preds = %if.end12.do.end_crit_edge, %if.end.do.end_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev10 = getelementptr inbounds %struct.usb_gadget, ptr %8, i32 0, i32 11
  %name = getelementptr inbounds %struct.usb_gadget, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.26, ptr noundef %10) #18
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call14 = tail call ptr @usb_ep_autoconfig(ptr noundef %12, ptr noundef nonnull @fs_ep_out_desc) #14
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end12.do.end_crit_edge, label %if.end17

if.end12.do.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.end17:                                         ; preds = %if.end12
  %13 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_ep_in_desc, i32 0, i32 2), align 1
  store i8 %13, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_ep_in_desc, i32 0, i32 2), align 1
  %14 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_ep_out_desc, i32 0, i32 2), align 1
  store i8 %14, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_ep_out_desc, i32 0, i32 2), align 1
  store i8 %13, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_ep_in_desc, i32 0, i32 2), align 1
  store i8 %14, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_ep_out_desc, i32 0, i32 2), align 1
  %call18 = tail call i32 @usb_assign_descriptors(ptr noundef %f, ptr noundef nonnull @fs_printer_function, ptr noundef nonnull @hs_printer_function, ptr noundef nonnull @ss_printer_function, ptr noundef nonnull @ss_printer_function) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %in_ep22 = getelementptr i8, ptr %f, i32 -452
  %15 = ptrtoint ptr %in_ep22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7, ptr %in_ep22, align 4
  %out_ep23 = getelementptr i8, ptr %f, i32 -448
  %16 = ptrtoint ptr %out_ep23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call14, ptr %out_ep23, align 4
  %q_len = getelementptr i8, ptr %f, i32 -8
  %17 = ptrtoint ptr %q_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %q_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp24189.not = icmp eq i32 %18, 0
  br i1 %cmp24189.not, label %if.end21.for.end44_crit_edge, label %for.body.lr.ph

if.end21.for.end44_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end44

for.body.lr.ph:                                   ; preds = %if.end21
  %tx_reqs = getelementptr i8, ptr %f, i32 -364
  br label %for.body

for.cond31.preheader:                             ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp33191.not = icmp eq i32 %31, 0
  br i1 %cmp33191.not, label %for.cond31.preheader.for.end44_crit_edge, label %for.body35.lr.ph

for.cond31.preheader.for.end44_crit_edge:         ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end44

for.body35.lr.ph:                                 ; preds = %for.cond31.preheader
  %rx_reqs = getelementptr i8, ptr %f, i32 -440
  br label %for.body35

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0190 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add.exit.for.body_crit_edge ]
  %19 = ptrtoint ptr %in_ep22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %in_ep22, align 4
  %call.i = tail call ptr @usb_ep_alloc_request(ptr noundef %20, i32 noundef 3264) #14
  %cmp.not.i = icmp eq ptr %call.i, null
  br i1 %cmp.not.i, label %for.body.fail_tx_reqs_crit_edge, label %if.then.i

for.body.fail_tx_reqs_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_tx_reqs

if.then.i:                                        ; preds = %for.body
  %length.i = getelementptr inbounds %struct.usb_request, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8192, ptr %length.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 8192) #17
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %call.i, align 4
  %cmp3.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp3.i, label %if.then4.i, label %if.end30

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @usb_ep_free_request(ptr noundef %20, ptr noundef nonnull %call.i) #14
  br label %fail_tx_reqs

if.end30:                                         ; preds = %if.then.i
  %list = getelementptr inbounds %struct.usb_request, ptr %call.i, i32 0, i32 9
  %24 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_reqs, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %tx_reqs, ptr noundef %25) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end30.list_add.exit_crit_edge

if.end30.list_add.exit_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list, ptr %prev1.i.i, align 4
  %27 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.usb_request, ptr %call.i, i32 0, i32 9, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %tx_reqs, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %list, ptr %tx_reqs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end30.list_add.exit_crit_edge
  %inc = add nuw i32 %i.0190, 1
  %30 = ptrtoint ptr %q_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %q_len, align 4
  %cmp24 = icmp ult i32 %inc, %31
  br i1 %cmp24, label %list_add.exit.for.body_crit_edge, label %for.cond31.preheader

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body35:                                       ; preds = %list_add.exit159.for.body35_crit_edge, %for.body35.lr.ph
  %i.1192 = phi i32 [ 0, %for.body35.lr.ph ], [ %inc43, %list_add.exit159.for.body35_crit_edge ]
  %32 = ptrtoint ptr %out_ep23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %out_ep23, align 4
  %call.i146 = tail call ptr @usb_ep_alloc_request(ptr noundef %33, i32 noundef 3264) #14
  %cmp.not.i147 = icmp eq ptr %call.i146, null
  br i1 %cmp.not.i147, label %for.body35.fail_rx_reqs_crit_edge, label %if.then.i151

for.body35.fail_rx_reqs_crit_edge:                ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_rx_reqs

if.then.i151:                                     ; preds = %for.body35
  %length.i148 = getelementptr inbounds %struct.usb_request, ptr %call.i146, i32 0, i32 1
  %34 = ptrtoint ptr %length.i148 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8192, ptr %length.i148, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i149 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3264, i32 noundef 8192) #17
  %36 = ptrtoint ptr %call.i146 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i149, ptr %call.i146, align 4
  %cmp3.i150 = icmp eq ptr %call7.i.i149, null
  br i1 %cmp3.i150, label %if.then4.i152, label %if.end40

if.then4.i152:                                    ; preds = %if.then.i151
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @usb_ep_free_request(ptr noundef %33, ptr noundef nonnull %call.i146) #14
  br label %fail_rx_reqs

if.end40:                                         ; preds = %if.then.i151
  %list41 = getelementptr inbounds %struct.usb_request, ptr %call.i146, i32 0, i32 9
  %37 = ptrtoint ptr %rx_reqs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_reqs, align 4
  %call.i.i155 = tail call zeroext i1 @__list_add_valid(ptr noundef %list41, ptr noundef %rx_reqs, ptr noundef %38) #14
  br i1 %call.i.i155, label %if.end.i.i158, label %if.end40.list_add.exit159_crit_edge

if.end40.list_add.exit159_crit_edge:              ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit159

if.end.i.i158:                                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i156 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i156 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %list41, ptr %prev1.i.i156, align 4
  %40 = ptrtoint ptr %list41 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %list41, align 4
  %prev3.i.i157 = getelementptr inbounds %struct.usb_request, ptr %call.i146, i32 0, i32 9, i32 1
  %41 = ptrtoint ptr %prev3.i.i157 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %rx_reqs, ptr %prev3.i.i157, align 4
  %42 = ptrtoint ptr %rx_reqs to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %list41, ptr %rx_reqs, align 4
  br label %list_add.exit159

list_add.exit159:                                 ; preds = %if.end.i.i158, %if.end40.list_add.exit159_crit_edge
  %inc43 = add nuw i32 %i.1192, 1
  %43 = ptrtoint ptr %q_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %q_len, align 4
  %cmp33 = icmp ult i32 %inc43, %44
  br i1 %cmp33, label %list_add.exit159.for.body35_crit_edge, label %list_add.exit159.for.end44_crit_edge

list_add.exit159.for.end44_crit_edge:             ; preds = %list_add.exit159
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end44

list_add.exit159.for.body35_crit_edge:            ; preds = %list_add.exit159
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body35

for.end44:                                        ; preds = %list_add.exit159.for.end44_crit_edge, %for.cond31.preheader.for.end44_crit_edge, %if.end21.for.end44_crit_edge
  %45 = load i32, ptr @major, align 4
  %shl = shl i32 %45, 20
  %minor = getelementptr i8, ptr %f, i32 -228
  %46 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %minor, align 4
  %or = or i32 %shl, %47
  %48 = load ptr, ptr @usb_gadget_class, align 4
  %call46 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %48, ptr noundef null, i32 noundef %or, ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef %47) #14
  %cmp.i = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end51, label %if.end55

do.end51:                                         ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #16
  %49 = ptrtoint ptr %gadget5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %gadget5, align 4
  %dev53 = getelementptr inbounds %struct.usb_gadget, ptr %50, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.32) #18
  %51 = ptrtoint ptr %call46 to i32
  br label %fail_rx_reqs

if.end55:                                         ; preds = %for.end44
  %printer_cdev = getelementptr i8, ptr %f, i32 -224
  tail call void @cdev_init(ptr noundef %printer_cdev, ptr noundef nonnull @printer_io_operations) #14
  %owner = getelementptr i8, ptr %f, i32 -88
  %52 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %owner, align 4
  %call58 = tail call i32 @cdev_add(ptr noundef %printer_cdev, i32 noundef %or, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end55.cleanup_crit_edge, label %do.end63

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end63:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  %53 = ptrtoint ptr %gadget5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %gadget5, align 4
  %dev65 = getelementptr inbounds %struct.usb_gadget, ptr %54, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65, ptr noundef nonnull @.str.35) #18
  %55 = load ptr, ptr @usb_gadget_class, align 4
  tail call void @device_destroy(ptr noundef %55, i32 noundef %or) #14
  br label %fail_rx_reqs

fail_rx_reqs:                                     ; preds = %do.end63, %do.end51, %if.then4.i152, %for.body35.fail_rx_reqs_crit_edge
  %ret.0 = phi i32 [ %51, %do.end51 ], [ %call58, %do.end63 ], [ -12, %if.then4.i152 ], [ -12, %for.body35.fail_rx_reqs_crit_edge ]
  %rx_reqs67 = getelementptr i8, ptr %f, i32 -440
  %56 = ptrtoint ptr %rx_reqs67 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %rx_reqs67, align 4
  %cmp.i160.not193 = icmp eq ptr %57, %rx_reqs67
  br i1 %cmp.i160.not193, label %fail_rx_reqs.fail_tx_reqs_crit_edge, label %fail_rx_reqs.while.body_crit_edge

fail_rx_reqs.while.body_crit_edge:                ; preds = %fail_rx_reqs
  br label %while.body

fail_rx_reqs.fail_tx_reqs_crit_edge:              ; preds = %fail_rx_reqs
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_tx_reqs

while.body:                                       ; preds = %printer_req_free.exit.while.body_crit_edge, %fail_rx_reqs.while.body_crit_edge
  %58 = phi ptr [ %72, %printer_req_free.exit.while.body_crit_edge ], [ %57, %fail_rx_reqs.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %58, i32 -36
  %call.i.i161 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %58) #14
  br i1 %call.i.i161, label %if.end.i.i162, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i162:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %58, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i162, %while.body.list_del.exit_crit_edge
  %65 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %58, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %67 = ptrtoint ptr %out_ep23 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %out_ep23, align 4
  %cmp.not.i163 = icmp eq ptr %68, null
  %cmp1.not.i = icmp eq ptr %add.ptr, null
  %or.cond.i = or i1 %cmp1.not.i, %cmp.not.i163
  br i1 %or.cond.i, label %list_del.exit.printer_req_free.exit_crit_edge, label %if.then.i164

list_del.exit.printer_req_free.exit_crit_edge:    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %printer_req_free.exit

if.then.i164:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %69 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr, align 4
  tail call void @kfree(ptr noundef %70) #14
  tail call void @usb_ep_free_request(ptr noundef nonnull %68, ptr noundef nonnull %add.ptr) #14
  br label %printer_req_free.exit

printer_req_free.exit:                            ; preds = %if.then.i164, %list_del.exit.printer_req_free.exit_crit_edge
  %71 = ptrtoint ptr %rx_reqs67 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %rx_reqs67, align 4
  %cmp.i160.not = icmp eq ptr %72, %rx_reqs67
  br i1 %cmp.i160.not, label %printer_req_free.exit.fail_tx_reqs_crit_edge, label %printer_req_free.exit.while.body_crit_edge

printer_req_free.exit.while.body_crit_edge:       ; preds = %printer_req_free.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

printer_req_free.exit.fail_tx_reqs_crit_edge:     ; preds = %printer_req_free.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_tx_reqs

fail_tx_reqs:                                     ; preds = %printer_req_free.exit.fail_tx_reqs_crit_edge, %fail_rx_reqs.fail_tx_reqs_crit_edge, %if.then4.i, %for.body.fail_tx_reqs_crit_edge
  %ret.1 = phi i32 [ -12, %if.then4.i ], [ %ret.0, %fail_rx_reqs.fail_tx_reqs_crit_edge ], [ %ret.0, %printer_req_free.exit.fail_tx_reqs_crit_edge ], [ -12, %for.body.fail_tx_reqs_crit_edge ]
  %tx_reqs74 = getelementptr i8, ptr %f, i32 -364
  %73 = ptrtoint ptr %tx_reqs74 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %tx_reqs74, align 4
  %cmp.i165.not194 = icmp eq ptr %74, %tx_reqs74
  br i1 %cmp.i165.not194, label %fail_tx_reqs.while.end86_crit_edge, label %fail_tx_reqs.while.body78_crit_edge

fail_tx_reqs.while.body78_crit_edge:              ; preds = %fail_tx_reqs
  br label %while.body78

fail_tx_reqs.while.end86_crit_edge:               ; preds = %fail_tx_reqs
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end86

while.body78:                                     ; preds = %printer_req_free.exit177.while.body78_crit_edge, %fail_tx_reqs.while.body78_crit_edge
  %75 = phi ptr [ %89, %printer_req_free.exit177.while.body78_crit_edge ], [ %74, %fail_tx_reqs.while.body78_crit_edge ]
  %add.ptr83 = getelementptr i8, ptr %75, i32 -36
  %call.i.i167 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %75) #14
  br i1 %call.i.i167, label %if.end.i.i170, label %while.body78.list_del.exit172_crit_edge

while.body78.list_del.exit172_crit_edge:          ; preds = %while.body78
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit172

if.end.i.i170:                                    ; preds = %while.body78
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i168 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i.i168 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i.i168, align 4
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %75, align 4
  %prev1.i.i.i169 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev1.i.i.i169 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev1.i.i.i169, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %79, ptr %77, align 4
  br label %list_del.exit172

list_del.exit172:                                 ; preds = %if.end.i.i170, %while.body78.list_del.exit172_crit_edge
  %82 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 256 to ptr), ptr %75, align 4
  %prev.i171 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i171 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i171, align 4
  %84 = ptrtoint ptr %in_ep22 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %in_ep22, align 4
  %cmp.not.i173 = icmp eq ptr %85, null
  %cmp1.not.i174 = icmp eq ptr %add.ptr83, null
  %or.cond.i175 = or i1 %cmp1.not.i174, %cmp.not.i173
  br i1 %or.cond.i175, label %list_del.exit172.printer_req_free.exit177_crit_edge, label %if.then.i176

list_del.exit172.printer_req_free.exit177_crit_edge: ; preds = %list_del.exit172
  call void @__sanitizer_cov_trace_pc() #16
  br label %printer_req_free.exit177

if.then.i176:                                     ; preds = %list_del.exit172
  call void @__sanitizer_cov_trace_pc() #16
  %86 = ptrtoint ptr %add.ptr83 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr83, align 4
  tail call void @kfree(ptr noundef %87) #14
  tail call void @usb_ep_free_request(ptr noundef nonnull %85, ptr noundef nonnull %add.ptr83) #14
  br label %printer_req_free.exit177

printer_req_free.exit177:                         ; preds = %if.then.i176, %list_del.exit172.printer_req_free.exit177_crit_edge
  %88 = ptrtoint ptr %tx_reqs74 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %tx_reqs74, align 4
  %cmp.i165.not = icmp eq ptr %89, %tx_reqs74
  br i1 %cmp.i165.not, label %printer_req_free.exit177.while.end86_crit_edge, label %printer_req_free.exit177.while.body78_crit_edge

printer_req_free.exit177.while.body78_crit_edge:  ; preds = %printer_req_free.exit177
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body78

printer_req_free.exit177.while.end86_crit_edge:   ; preds = %printer_req_free.exit177
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end86

while.end86:                                      ; preds = %printer_req_free.exit177.while.end86_crit_edge, %fail_tx_reqs.while.end86_crit_edge
  tail call void @usb_free_all_descriptors(ptr noundef %f) #14
  br label %cleanup

cleanup:                                          ; preds = %while.end86, %if.end55.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %while.end86 ], [ -19, %do.end ], [ %call4, %entry.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @printer_func_setup(ptr noundef %f, ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %f, i32 -596
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %wIndex4 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %8 = ptrtoint ptr %wIndex4 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %wIndex4, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %wValue5 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %11 = ptrtoint ptr %wValue5 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %wValue5, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %wLength6 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %14 = ptrtoint ptr %wLength6 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %wLength6, align 1
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @printer_func_setup.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@printer_func_setup, %do.end)) #14
          to label %if.then [label %do.end], !srcloc !236

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %gadget = getelementptr i8, ptr %f, i32 -460
  %17 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gadget, align 4
  %dev11 = getelementptr inbounds %struct.usb_gadget, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ctrl, align 1
  %conv = zext i8 %20 to i32
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %21 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bRequest, align 1
  %conv12 = zext i8 %22 to i32
  %conv13 = zext i16 %13 to i32
  %conv14 = zext i16 %10 to i32
  %conv15 = zext i16 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @printer_func_setup.__UNIQUE_ID_ddebug253, ptr noundef %dev11, ptr noundef nonnull @.str.64, i32 noundef %conv, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14, i32 noundef %conv15) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %23 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ctrl, align 1
  %25 = and i8 %24, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %25)
  %cond130 = icmp eq i8 %25, 32
  br i1 %cond130, label %sw.bb, label %do.end.do.body84_crit_edge

do.end.do.body84_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body84

sw.bb:                                            ; preds = %do.end
  %bRequest18 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %26 = ptrtoint ptr %bRequest18 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bRequest18, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i8 %27, label %sw.bb.do.body84_crit_edge [
    i8 0, label %sw.bb20
    i8 1, label %sw.bb59
    i8 2, label %sw.bb75
  ]

sw.bb.do.body84_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body84

sw.bb20:                                          ; preds = %sw.bb
  %29 = lshr i16 %10, 8
  %interface = getelementptr i8, ptr %f, i32 -456
  %30 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %interface, align 4
  %32 = sext i8 %31 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %32)
  %cmp.not = icmp eq i16 %29, %32
  br i1 %cmp.not, label %if.end25, label %sw.bb20.if.end129_crit_edge

sw.bb20.if.end129_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end129

if.end25:                                         ; preds = %sw.bb20
  %pnp_string = getelementptr i8, ptr %f, i32 -4
  %33 = ptrtoint ptr %pnp_string to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pnp_string, align 4
  %tobool26.not = icmp eq ptr %34, null
  br i1 %tobool26.not, label %if.end25.if.then114_crit_edge, label %if.end28

if.end25.if.then114_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then114

if.end28:                                         ; preds = %if.end25
  %call30 = tail call i32 @strlen(ptr noundef nonnull %34) #19
  %35 = lshr i32 %call30, 8
  %conv33 = trunc i32 %35 to i8
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv33, ptr %7, align 1
  %conv35 = trunc i32 %call30 to i8
  %arrayidx36 = getelementptr i8, ptr %7, i32 1
  %37 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv35, ptr %arrayidx36, align 1
  %add.ptr = getelementptr i8, ptr %7, i32 2
  %38 = ptrtoint ptr %pnp_string to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pnp_string, align 4
  %40 = call ptr @memcpy(ptr %add.ptr, ptr %39, i32 %call30)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @printer_func_setup.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@printer_func_setup, %sw.epilog111)) #14
          to label %if.then52 [label %sw.epilog111], !srcloc !236

if.then52:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %gadget53 = getelementptr i8, ptr %f, i32 -460
  %41 = ptrtoint ptr %gadget53 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gadget53, align 4
  %dev54 = getelementptr inbounds %struct.usb_gadget, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %pnp_string to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pnp_string, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @printer_func_setup.__UNIQUE_ID_ddebug254, ptr noundef %dev54, ptr noundef nonnull @.str.65, i32 noundef %call30, ptr noundef %44) #14
  br label %sw.epilog111

sw.bb59:                                          ; preds = %sw.bb
  %conv60 = zext i16 %10 to i32
  %interface61 = getelementptr i8, ptr %f, i32 -456
  %45 = ptrtoint ptr %interface61 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %interface61, align 4
  %conv62 = sext i8 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv60, i32 %conv62)
  %cmp63.not = icmp eq i32 %conv60, %conv62
  br i1 %cmp63.not, label %if.end66, label %sw.bb59.if.end129_crit_edge

sw.bb59.if.end129_crit_edge:                      ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end129

if.end66:                                         ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #16
  %printer_status = getelementptr i8, ptr %f, i32 -232
  %47 = ptrtoint ptr %printer_status to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %printer_status, align 4
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp71 = icmp ne i16 %15, 0
  %. = zext i1 %cmp71 to i32
  br label %if.then114

sw.bb75:                                          ; preds = %sw.bb
  %conv76 = zext i16 %10 to i32
  %interface77 = getelementptr i8, ptr %f, i32 -456
  %50 = ptrtoint ptr %interface77 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %interface77, align 4
  %conv78 = sext i8 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv76, i32 %conv78)
  %cmp79.not = icmp eq i32 %conv76, %conv78
  br i1 %cmp79.not, label %if.end82, label %sw.bb75.if.end129_crit_edge

sw.bb75.if.end129_crit_edge:                      ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end129

if.end82:                                         ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @printer_soft_reset(ptr noundef %add.ptr.i)
  br label %if.then114

do.body84:                                        ; preds = %sw.bb.do.body84_crit_edge, %do.end.do.body84_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @printer_func_setup.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@printer_func_setup, %if.end129)) #14
          to label %if.then98 [label %if.end129], !srcloc !236

if.then98:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #16
  %gadget99 = getelementptr i8, ptr %f, i32 -460
  %52 = ptrtoint ptr %gadget99 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %gadget99, align 4
  %dev100 = getelementptr inbounds %struct.usb_gadget, ptr %53, i32 0, i32 11
  %54 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ctrl, align 1
  %conv102 = zext i8 %55 to i32
  %bRequest103 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %56 = ptrtoint ptr %bRequest103 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bRequest103, align 1
  %conv104 = zext i8 %57 to i32
  %conv105 = zext i16 %13 to i32
  %conv106 = zext i16 %10 to i32
  %conv107 = zext i16 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @printer_func_setup.__UNIQUE_ID_ddebug257, ptr noundef %dev100, ptr noundef nonnull @.str.66, i32 noundef %conv102, i32 noundef %conv104, i32 noundef %conv105, i32 noundef %conv106, i32 noundef %conv107) #14
  br label %if.end129

sw.epilog111:                                     ; preds = %if.then52, %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call30)
  %cmp112 = icmp sgt i32 %call30, -1
  br i1 %cmp112, label %sw.epilog111.if.then114_crit_edge, label %sw.epilog111.if.end129_crit_edge

sw.epilog111.if.end129_crit_edge:                 ; preds = %sw.epilog111
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end129

sw.epilog111.if.then114_crit_edge:                ; preds = %sw.epilog111
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then114

if.then114:                                       ; preds = %sw.epilog111.if.then114_crit_edge, %if.end82, %if.end66, %if.end25.if.then114_crit_edge
  %value.0193 = phi i32 [ %call30, %sw.epilog111.if.then114_crit_edge ], [ 0, %if.end25.if.then114_crit_edge ], [ %., %if.end66 ], [ 0, %if.end82 ]
  %length = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 1
  %58 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %value.0193, ptr %length, align 4
  %conv115 = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %value.0193, i32 %conv115)
  %cmp116 = icmp ult i32 %value.0193, %conv115
  %zero = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 6
  %59 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %59)
  %bf.load = load i32, ptr %zero, align 4
  %bf.shl = select i1 %cmp116, i32 8192, i32 0
  %bf.clear = and i32 %bf.load, -8193
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %zero, align 4
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %3, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ep0, align 4
  %call119 = tail call i32 @usb_ep_queue(ptr noundef %63, ptr noundef %5, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %do.end125, label %if.then114.if.end129_crit_edge

if.then114.if.end129_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end129

do.end125:                                        ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #16
  %gadget126 = getelementptr i8, ptr %f, i32 -460
  %64 = ptrtoint ptr %gadget126 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %gadget126, align 4
  %dev127 = getelementptr inbounds %struct.usb_gadget, ptr %65, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev127, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.63, i32 noundef 1053) #18
  %status = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 11
  %66 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %status, align 4
  br label %if.end129

if.end129:                                        ; preds = %do.end125, %if.then114.if.end129_crit_edge, %sw.epilog111.if.end129_crit_edge, %if.then98, %do.body84, %sw.bb75.if.end129_crit_edge, %sw.bb59.if.end129_crit_edge, %sw.bb20.if.end129_crit_edge
  %value.1 = phi i32 [ %call119, %do.end125 ], [ %call119, %if.then114.if.end129_crit_edge ], [ %call30, %sw.epilog111.if.end129_crit_edge ], [ -95, %if.then98 ], [ -95, %sw.bb75.if.end129_crit_edge ], [ -95, %sw.bb59.if.end129_crit_edge ], [ -95, %sw.bb20.if.end129_crit_edge ], [ -95, %do.body84 ]
  ret i32 %value.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @printer_func_unbind(ptr nocapture noundef readnone %c, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @usb_gadget_class, align 4
  %1 = load i32, ptr @major, align 4
  %shl = shl i32 %1, 20
  %minor = getelementptr i8, ptr %f, i32 -228
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minor, align 4
  %or = or i32 %shl, %3
  tail call void @device_destroy(ptr noundef %0, i32 noundef %or) #14
  %printer_cdev = getelementptr i8, ptr %f, i32 -224
  tail call void @cdev_del(ptr noundef %printer_cdev) #14
  %tx_reqs_active = getelementptr i8, ptr %f, i32 -356
  %4 = ptrtoint ptr %tx_reqs_active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %tx_reqs_active, align 4
  %cmp.i.not = icmp eq ptr %5, %tx_reqs_active
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !237

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1426, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %rx_reqs_active = getelementptr i8, ptr %f, i32 -432
  %6 = ptrtoint ptr %rx_reqs_active to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %rx_reqs_active, align 4
  %cmp.i116.not = icmp eq ptr %7, %rx_reqs_active
  br i1 %cmp.i116.not, label %if.end.if.end48_crit_edge, label %do.end42, !prof !237

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

do.end42:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1427, i32 noundef 9, ptr noundef null) #14
  br label %if.end48

if.end48:                                         ; preds = %do.end42, %if.end.if.end48_crit_edge
  %tx_reqs = getelementptr i8, ptr %f, i32 -364
  %8 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %tx_reqs, align 4
  %cmp.i118.not151 = icmp eq ptr %9, %tx_reqs
  br i1 %cmp.i118.not151, label %if.end48.while.end_crit_edge, label %while.body.lr.ph

if.end48.while.end_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end48
  %in_ep = getelementptr i8, ptr %f, i32 -452
  br label %while.body

while.body:                                       ; preds = %printer_req_free.exit.while.body_crit_edge, %while.body.lr.ph
  %10 = phi ptr [ %9, %while.body.lr.ph ], [ %24, %printer_req_free.exit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %10, i32 -36
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #14
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %19 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %in_ep, align 4
  %cmp.not.i = icmp eq ptr %20, null
  %cmp1.not.i = icmp eq ptr %add.ptr, null
  %or.cond.i = or i1 %cmp1.not.i, %cmp.not.i
  br i1 %or.cond.i, label %list_del.exit.printer_req_free.exit_crit_edge, label %if.then.i

list_del.exit.printer_req_free.exit_crit_edge:    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %printer_req_free.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 4
  tail call void @kfree(ptr noundef %22) #14
  tail call void @usb_ep_free_request(ptr noundef nonnull %20, ptr noundef nonnull %add.ptr) #14
  br label %printer_req_free.exit

printer_req_free.exit:                            ; preds = %if.then.i, %list_del.exit.printer_req_free.exit_crit_edge
  %23 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %tx_reqs, align 4
  %cmp.i118.not = icmp eq ptr %24, %tx_reqs
  br i1 %cmp.i118.not, label %printer_req_free.exit.while.end_crit_edge, label %printer_req_free.exit.while.body_crit_edge

printer_req_free.exit.while.body_crit_edge:       ; preds = %printer_req_free.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

printer_req_free.exit.while.end_crit_edge:        ; preds = %printer_req_free.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %printer_req_free.exit.while.end_crit_edge, %if.end48.while.end_crit_edge
  %current_rx_req = getelementptr i8, ptr %f, i32 -244
  %25 = ptrtoint ptr %current_rx_req to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %current_rx_req, align 4
  %cmp.not = icmp eq ptr %26, null
  br i1 %cmp.not, label %while.end.if.end64_crit_edge, label %if.then62

while.end.if.end64_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

if.then62:                                        ; preds = %while.end
  %out_ep = getelementptr i8, ptr %f, i32 -448
  %27 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %out_ep, align 4
  %cmp.not.i120 = icmp eq ptr %28, null
  br i1 %cmp.not.i120, label %if.then62.if.end64_crit_edge, label %if.then.i123

if.then62.if.end64_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

if.then.i123:                                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #16
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  tail call void @kfree(ptr noundef %30) #14
  tail call void @usb_ep_free_request(ptr noundef nonnull %28, ptr noundef nonnull %26) #14
  br label %if.end64

if.end64:                                         ; preds = %if.then.i123, %if.then62.if.end64_crit_edge, %while.end.if.end64_crit_edge
  %rx_reqs = getelementptr i8, ptr %f, i32 -440
  %31 = ptrtoint ptr %rx_reqs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %rx_reqs, align 4
  %cmp.i125.not152 = icmp eq ptr %32, %rx_reqs
  br i1 %cmp.i125.not152, label %if.end64.while.cond79.preheader_crit_edge, label %while.body70.lr.ph

if.end64.while.cond79.preheader_crit_edge:        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond79.preheader

while.body70.lr.ph:                               ; preds = %if.end64
  %out_ep77 = getelementptr i8, ptr %f, i32 -448
  br label %while.body70

while.cond79.preheader:                           ; preds = %printer_req_free.exit137.while.cond79.preheader_crit_edge, %if.end64.while.cond79.preheader_crit_edge
  %rx_buffers = getelementptr i8, ptr %f, i32 -424
  %33 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %rx_buffers, align 4
  %cmp.i138.not153 = icmp eq ptr %34, %rx_buffers
  br i1 %cmp.i138.not153, label %while.cond79.preheader.while.end92_crit_edge, label %while.body84.lr.ph

while.cond79.preheader.while.end92_crit_edge:     ; preds = %while.cond79.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end92

while.body84.lr.ph:                               ; preds = %while.cond79.preheader
  %out_ep91 = getelementptr i8, ptr %f, i32 -448
  br label %while.body84

while.body70:                                     ; preds = %printer_req_free.exit137.while.body70_crit_edge, %while.body70.lr.ph
  %35 = phi ptr [ %32, %while.body70.lr.ph ], [ %49, %printer_req_free.exit137.while.body70_crit_edge ]
  %add.ptr75 = getelementptr i8, ptr %35, i32 -36
  %call.i.i127 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %35) #14
  br i1 %call.i.i127, label %if.end.i.i130, label %while.body70.list_del.exit132_crit_edge

while.body70.list_del.exit132_crit_edge:          ; preds = %while.body70
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit132

if.end.i.i130:                                    ; preds = %while.body70
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i128 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i128 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i128, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %prev1.i.i.i129 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i129 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i129, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %list_del.exit132

list_del.exit132:                                 ; preds = %if.end.i.i130, %while.body70.list_del.exit132_crit_edge
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %35, align 4
  %prev.i131 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i131 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i131, align 4
  %44 = ptrtoint ptr %out_ep77 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %out_ep77, align 4
  %cmp.not.i133 = icmp eq ptr %45, null
  %cmp1.not.i134 = icmp eq ptr %add.ptr75, null
  %or.cond.i135 = or i1 %cmp1.not.i134, %cmp.not.i133
  br i1 %or.cond.i135, label %list_del.exit132.printer_req_free.exit137_crit_edge, label %if.then.i136

list_del.exit132.printer_req_free.exit137_crit_edge: ; preds = %list_del.exit132
  call void @__sanitizer_cov_trace_pc() #16
  br label %printer_req_free.exit137

if.then.i136:                                     ; preds = %list_del.exit132
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %add.ptr75 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr75, align 4
  tail call void @kfree(ptr noundef %47) #14
  tail call void @usb_ep_free_request(ptr noundef nonnull %45, ptr noundef nonnull %add.ptr75) #14
  br label %printer_req_free.exit137

printer_req_free.exit137:                         ; preds = %if.then.i136, %list_del.exit132.printer_req_free.exit137_crit_edge
  %48 = ptrtoint ptr %rx_reqs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %rx_reqs, align 4
  %cmp.i125.not = icmp eq ptr %49, %rx_reqs
  br i1 %cmp.i125.not, label %printer_req_free.exit137.while.cond79.preheader_crit_edge, label %printer_req_free.exit137.while.body70_crit_edge

printer_req_free.exit137.while.body70_crit_edge:  ; preds = %printer_req_free.exit137
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body70

printer_req_free.exit137.while.cond79.preheader_crit_edge: ; preds = %printer_req_free.exit137
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond79.preheader

while.body84:                                     ; preds = %printer_req_free.exit150.while.body84_crit_edge, %while.body84.lr.ph
  %50 = phi ptr [ %34, %while.body84.lr.ph ], [ %64, %printer_req_free.exit150.while.body84_crit_edge ]
  %add.ptr89 = getelementptr i8, ptr %50, i32 -36
  %call.i.i140 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %50) #14
  br i1 %call.i.i140, label %if.end.i.i143, label %while.body84.list_del.exit145_crit_edge

while.body84.list_del.exit145_crit_edge:          ; preds = %while.body84
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit145

if.end.i.i143:                                    ; preds = %while.body84
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i141 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i141 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i141, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %50, align 4
  %prev1.i.i.i142 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i142 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i142, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %list_del.exit145

list_del.exit145:                                 ; preds = %if.end.i.i143, %while.body84.list_del.exit145_crit_edge
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 256 to ptr), ptr %50, align 4
  %prev.i144 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i144 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i144, align 4
  %59 = ptrtoint ptr %out_ep91 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %out_ep91, align 4
  %cmp.not.i146 = icmp eq ptr %60, null
  %cmp1.not.i147 = icmp eq ptr %add.ptr89, null
  %or.cond.i148 = or i1 %cmp1.not.i147, %cmp.not.i146
  br i1 %or.cond.i148, label %list_del.exit145.printer_req_free.exit150_crit_edge, label %if.then.i149

list_del.exit145.printer_req_free.exit150_crit_edge: ; preds = %list_del.exit145
  call void @__sanitizer_cov_trace_pc() #16
  br label %printer_req_free.exit150

if.then.i149:                                     ; preds = %list_del.exit145
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %add.ptr89 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr89, align 4
  tail call void @kfree(ptr noundef %62) #14
  tail call void @usb_ep_free_request(ptr noundef nonnull %60, ptr noundef nonnull %add.ptr89) #14
  br label %printer_req_free.exit150

printer_req_free.exit150:                         ; preds = %if.then.i149, %list_del.exit145.printer_req_free.exit150_crit_edge
  %63 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %rx_buffers, align 4
  %cmp.i138.not = icmp eq ptr %64, %rx_buffers
  br i1 %cmp.i138.not, label %printer_req_free.exit150.while.end92_crit_edge, label %printer_req_free.exit150.while.body84_crit_edge

printer_req_free.exit150.while.body84_crit_edge:  ; preds = %printer_req_free.exit150
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body84

printer_req_free.exit150.while.end92_crit_edge:   ; preds = %printer_req_free.exit150
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end92

while.end92:                                      ; preds = %printer_req_free.exit150.while.end92_crit_edge, %while.cond79.preheader.while.end92_crit_edge
  tail call void @usb_free_all_descriptors(ptr noundef %f) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @printer_func_set_alt(ptr noundef %f, i32 noundef %intf, i32 noundef %alt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %f, i32 -596
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alt)
  %tobool.not = icmp eq i32 %alt, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @printer_reset_interface(ptr noundef %add.ptr.i) #14
  %call.i = tail call fastcc i32 @set_printer_interface(ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @printer_reset_interface(ptr noundef %add.ptr.i) #14
  br label %if.end

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i = trunc i32 %intf to i8
  %interface.i = getelementptr i8, ptr %f, i32 -456
  %0 = ptrtoint ptr %interface.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv.i, ptr %interface.i, align 4
  %gadget.i = getelementptr i8, ptr %f, i32 -460
  %1 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gadget.i, align 4
  %dev3.i = getelementptr inbounds %struct.usb_gadget, ptr %2, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3.i, ptr noundef nonnull @.str.75, i32 noundef %intf) #18
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ -524, %entry.if.end_crit_edge ], [ %call.i, %if.then.i ], [ 0, %if.else.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @printer_func_disable(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @printer_func_disable.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@printer_func_disable, %do.end)) #14
          to label %if.then [label %do.end], !srcloc !236

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %gadget = getelementptr i8, ptr %f, i32 -460
  %0 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gadget, align 4
  %dev5 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @printer_func_disable.__UNIQUE_ID_ddebug258, ptr noundef %dev5, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.81) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr.i = getelementptr i8, ptr %f, i32 -596
  tail call fastcc void @printer_reset_interface(ptr noundef %add.ptr.i)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @gprinter_req_match(ptr nocapture noundef readonly %f, ptr nocapture noundef readonly %ctrl, i1 noundef zeroext %config0) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %wIndex = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 3
  %0 = ptrtoint ptr %wIndex to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %wIndex, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %wValue = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 2
  %3 = ptrtoint ptr %wValue to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %wValue, align 1
  %wLength = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 4
  %5 = ptrtoint ptr %wLength to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %wLength, align 1
  br i1 %config0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctrl, align 1
  %conv = zext i8 %8 to i32
  %9 = and i32 %conv, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %9)
  %10 = icmp eq i32 %9, 33
  br i1 %10, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %11 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bRequest, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %12, label %if.end8.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb18
    i8 2, label %sw.bb30
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end8
  %14 = lshr i16 %2, 8
  %and14 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb18:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool19.not = icmp ne i16 %4, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %6)
  %cmp21 = icmp ne i16 %6, 256
  %or.cond59 = select i1 %tobool19.not, i1 true, i1 %cmp21
  %and26 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %or.cond60 = select i1 %or.cond59, i1 true, i1 %tobool27.not
  br i1 %or.cond60, label %sw.bb18.cleanup_crit_edge, label %sw.bb18.sw.epilog_crit_edge

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb30:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool31.not = icmp eq i16 %4, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool33.not = icmp eq i16 %6, 0
  %or.cond61 = select i1 %tobool31.not, i1 %tobool33.not, i1 false
  %and37 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %or.cond62 = select i1 %or.cond61, i1 %tobool38.not, i1 false
  br i1 %or.cond62, label %sw.bb30.sw.epilog_crit_edge, label %sw.bb30.cleanup_crit_edge

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb30.sw.epilog_crit_edge, %sw.bb18.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %w_index.0 = phi i16 [ %14, %sw.bb.sw.epilog_crit_edge ], [ %2, %sw.bb18.sw.epilog_crit_edge ], [ %2, %sw.bb30.sw.epilog_crit_edge ]
  %conv41 = zext i16 %w_index.0 to i32
  %interface = getelementptr i8, ptr %f, i32 -456
  %15 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %interface, align 4
  %conv42 = sext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv41, i32 %conv42)
  %cmp43 = icmp eq i32 %conv41, %conv42
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb30.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp43, %sw.epilog ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %sw.bb.cleanup_crit_edge ], [ false, %sw.bb18.cleanup_crit_edge ], [ false, %sw.bb30.cleanup_crit_edge ], [ false, %if.end8.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gprinter_free(ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi, align 4
  %kref = getelementptr i8, ptr %f, i32 -444
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !238
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !239
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !237

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #14
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !240
  %add.ptr.i.i = getelementptr i8, ptr %f, i32 -596
  tail call void @kfree(ptr noundef %add.ptr.i.i) #14
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %lock = getelementptr inbounds %struct.f_printer_opts, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %refcnt = getelementptr inbounds %struct.f_printer_opts, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %refcnt, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %refcnt, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @printer_read(ptr nocapture noundef readonly %fd, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %ptr) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup197_crit_edge, label %do.body

entry.cleanup197_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup197

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @printer_read.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@printer_read, %do.end)) #14
          to label %if.then4 [label %do.end], !srcloc !236

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %gadget = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gadget, align 4
  %dev5 = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @printer_read.__UNIQUE_ID_ddebug240, ptr noundef %dev5, ptr noundef nonnull @.str.39, i32 noundef %len) #14
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %lock_printer_io = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock_printer_io, i32 noundef 0) #14
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #14
  %interface = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp18 = icmp slt i8 %5, 0
  br i1 %cmp18, label %if.then20, label %if.end23

if.then20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call12) #14
  tail call void @mutex_unlock(ptr noundef %lock_printer_io) #14
  br label %cleanup197

if.end23:                                         ; preds = %do.end
  %reset_printer = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %reset_printer to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %reset_printer, align 1
  tail call fastcc void @setup_rx_reqs(ptr noundef %1)
  %current_rx_req24 = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %current_rx_req24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %current_rx_req24, align 4
  %current_rx_bytes25 = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %current_rx_bytes25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %current_rx_bytes25, align 4
  %current_rx_buf26 = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %current_rx_buf26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %current_rx_buf26, align 4
  store ptr null, ptr %current_rx_req24, align 4
  store i32 0, ptr %current_rx_bytes25, align 4
  store ptr null, ptr %current_rx_buf26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp30 = icmp eq i32 %10, 0
  br i1 %cmp30, label %land.lhs.true, label %if.end23.if.end100_crit_edge

if.end23.if.end100_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100

land.lhs.true:                                    ; preds = %if.end23
  %rx_buffers = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %rx_buffers, align 4
  %cmp.i.not = icmp eq ptr %14, %rx_buffers
  br i1 %cmp.i.not, label %if.then40, label %land.lhs.true.if.end100_crit_edge, !prof !237

land.lhs.true.if.end100_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end100

if.then40:                                        ; preds = %land.lhs.true
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call12) #14
  %f_flags = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 7
  %15 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_flags, align 4
  %and = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %lock_printer_io) #14
  br label %cleanup197

if.end45:                                         ; preds = %if.then40
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 493) #14
  %17 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %rx_buffers, align 4
  %cmp.i285.not = icmp eq ptr %18, %rx_buffers
  br i1 %cmp.i285.not, label %if.then63, label %if.end45.if.end84_crit_edge, !prof !241

if.end45.if.end84_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end84

if.then63:                                        ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %19 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %rx_wait = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 10
  %call65318 = call i32 @prepare_to_wait_event(ptr noundef %rx_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %20 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %rx_buffers, align 4
  %cmp.i287.not319 = icmp eq ptr %21, %rx_buffers
  br i1 %cmp.i287.not319, label %if.then63.if.end78_crit_edge, label %if.then63.for.end_crit_edge, !prof !241

if.then63.for.end_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.then63.if.end78_crit_edge:                     ; preds = %if.then63
  br label %if.end78

if.end78:                                         ; preds = %cleanup.if.end78_crit_edge, %if.then63.if.end78_crit_edge
  %call65320 = phi i32 [ %call65, %cleanup.if.end78_crit_edge ], [ %call65318, %if.then63.if.end78_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65320)
  %tobool79.not = icmp eq i32 %call65320, 0
  br i1 %tobool79.not, label %cleanup, label %if.end78.__out_crit_edge

if.end78.__out_crit_edge:                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out

cleanup:                                          ; preds = %if.end78
  call void @schedule() #14
  %call65 = call i32 @prepare_to_wait_event(ptr noundef %rx_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %22 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %rx_buffers, align 4
  %cmp.i287.not = icmp eq ptr %23, %rx_buffers
  br i1 %cmp.i287.not, label %cleanup.if.end78_crit_edge, label %cleanup.for.end_crit_edge, !prof !241

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup.if.end78_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then63.for.end_crit_edge
  call void @finish_wait(ptr noundef %rx_wait, ptr noundef nonnull %__wq_entry) #14
  br label %__out

__out:                                            ; preds = %for.end, %if.end78.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end84

if.end84:                                         ; preds = %__out, %if.end45.if.end84_crit_edge
  %call95 = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #14
  br label %if.end100

if.end100:                                        ; preds = %if.end84, %land.lhs.true.if.end100_crit_edge, %if.end23.if.end100_crit_edge
  %flags.0 = phi i32 [ %call95, %if.end84 ], [ %call12, %land.lhs.true.if.end100_crit_edge ], [ %call12, %if.end23.if.end100_crit_edge ]
  %rx_buffers102 = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 9
  %rx_reqs167 = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 7
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %if.end100
  %current_rx_buf.0.ph = phi ptr [ %12, %if.end100 ], [ %current_rx_buf.0.ph.be, %while.cond.outer.backedge ]
  %current_rx_bytes.0.ph = phi i32 [ %10, %if.end100 ], [ %current_rx_bytes.0.ph.be, %while.cond.outer.backedge ]
  %current_rx_req.0.ph = phi ptr [ %8, %if.end100 ], [ %current_rx_req.0.ph.be, %while.cond.outer.backedge ]
  %bytes_copied.0.ph = phi i32 [ 0, %if.end100 ], [ %add, %while.cond.outer.backedge ]
  %flags.1.ph = phi i32 [ %flags.0, %if.end100 ], [ %call147, %while.cond.outer.backedge ]
  %len.addr.0.ph = phi i32 [ %len, %if.end100 ], [ %sub136, %while.cond.outer.backedge ]
  %buf.addr.0.ph = phi ptr [ %buf, %if.end100 ], [ %add.ptr137, %while.cond.outer.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.ph)
  %tobool113.not = icmp eq i32 %len.addr.0.ph, 0
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer
  %current_rx_bytes.0 = phi i32 [ %current_rx_bytes.0.ph, %while.cond.outer ], [ 0, %while.cond.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %current_rx_bytes.0)
  %tobool101.not = icmp eq i32 %current_rx_bytes.0, 0
  br i1 %tobool101.not, label %lor.lhs.false, label %land.rhs

lor.lhs.false:                                    ; preds = %while.cond
  %24 = ptrtoint ptr %rx_buffers102 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %rx_buffers102, align 4
  %cmp.i289 = icmp eq ptr %25, %rx_buffers102
  %or.cond = select i1 %cmp.i289, i1 true, i1 %tobool113.not
  br i1 %or.cond, label %lor.lhs.false.while.end_crit_edge, label %if.then116, !prof !242

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.ph)
  %tobool113.not.old = icmp eq i32 %len.addr.0.ph, 0
  br i1 %tobool113.not.old, label %land.rhs.while.end_crit_edge, label %land.rhs.if.end128_crit_edge

land.rhs.if.end128_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end128

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.then116:                                       ; preds = %lor.lhs.false
  %26 = ptrtoint ptr %rx_buffers102 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_buffers102, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 -36
  %call.i.i291 = call zeroext i1 @__list_del_entry_valid(ptr noundef %27) #14
  br i1 %call.i.i291, label %if.end.i.i292, label %if.then116.list_del_init.exit_crit_edge

if.then116.list_del_init.exit_crit_edge:          ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i292:                                    ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i292, %if.then116.list_del_init.exit_crit_edge
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %27, ptr %27, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %27, ptr %prev.i3.i, align 4
  %actual = getelementptr i8, ptr %27, i32 16
  %36 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool119.not = icmp eq i32 %37, 0
  br i1 %tobool119.not, label %list_del_init.exit.if.else_crit_edge, label %land.lhs.true120

list_del_init.exit.if.else_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true120:                                 ; preds = %list_del_init.exit
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr, align 4
  %tobool122.not = icmp eq ptr %39, null
  br i1 %tobool122.not, label %land.lhs.true120.if.else_crit_edge, label %land.lhs.true120.if.end128_crit_edge

land.lhs.true120.if.end128_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end128

land.lhs.true120.if.else_crit_edge:               ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.else:                                          ; preds = %land.lhs.true120.if.else_crit_edge, %list_del_init.exit.if.else_crit_edge
  %40 = ptrtoint ptr %rx_reqs167 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_reqs167, align 4
  %call.i.i293 = call zeroext i1 @__list_add_valid(ptr noundef %27, ptr noundef %rx_reqs167, ptr noundef %41) #14
  br i1 %call.i.i293, label %if.end.i.i294, label %if.else.while.cond.backedge_crit_edge

if.else.while.cond.backedge_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.backedge

if.end.i.i294:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %27, ptr %prev1.i.i, align 4
  %43 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %41, ptr %27, align 4
  %44 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %rx_reqs167, ptr %prev.i3.i, align 4
  %45 = ptrtoint ptr %rx_reqs167 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %27, ptr %rx_reqs167, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end.i.i294, %if.else.while.cond.backedge_crit_edge
  br label %while.cond

if.end128:                                        ; preds = %land.lhs.true120.if.end128_crit_edge, %land.rhs.if.end128_crit_edge
  %current_rx_buf.1 = phi ptr [ %current_rx_buf.0.ph, %land.rhs.if.end128_crit_edge ], [ %39, %land.lhs.true120.if.end128_crit_edge ]
  %current_rx_bytes.1 = phi i32 [ %current_rx_bytes.0, %land.rhs.if.end128_crit_edge ], [ %37, %land.lhs.true120.if.end128_crit_edge ]
  %current_rx_req.1 = phi ptr [ %current_rx_req.0.ph, %land.rhs.if.end128_crit_edge ], [ %add.ptr, %land.lhs.true120.if.end128_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %flags.1.ph) #14
  %46 = call i32 @llvm.umin.i32(i32 %len.addr.0.ph, i32 %current_rx_bytes.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp9.i.i = icmp slt i32 %46, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end128
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_user.exit_crit_edge, label %if.then27.i.i, !prof !237

land.rhs16.i.i.copy_to_user.exit_crit_edge:       ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %copy_to_user.exit

if.then.i.i.i:                                    ; preds = %if.end128
  call void @__check_object_size(ptr noundef %current_rx_buf.1, i32 noundef %46, i1 noundef zeroext true) #14
  call void @__might_fault(ptr noundef nonnull @.str.50, i32 noundef 174) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %47 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0.ph, i32 %46, i32 -1226833920) #20, !srcloc !243
  %asmresult.i.i = extractvalue { i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %current_rx_buf.1, i32 noundef %46) #14
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0.ph, ptr noundef %current_rx_buf.1, i32 noundef %46) #14
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %46, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %46, %if.end.i.i.copy_to_user.exit_crit_edge ], [ %46, %if.then27.i.i ], [ %46, %land.rhs16.i.i.copy_to_user.exit_crit_edge ]
  %sub = sub i32 %46, %n.addr.0.i
  %add = add i32 %sub, %bytes_copied.0.ph
  %sub136 = sub i32 %len.addr.0.ph, %sub
  %add.ptr137 = getelementptr i8, ptr %buf.addr.0.ph, i32 %sub
  %call147 = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #14
  %48 = ptrtoint ptr %reset_printer to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %reset_printer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool153.not = icmp eq i8 %49, 0
  br i1 %tobool153.not, label %if.end159, label %if.then154

if.then154:                                       ; preds = %copy_to_user.exit
  %list155 = getelementptr inbounds %struct.usb_request, ptr %current_rx_req.1, i32 0, i32 9
  %50 = ptrtoint ptr %rx_reqs167 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_reqs167, align 4
  %call.i.i295 = call zeroext i1 @__list_add_valid(ptr noundef %list155, ptr noundef %rx_reqs167, ptr noundef %51) #14
  br i1 %call.i.i295, label %if.end.i.i298, label %if.then154.list_add.exit299_crit_edge

if.then154.list_add.exit299_crit_edge:            ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit299

if.end.i.i298:                                    ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i296 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i296 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %list155, ptr %prev1.i.i296, align 4
  %53 = ptrtoint ptr %list155 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %51, ptr %list155, align 4
  %prev3.i.i297 = getelementptr inbounds %struct.usb_request, ptr %current_rx_req.1, i32 0, i32 9, i32 1
  %54 = ptrtoint ptr %prev3.i.i297 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %rx_reqs167, ptr %prev3.i.i297, align 4
  %55 = ptrtoint ptr %rx_reqs167 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %list155, ptr %rx_reqs167, align 4
  br label %list_add.exit299

list_add.exit299:                                 ; preds = %if.end.i.i298, %if.then154.list_add.exit299_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call147) #14
  call void @mutex_unlock(ptr noundef %lock_printer_io) #14
  br label %cleanup197

if.end159:                                        ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %current_rx_bytes.1, i32 %sub)
  %cmp160 = icmp ugt i32 %current_rx_bytes.1, %sub
  br i1 %cmp160, label %if.then162, label %if.else165

if.then162:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #16
  %sub163 = sub i32 %current_rx_bytes.1, %sub
  %add.ptr164 = getelementptr i8, ptr %current_rx_buf.1, i32 %sub
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.end.i.i303, %if.else165.while.cond.outer.backedge_crit_edge, %if.then162
  %current_rx_buf.0.ph.be = phi ptr [ null, %if.end.i.i303 ], [ null, %if.else165.while.cond.outer.backedge_crit_edge ], [ %add.ptr164, %if.then162 ]
  %current_rx_bytes.0.ph.be = phi i32 [ 0, %if.end.i.i303 ], [ 0, %if.else165.while.cond.outer.backedge_crit_edge ], [ %sub163, %if.then162 ]
  %current_rx_req.0.ph.be = phi ptr [ null, %if.end.i.i303 ], [ null, %if.else165.while.cond.outer.backedge_crit_edge ], [ %current_rx_req.1, %if.then162 ]
  br label %while.cond.outer

if.else165:                                       ; preds = %if.end159
  %list166 = getelementptr inbounds %struct.usb_request, ptr %current_rx_req.1, i32 0, i32 9
  %56 = ptrtoint ptr %rx_reqs167 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rx_reqs167, align 4
  %call.i.i300 = call zeroext i1 @__list_add_valid(ptr noundef %list166, ptr noundef %rx_reqs167, ptr noundef %57) #14
  br i1 %call.i.i300, label %if.end.i.i303, label %if.else165.while.cond.outer.backedge_crit_edge

if.else165.while.cond.outer.backedge_crit_edge:   ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.outer.backedge

if.end.i.i303:                                    ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i301 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i301 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %list166, ptr %prev1.i.i301, align 4
  %59 = ptrtoint ptr %list166 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %57, ptr %list166, align 4
  %prev3.i.i302 = getelementptr inbounds %struct.usb_request, ptr %current_rx_req.1, i32 0, i32 9, i32 1
  %60 = ptrtoint ptr %prev3.i.i302 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %rx_reqs167, ptr %prev3.i.i302, align 4
  %61 = ptrtoint ptr %rx_reqs167 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %list166, ptr %rx_reqs167, align 4
  br label %while.cond.outer.backedge

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %lor.lhs.false.while.end_crit_edge
  %62 = ptrtoint ptr %current_rx_req24 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %current_rx_req.0.ph, ptr %current_rx_req24, align 4
  %63 = ptrtoint ptr %current_rx_bytes25 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %current_rx_bytes.0, ptr %current_rx_bytes25, align 4
  %64 = ptrtoint ptr %current_rx_buf26 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %current_rx_buf.0.ph, ptr %current_rx_buf26, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %flags.1.ph) #14
  call void @mutex_unlock(ptr noundef %lock_printer_io) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @printer_read.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@printer_read, %do.end193)) #14
          to label %if.then188 [label %do.end193], !srcloc !236

if.then188:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %gadget189 = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 2
  %65 = ptrtoint ptr %gadget189 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %gadget189, align 4
  %dev190 = getelementptr inbounds %struct.usb_gadget, ptr %66, i32 0, i32 11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @printer_read.__UNIQUE_ID_ddebug241, ptr noundef %dev190, ptr noundef nonnull @.str.40, i32 noundef %bytes_copied.0.ph) #14
  br label %do.end193

do.end193:                                        ; preds = %if.then188, %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_copied.0.ph)
  %tobool194.not = icmp eq i32 %bytes_copied.0.ph, 0
  %.bytes_copied.0 = select i1 %tobool194.not, i32 -11, i32 %bytes_copied.0.ph
  br label %cleanup197

cleanup197:                                       ; preds = %do.end193, %list_add.exit299, %if.then43, %if.then20, %entry.cleanup197_crit_edge
  %retval.0 = phi i32 [ -19, %if.then20 ], [ -11, %if.then43 ], [ -11, %list_add.exit299 ], [ -22, %entry.cleanup197_crit_edge ], [ %.bytes_copied.0, %do.end193 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @printer_write(ptr nocapture noundef readonly %fd, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %ptr) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @printer_write.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@printer_write, %do.end)) #14
          to label %if.then [label %do.end], !srcloc !236

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %gadget = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gadget, align 4
  %dev4 = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @printer_write.__UNIQUE_ID_ddebug242, ptr noundef %dev4, ptr noundef nonnull @.str.52, i32 noundef %len) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %do.end.cleanup192_crit_edge, label %if.end6

do.end.cleanup192_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup192

if.end6:                                          ; preds = %do.end
  %lock_printer_io = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock_printer_io, i32 noundef 0) #14
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #14
  %interface = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp18 = icmp slt i8 %5, 0
  br i1 %cmp18, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call12) #14
  tail call void @mutex_unlock(ptr noundef %lock_printer_io) #14
  br label %cleanup192

if.end23:                                         ; preds = %if.end6
  %reset_printer = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %reset_printer to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %reset_printer, align 1
  %tx_reqs = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %tx_reqs, align 4
  %cmp.i.not = icmp eq ptr %8, %tx_reqs
  br i1 %cmp.i.not, label %if.then32, label %if.end23.if.end92_crit_edge, !prof !237

if.end23.if.end92_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end92

if.then32:                                        ; preds = %if.end23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call12) #14
  %f_flags = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 7
  %9 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_flags, align 4
  %and = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef %lock_printer_io) #14
  br label %cleanup192

if.end37:                                         ; preds = %if.then32
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 612) #14
  %11 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %tx_reqs, align 4
  %cmp.i270.not = icmp eq ptr %12, %tx_reqs
  br i1 %cmp.i270.not, label %if.then55, label %if.end37.if.end76_crit_edge, !prof !241

if.end37.if.end76_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end76

if.then55:                                        ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %13 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %tx_wait = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 13
  %call57334 = call i32 @prepare_to_wait_event(ptr noundef %tx_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %14 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %tx_reqs, align 4
  %cmp.i272.not335 = icmp eq ptr %15, %tx_reqs
  br i1 %cmp.i272.not335, label %if.then55.if.end70_crit_edge, label %if.then55.for.end_crit_edge, !prof !241

if.then55.for.end_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.then55.if.end70_crit_edge:                     ; preds = %if.then55
  br label %if.end70

if.end70:                                         ; preds = %cleanup.if.end70_crit_edge, %if.then55.if.end70_crit_edge
  %call57336 = phi i32 [ %call57, %cleanup.if.end70_crit_edge ], [ %call57334, %if.then55.if.end70_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57336)
  %tobool71.not = icmp eq i32 %call57336, 0
  br i1 %tobool71.not, label %cleanup, label %if.end70.__out_crit_edge

if.end70.__out_crit_edge:                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out

cleanup:                                          ; preds = %if.end70
  call void @schedule() #14
  %call57 = call i32 @prepare_to_wait_event(ptr noundef %tx_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %16 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %tx_reqs, align 4
  %cmp.i272.not = icmp eq ptr %17, %tx_reqs
  br i1 %cmp.i272.not, label %cleanup.if.end70_crit_edge, label %cleanup.for.end_crit_edge, !prof !241

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup.if.end70_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then55.for.end_crit_edge
  call void @finish_wait(ptr noundef %tx_wait, ptr noundef nonnull %__wq_entry) #14
  br label %__out

__out:                                            ; preds = %for.end, %if.end70.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end76

if.end76:                                         ; preds = %__out, %if.end37.if.end76_crit_edge
  %call87 = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #14
  br label %if.end92

if.end92:                                         ; preds = %if.end76, %if.end23.if.end92_crit_edge
  %flags.0 = phi i32 [ %call87, %if.end76 ], [ %call12, %if.end23.if.end92_crit_edge ]
  %in_ep = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 4
  %tx_reqs_active = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 12
  br label %while.cond

while.cond:                                       ; preds = %list_add.exit289.while.cond_crit_edge, %if.end92
  %bytes_copied.0 = phi i32 [ 0, %if.end92 ], [ %add, %list_add.exit289.while.cond_crit_edge ]
  %flags.1 = phi i32 [ %flags.0, %if.end92 ], [ %call142, %list_add.exit289.while.cond_crit_edge ]
  %len.addr.0 = phi i32 [ %len, %if.end92 ], [ %sub, %list_add.exit289.while.cond_crit_edge ]
  %buf.addr.0 = phi ptr [ %buf, %if.end92 ], [ %add.ptr132, %list_add.exit289.while.cond_crit_edge ]
  %18 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %tx_reqs, align 4
  %cmp.i274 = icmp eq ptr %19, %tx_reqs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %tobool104.not = icmp eq i32 %len.addr.0, 0
  %or.cond = select i1 %cmp.i274, i1 true, i1 %tobool104.not
  br i1 %or.cond, label %while.end, label %while.body, !prof !242

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %len.addr.0)
  %cmp105 = icmp ugt i32 %len.addr.0, 8192
  %20 = call i32 @llvm.umin.i32(i32 %len.addr.0, i32 8192)
  %add.ptr = getelementptr i8, ptr %19, i32 -36
  %call.i.i276 = call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #14
  br i1 %call.i.i276, label %if.end.i.i277, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i277:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %19, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i277, %while.body.list_del_init.exit_crit_edge
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %19, ptr %19, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %19, ptr %prev.i3.i, align 4
  %complete = getelementptr i8, ptr %19, i32 -8
  %29 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @tx_complete, ptr %complete, align 4
  %length = getelementptr i8, ptr %19, i32 -32
  %30 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %20, ptr %length, align 4
  br i1 %cmp105, label %if.then113, label %if.else114

if.then113:                                       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  %zero = getelementptr i8, ptr %19, i32 -12
  %31 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %31)
  %bf.load = load i32, ptr %zero, align 4
  %bf.clear = and i32 %bf.load, -8193
  store i32 %bf.clear, ptr %zero, align 4
  br label %if.end122

if.else114:                                       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %in_ep, align 4
  %maxpacket = getelementptr inbounds %struct.usb_ep, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %maxpacket to i32
  call void @__asan_loadN_noabort(i32 %34, i32 7)
  %bf.load115 = load i56, ptr %maxpacket, align 2
  %bf.lshr = lshr i56 %bf.load115, 40
  %rem.lhs.trunc = trunc i32 %len.addr.0 to i16
  %rem.rhs.trunc = trunc i56 %bf.lshr to i16
  %rem302 = urem i16 %rem.lhs.trunc, %rem.rhs.trunc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem302)
  %cmp116 = icmp eq i16 %rem302, 0
  %zero118 = getelementptr i8, ptr %19, i32 -12
  %35 = ptrtoint ptr %zero118 to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load119 = load i32, ptr %zero118, align 4
  %bf.shl = select i1 %cmp116, i32 8192, i32 0
  %bf.clear120 = and i32 %bf.load119, -8193
  %bf.set121 = or i32 %bf.clear120, %bf.shl
  store i32 %bf.set121, ptr %zero118, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.else114, %if.then113
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %flags.1) #14
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 4
  call void @__check_object_size(ptr noundef %37, i32 noundef %20, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.50, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.end122.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end122.if.then11.i.i_crit_edge:                ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end122
  %38 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0, i32 %20, i32 -1226833920) #20, !srcloc !244
  %asmresult.i.i = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !237

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %37, i32 noundef %20) #14
  %39 = call i32 @llvm.read_register.i32(metadata !224) #14
  %and.i.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 4
  %41 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !245
  %and.i.i.i.i = and i32 %41, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !246
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !247
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %37, ptr noundef %buf.addr.0, i32 noundef %20) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #14, !srcloc !246
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !247
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end131, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !237

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end122.if.then11.i.i_crit_edge
  %res.0.i.i298 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %20, %if.end122.if.then11.i.i_crit_edge ], [ %20, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %20, %res.0.i.i298
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 %sub.i.i
  %42 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i298)
  %43 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_reqs, align 4
  %call.i.i278 = call zeroext i1 @__list_add_valid(ptr noundef %19, ptr noundef %tx_reqs, ptr noundef %44) #14
  br i1 %call.i.i278, label %if.end.i.i279, label %if.then11.i.i.list_add.exit_crit_edge

if.then11.i.i.list_add.exit_crit_edge:            ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i279:                                    ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %19, ptr %prev1.i.i, align 4
  %46 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %44, ptr %19, align 4
  %47 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %tx_reqs, ptr %prev.i3.i, align 4
  %48 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %19, ptr %tx_reqs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i279, %if.then11.i.i.list_add.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock_printer_io) #14
  br label %cleanup192

if.end131:                                        ; preds = %if.end.i.i
  %call142 = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #14
  %49 = ptrtoint ptr %reset_printer to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %reset_printer, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool148.not = icmp eq i8 %50, 0
  br i1 %tobool148.not, label %if.end154, label %if.then149

if.then149:                                       ; preds = %if.end131
  %51 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_reqs, align 4
  %call.i.i280 = call zeroext i1 @__list_add_valid(ptr noundef %19, ptr noundef %tx_reqs, ptr noundef %52) #14
  br i1 %call.i.i280, label %if.end.i.i283, label %if.then149.list_add.exit284_crit_edge

if.then149.list_add.exit284_crit_edge:            ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit284

if.end.i.i283:                                    ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i281 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i281 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %19, ptr %prev1.i.i281, align 4
  %54 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %52, ptr %19, align 4
  %55 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %tx_reqs, ptr %prev.i3.i, align 4
  %56 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %19, ptr %tx_reqs, align 4
  br label %list_add.exit284

list_add.exit284:                                 ; preds = %if.end.i.i283, %if.then149.list_add.exit284_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call142) #14
  call void @mutex_unlock(ptr noundef %lock_printer_io) #14
  br label %cleanup192

if.end154:                                        ; preds = %if.end131
  %add.ptr132 = getelementptr i8, ptr %buf.addr.0, i32 %20
  %sub = sub i32 %len.addr.0, %20
  %add = add i32 %20, %bytes_copied.0
  %57 = ptrtoint ptr %tx_reqs_active to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tx_reqs_active, align 4
  %call.i.i285 = call zeroext i1 @__list_add_valid(ptr noundef %19, ptr noundef %tx_reqs_active, ptr noundef %58) #14
  br i1 %call.i.i285, label %if.end.i.i288, label %if.end154.list_add.exit289_crit_edge

if.end154.list_add.exit289_crit_edge:             ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit289

if.end.i.i288:                                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i286 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i286 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %19, ptr %prev1.i.i286, align 4
  %60 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %58, ptr %19, align 4
  %61 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %tx_reqs_active, ptr %prev.i3.i, align 4
  %62 = ptrtoint ptr %tx_reqs_active to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %19, ptr %tx_reqs_active, align 4
  br label %list_add.exit289

list_add.exit289:                                 ; preds = %if.end.i.i288, %if.end154.list_add.exit289_crit_edge
  call void @_raw_spin_unlock(ptr noundef %1) #14
  %63 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %in_ep, align 4
  %call158 = call i32 @usb_ep_queue(ptr noundef %64, ptr noundef %add.ptr, i32 noundef 2592) #14
  call void @_raw_spin_lock(ptr noundef %1) #14
  %tobool160.not = icmp eq i32 %call158, 0
  br i1 %tobool160.not, label %list_add.exit289.while.cond_crit_edge, label %if.then161

list_add.exit289.while.cond_crit_edge:            ; preds = %list_add.exit289
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.then161:                                       ; preds = %list_add.exit289
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @list_move(ptr noundef %19, ptr noundef %tx_reqs)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call142) #14
  call void @mutex_unlock(ptr noundef %lock_printer_io) #14
  br label %cleanup192

while.end:                                        ; preds = %while.cond
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %flags.1) #14
  call void @mutex_unlock(ptr noundef %lock_printer_io) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @printer_write.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@printer_write, %do.end188)) #14
          to label %if.then183 [label %do.end188], !srcloc !236

if.then183:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %gadget184 = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 2
  %65 = ptrtoint ptr %gadget184 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %gadget184, align 4
  %dev185 = getelementptr inbounds %struct.usb_gadget, ptr %66, i32 0, i32 11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @printer_write.__UNIQUE_ID_ddebug243, ptr noundef %dev185, ptr noundef nonnull @.str.53, i32 noundef %bytes_copied.0) #14
  br label %do.end188

do.end188:                                        ; preds = %if.then183, %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_copied.0)
  %tobool189.not = icmp eq i32 %bytes_copied.0, 0
  %.bytes_copied.0 = select i1 %tobool189.not, i32 -11, i32 %bytes_copied.0
  br label %cleanup192

cleanup192:                                       ; preds = %do.end188, %if.then161, %list_add.exit284, %list_add.exit, %if.then35, %if.then20, %do.end.cleanup192_crit_edge
  %retval.0 = phi i32 [ -19, %if.then20 ], [ -11, %if.then35 ], [ %bytes_copied.0, %list_add.exit ], [ -11, %list_add.exit284 ], [ -11, %if.then161 ], [ -22, %do.end.cleanup192_crit_edge ], [ %.bytes_copied.0, %do.end188 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @printer_poll(ptr noundef %fd, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock_printer_io = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock_printer_io, i32 noundef 0) #14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #14
  %interface = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp6 = icmp slt i8 %3, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #14
  tail call void @mutex_unlock(ptr noundef %lock_printer_io) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @setup_rx_reqs(ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #14
  tail call void @mutex_unlock(ptr noundef %lock_printer_io) #14
  %rx_wait = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 10
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.end.poll_wait.exit82_crit_edge, label %land.lhs.true.i

if.end.poll_wait.exit82_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %poll_wait.exit82

land.lhs.true.i:                                  ; preds = %if.end
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %rx_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.land.lhs.true.i80_crit_edge, label %if.then.i

land.lhs.true.i.land.lhs.true.i80_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i80

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %5(ptr noundef %fd, ptr noundef nonnull %rx_wait, ptr noundef nonnull %wait) #14
  br label %land.lhs.true.i80

land.lhs.true.i80:                                ; preds = %if.then.i, %land.lhs.true.i.land.lhs.true.i80_crit_edge
  %tx_wait85 = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wait, align 4
  %tobool1.not.i77 = icmp eq ptr %7, null
  %tobool3.not.i78 = icmp eq ptr %tx_wait85, null
  %or.cond.i79 = or i1 %tobool3.not.i78, %tobool1.not.i77
  br i1 %or.cond.i79, label %land.lhs.true.i80.poll_wait.exit82_crit_edge, label %if.then.i81

land.lhs.true.i80.poll_wait.exit82_crit_edge:     ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #16
  br label %poll_wait.exit82

if.then.i81:                                      ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %7(ptr noundef %fd, ptr noundef nonnull %tx_wait85, ptr noundef nonnull %wait) #14
  br label %poll_wait.exit82

poll_wait.exit82:                                 ; preds = %if.then.i81, %land.lhs.true.i80.poll_wait.exit82_crit_edge, %if.end.poll_wait.exit82_crit_edge
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #14
  %tx_reqs = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %tx_reqs, align 4
  %cmp.i.not = icmp eq ptr %9, %tx_reqs
  %spec.select = select i1 %cmp.i.not, i32 0, i32 260, !prof !241
  %current_rx_bytes = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %current_rx_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %current_rx_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool32.not = icmp eq i32 %11, 0
  br i1 %tobool32.not, label %lor.lhs.false, label %poll_wait.exit82.if.then49_crit_edge, !prof !241

poll_wait.exit82.if.then49_crit_edge:             ; preds = %poll_wait.exit82
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then49

lor.lhs.false:                                    ; preds = %poll_wait.exit82
  %rx_buffers = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %rx_buffers, align 4
  %cmp.i83.not = icmp eq ptr %13, %rx_buffers
  br i1 %cmp.i83.not, label %lor.lhs.false.if.end51_crit_edge, label %lor.lhs.false.if.then49_crit_edge, !prof !241

lor.lhs.false.if.then49_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then49

lor.lhs.false.if.end51_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then49:                                        ; preds = %lor.lhs.false.if.then49_crit_edge, %poll_wait.exit82.if.then49_crit_edge
  %or50 = or i32 %spec.select, 65
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %lor.lhs.false.if.end51_crit_edge
  %status.1 = phi i32 [ %or50, %if.then49 ], [ %spec.select, %lor.lhs.false.if.end51_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call21) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then
  %retval.0 = phi i32 [ 24, %if.then ], [ %status.1, %if.end51 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @printer_ioctl(ptr nocapture noundef readonly %fd, i32 noundef %code, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @printer_ioctl.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@printer_ioctl, %do.body6)) #14
          to label %if.then [label %do.body6], !srcloc !236

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %gadget = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gadget, align 4
  %dev4 = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @printer_ioctl.__UNIQUE_ID_ddebug244, ptr noundef %dev4, ptr noundef nonnull @.str.57, i32 noundef %code, i32 noundef %arg) #14
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #14
  %interface = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp15 = icmp slt i8 %5, 0
  br i1 %cmp15, label %do.body6.cleanup_crit_edge, label %if.end19

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %do.body6
  %6 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %code, label %do.body24 [
    i32 -2147391711, label %sw.bb
    i32 -1073649886, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %printer_status = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %printer_status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %printer_status, align 4
  %conv20 = zext i8 %8 to i32
  br label %cleanup

sw.bb21:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  %conv22 = trunc i32 %arg to i8
  %printer_status23 = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %printer_status23 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv22, ptr %printer_status23, align 4
  br label %cleanup

do.body24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @printer_ioctl.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@printer_ioctl, %cleanup)) #14
          to label %if.then38 [label %cleanup], !srcloc !236

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #16
  %gadget39 = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %gadget39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gadget39, align 4
  %dev40 = getelementptr inbounds %struct.usb_gadget, ptr %11, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @printer_ioctl.__UNIQUE_ID_ddebug245, ptr noundef %dev40, ptr noundef nonnull @.str.58, i32 noundef %code) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %do.body24, %sw.bb21, %sw.bb, %do.body6.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.body6.cleanup_crit_edge ], [ 0, %sw.bb21 ], [ %conv20, %sw.bb ], [ -25, %if.then38 ], [ -25, %do.body24 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call9) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @printer_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %fd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -372
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #14
  %interface = getelementptr i8, ptr %2, i32 -232
  %3 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp7 = icmp slt i8 %4, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %printer_cdev_open = getelementptr i8, ptr %2, i32 160
  %5 = ptrtoint ptr %printer_cdev_open to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %printer_cdev_open, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then10, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %printer_cdev_open to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %printer_cdev_open, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %private_data, align 4
  %printer_status = getelementptr i8, ptr %2, i32 -8
  %9 = ptrtoint ptr %printer_status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %printer_status, align 4
  %11 = or i8 %10, 16
  store i8 %11, ptr %printer_status, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end.if.end14_crit_edge
  %ret.0 = phi i32 [ -16, %if.end.if.end14_crit_edge ], [ 0, %if.then10 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #14
  %kref = getelementptr i8, ptr %2, i32 -220
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !248
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end14.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !241

if.end14.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end14
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !237

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end14.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end14.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #14
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @printer_open.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@printer_open, %cleanup)) #14
          to label %if.then23 [label %cleanup], !srcloc !236

if.then23:                                        ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #16
  %gadget = getelementptr i8, ptr %2, i32 -236
  %14 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gadget, align 4
  %dev24 = getelementptr inbounds %struct.usb_gadget, ptr %15, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @printer_open.__UNIQUE_ID_ddebug237, ptr noundef %dev24, ptr noundef nonnull @.str.60, i32 noundef %ret.0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %kref_get.exit, %if.then
  %retval.0 = phi i32 [ -19, %if.then ], [ %ret.0, %if.then23 ], [ %ret.0, %kref_get.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @printer_close(ptr nocapture noundef readnone %inode, ptr nocapture noundef %fd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #14
  %printer_cdev_open = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %printer_cdev_open to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %printer_cdev_open, align 4
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %private_data, align 4
  %printer_status = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %printer_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %printer_status, align 4
  %6 = and i8 %5, -17
  store i8 %6, ptr %printer_status, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #14
  %kref = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !238
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #14
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #14, !srcloc !239
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !237

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #14
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !240
  tail call void @kfree(ptr noundef %1) #14
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @printer_close.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@printer_close, %do.end18)) #14
          to label %if.then [label %do.end18], !srcloc !236

if.then:                                          ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  %gadget = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gadget, align 4
  %dev16 = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @printer_close.__UNIQUE_ID_ddebug238, ptr noundef %dev16, ptr noundef nonnull @.str.62) #14
  br label %do.end18

do.end18:                                         ; preds = %if.then, %kref_put.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @printer_fsync(ptr nocapture noundef readonly %fd, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %fd, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #14
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #14
  %interface = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp7 = icmp slt i8 %5, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #14
  tail call void @up_write(ptr noundef %i_rwsem.i) #14
  br label %cleanup51

if.end:                                           ; preds = %entry
  %tx_reqs = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %tx_reqs, align 4
  %cmp.i.not = icmp eq ptr %7, %tx_reqs
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #14
  br i1 %cmp.i.not, label %if.end.if.end50_crit_edge, label %if.then14

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then14:                                        ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 711) #14
  %tx_reqs_active = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %tx_reqs_active to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %tx_reqs_active, align 4
  %cmp.i69.not = icmp eq ptr %9, %tx_reqs_active
  br i1 %cmp.i69.not, label %if.then14.if.end50_crit_edge, label %if.then29, !prof !237

if.then14.if.end50_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

if.then29:                                        ; preds = %if.then14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #14
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #14
  %tx_flush_wait = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 14
  %call3180 = call i32 @prepare_to_wait_event(ptr noundef %tx_flush_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %11 = ptrtoint ptr %tx_reqs_active to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %tx_reqs_active, align 4
  %cmp.i71.not81 = icmp eq ptr %12, %tx_reqs_active
  br i1 %cmp.i71.not81, label %if.then29.for.end_crit_edge, label %if.then29.if.end42_crit_edge, !prof !237

if.then29.if.end42_crit_edge:                     ; preds = %if.then29
  br label %if.end42

if.then29.for.end_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end42:                                         ; preds = %cleanup.if.end42_crit_edge, %if.then29.if.end42_crit_edge
  %call3182 = phi i32 [ %call31, %cleanup.if.end42_crit_edge ], [ %call3180, %if.then29.if.end42_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3182)
  %tobool43.not = icmp eq i32 %call3182, 0
  br i1 %tobool43.not, label %cleanup, label %if.end42.__out_crit_edge

if.end42.__out_crit_edge:                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %__out

cleanup:                                          ; preds = %if.end42
  call void @schedule() #14
  %call31 = call i32 @prepare_to_wait_event(ptr noundef %tx_flush_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #14
  %13 = ptrtoint ptr %tx_reqs_active to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %tx_reqs_active, align 4
  %cmp.i71.not = icmp eq ptr %14, %tx_reqs_active
  br i1 %cmp.i71.not, label %cleanup.for.end_crit_edge, label %cleanup.if.end42_crit_edge, !prof !237

cleanup.if.end42_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then29.for.end_crit_edge
  call void @finish_wait(ptr noundef %tx_flush_wait, ptr noundef nonnull %__wq_entry) #14
  br label %__out

__out:                                            ; preds = %for.end, %if.end42.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #14
  br label %if.end50

if.end50:                                         ; preds = %__out, %if.then14.if.end50_crit_edge, %if.end.if.end50_crit_edge
  call void @up_write(ptr noundef %i_rwsem.i) #14
  br label %cleanup51

cleanup51:                                        ; preds = %if.end50, %if.then
  %retval.0 = phi i32 [ -19, %if.then ], [ 0, %if.end50 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_rx_reqs(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_reqs = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %rx_reqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rx_reqs, align 4
  %cmp.i.not58 = icmp eq ptr %1, %rx_reqs
  br i1 %cmp.i.not58, label %entry.while.end_crit_edge, label %while.body.lr.ph, !prof !241

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %out_ep = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 5
  %rx_reqs_active = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %32, %cleanup.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -36
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #14
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %prev.i3.i, align 4
  %length = getelementptr i8, ptr %2, i32 -32
  %11 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8192, ptr %length, align 4
  %complete = getelementptr i8, ptr %2, i32 -8
  %12 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rx_complete, ptr %complete, align 4
  tail call void @_raw_spin_unlock(ptr noundef %dev) #14
  %13 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %out_ep, align 4
  %call5 = tail call i32 @usb_ep_queue(ptr noundef %14, ptr noundef %add.ptr, i32 noundef 2592) #14
  tail call void @_raw_spin_lock(ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  br i1 %tobool7.not, label %if.else, label %do.body

do.body:                                          ; preds = %list_del_init.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup_rx_reqs.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@setup_rx_reqs, %do.end)) #14
          to label %if.then19 [label %do.end], !srcloc !236

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %gadget = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 2
  %15 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gadget, align 4
  %dev20 = getelementptr inbounds %struct.usb_gadget, ptr %16, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup_rx_reqs.__UNIQUE_ID_ddebug239, ptr noundef %dev20, ptr noundef nonnull @.str.42, i32 noundef %call5) #14
  br label %do.end

do.end:                                           ; preds = %if.then19, %do.body
  %17 = ptrtoint ptr %rx_reqs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_reqs, align 4
  %call.i.i44 = tail call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %rx_reqs, ptr noundef %18) #14
  br i1 %call.i.i44, label %if.end.i.i45, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end.i.i45:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %2, ptr %prev1.i.i, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %2, align 4
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rx_reqs, ptr %prev.i3.i, align 4
  %22 = ptrtoint ptr %rx_reqs to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %2, ptr %rx_reqs, align 4
  br label %while.end

if.else:                                          ; preds = %list_del_init.exit
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %2, align 4
  %cmp.i46.not = icmp eq ptr %24, %2
  br i1 %cmp.i46.not, label %if.then26, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then26:                                        ; preds = %if.else
  %25 = ptrtoint ptr %rx_reqs_active to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_reqs_active, align 4
  %call.i.i48 = tail call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %rx_reqs_active, ptr noundef %26) #14
  br i1 %call.i.i48, label %if.end.i.i51, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i.i51:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i49 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i49 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %2, ptr %prev1.i.i49, align 4
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %2, align 4
  %29 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rx_reqs_active, ptr %prev.i3.i, align 4
  %30 = ptrtoint ptr %rx_reqs_active to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %2, ptr %rx_reqs_active, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i51, %if.then26.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %31 = ptrtoint ptr %rx_reqs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %rx_reqs, align 4
  %cmp.i.not = icmp eq ptr %32, %rx_reqs
  br i1 %cmp.i.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge, !prof !241

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end.i.i45, %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

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
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rx_complete(ptr nocapture noundef readonly %ep, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %status1 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #14
  %list = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %prev.i3.i, align 4
  %12 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %3, label %do.body69 [
    i32 0, label %sw.bb
    i32 -104, label %list_del_init.exit.do.body23_crit_edge
    i32 -108, label %list_del_init.exit.do.body23_crit_edge147
    i32 -103, label %do.body46
  ]

list_del_init.exit.do.body23_crit_edge147:        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body23

list_del_init.exit.do.body23_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body23

sw.bb:                                            ; preds = %list_del_init.exit
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %13 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp6.not = icmp eq i32 %14, 0
  br i1 %cmp6.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  %rx_buffers = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i123 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %16, ptr noundef %rx_buffers) #14
  br i1 %call.i.i123, label %if.end.i.i124, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i124:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %list, ptr %prev.i, align 4
  %18 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %rx_buffers, ptr %list, align 4
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev.i3.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i124, %if.then.list_add_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_complete.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rx_complete, %sw.epilog)) #14
          to label %if.then15 [label %sw.epilog], !srcloc !236

if.then15:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  %gadget = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gadget, align 4
  %dev16 = getelementptr inbounds %struct.usb_gadget, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %actual, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rx_complete.__UNIQUE_ID_ddebug232, ptr noundef %dev16, ptr noundef nonnull @.str.44, i32 noundef %24) #14
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %rx_reqs = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %rx_reqs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_reqs, align 4
  %call.i.i125 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %rx_reqs, ptr noundef %26) #14
  br i1 %call.i.i125, label %if.end.i.i127, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.i.i127:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %list, ptr %prev1.i.i, align 4
  %28 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %list, align 4
  %29 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rx_reqs, ptr %prev.i3.i, align 4
  %30 = ptrtoint ptr %rx_reqs to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %list, ptr %rx_reqs, align 4
  br label %sw.epilog

do.body23:                                        ; preds = %list_del_init.exit.do.body23_crit_edge, %list_del_init.exit.do.body23_crit_edge147
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_complete.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rx_complete, %do.end42)) #14
          to label %if.then37 [label %do.end42], !srcloc !236

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #16
  %gadget38 = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %gadget38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gadget38, align 4
  %dev39 = getelementptr inbounds %struct.usb_gadget, ptr %32, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rx_complete.__UNIQUE_ID_ddebug233, ptr noundef %dev39, ptr noundef nonnull @.str.45, i32 noundef %3) #14
  br label %do.end42

do.end42:                                         ; preds = %if.then37, %do.body23
  %rx_reqs44 = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 7
  %33 = ptrtoint ptr %rx_reqs44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_reqs44, align 4
  %call.i.i128 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %rx_reqs44, ptr noundef %34) #14
  br i1 %call.i.i128, label %if.end.i.i131, label %do.end42.sw.epilog_crit_edge

do.end42.sw.epilog_crit_edge:                     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.i.i131:                                    ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i129 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i129 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %list, ptr %prev1.i.i129, align 4
  %36 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %list, align 4
  %37 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %rx_reqs44, ptr %prev.i3.i, align 4
  %38 = ptrtoint ptr %rx_reqs44 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %list, ptr %rx_reqs44, align 4
  br label %sw.epilog

do.body46:                                        ; preds = %list_del_init.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_complete.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rx_complete, %do.end65)) #14
          to label %if.then60 [label %do.end65], !srcloc !236

if.then60:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #16
  %gadget61 = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %gadget61 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %gadget61, align 4
  %dev62 = getelementptr inbounds %struct.usb_gadget, ptr %40, i32 0, i32 11
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %41 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rx_complete.__UNIQUE_ID_ddebug234, ptr noundef %dev62, ptr noundef nonnull @.str.46, ptr noundef %42) #14
  br label %do.end65

do.end65:                                         ; preds = %if.then60, %do.body46
  %rx_reqs67 = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 7
  %43 = ptrtoint ptr %rx_reqs67 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_reqs67, align 4
  %call.i.i133 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %rx_reqs67, ptr noundef %44) #14
  br i1 %call.i.i133, label %if.end.i.i136, label %do.end65.sw.epilog_crit_edge

do.end65.sw.epilog_crit_edge:                     ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.i.i136:                                    ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i134 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i134 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %list, ptr %prev1.i.i134, align 4
  %46 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %44, ptr %list, align 4
  %47 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %rx_reqs67, ptr %prev.i3.i, align 4
  %48 = ptrtoint ptr %rx_reqs67 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %list, ptr %rx_reqs67, align 4
  br label %sw.epilog

do.body69:                                        ; preds = %list_del_init.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_complete.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rx_complete, %do.end88)) #14
          to label %if.then83 [label %do.end88], !srcloc !236

if.then83:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #16
  %gadget84 = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 2
  %49 = ptrtoint ptr %gadget84 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %gadget84, align 4
  %dev85 = getelementptr inbounds %struct.usb_gadget, ptr %50, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rx_complete.__UNIQUE_ID_ddebug235, ptr noundef %dev85, ptr noundef nonnull @.str.47, i32 noundef %3) #14
  br label %do.end88

do.end88:                                         ; preds = %if.then83, %do.body69
  %rx_reqs90 = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 7
  %51 = ptrtoint ptr %rx_reqs90 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rx_reqs90, align 4
  %call.i.i138 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %rx_reqs90, ptr noundef %52) #14
  br i1 %call.i.i138, label %if.end.i.i141, label %do.end88.sw.epilog_crit_edge

do.end88.sw.epilog_crit_edge:                     ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.i.i141:                                    ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i139 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i139 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %list, ptr %prev1.i.i139, align 4
  %54 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %52, ptr %list, align 4
  %55 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %rx_reqs90, ptr %prev.i3.i, align 4
  %56 = ptrtoint ptr %rx_reqs90 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %list, ptr %rx_reqs90, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i.i141, %do.end88.sw.epilog_crit_edge, %if.end.i.i136, %do.end65.sw.epilog_crit_edge, %if.end.i.i131, %do.end42.sw.epilog_crit_edge, %if.end.i.i127, %if.else.sw.epilog_crit_edge, %if.then15, %list_add_tail.exit
  %rx_wait = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %rx_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tx_complete(ptr nocapture noundef readonly %ep, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %status = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %3, label %do.body [
    i32 -104, label %entry.sw.epilog_crit_edge
    i32 -108, label %entry.sw.epilog_crit_edge30
    i32 0, label %entry.sw.epilog_crit_edge31
  ]

entry.sw.epilog_crit_edge31:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge30:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tx_complete.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tx_complete, %sw.epilog)) #14
          to label %if.then [label %sw.epilog], !srcloc !236

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %gadget = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gadget, align 4
  %dev4 = getelementptr inbounds %struct.usb_gadget, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tx_complete.__UNIQUE_ID_ddebug236, ptr noundef %dev4, ptr noundef nonnull @.str.55, i32 noundef %8) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge30, %entry.sw.epilog_crit_edge31
  tail call void @_raw_spin_lock(ptr noundef %1) #14
  %list = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i.i, label %if.end.i.i, label %sw.epilog.list_del_init.exit_crit_edge

sw.epilog.list_del_init.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %sw.epilog.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %prev.i3.i, align 4
  %tx_reqs = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_reqs, align 4
  %call.i.i27 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %tx_reqs, ptr noundef %18) #14
  br i1 %call.i.i27, label %if.end.i.i28, label %list_del_init.exit.list_add.exit_crit_edge

list_del_init.exit.list_add.exit_crit_edge:       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i28:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list, ptr %prev1.i.i, align 4
  %20 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %list, align 4
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tx_reqs, ptr %prev.i3.i, align 4
  %22 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %list, ptr %tx_reqs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i28, %list_del_init.exit.list_add.exit_crit_edge
  %tx_wait = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %tx_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  %tx_reqs_active = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 12
  %23 = ptrtoint ptr %tx_reqs_active to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %tx_reqs_active, align 4
  %cmp.i.not = icmp eq ptr %24, %tx_reqs_active
  br i1 %cmp.i.not, label %if.then15, label %list_add.exit.if.end16_crit_edge, !prof !237

list_add.exit.if.end16_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then15:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  %tx_flush_wait = getelementptr inbounds %struct.printer_dev, ptr %1, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %tx_flush_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %list_add.exit.if.end16_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %1) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_move(ptr noundef %list, ptr noundef %head) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i, label %if.end.i, label %entry.__list_del_entry.exit_crit_edge

entry.__list_del_entry.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_del_entry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__list_del_entry.exit

__list_del_entry.exit:                            ; preds = %if.end.i, %entry.__list_del_entry.exit_crit_edge
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %head, ptr noundef %7) #14
  br i1 %call.i.i, label %if.end.i.i, label %__list_del_entry.exit.list_add.exit_crit_edge

__list_del_entry.exit.list_add.exit_crit_edge:    ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i2 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev1.i.i2, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %head, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %__list_del_entry.exit.list_add.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @printer_soft_reset(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %gadget = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gadget, align 4
  %dev1 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.68) #18
  %in_ep = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_ep, align 4
  %call = tail call i32 @usb_ep_disable(ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %do.body2

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @printer_soft_reset.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@printer_soft_reset, %if.end13)) #14
          to label %if.then8 [label %if.end13], !srcloc !236

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gadget, align 4
  %dev10 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @printer_soft_reset.__UNIQUE_ID_ddebug249, ptr noundef %dev10, ptr noundef nonnull @.str.71) #14
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %do.body2, %entry.if.end13_crit_edge
  %out_ep = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out_ep, align 4
  %call14 = tail call i32 @usb_ep_disable(ptr noundef %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.if.end37_crit_edge, label %do.body17

if.end13.if.end37_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

do.body17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @printer_soft_reset.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@printer_soft_reset, %if.end37)) #14
          to label %if.then31 [label %if.end37], !srcloc !236

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gadget, align 4
  %dev33 = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @printer_soft_reset.__UNIQUE_ID_ddebug250, ptr noundef %dev33, ptr noundef nonnull @.str.72) #14
  br label %if.end37

if.end37:                                         ; preds = %if.then31, %do.body17, %if.end13.if.end37_crit_edge
  %current_rx_req = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 15
  %10 = ptrtoint ptr %current_rx_req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %current_rx_req, align 4
  %cmp.not = icmp eq ptr %11, null
  br i1 %cmp.not, label %if.end37.if.end41_crit_edge, label %if.then38

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then38:                                        ; preds = %if.end37
  %list = getelementptr inbounds %struct.usb_request, ptr %11, i32 0, i32 9
  %rx_reqs = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 7
  %12 = ptrtoint ptr %rx_reqs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_reqs, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %rx_reqs, ptr noundef %13) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then38.list_add.exit_crit_edge

if.then38.list_add.exit_crit_edge:                ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.usb_request, ptr %11, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rx_reqs, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %rx_reqs to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list, ptr %rx_reqs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then38.list_add.exit_crit_edge
  %18 = ptrtoint ptr %current_rx_req to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %current_rx_req, align 4
  br label %if.end41

if.end41:                                         ; preds = %list_add.exit, %if.end37.if.end41_crit_edge
  %current_rx_bytes = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 16
  %19 = ptrtoint ptr %current_rx_bytes to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %current_rx_bytes, align 4
  %current_rx_buf = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 17
  %20 = ptrtoint ptr %current_rx_buf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %current_rx_buf, align 4
  %reset_printer = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 19
  %21 = ptrtoint ptr %reset_printer to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %reset_printer, align 1
  %rx_buffers = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 9
  %22 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %rx_buffers, align 4
  %cmp.i.not226 = icmp eq ptr %23, %rx_buffers
  br i1 %cmp.i.not226, label %if.end41.while.cond57.preheader_crit_edge, label %while.body.lr.ph, !prof !241

if.end41.while.cond57.preheader_crit_edge:        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond57.preheader

while.body.lr.ph:                                 ; preds = %if.end41
  %rx_reqs56 = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 7
  br label %while.body

while.cond57.preheader:                           ; preds = %list_add.exit195.while.cond57.preheader_crit_edge, %if.end41.while.cond57.preheader_crit_edge
  %rx_reqs_active = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 8
  %24 = ptrtoint ptr %rx_reqs_active to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %rx_reqs_active, align 4
  %cmp.i196.not227 = icmp eq ptr %25, %rx_reqs_active
  br i1 %cmp.i196.not227, label %while.cond57.preheader.while.cond78.preheader_crit_edge, label %while.body68.lr.ph, !prof !241

while.cond57.preheader.while.cond78.preheader_crit_edge: ; preds = %while.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond78.preheader

while.body68.lr.ph:                               ; preds = %while.cond57.preheader
  %rx_reqs76 = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 7
  br label %while.body68

while.body:                                       ; preds = %list_add.exit195.while.body_crit_edge, %while.body.lr.ph
  %26 = phi ptr [ %23, %while.body.lr.ph ], [ %42, %list_add.exit195.while.body_crit_edge ]
  %call.i.i189 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %26) #14
  br i1 %call.i.i189, label %if.end.i.i190, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i190:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i190, %while.body.list_del_init.exit_crit_edge
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %26, ptr %26, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %26, ptr %prev.i3.i, align 4
  %35 = ptrtoint ptr %rx_reqs56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_reqs56, align 4
  %call.i.i191 = tail call zeroext i1 @__list_add_valid(ptr noundef %26, ptr noundef %rx_reqs56, ptr noundef %36) #14
  br i1 %call.i.i191, label %if.end.i.i194, label %list_del_init.exit.list_add.exit195_crit_edge

list_del_init.exit.list_add.exit195_crit_edge:    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit195

if.end.i.i194:                                    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i192 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i192 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %26, ptr %prev1.i.i192, align 4
  %38 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %36, ptr %26, align 4
  %39 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %rx_reqs56, ptr %prev.i3.i, align 4
  %40 = ptrtoint ptr %rx_reqs56 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %26, ptr %rx_reqs56, align 4
  br label %list_add.exit195

list_add.exit195:                                 ; preds = %if.end.i.i194, %list_del_init.exit.list_add.exit195_crit_edge
  %41 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %rx_buffers, align 4
  %cmp.i.not = icmp eq ptr %42, %rx_buffers
  br i1 %cmp.i.not, label %list_add.exit195.while.cond57.preheader_crit_edge, label %list_add.exit195.while.body_crit_edge, !prof !241

list_add.exit195.while.body_crit_edge:            ; preds = %list_add.exit195
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

list_add.exit195.while.cond57.preheader_crit_edge: ; preds = %list_add.exit195
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond57.preheader

while.cond78.preheader:                           ; preds = %list_add.exit208.while.cond78.preheader_crit_edge, %while.cond57.preheader.while.cond78.preheader_crit_edge
  %tx_reqs_active = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 12
  %43 = ptrtoint ptr %tx_reqs_active to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %tx_reqs_active, align 4
  %cmp.i209.not228 = icmp eq ptr %44, %tx_reqs_active
  br i1 %cmp.i209.not228, label %while.cond78.preheader.while.end97_crit_edge, label %while.body89.lr.ph, !prof !241

while.cond78.preheader.while.end97_crit_edge:     ; preds = %while.cond78.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end97

while.body89.lr.ph:                               ; preds = %while.cond78.preheader
  %tx_reqs = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 11
  br label %while.body89

while.body68:                                     ; preds = %list_add.exit208.while.body68_crit_edge, %while.body68.lr.ph
  %45 = ptrtoint ptr %rx_buffers to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rx_buffers, align 4
  %call.i.i198 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %46) #14
  br i1 %call.i.i198, label %if.end.i.i201, label %while.body68.list_del_init.exit203_crit_edge

while.body68.list_del_init.exit203_crit_edge:     ; preds = %while.body68
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit203

if.end.i.i201:                                    ; preds = %while.body68
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i199 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i199 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i199, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %46, align 4
  %prev1.i.i.i200 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i200 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i200, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %list_del_init.exit203

list_del_init.exit203:                            ; preds = %if.end.i.i201, %while.body68.list_del_init.exit203_crit_edge
  %53 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %46, ptr %46, align 4
  %prev.i3.i202 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i3.i202 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %46, ptr %prev.i3.i202, align 4
  %55 = ptrtoint ptr %rx_reqs76 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rx_reqs76, align 4
  %call.i.i204 = tail call zeroext i1 @__list_add_valid(ptr noundef %46, ptr noundef %rx_reqs76, ptr noundef %56) #14
  br i1 %call.i.i204, label %if.end.i.i207, label %list_del_init.exit203.list_add.exit208_crit_edge

list_del_init.exit203.list_add.exit208_crit_edge: ; preds = %list_del_init.exit203
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit208

if.end.i.i207:                                    ; preds = %list_del_init.exit203
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i205 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i205 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %46, ptr %prev1.i.i205, align 4
  %58 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %56, ptr %46, align 4
  %59 = ptrtoint ptr %prev.i3.i202 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %rx_reqs76, ptr %prev.i3.i202, align 4
  %60 = ptrtoint ptr %rx_reqs76 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %46, ptr %rx_reqs76, align 4
  br label %list_add.exit208

list_add.exit208:                                 ; preds = %if.end.i.i207, %list_del_init.exit203.list_add.exit208_crit_edge
  %61 = ptrtoint ptr %rx_reqs_active to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %rx_reqs_active, align 4
  %cmp.i196.not = icmp eq ptr %62, %rx_reqs_active
  br i1 %cmp.i196.not, label %list_add.exit208.while.cond78.preheader_crit_edge, label %list_add.exit208.while.body68_crit_edge, !prof !241

list_add.exit208.while.body68_crit_edge:          ; preds = %list_add.exit208
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body68

list_add.exit208.while.cond78.preheader_crit_edge: ; preds = %list_add.exit208
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond78.preheader

while.body89:                                     ; preds = %list_add.exit221.while.body89_crit_edge, %while.body89.lr.ph
  %63 = phi ptr [ %44, %while.body89.lr.ph ], [ %79, %list_add.exit221.while.body89_crit_edge ]
  %call.i.i211 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %63) #14
  br i1 %call.i.i211, label %if.end.i.i214, label %while.body89.list_del_init.exit216_crit_edge

while.body89.list_del_init.exit216_crit_edge:     ; preds = %while.body89
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit216

if.end.i.i214:                                    ; preds = %while.body89
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i212 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i212 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i212, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %63, align 4
  %prev1.i.i.i213 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i213 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i213, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %list_del_init.exit216

list_del_init.exit216:                            ; preds = %if.end.i.i214, %while.body89.list_del_init.exit216_crit_edge
  %70 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %63, ptr %63, align 4
  %prev.i3.i215 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i3.i215 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %63, ptr %prev.i3.i215, align 4
  %72 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tx_reqs, align 4
  %call.i.i217 = tail call zeroext i1 @__list_add_valid(ptr noundef %63, ptr noundef %tx_reqs, ptr noundef %73) #14
  br i1 %call.i.i217, label %if.end.i.i220, label %list_del_init.exit216.list_add.exit221_crit_edge

list_del_init.exit216.list_add.exit221_crit_edge: ; preds = %list_del_init.exit216
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit221

if.end.i.i220:                                    ; preds = %list_del_init.exit216
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i218 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i218 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %63, ptr %prev1.i.i218, align 4
  %75 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %73, ptr %63, align 4
  %76 = ptrtoint ptr %prev.i3.i215 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %tx_reqs, ptr %prev.i3.i215, align 4
  %77 = ptrtoint ptr %tx_reqs to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %63, ptr %tx_reqs, align 4
  br label %list_add.exit221

list_add.exit221:                                 ; preds = %if.end.i.i220, %list_del_init.exit216.list_add.exit221_crit_edge
  %78 = ptrtoint ptr %tx_reqs_active to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %tx_reqs_active, align 4
  %cmp.i209.not = icmp eq ptr %79, %tx_reqs_active
  br i1 %cmp.i209.not, label %list_add.exit221.while.end97_crit_edge, label %list_add.exit221.while.body89_crit_edge, !prof !241

list_add.exit221.while.body89_crit_edge:          ; preds = %list_add.exit221
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body89

list_add.exit221.while.end97_crit_edge:           ; preds = %list_add.exit221
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end97

while.end97:                                      ; preds = %list_add.exit221.while.end97_crit_edge, %while.cond78.preheader.while.end97_crit_edge
  %80 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %in_ep, align 4
  %call99 = tail call i32 @usb_ep_enable(ptr noundef %81) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %while.end97.if.end122_crit_edge, label %do.body102

while.end97.if.end122_crit_edge:                  ; preds = %while.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end122

do.body102:                                       ; preds = %while.end97
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @printer_soft_reset.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@printer_soft_reset, %if.end122)) #14
          to label %if.then116 [label %if.end122], !srcloc !236

if.then116:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #16
  %82 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %gadget, align 4
  %dev118 = getelementptr inbounds %struct.usb_gadget, ptr %83, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @printer_soft_reset.__UNIQUE_ID_ddebug251, ptr noundef %dev118, ptr noundef nonnull @.str.73) #14
  br label %if.end122

if.end122:                                        ; preds = %if.then116, %do.body102, %while.end97.if.end122_crit_edge
  %84 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %out_ep, align 4
  %call124 = tail call i32 @usb_ep_enable(ptr noundef %85) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end122.if.end147_crit_edge, label %do.body127

if.end122.if.end147_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end147

do.body127:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @printer_soft_reset.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@printer_soft_reset, %if.end147)) #14
          to label %if.then141 [label %if.end147], !srcloc !236

if.then141:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #16
  %86 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %gadget, align 4
  %dev143 = getelementptr inbounds %struct.usb_gadget, ptr %87, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @printer_soft_reset.__UNIQUE_ID_ddebug252, ptr noundef %dev143, ptr noundef nonnull @.str.74) #14
  br label %if.end147

if.end147:                                        ; preds = %if.then141, %do.body127, %if.end122.if.end147_crit_edge
  %rx_wait = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %rx_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  %tx_wait = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %tx_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  %tx_flush_wait = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %tx_flush_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @printer_reset_interface(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp slt i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @printer_reset_interface.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@printer_reset_interface, %do.end)) #14
          to label %if.then5 [label %do.end], !srcloc !236

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %gadget = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gadget, align 4
  %dev6 = getelementptr inbounds %struct.usb_gadget, ptr %3, i32 0, i32 11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @printer_reset_interface.__UNIQUE_ID_ddebug248, ptr noundef %dev6, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.77) #14
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %in_ep = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_ep, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %do.end.if.end12_crit_edge, label %if.then9

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %call11 = tail call i32 @usb_ep_disable(ptr noundef %5) #14
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.end.if.end12_crit_edge
  %out_ep = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %out_ep, align 4
  %desc13 = getelementptr inbounds %struct.usb_ep, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %desc13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc13, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %if.end12.do.body20_crit_edge, label %if.then15

if.end12.do.body20_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body20

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %call17 = tail call i32 @usb_ep_disable(ptr noundef %9) #14
  br label %do.body20

do.body20:                                        ; preds = %if.then15, %if.end12.do.body20_crit_edge
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev) #14
  %12 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %in_ep, align 4
  %desc31 = getelementptr inbounds %struct.usb_ep, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %desc31 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %desc31, align 4
  %15 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %out_ep, align 4
  %desc33 = getelementptr inbounds %struct.usb_ep, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %desc33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %desc33, align 4
  %18 = ptrtoint ptr %interface to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %interface, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev, i32 noundef %call25) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_printer_interface(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %gadget = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gadget, align 4
  %speed.i = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 3
  %switch.select = select i1 %switch.selectcmp, ptr @hs_ep_in_desc, ptr @fs_ep_in_desc
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %switch.selectcmp93 = icmp eq i32 %3, 5
  %switch.select94 = select i1 %switch.selectcmp93, ptr @ss_ep_in_desc, ptr %switch.select
  %in_ep = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_ep, align 4
  %desc = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %switch.select94, ptr %desc, align 4
  %7 = load ptr, ptr %in_ep, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %7, align 4
  %9 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gadget, align 4
  %speed.i82 = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %speed.i82 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed.i82, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %switch.selectcmp95 = icmp eq i32 %12, 3
  %switch.select96 = select i1 %switch.selectcmp95, ptr @hs_ep_out_desc, ptr @fs_ep_out_desc
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %switch.selectcmp97 = icmp eq i32 %12, 5
  %switch.select98 = select i1 %switch.selectcmp97, ptr @ss_ep_out_desc, ptr %switch.select96
  %out_ep = getelementptr inbounds %struct.printer_dev, ptr %dev, i32 0, i32 5
  %13 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %out_ep, align 4
  %desc4 = getelementptr inbounds %struct.usb_ep, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %desc4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %switch.select98, ptr %desc4, align 4
  %16 = load ptr, ptr %out_ep, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %16, align 4
  %18 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %in_ep, align 4
  %call8 = tail call i32 @usb_ep_enable(ptr noundef %19) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 0
  br i1 %cmp.not, label %if.end17, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_printer_interface.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_printer_interface, %if.then46)) #14
          to label %if.then13 [label %if.then46], !srcloc !236

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gadget, align 4
  %dev15 = getelementptr inbounds %struct.usb_gadget, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %in_ep, align 4
  %name = getelementptr inbounds %struct.usb_ep, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_printer_interface.__UNIQUE_ID_ddebug246, ptr noundef %dev15, ptr noundef nonnull @.str.80, ptr noundef %25, i32 noundef %call8) #14
  br label %if.then46

if.end17:                                         ; preds = %entry
  %26 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %out_ep, align 4
  %call19 = tail call i32 @usb_ep_enable(ptr noundef %27) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %if.end17.if.end55_crit_edge, label %do.body22

if.end17.if.end55_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end55

do.body22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_printer_interface.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@set_printer_interface, %if.then46)) #14
          to label %if.then36 [label %if.then46], !srcloc !236

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %gadget, align 4
  %dev38 = getelementptr inbounds %struct.usb_gadget, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %out_ep, align 4
  %name40 = getelementptr inbounds %struct.usb_ep, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %name40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_printer_interface.__UNIQUE_ID_ddebug247, ptr noundef %dev38, ptr noundef nonnull @.str.80, ptr noundef %33, i32 noundef %call19) #14
  br label %if.then46

if.then46:                                        ; preds = %if.then36, %do.body22, %if.then13, %do.body
  %result.0.ph = phi i32 [ %call19, %if.then36 ], [ %call8, %if.then13 ], [ %call8, %do.body ], [ %call19, %do.body22 ]
  %34 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %in_ep, align 4
  %call48 = tail call i32 @usb_ep_disable(ptr noundef %35) #14
  %36 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %out_ep, align 4
  %call50 = tail call i32 @usb_ep_disable(ptr noundef %37) #14
  %38 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %in_ep, align 4
  %desc52 = getelementptr inbounds %struct.usb_ep, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %desc52 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %desc52, align 4
  %41 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %out_ep, align 4
  %desc54 = getelementptr inbounds %struct.usb_ep, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %desc54 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %desc54, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then46, %if.end17.if.end55_crit_edge
  %result.092 = phi i32 [ %result.0.ph, %if.then46 ], [ 0, %if.end17.if.end55_crit_edge ]
  ret i32 %result.092
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !11, !13, !14, !16, !18, !19, !20, !22, !23, !25, !26, !28, !29, !30, !31, !32, !34, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !53, !55, !56, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !77, !78, !79, !80, !82, !84, !85, !86, !88, !89, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !119, !120, !121, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !148, !150, !151, !152, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !183, !184, !186, !187, !188, !190, !191, !192, !193, !194, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !223}
!llvm.named.register.sp = !{!224}
!llvm.module.flags = !{!225, !226, !227, !228, !229, !230, !231, !232}
!llvm.ident = !{!233}

!0 = !{ptr @__UNIQUE_ID_alias259, !1, !"__UNIQUE_ID_alias259", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1513, i32 1}
!2 = !{ptr @__initcall__kmod_usb_f_printer__260_1513_printermod_init6, !1, !"__initcall__kmod_usb_f_printer__260_1513_printermod_init6", i1 false, i1 false}
!3 = !{ptr @__exitcall_printermod_exit, !1, !"__exitcall_printermod_exit", i1 false, i1 false}
!4 = !{ptr @__UNIQUE_ID_file261, !5, !"__UNIQUE_ID_file261", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1514, i32 1}
!6 = !{ptr @__UNIQUE_ID_license262, !5, !"__UNIQUE_ID_license262", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author263, !8, !"__UNIQUE_ID_author263", i1 false, i1 false}
!8 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1515, i32 1}
!9 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @printerusb_func, !1, !"printerusb_func", i1 false, i1 false}
!11 = !{ptr @gprinter_alloc_inst.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1365, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1391, i32 54}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 59, i32 8}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @printer_ida_lock, !17, !"printer_ida_lock", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 58, i32 8}
!22 = !{ptr @printer_ida, !21, !"printer_ida", i1 false, i1 false}
!23 = !{ptr @gprinter_setup.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1522, i32 21}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1526, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @gprinter_setup._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @gprinter_setup._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1530, i32 48}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1532, i32 3}
!36 = !{ptr @gprinter_setup._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @gprinter_setup._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @usb_gadget_class, !39, !"usb_gadget_class", i1 false, i1 false}
!39 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 57, i32 22}
!40 = !{ptr @major, !41, !"major", i1 false, i1 false}
!41 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 56, i32 12}
!42 = distinct !{null, !43, !"minors", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 56, i32 19}
!44 = !{ptr @printer_func_type, !45, !"printer_func_type", i1 false, i1 false}
!45 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1309, i32 38}
!46 = !{ptr @printer_item_ops, !47, !"printer_item_ops", i1 false, i1 false}
!47 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1207, i32 40}
!48 = !{ptr @printer_attrs, !49, !"printer_attrs", i1 false, i1 false}
!49 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1303, i32 35}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1262, i32 1}
!52 = !{ptr @f_printer_opts_attr_pnp_string, !51, !"f_printer_opts_attr_pnp_string", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1301, i32 1}
!55 = !{ptr @f_printer_opts_attr_q_len, !54, !"f_printer_opts_attr_q_len", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1271, i32 25}
!58 = !{ptr @gprinter_alloc.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1497, i32 2}
!60 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @gprinter_alloc.__key.18, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1498, i32 2}
!63 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @gprinter_alloc.__key.20, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1499, i32 2}
!66 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @gprinter_alloc.__key.22, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1500, i32 2}
!69 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @gprinter_alloc.__key.24, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1501, i32 2}
!72 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1087, i32 3}
!75 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @printer_func_bind._entry, !74, !"_entry", i1 false, i1 false}
!79 = !{ptr @printer_func_bind._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1129, i32 13}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1131, i32 3}
!84 = !{ptr @printer_func_bind._entry.31, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @printer_func_bind._entry_ptr.33, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1144, i32 3}
!88 = !{ptr @printer_func_bind._entry.34, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @printer_func_bind._entry_ptr.36, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @intf_desc, !91, !"intf_desc", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 112, i32 40}
!92 = !{ptr @fs_ep_in_desc, !93, !"fs_ep_in_desc", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 122, i32 39}
!94 = !{ptr @fs_ep_out_desc, !95, !"fs_ep_out_desc", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 129, i32 39}
!96 = !{ptr @hs_ep_in_desc, !97, !"hs_ep_in_desc", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 148, i32 39}
!98 = !{ptr @hs_ep_out_desc, !99, !"hs_ep_out_desc", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 155, i32 39}
!100 = !{ptr @ss_ep_in_desc, !101, !"ss_ep_in_desc", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 173, i32 39}
!102 = !{ptr @ss_ep_out_desc, !103, !"ss_ep_out_desc", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 185, i32 39}
!104 = !{ptr @fs_printer_function, !105, !"fs_printer_function", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 136, i32 38}
!106 = !{ptr @hs_printer_function, !107, !"hs_printer_function", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 162, i32 38}
!108 = !{ptr @ss_printer_function, !109, !"ss_printer_function", i1 false, i1 false}
!109 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 197, i32 38}
!110 = !{ptr @ss_ep_in_comp_desc, !111, !"ss_ep_in_comp_desc", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 180, i32 41}
!112 = !{ptr @ss_ep_out_comp_desc, !113, !"ss_ep_out_comp_desc", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 192, i32 41}
!114 = !{ptr @printer_io_operations, !115, !"printer_io_operations", i1 false, i1 false}
!115 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 792, i32 37}
!116 = !{ptr @.str.37, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 445, i32 2}
!118 = !{ptr @.str.38, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.39, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @printer_read.__UNIQUE_ID_ddebug240, !117, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!121 = !{ptr @.str.40, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 561, i32 2}
!123 = !{ptr @printer_read.__UNIQUE_ID_ddebug241, !122, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!124 = !{ptr @.str.41, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 417, i32 4}
!126 = !{ptr @.str.42, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @setup_rx_reqs.__UNIQUE_ID_ddebug239, !125, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!128 = !{ptr @.str.43, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 277, i32 4}
!130 = !{ptr @.str.44, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @rx_complete.__UNIQUE_ID_ddebug232, !129, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!132 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 286, i32 3}
!134 = !{ptr @rx_complete.__UNIQUE_ID_ddebug233, !133, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!135 = !{ptr @.str.46, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 292, i32 3}
!137 = !{ptr @rx_complete.__UNIQUE_ID_ddebug234, !136, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!138 = !{ptr @.str.47, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 301, i32 3}
!140 = !{ptr @rx_complete.__UNIQUE_ID_ddebug235, !139, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!141 = distinct !{null, !142, !"__already_done", i1 false, i1 false}
!142 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!143 = !{ptr @.str.48, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.49, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!146 = !{ptr @.str.50, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!148 = !{ptr @.str.51, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 579, i32 2}
!150 = !{ptr @.str.52, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @printer_write.__UNIQUE_ID_ddebug242, !149, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!152 = !{ptr @.str.53, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 680, i32 2}
!154 = !{ptr @printer_write.__UNIQUE_ID_ddebug243, !153, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!155 = !{ptr @.str.54, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 316, i32 3}
!157 = !{ptr @.str.55, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @tx_complete.__UNIQUE_ID_ddebug236, !156, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!159 = !{ptr @.str.56, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 761, i32 2}
!161 = !{ptr @.str.57, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @printer_ioctl.__UNIQUE_ID_ddebug244, !160, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!163 = !{ptr @.str.58, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 781, i32 3}
!165 = !{ptr @printer_ioctl.__UNIQUE_ID_ddebug245, !164, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!166 = !{ptr @.str.59, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 367, i32 2}
!168 = !{ptr @.str.60, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @printer_open.__UNIQUE_ID_ddebug237, !167, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!170 = !{ptr @.str.61, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 385, i32 2}
!172 = !{ptr @.str.62, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @printer_close.__UNIQUE_ID_ddebug238, !171, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!174 = !{ptr @.str.63, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 992, i32 2}
!176 = !{ptr @.str.64, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @printer_func_setup.__UNIQUE_ID_ddebug253, !175, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!178 = !{ptr @.str.65, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1011, i32 4}
!180 = !{ptr @printer_func_setup.__UNIQUE_ID_ddebug254, !179, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!181 = !{ptr @.str.66, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1041, i32 3}
!183 = !{ptr @printer_func_setup.__UNIQUE_ID_ddebug257, !182, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!184 = !{ptr @.str.67, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1053, i32 4}
!186 = !{ptr @printer_func_setup._entry, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @printer_func_setup._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.68, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 890, i32 2}
!190 = !{ptr @.str.69, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.70, !189, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @printer_soft_reset._entry, !189, !"_entry", i1 false, i1 false}
!193 = !{ptr @printer_soft_reset._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.71, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 893, i32 3}
!196 = !{ptr @printer_soft_reset.__UNIQUE_ID_ddebug249, !195, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!197 = !{ptr @.str.72, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 895, i32 3}
!199 = !{ptr @printer_soft_reset.__UNIQUE_ID_ddebug250, !198, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!200 = !{ptr @.str.73, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 927, i32 3}
!202 = !{ptr @printer_soft_reset.__UNIQUE_ID_ddebug251, !201, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!203 = !{ptr @.str.74, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 929, i32 3}
!205 = !{ptr @printer_soft_reset.__UNIQUE_ID_ddebug252, !204, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!206 = !{ptr @.str.75, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 881, i32 3}
!208 = !{ptr @.str.76, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @set_interface._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @set_interface._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.77, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 851, i32 2}
!213 = !{ptr @.str.78, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @printer_reset_interface.__UNIQUE_ID_ddebug248, !212, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!215 = !{ptr @.str.79, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 821, i32 3}
!217 = !{ptr @.str.80, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @set_printer_interface.__UNIQUE_ID_ddebug246, !216, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!219 = !{ptr @set_printer_interface.__UNIQUE_ID_ddebug247, !220, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!220 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 827, i32 3}
!221 = !{ptr @.str.81, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/usb/gadget/function/f_printer.c", i32 1188, i32 2}
!223 = !{ptr @printer_func_disable.__UNIQUE_ID_ddebug258, !222, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!224 = !{!"sp"}
!225 = !{i32 1, !"wchar_size", i32 2}
!226 = !{i32 1, !"min_enum_size", i32 4}
!227 = !{i32 8, !"branch-target-enforcement", i32 0}
!228 = !{i32 8, !"sign-return-address", i32 0}
!229 = !{i32 8, !"sign-return-address-all", i32 0}
!230 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!231 = !{i32 7, !"uwtable", i32 1}
!232 = !{i32 7, !"frame-pointer", i32 2}
!233 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!234 = !{!"auto-init"}
!235 = !{i8 0, i8 2}
!236 = !{i64 2148990092, i64 2148990097, i64 2148990110, i64 2148990154, i64 2148990188, i64 2148990209}
!237 = !{!"branch_weights", i32 2000, i32 1}
!238 = !{i64 2148466270}
!239 = !{i64 2148380710, i64 2148380742, i64 2148380771, i64 2148380805, i64 2148380836, i64 2148380859}
!240 = !{i64 2149342384}
!241 = !{!"branch_weights", i32 1, i32 2000}
!242 = !{!"branch_weights", i32 2002, i32 2000}
!243 = !{i64 2153398735, i64 2153398760}
!244 = !{i64 2153398054, i64 2153398079}
!245 = !{i64 5893609}
!246 = !{i64 5893806}
!247 = !{i64 2153379039}
!248 = !{i64 2148378245, i64 2148378277, i64 2148378306, i64 2148378340, i64 2148378371, i64 2148378394}
