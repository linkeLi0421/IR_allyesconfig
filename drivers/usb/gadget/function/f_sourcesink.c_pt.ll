; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/function/f_sourcesink.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_sourcesink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_function_driver = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.f_ss_opts = type { %struct.usb_function_instance, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.f_sourcesink = type { %struct.usb_function, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }

@__UNIQUE_ID_alias236 = internal constant [37 x i8] c"usb_f_ss_lb.alias=usbfunc:SourceSink\00", section ".modinfo", align 1
@SourceSinkusb_func = internal global { %struct.usb_function_driver, [40 x i8] } { %struct.usb_function_driver { ptr @.str.4, ptr null, %struct.list_head zeroinitializer, ptr @source_sink_alloc_inst, ptr @source_sink_alloc_func }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_usb_f_ss_lb__237_1286_sslb_modinit6 = internal global ptr @sslb_modinit, section ".initcall6.init", align 4
@__exitcall_sslb_modexit = internal global ptr @sslb_modexit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file238 = internal constant [57 x i8] c"usb_f_ss_lb.file=drivers/usb/gadget/function/usb_f_ss_lb\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [24 x i8] c"usb_f_ss_lb.license=GPL\00", section ".modinfo", align 1
@disable_ep.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 75, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb_f_ss_lb\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disable_ep\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/usb/gadget/function/f_sourcesink.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"disable %s --> %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SourceSink\00", [21 x i8] zeroinitializer }, align 32
@source_sink_alloc_inst.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ss_opts->lock\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ss_func_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @ss_item_ops, ptr null, ptr @ss_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ss_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @ss_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@ss_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @f_ss_opts_attr_pattern, ptr @f_ss_opts_attr_isoc_interval, ptr @f_ss_opts_attr_isoc_maxpacket, ptr @f_ss_opts_attr_isoc_mult, ptr @f_ss_opts_attr_isoc_maxburst, ptr @f_ss_opts_attr_bulk_buflen, ptr @f_ss_opts_attr_bulk_qlen, ptr @f_ss_opts_attr_iso_qlen, ptr null], [60 x i8] zeroinitializer }, align 32
@f_ss_opts_attr_pattern = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.7, ptr null, i16 420, ptr @f_ss_opts_pattern_show, ptr @f_ss_opts_pattern_store }, [44 x i8] zeroinitializer }, align 32
@f_ss_opts_attr_isoc_interval = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.9, ptr null, i16 420, ptr @f_ss_opts_isoc_interval_show, ptr @f_ss_opts_isoc_interval_store }, [44 x i8] zeroinitializer }, align 32
@f_ss_opts_attr_isoc_maxpacket = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.10, ptr null, i16 420, ptr @f_ss_opts_isoc_maxpacket_show, ptr @f_ss_opts_isoc_maxpacket_store }, [44 x i8] zeroinitializer }, align 32
@f_ss_opts_attr_isoc_mult = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.11, ptr null, i16 420, ptr @f_ss_opts_isoc_mult_show, ptr @f_ss_opts_isoc_mult_store }, [44 x i8] zeroinitializer }, align 32
@f_ss_opts_attr_isoc_maxburst = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.12, ptr null, i16 420, ptr @f_ss_opts_isoc_maxburst_show, ptr @f_ss_opts_isoc_maxburst_store }, [44 x i8] zeroinitializer }, align 32
@f_ss_opts_attr_bulk_buflen = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.13, ptr null, i16 420, ptr @f_ss_opts_bulk_buflen_show, ptr @f_ss_opts_bulk_buflen_store }, [44 x i8] zeroinitializer }, align 32
@f_ss_opts_attr_bulk_qlen = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.14, ptr null, i16 420, ptr @f_ss_opts_bulk_qlen_show, ptr @f_ss_opts_bulk_qlen_store }, [44 x i8] zeroinitializer }, align 32
@f_ss_opts_attr_iso_qlen = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.15, ptr null, i16 420, ptr @f_ss_opts_iso_qlen_show, ptr @f_ss_opts_iso_qlen_store }, [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pattern\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isoc_interval\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isoc_maxpacket\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"isoc_mult\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isoc_maxburst\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bulk_buflen\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bulk_qlen\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iso_qlen\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"source/sink\00", [20 x i8] zeroinitializer }, align 32
@sourcesink_strings = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @stringtab_sourcesink, ptr null], [24 x i8] zeroinitializer }, align 32
@source_sink_intf_alt0 = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 2, i8 -1, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@source_sink_intf_alt1 = internal global { %struct.usb_interface_descriptor, [23 x i8] } { %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 1, i8 4, i8 -1, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@fs_source_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@sourcesink_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 336, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: can't autoconfigure on %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sourcesink_bind\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sourcesink_bind._entry_ptr = internal global ptr @sourcesink_bind._entry, section ".printk_index", align 4
@fs_sink_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@fs_iso_source_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 1, i16 -253, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@fs_iso_sink_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 1, i16 -253, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@fs_source_sink_descs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @source_sink_intf_alt0, ptr @fs_sink_desc, ptr @fs_source_desc, ptr @source_sink_intf_alt1, ptr @fs_sink_desc, ptr @fs_source_desc, ptr @fs_iso_sink_desc, ptr @fs_iso_source_desc, ptr null], [60 x i8] zeroinitializer }, align 32
@hs_source_sink_descs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @source_sink_intf_alt0, ptr @hs_source_desc, ptr @hs_sink_desc, ptr @source_sink_intf_alt1, ptr @hs_source_desc, ptr @hs_sink_desc, ptr @hs_iso_source_desc, ptr @hs_iso_sink_desc, ptr null], [60 x i8] zeroinitializer }, align 32
@ss_source_sink_descs = internal global { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @source_sink_intf_alt0, ptr @ss_source_desc, ptr @ss_source_comp_desc, ptr @ss_sink_desc, ptr @ss_sink_comp_desc, ptr @source_sink_intf_alt1, ptr @ss_source_desc, ptr @ss_source_comp_desc, ptr @ss_sink_desc, ptr @ss_sink_comp_desc, ptr @ss_iso_source_desc, ptr @ss_iso_source_comp_desc, ptr @ss_iso_sink_desc, ptr @ss_iso_sink_comp_desc, ptr null], [36 x i8] zeroinitializer }, align 32
@hs_source_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hs_sink_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 2, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hs_iso_source_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 1, i16 4, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@hs_iso_sink_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 1, i16 4, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_source_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_sink_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 4, i8 0, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_iso_source_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 1, i16 4, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_iso_source_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 4 }, [26 x i8] zeroinitializer }, align 32
@ss_iso_sink_desc = internal global { %struct.usb_endpoint_descriptor, [23 x i8] } { %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 1, i16 4, i8 4, i8 0, i8 0 }>, [23 x i8] zeroinitializer }, align 32
@ss_iso_sink_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 4 }, [26 x i8] zeroinitializer }, align 32
@sourcesink_bind.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.21, i8 0, i8 111, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s speed %s: IN/%s, OUT/%s, ISO-IN/%s, ISO-OUT/%s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"super\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dual\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"<none>\00", [25 x i8] zeroinitializer }, align 32
@ss_source_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@ss_sink_comp_desc = internal global { %struct.usb_ss_ep_comp_descriptor, [26 x i8] } { %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, [26 x i8] zeroinitializer }, align 32
@disable_source_sink.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 -96, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"disable_source_sink\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s disabled\0A\00", [19 x i8] zeroinitializer }, align 32
@enable_source_sink.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -73, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enable_source_sink\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s enabled, alt intf %d\0A\00", [39 x i8] zeroinitializer }, align 32
@source_sink_start_ep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 627, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"start %s%s %s --> %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"source_sink_start_ep\00", [43 x i8] zeroinitializer }, align 32
@source_sink_start_ep._entry_ptr = internal global ptr @source_sink_start_ep._entry, section ".printk_index", align 4
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ISO-\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IN\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OUT\00", [28 x i8] zeroinitializer }, align 32
@source_sink_complete.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 -119, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"source_sink_complete\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s gone (%d), %d/%d\0A\00", [43 x i8] zeroinitializer }, align 32
@source_sink_complete.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.37, i8 0, i8 -116, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s complete --> %d, %d/%d\0A\00", [37 x i8] zeroinitializer }, align 32
@source_sink_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.35, ptr @.str.2, i32 572, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"kill %s:  resubmit %d bytes --> %d\0A\00", [60 x i8] zeroinitializer }, align 32
@source_sink_complete._entry_ptr = internal global ptr @source_sink_complete._entry, section ".printk_index", align 4
@check_read_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 495, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bad OUT byte, buf[%d] = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"check_read_data\00", [16 x i8] zeroinitializer }, align 32
@check_read_data._entry_ptr = internal global ptr @check_read_data._entry, section ".printk_index", align 4
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/gadget/u_f.h\00", [39 x i8] zeroinitializer }, align 32
@sourcesink_setup.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -52, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sourcesink_setup\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"unknown control req%02x.%02x v%04x i%04x l%d\0A\00", [50 x i8] zeroinitializer }, align 32
@sourcesink_setup.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.44, i8 0, i8 -51, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"source/sink req%02x.%02x v%04x i%04x l%d\0A\00", [54 x i8] zeroinitializer }, align 32
@sourcesink_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.2, i32 829, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"source/sink response, err %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sourcesink_setup._entry_ptr = internal global ptr @sourcesink_setup._entry, section ".printk_index", align 4
@stringtab_sourcesink = internal global { %struct.usb_gadget_strings, [24 x i8] } { %struct.usb_gadget_strings { i16 1033, ptr @strings_sourcesink }, [24 x i8] zeroinitializer }, align 32
@strings_sourcesink = internal global { [2 x %struct.usb_string], [16 x i8] } { [2 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.46 }, %struct.usb_string zeroinitializer], [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"source and sink data\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 91, i64 92]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.49 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967175, i64 4294967188, i64 4294967192, i64 4294967193]
@___asan_gen_.50 = private unnamed_addr constant [19 x i8] c"SourceSinkusb_func\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 301, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1266, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1253, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1261, i32 57 }
@___asan_gen_.77 = private unnamed_addr constant [13 x i8] c"ss_func_type\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1232, i32 38 }
@___asan_gen_.80 = private unnamed_addr constant [12 x i8] c"ss_item_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 887, i32 40 }
@___asan_gen_.83 = private unnamed_addr constant [9 x i8] c"ss_attrs\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1220, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant [23 x i8] c"f_ss_opts_attr_pattern\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [29 x i8] c"f_ss_opts_attr_isoc_interval\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [30 x i8] c"f_ss_opts_attr_isoc_maxpacket\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [25 x i8] c"f_ss_opts_attr_isoc_mult\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [29 x i8] c"f_ss_opts_attr_isoc_maxburst\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [27 x i8] c"f_ss_opts_attr_bulk_buflen\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [25 x i8] c"f_ss_opts_attr_bulk_qlen\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [24 x i8] c"f_ss_opts_attr_iso_qlen\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 932, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 897, i32 25 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 975, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1018, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1061, i32 1 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1104, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1142, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1180, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 1218, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 861, i32 22 }
@___asan_gen_.140 = private unnamed_addr constant [19 x i8] c"sourcesink_strings\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 283, i32 35 }
@___asan_gen_.143 = private unnamed_addr constant [22 x i8] c"source_sink_intf_alt0\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 60, i32 40 }
@___asan_gen_.146 = private unnamed_addr constant [22 x i8] c"source_sink_intf_alt1\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 70, i32 40 }
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"fs_source_desc\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 82, i32 39 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 335, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [13 x i8] c"fs_sink_desc\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 90, i32 39 }
@___asan_gen_.170 = private unnamed_addr constant [19 x i8] c"fs_iso_source_desc\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 98, i32 39 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"fs_iso_sink_desc\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 108, i32 39 }
@___asan_gen_.176 = private unnamed_addr constant [21 x i8] c"fs_source_sink_descs\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 118, i32 38 }
@___asan_gen_.179 = private unnamed_addr constant [21 x i8] c"hs_source_sink_descs\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 167, i32 38 }
@___asan_gen_.182 = private unnamed_addr constant [21 x i8] c"ss_source_sink_descs\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 252, i32 38 }
@___asan_gen_.185 = private unnamed_addr constant [15 x i8] c"hs_source_desc\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 133, i32 39 }
@___asan_gen_.188 = private unnamed_addr constant [13 x i8] c"hs_sink_desc\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 141, i32 39 }
@___asan_gen_.191 = private unnamed_addr constant [19 x i8] c"hs_iso_source_desc\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 149, i32 39 }
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"hs_iso_sink_desc\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 158, i32 39 }
@___asan_gen_.197 = private unnamed_addr constant [15 x i8] c"ss_source_desc\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 182, i32 39 }
@___asan_gen_.200 = private unnamed_addr constant [13 x i8] c"ss_sink_desc\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 199, i32 39 }
@___asan_gen_.203 = private unnamed_addr constant [19 x i8] c"ss_iso_source_desc\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 216, i32 39 }
@___asan_gen_.206 = private unnamed_addr constant [24 x i8] c"ss_iso_source_comp_desc\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 225, i32 41 }
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"ss_iso_sink_desc\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 234, i32 39 }
@___asan_gen_.212 = private unnamed_addr constant [22 x i8] c"ss_iso_sink_comp_desc\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 243, i32 41 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 439, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [20 x i8] c"ss_source_comp_desc\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 190, i32 41 }
@___asan_gen_.233 = private unnamed_addr constant [18 x i8] c"ss_sink_comp_desc\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 207, i32 41 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 643, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 734, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 625, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 548, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 561, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 571, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 495, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [28 x i8] c"../drivers/usb/gadget/u_f.h\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 80, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 813, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 821, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 828, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant [21 x i8] c"stringtab_sourcesink\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 278, i32 34 }
@___asan_gen_.311 = private unnamed_addr constant [19 x i8] c"strings_sourcesink\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 273, i32 26 }
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.315 = private constant [46 x i8] c"../drivers/usb/gadget/function/f_sourcesink.c\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 274, i32 10 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_sslb_modexit, ptr @__initcall__kmod_usb_f_ss_lb__237_1286_sslb_modinit6, ptr @check_read_data._entry, ptr @check_read_data._entry_ptr, ptr @source_sink_complete._entry, ptr @source_sink_complete._entry_ptr, ptr @source_sink_start_ep._entry, ptr @source_sink_start_ep._entry_ptr, ptr @sourcesink_bind._entry, ptr @sourcesink_bind._entry_ptr, ptr @sourcesink_setup._entry, ptr @sourcesink_setup._entry_ptr, ptr @sslb_modexit, ptr @SourceSinkusb_func, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @source_sink_alloc_inst.__key, ptr @.str.5, ptr @.str.6, ptr @ss_func_type, ptr @ss_item_ops, ptr @ss_attrs, ptr @f_ss_opts_attr_pattern, ptr @f_ss_opts_attr_isoc_interval, ptr @f_ss_opts_attr_isoc_maxpacket, ptr @f_ss_opts_attr_isoc_mult, ptr @f_ss_opts_attr_isoc_maxburst, ptr @f_ss_opts_attr_bulk_buflen, ptr @f_ss_opts_attr_bulk_qlen, ptr @f_ss_opts_attr_iso_qlen, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @sourcesink_strings, ptr @source_sink_intf_alt0, ptr @source_sink_intf_alt1, ptr @fs_source_desc, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @fs_sink_desc, ptr @fs_iso_source_desc, ptr @fs_iso_sink_desc, ptr @fs_source_sink_descs, ptr @hs_source_sink_descs, ptr @ss_source_sink_descs, ptr @hs_source_desc, ptr @hs_sink_desc, ptr @hs_iso_source_desc, ptr @hs_iso_sink_desc, ptr @ss_source_desc, ptr @ss_sink_desc, ptr @ss_iso_source_desc, ptr @ss_iso_source_comp_desc, ptr @ss_iso_sink_desc, ptr @ss_iso_sink_comp_desc, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @ss_source_comp_desc, ptr @ss_sink_comp_desc, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @stringtab_sourcesink, ptr @strings_sourcesink, ptr @.str.46], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SourceSinkusb_func to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @source_sink_alloc_inst.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_func_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_ss_opts_attr_pattern to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_ss_opts_attr_isoc_interval to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_ss_opts_attr_isoc_maxpacket to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_ss_opts_attr_isoc_mult to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_ss_opts_attr_isoc_maxburst to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_ss_opts_attr_bulk_buflen to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_ss_opts_attr_bulk_qlen to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f_ss_opts_attr_iso_qlen to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sourcesink_strings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @source_sink_intf_alt0 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @source_sink_intf_alt1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_source_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sourcesink_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_sink_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_iso_source_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_iso_sink_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_source_sink_descs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_source_sink_descs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_source_sink_descs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_source_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_sink_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_iso_source_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_iso_sink_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_source_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_sink_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_iso_source_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_iso_source_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_iso_sink_desc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_iso_sink_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_source_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ss_sink_comp_desc to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @source_sink_start_ep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @source_sink_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_read_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sourcesink_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stringtab_sourcesink to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @strings_sourcesink to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disable_endpoints(ptr nocapture noundef readonly %cdev, ptr noundef %in, ptr noundef %out, ptr noundef %iso_in, ptr noundef %iso_out) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @usb_ep_disable(ptr noundef %in) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %entry.disable_ep.exit_crit_edge

entry.disable_ep.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_ep.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @disable_ep.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@disable_endpoints, %disable_ep.exit)) #9
          to label %if.then5.i [label %disable_ep.exit], !srcloc !174

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 11
  %name.i = getelementptr inbounds %struct.usb_ep, ptr %in, i32 0, i32 1
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @disable_ep.__UNIQUE_ID_ddebug228, ptr noundef %dev.i, ptr noundef nonnull @.str.3, ptr noundef %3, i32 noundef %call.i) #9
  br label %disable_ep.exit

disable_ep.exit:                                  ; preds = %if.then5.i, %do.body.i, %entry.disable_ep.exit_crit_edge
  %call.i9 = tail call i32 @usb_ep_disable(ptr noundef %out) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %cmp.i10 = icmp slt i32 %call.i9, 0
  br i1 %cmp.i10, label %do.body.i11, label %disable_ep.exit.disable_ep.exit15_crit_edge

disable_ep.exit.disable_ep.exit15_crit_edge:      ; preds = %disable_ep.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_ep.exit15

do.body.i11:                                      ; preds = %disable_ep.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @disable_ep.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@disable_endpoints, %disable_ep.exit15)) #9
          to label %if.then5.i14 [label %disable_ep.exit15], !srcloc !174

if.then5.i14:                                     ; preds = %do.body.i11
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdev, align 4
  %dev.i12 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  %name.i13 = getelementptr inbounds %struct.usb_ep, ptr %out, i32 0, i32 1
  %6 = ptrtoint ptr %name.i13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i13, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @disable_ep.__UNIQUE_ID_ddebug228, ptr noundef %dev.i12, ptr noundef nonnull @.str.3, ptr noundef %7, i32 noundef %call.i9) #9
  br label %disable_ep.exit15

disable_ep.exit15:                                ; preds = %if.then5.i14, %do.body.i11, %disable_ep.exit.disable_ep.exit15_crit_edge
  %tobool.not = icmp eq ptr %iso_in, null
  br i1 %tobool.not, label %disable_ep.exit15.if.end_crit_edge, label %if.then

disable_ep.exit15.if.end_crit_edge:               ; preds = %disable_ep.exit15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %disable_ep.exit15
  %call.i16 = tail call i32 @usb_ep_disable(ptr noundef nonnull %iso_in) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %cmp.i17 = icmp slt i32 %call.i16, 0
  br i1 %cmp.i17, label %do.body.i18, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body.i18:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @disable_ep.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@disable_endpoints, %if.end)) #9
          to label %if.then5.i21 [label %if.end], !srcloc !174

if.then5.i21:                                     ; preds = %do.body.i18
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cdev, align 4
  %dev.i19 = getelementptr inbounds %struct.usb_gadget, ptr %9, i32 0, i32 11
  %name.i20 = getelementptr inbounds %struct.usb_ep, ptr %iso_in, i32 0, i32 1
  %10 = ptrtoint ptr %name.i20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name.i20, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @disable_ep.__UNIQUE_ID_ddebug228, ptr noundef %dev.i19, ptr noundef nonnull @.str.3, ptr noundef %11, i32 noundef %call.i16) #9
  br label %if.end

if.end:                                           ; preds = %if.then5.i21, %do.body.i18, %if.then.if.end_crit_edge, %disable_ep.exit15.if.end_crit_edge
  %tobool1.not = icmp eq ptr %iso_out, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %call.i23 = tail call i32 @usb_ep_disable(ptr noundef nonnull %iso_out) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %cmp.i24 = icmp slt i32 %call.i23, 0
  br i1 %cmp.i24, label %do.body.i25, label %if.then2.if.end3_crit_edge

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

do.body.i25:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @disable_ep.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@disable_endpoints, %if.end3)) #9
          to label %if.then5.i28 [label %if.end3], !srcloc !174

if.then5.i28:                                     ; preds = %do.body.i25
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cdev, align 4
  %dev.i26 = getelementptr inbounds %struct.usb_gadget, ptr %13, i32 0, i32 11
  %name.i27 = getelementptr inbounds %struct.usb_ep, ptr %iso_out, i32 0, i32 1
  %14 = ptrtoint ptr %name.i27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name.i27, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @disable_ep.__UNIQUE_ID_ddebug228, ptr noundef %dev.i26, ptr noundef nonnull @.str.3, ptr noundef %15, i32 noundef %call.i23) #9
  br label %if.end3

if.end3:                                          ; preds = %if.then5.i28, %do.body.i25, %if.then2.if.end3_crit_edge, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sslb_modexit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_function_unregister(ptr noundef nonnull @SourceSinkusb_func) #9
  tail call void @lb_modexit() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lb_modexit() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sslb_modinit() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_function_register(ptr noundef nonnull @SourceSinkusb_func) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @lb_modinit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_function_unregister(ptr noundef nonnull @SourceSinkusb_func) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @source_sink_alloc_inst() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 228) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.f_ss_opts, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @source_sink_alloc_inst.__key) #9
  %free_func_inst = getelementptr inbounds %struct.usb_function_instance, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %free_func_inst to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @source_sink_free_instance, ptr %free_func_inst, align 8
  %isoc_interval = getelementptr inbounds %struct.f_ss_opts, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %isoc_interval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %isoc_interval, align 8
  %isoc_maxpacket = getelementptr inbounds %struct.f_ss_opts, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %isoc_maxpacket to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1024, ptr %isoc_maxpacket, align 4
  %bulk_buflen = getelementptr inbounds %struct.f_ss_opts, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %bulk_buflen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %bulk_buflen, align 8
  %bulk_qlen = getelementptr inbounds %struct.f_ss_opts, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %bulk_qlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %bulk_qlen, align 4
  %iso_qlen = getelementptr inbounds %struct.f_ss_opts, ptr %call7.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %iso_qlen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %iso_qlen, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @ss_func_type) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %do.body ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @source_sink_alloc_func(ptr noundef %fi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 160) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.f_ss_opts, ptr %fi, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %refcnt = getelementptr inbounds %struct.f_ss_opts, ptr %fi, i32 0, i32 10
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %refcnt, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %pattern = getelementptr inbounds %struct.f_ss_opts, ptr %fi, i32 0, i32 1
  %3 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pattern, align 4
  %pattern3 = getelementptr inbounds %struct.f_sourcesink, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %pattern3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pattern3, align 8
  %isoc_interval = getelementptr inbounds %struct.f_ss_opts, ptr %fi, i32 0, i32 2
  %6 = ptrtoint ptr %isoc_interval to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %isoc_interval, align 4
  %isoc_interval4 = getelementptr inbounds %struct.f_sourcesink, ptr %call7.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %isoc_interval4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %isoc_interval4, align 4
  %isoc_maxpacket = getelementptr inbounds %struct.f_ss_opts, ptr %fi, i32 0, i32 3
  %9 = ptrtoint ptr %isoc_maxpacket to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %isoc_maxpacket, align 4
  %isoc_maxpacket5 = getelementptr inbounds %struct.f_sourcesink, ptr %call7.i.i, i32 0, i32 8
  %11 = ptrtoint ptr %isoc_maxpacket5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %isoc_maxpacket5, align 8
  %isoc_mult = getelementptr inbounds %struct.f_ss_opts, ptr %fi, i32 0, i32 4
  %12 = ptrtoint ptr %isoc_mult to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %isoc_mult, align 4
  %isoc_mult6 = getelementptr inbounds %struct.f_sourcesink, ptr %call7.i.i, i32 0, i32 9
  %14 = ptrtoint ptr %isoc_mult6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %isoc_mult6, align 4
  %isoc_maxburst = getelementptr inbounds %struct.f_ss_opts, ptr %fi, i32 0, i32 5
  %15 = ptrtoint ptr %isoc_maxburst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %isoc_maxburst, align 4
  %isoc_maxburst7 = getelementptr inbounds %struct.f_sourcesink, ptr %call7.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %isoc_maxburst7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %isoc_maxburst7, align 8
  %bulk_buflen = getelementptr inbounds %struct.f_ss_opts, ptr %fi, i32 0, i32 6
  %18 = ptrtoint ptr %bulk_buflen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bulk_buflen, align 4
  %buflen = getelementptr inbounds %struct.f_sourcesink, ptr %call7.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %buflen, align 4
  %bulk_qlen = getelementptr inbounds %struct.f_ss_opts, ptr %fi, i32 0, i32 7
  %21 = ptrtoint ptr %bulk_qlen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bulk_qlen, align 4
  %bulk_qlen8 = getelementptr inbounds %struct.f_sourcesink, ptr %call7.i.i, i32 0, i32 12
  %23 = ptrtoint ptr %bulk_qlen8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %bulk_qlen8, align 8
  %iso_qlen = getelementptr inbounds %struct.f_ss_opts, ptr %fi, i32 0, i32 8
  %24 = ptrtoint ptr %iso_qlen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iso_qlen, align 4
  %iso_qlen9 = getelementptr inbounds %struct.f_sourcesink, ptr %call7.i.i, i32 0, i32 13
  %26 = ptrtoint ptr %iso_qlen9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %iso_qlen9, align 4
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.16, ptr %call7.i.i, align 8
  %bind = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 9
  %28 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @sourcesink_bind, ptr %bind, align 4
  %set_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 13
  %29 = ptrtoint ptr %set_alt to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @sourcesink_set_alt, ptr %set_alt, align 4
  %get_alt = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 14
  %30 = ptrtoint ptr %get_alt to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @sourcesink_get_alt, ptr %get_alt, align 8
  %disable = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 15
  %31 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @sourcesink_disable, ptr %disable, align 4
  %setup = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 16
  %32 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @sourcesink_setup, ptr %setup, align 8
  %strings = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %strings to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @sourcesink_strings, ptr %strings, align 4
  %free_func = getelementptr inbounds %struct.usb_function, ptr %call7.i.i, i32 0, i32 11
  %34 = ptrtoint ptr %free_func to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @sourcesink_free_func, ptr %free_func, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @source_sink_free_instance(ptr noundef %fi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %fi) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ss_attr_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_put_function_instance(ptr noundef %item) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_ss_opts_pattern_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %pattern = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pattern, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.8, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_ss_opts_pattern_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num) #9
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %num, align 1, !annotation !175
  %lock = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %refcnt = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 10
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %switch = icmp ult i8 %4, 3
  br i1 %switch, label %if.end14, label %if.end4.end_crit_edge

if.end4.end_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end14:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %conv15 = zext i8 %4 to i32
  %pattern = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 1
  %5 = ptrtoint ptr %pattern to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv15, ptr %pattern, align 4
  br label %end

end:                                              ; preds = %if.end14, %if.end4.end_crit_edge, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end14 ], [ -16, %entry.end_crit_edge ], [ -22, %if.end4.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_ss_opts_isoc_interval_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %isoc_interval = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %isoc_interval to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %isoc_interval, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.8, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_ss_opts_isoc_interval_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num) #9
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %num, align 1, !annotation !175
  %lock = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %refcnt = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 10
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %4)
  %cmp = icmp ugt i8 %4, 16
  br i1 %cmp, label %if.end4.end_crit_edge, label %if.end7

if.end4.end_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %4 to i32
  %isoc_interval = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 2
  %5 = ptrtoint ptr %isoc_interval to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %isoc_interval, align 4
  br label %end

end:                                              ; preds = %if.end7, %if.end4.end_crit_edge, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end7 ], [ -16, %entry.end_crit_edge ], [ -22, %if.end4.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_ss_opts_isoc_maxpacket_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %isoc_maxpacket = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %isoc_maxpacket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %isoc_maxpacket, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.8, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_ss_opts_isoc_maxpacket_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num) #9
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %num, align 2, !annotation !175
  %lock = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %refcnt = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 10
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %4)
  %cmp = icmp ugt i16 %4, 1024
  br i1 %cmp, label %if.end4.end_crit_edge, label %if.end7

if.end4.end_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %4 to i32
  %isoc_maxpacket = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 3
  %5 = ptrtoint ptr %isoc_maxpacket to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %isoc_maxpacket, align 4
  br label %end

end:                                              ; preds = %if.end7, %if.end4.end_crit_edge, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end7 ], [ -16, %entry.end_crit_edge ], [ -22, %if.end4.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_ss_opts_isoc_mult_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %isoc_mult = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %isoc_mult to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %isoc_mult, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.8, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_ss_opts_isoc_mult_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num) #9
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %num, align 1, !annotation !175
  %lock = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %refcnt = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 10
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp = icmp ugt i8 %4, 2
  br i1 %cmp, label %if.end4.end_crit_edge, label %if.end7

if.end4.end_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %4 to i32
  %isoc_mult = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 4
  %5 = ptrtoint ptr %isoc_mult to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %isoc_mult, align 4
  br label %end

end:                                              ; preds = %if.end7, %if.end4.end_crit_edge, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end7 ], [ -16, %entry.end_crit_edge ], [ -22, %if.end4.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_ss_opts_isoc_maxburst_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %isoc_maxburst = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %isoc_maxburst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %isoc_maxburst, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.8, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_ss_opts_isoc_maxburst_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num) #9
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %num, align 1, !annotation !175
  %lock = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %refcnt = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 10
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %4)
  %cmp = icmp ugt i8 %4, 15
  br i1 %cmp, label %if.end4.end_crit_edge, label %if.end7

if.end4.end_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %4 to i32
  %isoc_maxburst = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 5
  %5 = ptrtoint ptr %isoc_maxburst to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %isoc_maxburst, align 4
  br label %end

end:                                              ; preds = %if.end7, %if.end4.end_crit_edge, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.end_crit_edge ], [ %len, %if.end7 ], [ -16, %entry.end_crit_edge ], [ -22, %if.end4.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_ss_opts_bulk_buflen_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %bulk_buflen = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 6
  %0 = ptrtoint ptr %bulk_buflen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bulk_buflen, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.8, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_ss_opts_bulk_buflen_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #9
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !175
  %lock = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %refcnt = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 10
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %bulk_buflen = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 6
  %5 = ptrtoint ptr %bulk_buflen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %bulk_buflen, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_ss_opts_bulk_qlen_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %bulk_qlen = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 7
  %0 = ptrtoint ptr %bulk_qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bulk_qlen, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.8, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_ss_opts_bulk_qlen_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #9
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !175
  %lock = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %refcnt = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 10
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %bulk_qlen = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 7
  %5 = ptrtoint ptr %bulk_qlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %bulk_qlen, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_ss_opts_iso_qlen_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %iso_qlen = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 8
  %0 = ptrtoint ptr %iso_qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iso_qlen, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.8, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f_ss_opts_iso_qlen_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #9
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num, align 4, !annotation !175
  %lock = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %refcnt = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 10
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end:                                           ; preds = %entry
  %call.i = call i32 @kstrtouint(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %num) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num, align 4
  %iso_qlen = getelementptr inbounds %struct.f_ss_opts, ptr %item, i32 0, i32 8
  %5 = ptrtoint ptr %iso_qlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %iso_qlen, align 4
  br label %end

end:                                              ; preds = %if.end4, %if.end.end_crit_edge, %entry.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %len, %if.end4 ], [ -16, %entry.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sourcesink_bind(ptr noundef %c, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev1 = getelementptr inbounds %struct.usb_configuration, ptr %c, i32 0, i32 9
  %0 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev1, align 4
  %call2 = tail call i32 @usb_interface_id(ptr noundef %c, ptr noundef %f) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %call2 to i8
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @source_sink_intf_alt0, i32 0, i32 2), align 1
  store i8 %conv, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @source_sink_intf_alt1, i32 0, i32 2), align 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call4 = tail call ptr @usb_ep_autoconfig(ptr noundef %3, ptr noundef nonnull @fs_source_desc) #9
  %in_ep = getelementptr inbounds %struct.f_sourcesink, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %in_ep to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %in_ep, align 4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %if.end10

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %if.end10.do.end_crit_edge, %if.end.do.end_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f, align 4
  %name9 = getelementptr inbounds %struct.usb_gadget, ptr %6, i32 0, i32 10
  %9 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef %8, ptr noundef %10) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call12 = tail call ptr @usb_ep_autoconfig(ptr noundef %12, ptr noundef nonnull @fs_sink_desc) #9
  %out_ep = getelementptr inbounds %struct.f_sourcesink, ptr %f, i32 0, i32 2
  %13 = ptrtoint ptr %out_ep to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call12, ptr %out_ep, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.end10.do.end_crit_edge, label %if.end16

if.end10.do.end_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end16:                                         ; preds = %if.end10
  %isoc_interval = getelementptr inbounds %struct.f_sourcesink, ptr %f, i32 0, i32 7
  %14 = ptrtoint ptr %isoc_interval to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %isoc_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp17 = icmp eq i32 %15, 0
  br i1 %cmp17, label %if.end16.if.end27.sink.split_crit_edge, label %if.end21

if.end16.if.end27.sink.split_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.sink.split

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %cmp23 = icmp ugt i32 %15, 16
  br i1 %cmp23, label %if.end21.if.end27.sink.split_crit_edge, label %if.end21.if.end27_crit_edge

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end21.if.end27.sink.split_crit_edge:           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %if.end21.if.end27.sink.split_crit_edge, %if.end16.if.end27.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.end16.if.end27.sink.split_crit_edge ], [ 16, %if.end21.if.end27.sink.split_crit_edge ]
  %16 = ptrtoint ptr %isoc_interval to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %isoc_interval, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %if.end21.if.end27_crit_edge
  %isoc_mult = getelementptr inbounds %struct.f_sourcesink, ptr %f, i32 0, i32 9
  %17 = ptrtoint ptr %isoc_mult to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %isoc_mult, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp28 = icmp ugt i32 %18, 2
  br i1 %cmp28, label %if.then30, label %if.end27.if.end32_crit_edge

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %isoc_mult to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %isoc_mult, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end27.if.end32_crit_edge
  %isoc_maxburst = getelementptr inbounds %struct.f_sourcesink, ptr %f, i32 0, i32 10
  %20 = ptrtoint ptr %isoc_maxburst to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %isoc_maxburst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %21)
  %cmp33 = icmp ugt i32 %21, 15
  br i1 %cmp33, label %if.then35, label %if.end32.if.end37_crit_edge

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %isoc_maxburst to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 15, ptr %isoc_maxburst, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end32.if.end37_crit_edge
  %isoc_maxpacket = getelementptr inbounds %struct.f_sourcesink, ptr %f, i32 0, i32 8
  %23 = ptrtoint ptr %isoc_maxpacket to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %isoc_maxpacket, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 1023)
  %26 = trunc i32 %25 to i16
  store i16 %26, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_iso_source_desc, i32 0, i32 4), align 1
  %27 = ptrtoint ptr %isoc_interval to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %isoc_interval, align 4
  %conv43 = trunc i32 %28 to i8
  store i8 %conv43, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_iso_source_desc, i32 0, i32 5), align 1
  store i16 %26, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_iso_sink_desc, i32 0, i32 4), align 1
  store i8 %conv43, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_iso_sink_desc, i32 0, i32 5), align 1
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call56 = tail call ptr @usb_ep_autoconfig(ptr noundef %30, ptr noundef nonnull @fs_iso_source_desc) #9
  %iso_in_ep = getelementptr inbounds %struct.f_sourcesink, ptr %f, i32 0, i32 3
  %31 = ptrtoint ptr %iso_in_ep to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call56, ptr %iso_in_ep, align 4
  %tobool58.not = icmp eq ptr %call56, null
  br i1 %tobool58.not, label %if.end37.no_iso_crit_edge, label %if.end60

if.end37.no_iso_crit_edge:                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_iso

if.end60:                                         ; preds = %if.end37
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call62 = tail call ptr @usb_ep_autoconfig(ptr noundef %33, ptr noundef nonnull @fs_iso_sink_desc) #9
  %iso_out_ep = getelementptr inbounds %struct.f_sourcesink, ptr %f, i32 0, i32 4
  %34 = ptrtoint ptr %iso_out_ep to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call62, ptr %iso_out_ep, align 4
  %tobool64.not = icmp eq ptr %call62, null
  br i1 %tobool64.not, label %if.then65, label %if.end60.if.end68_crit_edge

if.end60.if.end68_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %iso_in_ep to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iso_in_ep, align 4
  tail call void @usb_ep_autoconfig_release(ptr noundef %36) #9
  %37 = ptrtoint ptr %iso_in_ep to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %iso_in_ep, align 4
  br label %no_iso

no_iso:                                           ; preds = %if.then65, %if.end37.no_iso_crit_edge
  store ptr null, ptr getelementptr inbounds ([9 x ptr], ptr @fs_source_sink_descs, i32 0, i32 3), align 4
  store ptr null, ptr getelementptr inbounds ([9 x ptr], ptr @hs_source_sink_descs, i32 0, i32 3), align 4
  store ptr null, ptr getelementptr inbounds ([15 x ptr], ptr @ss_source_sink_descs, i32 0, i32 5), align 4
  br label %if.end68

if.end68:                                         ; preds = %no_iso, %if.end60.if.end68_crit_edge
  %38 = ptrtoint ptr %isoc_maxpacket to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %isoc_maxpacket, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %39)
  %cmp70 = icmp ugt i32 %39, 1024
  br i1 %cmp70, label %if.then72, label %if.end68.if.end74_crit_edge

if.end68.if.end74_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %isoc_maxpacket to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1024, ptr %isoc_maxpacket, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.end68.if.end74_crit_edge
  %41 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_source_desc, i32 0, i32 2), align 1
  store i8 %41, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_source_desc, i32 0, i32 2), align 1
  %42 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_sink_desc, i32 0, i32 2), align 1
  store i8 %42, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_sink_desc, i32 0, i32 2), align 1
  %43 = ptrtoint ptr %isoc_maxpacket to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %isoc_maxpacket, align 4
  %conv76 = trunc i32 %44 to i16
  %45 = ptrtoint ptr %isoc_mult to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %isoc_mult, align 4
  %shl = shl i32 %46, 11
  %or = or i32 %shl, %44
  %conv79 = trunc i32 %or to i16
  store i16 %conv79, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_iso_source_desc, i32 0, i32 4), align 1
  %47 = ptrtoint ptr %isoc_interval to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %isoc_interval, align 4
  %conv81 = trunc i32 %48 to i8
  store i8 %conv81, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_iso_source_desc, i32 0, i32 5), align 1
  %49 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_iso_source_desc, i32 0, i32 2), align 1
  store i8 %49, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_iso_source_desc, i32 0, i32 2), align 1
  store i16 %conv79, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_iso_sink_desc, i32 0, i32 4), align 1
  store i8 %conv81, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_iso_sink_desc, i32 0, i32 5), align 1
  %50 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_iso_sink_desc, i32 0, i32 2), align 1
  store i8 %50, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_iso_sink_desc, i32 0, i32 2), align 1
  store i8 %41, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_source_desc, i32 0, i32 2), align 1
  store i8 %42, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_sink_desc, i32 0, i32 2), align 1
  store i16 %conv76, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_iso_source_desc, i32 0, i32 4), align 1
  store i8 %conv81, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_iso_source_desc, i32 0, i32 5), align 1
  %conv96 = trunc i32 %46 to i8
  store i8 %conv96, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @ss_iso_source_comp_desc, i32 0, i32 3), align 1
  %51 = ptrtoint ptr %isoc_maxburst to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %isoc_maxburst, align 4
  %conv98 = trunc i32 %52 to i8
  store i8 %conv98, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @ss_iso_source_comp_desc, i32 0, i32 2), align 1
  %add = add i32 %46, 1
  %mul = mul i32 %add, %44
  %add102 = add i32 %52, 1
  %mul103 = mul i32 %mul, %add102
  %conv104 = trunc i32 %mul103 to i16
  store i16 %conv104, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @ss_iso_source_comp_desc, i32 0, i32 4), align 1
  store i8 %49, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_iso_source_desc, i32 0, i32 2), align 1
  store i16 %conv76, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_iso_sink_desc, i32 0, i32 4), align 1
  store i8 %conv81, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_iso_sink_desc, i32 0, i32 5), align 1
  store i8 %conv96, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @ss_iso_sink_comp_desc, i32 0, i32 3), align 1
  store i8 %conv98, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @ss_iso_sink_comp_desc, i32 0, i32 2), align 1
  store i16 %conv104, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @ss_iso_sink_comp_desc, i32 0, i32 4), align 1
  store i8 %50, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_iso_sink_desc, i32 0, i32 2), align 1
  %call121 = tail call i32 @usb_assign_descriptors(ptr noundef %f, ptr noundef nonnull @fs_source_sink_descs, ptr noundef nonnull @hs_source_sink_descs, ptr noundef nonnull @ss_source_sink_descs, ptr noundef nonnull @ss_source_sink_descs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %do.body125, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body125:                                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sourcesink_bind.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sourcesink_bind, %cleanup)) #9
          to label %if.then131 [label %cleanup], !srcloc !174

if.then131:                                       ; preds = %do.body125
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %dev133 = getelementptr inbounds %struct.usb_gadget, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cdev1, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %max_speed.i = getelementptr inbounds %struct.usb_gadget, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %60)
  %cmp.i = icmp ult i32 %60, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %cmp.i247 = icmp ult i32 %60, 3
  %cond144 = select i1 %cmp.i247, ptr @.str.24, ptr @.str.23
  %cond146 = select i1 %cmp.i, ptr %cond144, ptr @.str.22
  %61 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %f, align 4
  %63 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %in_ep, align 4
  %name149 = getelementptr inbounds %struct.usb_ep, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %name149 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name149, align 4
  %67 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %out_ep, align 4
  %name151 = getelementptr inbounds %struct.usb_ep, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %name151 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name151, align 4
  %71 = ptrtoint ptr %iso_in_ep to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %iso_in_ep, align 4
  %tobool153.not = icmp eq ptr %72, null
  br i1 %tobool153.not, label %if.then131.cond.end158_crit_edge, label %cond.true154

if.then131.cond.end158_crit_edge:                 ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end158

cond.true154:                                     ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #11
  %name156 = getelementptr inbounds %struct.usb_ep, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %name156 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %name156, align 4
  br label %cond.end158

cond.end158:                                      ; preds = %cond.true154, %if.then131.cond.end158_crit_edge
  %cond159 = phi ptr [ %74, %cond.true154 ], [ @.str.25, %if.then131.cond.end158_crit_edge ]
  %iso_out_ep160 = getelementptr inbounds %struct.f_sourcesink, ptr %f, i32 0, i32 4
  %75 = ptrtoint ptr %iso_out_ep160 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %iso_out_ep160, align 4
  %tobool161.not = icmp eq ptr %76, null
  br i1 %tobool161.not, label %cond.end158.cond.end166_crit_edge, label %cond.true162

cond.end158.cond.end166_crit_edge:                ; preds = %cond.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end166

cond.true162:                                     ; preds = %cond.end158
  call void @__sanitizer_cov_trace_pc() #11
  %name164 = getelementptr inbounds %struct.usb_ep, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name164, align 4
  br label %cond.end166

cond.end166:                                      ; preds = %cond.true162, %cond.end158.cond.end166_crit_edge
  %cond167 = phi ptr [ %78, %cond.true162 ], [ @.str.25, %cond.end158.cond.end166_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sourcesink_bind.__UNIQUE_ID_ddebug229, ptr noundef %dev133, ptr noundef nonnull @.str.21, ptr noundef nonnull %cond146, ptr noundef %62, ptr noundef %66, ptr noundef %70, ptr noundef %cond159, ptr noundef %cond167) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end166, %do.body125, %if.end74.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %call2, %entry.cleanup_crit_edge ], [ %call121, %if.end74.cleanup_crit_edge ], [ 0, %cond.end166 ], [ 0, %do.body125 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sourcesink_set_alt(ptr noundef %f, i32 noundef %intf, i32 noundef %alt) #0 align 64 {
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
  %in_ep.i = getelementptr inbounds %struct.f_sourcesink, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %in_ep.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_ep.i, align 4
  %out_ep.i = getelementptr inbounds %struct.f_sourcesink, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %out_ep.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out_ep.i, align 4
  %iso_in_ep.i = getelementptr inbounds %struct.f_sourcesink, ptr %f, i32 0, i32 3
  %8 = ptrtoint ptr %iso_in_ep.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iso_in_ep.i, align 4
  %iso_out_ep.i = getelementptr inbounds %struct.f_sourcesink, ptr %f, i32 0, i32 4
  %10 = ptrtoint ptr %iso_out_ep.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iso_out_ep.i, align 4
  tail call void @disable_endpoints(ptr noundef %3, ptr noundef %5, ptr noundef %7, ptr noundef %9, ptr noundef %11) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @disable_source_sink.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sourcesink_set_alt, %disable_source_sink.exit)) #9
          to label %if.then.i [label %disable_source_sink.exit], !srcloc !174

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @disable_source_sink.__UNIQUE_ID_ddebug232, ptr noundef %dev.i, ptr noundef nonnull @.str.27, ptr noundef %15) #9
  br label %disable_source_sink.exit

disable_source_sink.exit:                         ; preds = %if.then.i, %entry
  %call2 = tail call fastcc i32 @enable_source_sink(ptr noundef %3, ptr noundef %f, i32 noundef %alt)
  ret i32 %call2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sourcesink_get_alt(ptr nocapture noundef readonly %f, i32 noundef %intf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_alt = getelementptr inbounds %struct.f_sourcesink, ptr %f, i32 0, i32 5
  %0 = ptrtoint ptr %cur_alt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_alt, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sourcesink_disable(ptr nocapture noundef readonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %config.i = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 6
  %0 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config.i, align 4
  %cdev1.i = getelementptr inbounds %struct.usb_configuration, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdev1.i, align 4
  %in_ep.i = getelementptr inbounds %struct.f_sourcesink, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %in_ep.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_ep.i, align 4
  %out_ep.i = getelementptr inbounds %struct.f_sourcesink, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %out_ep.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %out_ep.i, align 4
  %iso_in_ep.i = getelementptr inbounds %struct.f_sourcesink, ptr %f, i32 0, i32 3
  %8 = ptrtoint ptr %iso_in_ep.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iso_in_ep.i, align 4
  %iso_out_ep.i = getelementptr inbounds %struct.f_sourcesink, ptr %f, i32 0, i32 4
  %10 = ptrtoint ptr %iso_out_ep.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iso_out_ep.i, align 4
  tail call void @disable_endpoints(ptr noundef %3, ptr noundef %5, ptr noundef %7, ptr noundef %9, ptr noundef %11) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @disable_source_sink.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sourcesink_disable, %disable_source_sink.exit)) #9
          to label %if.then.i [label %disable_source_sink.exit], !srcloc !174

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @disable_source_sink.__UNIQUE_ID_ddebug232, ptr noundef %dev.i, ptr noundef nonnull @.str.27, ptr noundef %15) #9
  br label %disable_source_sink.exit

disable_source_sink.exit:                         ; preds = %if.then.i, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sourcesink_setup(ptr nocapture noundef readonly %f, ptr nocapture noundef readonly %ctrl) #0 align 64 {
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
  %req1 = getelementptr inbounds %struct.usb_composite_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req1, align 4
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
  %length = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4096, ptr %length, align 4
  %bRequest = getelementptr inbounds %struct.usb_ctrlrequest, ptr %ctrl, i32 0, i32 1
  %16 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bRequest, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %entry.do.body_crit_edge [
    i8 91, label %sw.bb
    i8 92, label %sw.bb16
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb:                                            ; preds = %entry
  %19 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %20)
  %cmp.not = icmp eq i8 %20, 64
  br i1 %cmp.not, label %if.end, label %sw.bb.do.body_crit_edge

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp ne i16 %10, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool6.not = icmp ne i16 %7, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %14)
  %cmp11 = icmp ugt i16 %14, 4096
  %or.cond130 = select i1 %or.cond, i1 true, i1 %cmp11
  br i1 %or.cond130, label %if.end.if.end96_crit_edge, label %if.end.do.body54_crit_edge

if.end.do.body54_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body54

if.end.if.end96_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

sw.bb16:                                          ; preds = %entry
  %21 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %22)
  %cmp19.not = icmp eq i8 %22, -64
  br i1 %cmp19.not, label %if.end22, label %sw.bb16.do.body_crit_edge

sw.bb16.do.body_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end22:                                         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool24.not = icmp ne i16 %10, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool27.not = icmp ne i16 %7, 0
  %or.cond131 = select i1 %tobool24.not, i1 true, i1 %tobool27.not
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %14)
  %cmp32 = icmp ugt i16 %14, 4096
  %or.cond132 = select i1 %or.cond131, i1 true, i1 %cmp32
  br i1 %or.cond132, label %if.end22.if.end96_crit_edge, label %if.end22.do.body54_crit_edge

if.end22.do.body54_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body54

if.end22.if.end96_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

do.body:                                          ; preds = %sw.bb16.do.body_crit_edge, %sw.bb.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sourcesink_setup.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sourcesink_setup, %if.end96)) #9
          to label %if.then41 [label %if.end96], !srcloc !174

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cdev, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ctrl, align 1
  %conv44 = zext i8 %28 to i32
  %29 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bRequest, align 1
  %conv46 = zext i8 %30 to i32
  %conv47 = zext i16 %11 to i32
  %conv48 = zext i16 %8 to i32
  %conv49 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sourcesink_setup.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %conv44, i32 noundef %conv46, i32 noundef %conv47, i32 noundef %conv48, i32 noundef %conv49) #9
  br label %if.end96

do.body54:                                        ; preds = %if.end22.do.body54_crit_edge, %if.end.do.body54_crit_edge
  %value.0 = zext i16 %14 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sourcesink_setup.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sourcesink_setup, %do.end81)) #9
          to label %if.then68 [label %do.end81], !srcloc !174

if.then68:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cdev, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %dev71 = getelementptr inbounds %struct.usb_gadget, ptr %34, i32 0, i32 11
  %35 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ctrl, align 1
  %conv73 = zext i8 %36 to i32
  %37 = ptrtoint ptr %bRequest to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bRequest, align 1
  %conv75 = zext i8 %38 to i32
  %conv76 = zext i16 %11 to i32
  %conv77 = zext i16 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sourcesink_setup.__UNIQUE_ID_ddebug235, ptr noundef %dev71, ptr noundef nonnull @.str.44, i32 noundef %conv73, i32 noundef %conv75, i32 noundef %conv76, i32 noundef %conv77, i32 noundef %value.0) #9
  br label %do.end81

do.end81:                                         ; preds = %if.then68, %do.body54
  %zero = getelementptr inbounds %struct.usb_request, ptr %5, i32 0, i32 6
  %39 = ptrtoint ptr %zero to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load = load i32, ptr %zero, align 4
  %bf.clear = and i32 %bf.load, -8193
  store i32 %bf.clear, ptr %zero, align 4
  %40 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %value.0, ptr %length, align 4
  %41 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cdev, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ep0, align 4
  %call85 = tail call i32 @usb_ep_queue(ptr noundef %46, ptr noundef %5, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %do.end91, label %do.end81.if.end96_crit_edge

do.end81.if.end96_crit_edge:                      ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

do.end91:                                         ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cdev, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %dev94 = getelementptr inbounds %struct.usb_gadget, ptr %50, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94, ptr noundef nonnull @.str.45, i32 noundef %call85) #13
  br label %if.end96

if.end96:                                         ; preds = %do.end91, %do.end81.if.end96_crit_edge, %if.then41, %do.body, %if.end22.if.end96_crit_edge, %if.end.if.end96_crit_edge
  %value.1 = phi i32 [ %call85, %do.end91 ], [ %call85, %do.end81.if.end96_crit_edge ], [ -95, %if.then41 ], [ -95, %do.body ], [ -95, %if.end.if.end96_crit_edge ], [ -95, %if.end22.if.end96_crit_edge ]
  ret i32 %value.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sourcesink_free_func(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fi = getelementptr inbounds %struct.usb_function, ptr %f, i32 0, i32 24
  %0 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi, align 4
  %lock = getelementptr inbounds %struct.f_ss_opts, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %refcnt = getelementptr inbounds %struct.f_ss_opts, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcnt, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  tail call void @usb_free_all_descriptors(ptr noundef %f) #9
  tail call void @kfree(ptr noundef %f) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_autoconfig_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enable_source_sink(ptr nocapture noundef readonly %cdev, ptr noundef %ss, i32 noundef %alt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev, align 4
  %speed1 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %speed1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed1, align 8
  %in_ep = getelementptr inbounds %struct.f_sourcesink, ptr %ss, i32 0, i32 1
  %4 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %in_ep, align 4
  %call = tail call i32 @config_ep_by_speed(ptr noundef %1, ptr noundef %ss, ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @usb_ep_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ss, ptr %5, align 4
  %call6 = tail call fastcc i32 @source_sink_start_ep(ptr noundef %ss, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.fail_crit_edge, label %if.end11

if.end5.fail_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

fail:                                             ; preds = %fail2, %if.end17.fail_crit_edge, %if.end11.fail_crit_edge, %if.end5.fail_crit_edge
  %result.0 = phi i32 [ %call6, %if.end5.fail_crit_edge ], [ %call14, %if.end11.fail_crit_edge ], [ %call18, %if.end17.fail_crit_edge ], [ %result.1, %fail2 ]
  %7 = ptrtoint ptr %in_ep to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %in_ep, align 4
  %call10 = tail call i32 @usb_ep_disable(ptr noundef %8) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %out_ep = getelementptr inbounds %struct.f_sourcesink, ptr %ss, i32 0, i32 2
  %9 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %out_ep, align 4
  %11 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cdev, align 4
  %call14 = tail call i32 @config_ep_by_speed(ptr noundef %12, ptr noundef %ss, ptr noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.fail_crit_edge

if.end11.fail_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end17:                                         ; preds = %if.end11
  %call18 = tail call i32 @usb_ep_enable(ptr noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.fail_crit_edge, label %if.end21

if.end17.fail_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end21:                                         ; preds = %if.end17
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ss, ptr %10, align 4
  %call23 = tail call fastcc i32 @source_sink_start_ep(ptr noundef %ss, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end21.fail2_crit_edge, label %if.end28

if.end21.fail2_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail2

fail2:                                            ; preds = %if.then50, %fail3.fail2_crit_edge, %if.end39.fail2_crit_edge, %if.then33.fail2_crit_edge, %if.end21.fail2_crit_edge
  %result.1 = phi i32 [ %call23, %if.end21.fail2_crit_edge ], [ %call36, %if.then33.fail2_crit_edge ], [ %call40, %if.end39.fail2_crit_edge ], [ %result.2, %if.then50 ], [ %result.2, %fail3.fail2_crit_edge ]
  %14 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %out_ep, align 4
  %call27 = tail call i32 @usb_ep_disable(ptr noundef %15) #9
  br label %fail

if.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alt)
  %cmp29 = icmp eq i32 %alt, 0
  br i1 %cmp29, label %if.end28.out_crit_edge, label %if.end31

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end31:                                         ; preds = %if.end28
  %iso_in_ep = getelementptr inbounds %struct.f_sourcesink, ptr %ss, i32 0, i32 3
  %16 = ptrtoint ptr %iso_in_ep to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iso_in_ep, align 4
  %tobool32.not = icmp eq ptr %17, null
  br i1 %tobool32.not, label %if.end31.if.end54_crit_edge, label %if.then33

if.end31.if.end54_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then33:                                        ; preds = %if.end31
  %18 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cdev, align 4
  %call36 = tail call i32 @config_ep_by_speed(ptr noundef %19, ptr noundef %ss, ptr noundef nonnull %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.then33.fail2_crit_edge

if.then33.fail2_crit_edge:                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail2

if.end39:                                         ; preds = %if.then33
  %call40 = tail call i32 @usb_ep_enable(ptr noundef nonnull %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end39.fail2_crit_edge, label %if.end43

if.end39.fail2_crit_edge:                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail2

if.end43:                                         ; preds = %if.end39
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ss, ptr %17, align 4
  %call45 = tail call fastcc i32 @source_sink_start_ep(ptr noundef %ss, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end43.fail3_crit_edge, label %if.end43.if.end54_crit_edge

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.end43.fail3_crit_edge:                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail3

fail3:                                            ; preds = %if.then70, %if.end62.fail3_crit_edge, %if.then56.fail3_crit_edge, %if.end43.fail3_crit_edge
  %result.2 = phi i32 [ %call45, %if.end43.fail3_crit_edge ], [ %call59, %if.then56.fail3_crit_edge ], [ %call63, %if.end62.fail3_crit_edge ], [ %call68, %if.then70 ]
  %21 = ptrtoint ptr %iso_in_ep to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %iso_in_ep, align 4
  %tobool49.not = icmp eq ptr %22, null
  br i1 %tobool49.not, label %fail3.fail2_crit_edge, label %if.then50

fail3.fail2_crit_edge:                            ; preds = %fail3
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail2

if.then50:                                        ; preds = %fail3
  call void @__sanitizer_cov_trace_pc() #11
  %call51 = tail call i32 @usb_ep_disable(ptr noundef nonnull %22) #9
  br label %fail2

if.end54:                                         ; preds = %if.end43.if.end54_crit_edge, %if.end31.if.end54_crit_edge
  %result.3 = phi i32 [ %call45, %if.end43.if.end54_crit_edge ], [ %call23, %if.end31.if.end54_crit_edge ]
  %iso_out_ep = getelementptr inbounds %struct.f_sourcesink, ptr %ss, i32 0, i32 4
  %23 = ptrtoint ptr %iso_out_ep to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iso_out_ep, align 4
  %tobool55.not = icmp eq ptr %24, null
  br i1 %tobool55.not, label %if.end54.out_crit_edge, label %if.then56

if.end54.out_crit_edge:                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then56:                                        ; preds = %if.end54
  %25 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cdev, align 4
  %call59 = tail call i32 @config_ep_by_speed(ptr noundef %26, ptr noundef %ss, ptr noundef nonnull %24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.then56.fail3_crit_edge

if.then56.fail3_crit_edge:                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail3

if.end62:                                         ; preds = %if.then56
  %call63 = tail call i32 @usb_ep_enable(ptr noundef nonnull %24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end62.fail3_crit_edge, label %if.end66

if.end62.fail3_crit_edge:                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail3

if.end66:                                         ; preds = %if.end62
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ss, ptr %24, align 4
  %call68 = tail call fastcc i32 @source_sink_start_ep(ptr noundef %ss, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then70, label %if.end66.out_crit_edge

if.end66.out_crit_edge:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %call71 = tail call i32 @usb_ep_disable(ptr noundef nonnull %24) #9
  br label %fail3

out:                                              ; preds = %if.end66.out_crit_edge, %if.end54.out_crit_edge, %if.end28.out_crit_edge
  %result.4 = phi i32 [ %call23, %if.end28.out_crit_edge ], [ %call68, %if.end66.out_crit_edge ], [ %result.3, %if.end54.out_crit_edge ]
  %cur_alt = getelementptr inbounds %struct.f_sourcesink, ptr %ss, i32 0, i32 5
  %28 = ptrtoint ptr %cur_alt to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %alt, ptr %cur_alt, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enable_source_sink.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@enable_source_sink, %cleanup)) #9
          to label %if.then79 [label %cleanup], !srcloc !174

if.then79:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cdev, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ss, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @enable_source_sink.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef %32, i32 noundef %alt) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then79, %out, %fail, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.0, %fail ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %result.4, %if.then79 ], [ %result.4, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @source_sink_start_ep(ptr nocapture noundef readonly %ss, i1 noundef zeroext %is_in, i1 noundef zeroext %is_iso, i32 noundef %speed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %is_iso, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %speed, label %sw.default [
    i32 6, label %if.then.sw.bb_crit_edge
    i32 5, label %if.then.sw.bb_crit_edge88
    i32 3, label %sw.bb4
  ]

if.then.sw.bb_crit_edge88:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge88
  %isoc_maxpacket = getelementptr inbounds %struct.f_sourcesink, ptr %ss, i32 0, i32 8
  %1 = ptrtoint ptr %isoc_maxpacket to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %isoc_maxpacket, align 4
  %isoc_mult = getelementptr inbounds %struct.f_sourcesink, ptr %ss, i32 0, i32 9
  %3 = ptrtoint ptr %isoc_mult to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %isoc_mult, align 4
  %add = add i32 %4, 1
  %mul = mul i32 %add, %2
  %isoc_maxburst = getelementptr inbounds %struct.f_sourcesink, ptr %ss, i32 0, i32 10
  %5 = ptrtoint ptr %isoc_maxburst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %isoc_maxburst, align 4
  %add2 = add i32 %6, 1
  %mul3 = mul i32 %mul, %add2
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %isoc_maxpacket5 = getelementptr inbounds %struct.f_sourcesink, ptr %ss, i32 0, i32 8
  %7 = ptrtoint ptr %isoc_maxpacket5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %isoc_maxpacket5, align 4
  %isoc_mult6 = getelementptr inbounds %struct.f_sourcesink, ptr %ss, i32 0, i32 9
  %9 = ptrtoint ptr %isoc_mult6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %isoc_mult6, align 4
  %add7 = add i32 %10, 1
  %mul8 = mul i32 %add7, %8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %isoc_maxpacket9 = getelementptr inbounds %struct.f_sourcesink, ptr %ss, i32 0, i32 8
  %11 = ptrtoint ptr %isoc_maxpacket9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %isoc_maxpacket9, align 4
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 1023)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  %size.0 = phi i32 [ %13, %sw.default ], [ %mul8, %sw.bb4 ], [ %mul3, %sw.bb ]
  %iso_in_ep = getelementptr inbounds %struct.f_sourcesink, ptr %ss, i32 0, i32 3
  %iso_out_ep = getelementptr inbounds %struct.f_sourcesink, ptr %ss, i32 0, i32 4
  %cond15.in = select i1 %is_in, ptr %iso_in_ep, ptr %iso_out_ep
  %iso_qlen = getelementptr inbounds %struct.f_sourcesink, ptr %ss, i32 0, i32 13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %in_ep = getelementptr inbounds %struct.f_sourcesink, ptr %ss, i32 0, i32 1
  %out_ep = getelementptr inbounds %struct.f_sourcesink, ptr %ss, i32 0, i32 2
  %cond20.in = select i1 %is_in, ptr %in_ep, ptr %out_ep
  %bulk_qlen = getelementptr inbounds %struct.f_sourcesink, ptr %ss, i32 0, i32 12
  %buflen = getelementptr inbounds %struct.f_sourcesink, ptr %ss, i32 0, i32 11
  %14 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buflen, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.epilog
  %ep.0.in = phi ptr [ %cond15.in, %sw.epilog ], [ %cond20.in, %if.else ]
  %size.1 = phi i32 [ %size.0, %sw.epilog ], [ %15, %if.else ]
  %qlen.0.in = phi ptr [ %iso_qlen, %sw.epilog ], [ %bulk_qlen, %if.else ]
  %16 = ptrtoint ptr %ep.0.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %ep.0 = load ptr, ptr %ep.0.in, align 4
  %17 = ptrtoint ptr %qlen.0.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %qlen.0 = load i32, ptr %qlen.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qlen.0)
  %cmp2180 = icmp sgt i32 %qlen.0, 0
  br i1 %cmp2180, label %for.body.lr.ph, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %pattern = getelementptr inbounds %struct.f_sourcesink, ptr %ss, i32 0, i32 6
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %ep.0, i32 0, i32 9
  br label %for.body

for.cond:                                         ; preds = %if.end31
  %inc = add nuw nsw i32 %i.081, 1
  %exitcond.not = icmp eq i32 %inc, %qlen.0
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %call.i = tail call ptr @alloc_ep_req(ptr noundef %ep.0, i32 noundef %size.1) #9
  %tobool22.not = icmp eq ptr %call.i, null
  br i1 %tobool22.not, label %for.body.cleanup_crit_edge, label %if.end24

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %for.body
  %complete = getelementptr inbounds %struct.usb_request, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @source_sink_complete, ptr %complete, align 4
  br i1 %is_in, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.end24
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %21 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc.i, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %wMaxPacketSize.i, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #9
  %conv.i = zext i16 %25 to i32
  %26 = ptrtoint ptr %ep.0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ep.0, align 4
  %pattern.i = getelementptr inbounds %struct.f_sourcesink, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %pattern.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pattern.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %29, label %if.then26.if.end31_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %for.cond.preheader.i
  ]

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.cond.preheader.i:                             ; preds = %if.then26
  %length4.i = getelementptr inbounds %struct.usb_request, ptr %call.i, i32 0, i32 1
  %31 = ptrtoint ptr %length4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp14.not.i = icmp eq i32 %32, 0
  br i1 %cmp14.not.i, label %for.cond.preheader.i.if.end31_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end31_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

sw.bb.i:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %length.i = getelementptr inbounds %struct.usb_request, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length.i, align 4
  %35 = call ptr @memset(ptr %20, i32 0, i32 %34)
  br label %if.end31

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %buf.015.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %20, %for.cond.preheader.i.for.body.i_crit_edge ]
  %rem.i = urem i32 %i.016.i, %conv.i
  %rem6.i = urem i32 %rem.i, 63
  %conv7.i = trunc i32 %rem6.i to i8
  %incdec.ptr.i = getelementptr i8, ptr %buf.015.i, i32 1
  %36 = ptrtoint ptr %buf.015.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv7.i, ptr %buf.015.i, align 1
  %inc.i = add nuw i32 %i.016.i, 1
  %37 = ptrtoint ptr %length4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %length4.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %38
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end31_crit_edge

for.body.i.if.end31_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.else27:                                        ; preds = %if.end24
  %39 = ptrtoint ptr %pattern to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pattern, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp28.not = icmp eq i32 %40, 2
  br i1 %cmp28.not, label %if.else27.if.end31_crit_edge, label %if.then29

if.else27.if.end31_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then29:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %call.i, i32 0, i32 1
  %43 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %length, align 4
  %45 = call ptr @memset(ptr %42, i32 85, i32 %44)
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.else27.if.end31_crit_edge, %for.body.i.if.end31_crit_edge, %sw.bb.i, %for.cond.preheader.i.if.end31_crit_edge, %if.then26.if.end31_crit_edge
  %call32 = tail call i32 @usb_ep_queue(ptr noundef %ep.0, ptr noundef nonnull %call.i, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %for.cond, label %if.then34

if.then34:                                        ; preds = %if.end31
  %config = getelementptr inbounds %struct.usb_function, ptr %ss, i32 0, i32 6
  %46 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %config, align 4
  %cdev35 = getelementptr inbounds %struct.usb_configuration, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %cdev35 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cdev35, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %51, i32 0, i32 11
  %cond37 = select i1 %is_iso, ptr @.str.32, ptr @.str.6
  %cond39 = select i1 %is_in, ptr @.str.33, ptr @.str.34
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep.0, i32 0, i32 1
  %52 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond37, ptr noundef nonnull %cond39, ptr noundef %53, i32 noundef %call32) #13
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 4
  %cmp.i79 = icmp eq ptr %55, null
  br i1 %cmp.i79, label %do.end.i, label %if.then34.free_ep_req.exit_crit_edge, !prof !176

if.then34.free_ep_req.exit_crit_edge:             ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_ep_req.exit

do.end.i:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 80, i32 noundef 9, ptr noundef null) #9
  br label %free_ep_req.exit

free_ep_req.exit:                                 ; preds = %do.end.i, %if.then34.free_ep_req.exit_crit_edge
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  tail call void @kfree(ptr noundef %57) #9
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %call.i, align 4
  tail call void @usb_ep_free_request(ptr noundef %ep.0, ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %free_ep_req.exit, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %free_ep_req.exit ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @source_sink_complete(ptr noundef %ep, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep, align 4
  %status1 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 11
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %config = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %cdev2 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %cdev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cdev2, align 4
  %8 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %3, label %do.body23 [
    i32 0, label %sw.bb
    i32 -103, label %if.end.do.body_crit_edge
    i32 -104, label %if.end.do.body_crit_edge157
    i32 -108, label %if.end.do.body_crit_edge158
    i32 -121, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.do.body_crit_edge158:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.do.body_crit_edge157:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

sw.bb:                                            ; preds = %if.end
  %out_ep = getelementptr inbounds %struct.f_sourcesink, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %out_ep, align 4
  %cmp = icmp eq ptr %10, %ep
  br i1 %cmp, label %if.then3, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then3:                                         ; preds = %sw.bb
  %desc.i = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %11 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc.i, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %wMaxPacketSize.i, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #9
  %conv.i = zext i16 %15 to i32
  %pattern.i = getelementptr inbounds %struct.f_sourcesink, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %pattern.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pattern.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i = icmp eq i32 %17, 2
  br i1 %cmp.i, label %if.then3.sw.epilog_crit_edge, label %if.end.i

if.then3.sw.epilog_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then3
  %actual.i = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %18 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %actual.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp43.not.i = icmp eq i32 %19, 0
  br i1 %cmp43.not.i, label %if.end.i.check_read_data.exit_crit_edge, label %for.body.i.preheader

if.end.i.check_read_data.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_read_data.exit

for.body.i.preheader:                             ; preds = %if.end.i
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %switch = icmp ult i32 %17, 2
  br i1 %switch, label %for.body.i.preheader135, label %for.body.i.preheader.do.end.i.split_crit_edge

for.body.i.preheader.do.end.i.split_crit_edge:    ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.split

for.body.i.preheader135:                          ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cond133 = icmp eq i32 %17, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader135
  %buf.06.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %21, %for.body.i.preheader135 ]
  %i.04.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader135 ]
  %22 = ptrtoint ptr %buf.06.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buf.06.i, align 1
  br i1 %cond133, label %sw.bb.i, label %sw.bb12.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp8.i = icmp eq i8 %23, 0
  br i1 %cmp8.i, label %sw.bb.i.for.inc.i_crit_edge, label %sw.bb.i.do.end.i.split_crit_edge

sw.bb.i.do.end.i.split_crit_edge:                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.split

sw.bb.i.for.inc.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

sw.bb12.i:                                        ; preds = %for.body.i
  %conv13.i = zext i8 %23 to i32
  %rem.i = urem i32 %i.04.i, %conv.i
  %rem14.i = urem i32 %rem.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %rem14.i, i32 %conv13.i)
  %cmp17.i = icmp eq i32 %rem14.i, %conv13.i
  br i1 %cmp17.i, label %sw.bb12.i.for.inc.i_crit_edge, label %sw.bb12.i.do.end.i.split_crit_edge

sw.bb12.i.do.end.i.split_crit_edge:               ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.split

sw.bb12.i.for.inc.i_crit_edge:                    ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.end.i.split:                                   ; preds = %sw.bb12.i.do.end.i.split_crit_edge, %sw.bb.i.do.end.i.split_crit_edge, %for.body.i.preheader.do.end.i.split_crit_edge
  %buf.06.lcssa.i.split = phi ptr [ %21, %for.body.i.preheader.do.end.i.split_crit_edge ], [ %buf.06.i, %sw.bb12.i.do.end.i.split_crit_edge ], [ %buf.06.i, %sw.bb.i.do.end.i.split_crit_edge ]
  %i.04.lcssa.i.split = phi i32 [ 0, %for.body.i.preheader.do.end.i.split_crit_edge ], [ %i.04.i, %sw.bb12.i.do.end.i.split_crit_edge ], [ %i.04.i, %sw.bb.i.do.end.i.split_crit_edge ]
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %7, align 4
  %dev.i = getelementptr inbounds %struct.usb_gadget, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %buf.06.lcssa.i.split to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf.06.lcssa.i.split, align 1
  %conv21.i = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.39, i32 noundef %i.04.lcssa.i.split, i32 noundef %conv21.i) #13
  %28 = ptrtoint ptr %out_ep to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %out_ep, align 4
  %call.i = tail call i32 @usb_ep_set_halt(ptr noundef %29) #9
  br label %check_read_data.exit

for.inc.i:                                        ; preds = %sw.bb12.i.for.inc.i_crit_edge, %sw.bb.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.04.i, 1
  %incdec.ptr.i = getelementptr i8, ptr %buf.06.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %19
  br i1 %exitcond.not.i, label %for.inc.i.check_read_data.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.check_read_data.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_read_data.exit

check_read_data.exit:                             ; preds = %for.inc.i.check_read_data.exit_crit_edge, %do.end.i.split, %if.end.i.check_read_data.exit_crit_edge
  %30 = ptrtoint ptr %pattern.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load i32, ptr %pattern.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp4.not = icmp eq i32 %.pr, 2
  br i1 %cmp4.not, label %check_read_data.exit.sw.epilog_crit_edge, label %if.then5

check_read_data.exit.sw.epilog_crit_edge:         ; preds = %check_read_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then5:                                         ; preds = %check_read_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %req, align 4
  %length = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %33 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length, align 4
  %35 = call ptr @memset(ptr %32, i32 85, i32 %34)
  br label %sw.epilog

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.end.do.body_crit_edge157, %if.end.do.body_crit_edge158
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @source_sink_complete.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@source_sink_complete, %do.end)) #9
          to label %if.then14 [label %do.end], !srcloc !174

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %7, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %37, i32 0, i32 11
  %name = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %38 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name, align 4
  %actual = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %40 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %actual, align 4
  %length15 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %42 = ptrtoint ptr %length15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length15, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @source_sink_complete.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef %39, i32 noundef %3, i32 noundef %41, i32 noundef %43) #9
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %out_ep17 = getelementptr inbounds %struct.f_sourcesink, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %out_ep17 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %out_ep17, align 4
  %cmp18 = icmp eq ptr %45, %ep
  br i1 %cmp18, label %if.then19, label %do.end.if.end21thread-pre-split_crit_edge

do.end.if.end21thread-pre-split_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21thread-pre-split

if.then19:                                        ; preds = %do.end
  %46 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %config, align 4
  %cdev2.i95 = getelementptr inbounds %struct.usb_configuration, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %cdev2.i95 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cdev2.i95, align 4
  %desc.i97 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 9
  %50 = ptrtoint ptr %desc.i97 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %desc.i97, align 4
  %wMaxPacketSize.i98 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %wMaxPacketSize.i98 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %wMaxPacketSize.i98, align 1
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #9
  %conv.i99 = zext i16 %54 to i32
  %pattern.i100 = getelementptr inbounds %struct.f_sourcesink, ptr %1, i32 0, i32 6
  %55 = ptrtoint ptr %pattern.i100 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pattern.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp.i101 = icmp eq i32 %56, 2
  br i1 %cmp.i101, label %if.then19.if.end21thread-pre-split_crit_edge, label %if.end.i104

if.then19.if.end21thread-pre-split_crit_edge:     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21thread-pre-split

if.end.i104:                                      ; preds = %if.then19
  %57 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %req, align 4
  %actual.i102 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %59 = ptrtoint ptr %actual.i102 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %actual.i102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp43.not.i103 = icmp eq i32 %60, 0
  br i1 %cmp43.not.i103, label %if.end.i104.if.end21_crit_edge, label %for.body.i107.preheader

if.end.i104.if.end21_crit_edge:                   ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

for.body.i107.preheader:                          ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %switch134 = icmp ult i32 %56, 2
  br i1 %switch134, label %for.body.i107.preheader136, label %for.body.i107.preheader.do.end.i120.split_crit_edge

for.body.i107.preheader.do.end.i120.split_crit_edge: ; preds = %for.body.i107.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i120.split

for.body.i107.preheader136:                       ; preds = %for.body.i107.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cond = icmp eq i32 %56, 0
  br label %for.body.i107

for.body.i107:                                    ; preds = %for.inc.i124.for.body.i107_crit_edge, %for.body.i107.preheader136
  %buf.06.i105 = phi ptr [ %incdec.ptr.i122, %for.inc.i124.for.body.i107_crit_edge ], [ %58, %for.body.i107.preheader136 ]
  %i.04.i106 = phi i32 [ %inc.i121, %for.inc.i124.for.body.i107_crit_edge ], [ 0, %for.body.i107.preheader136 ]
  %61 = ptrtoint ptr %buf.06.i105 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %buf.06.i105, align 1
  br i1 %cond, label %sw.bb.i109, label %sw.bb12.i114

sw.bb.i109:                                       ; preds = %for.body.i107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp8.i108 = icmp eq i8 %62, 0
  br i1 %cmp8.i108, label %sw.bb.i109.for.inc.i124_crit_edge, label %sw.bb.i109.do.end.i120.split_crit_edge

sw.bb.i109.do.end.i120.split_crit_edge:           ; preds = %sw.bb.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i120.split

sw.bb.i109.for.inc.i124_crit_edge:                ; preds = %sw.bb.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i124

sw.bb12.i114:                                     ; preds = %for.body.i107
  %conv13.i110 = zext i8 %62 to i32
  %rem.i111 = urem i32 %i.04.i106, %conv.i99
  %rem14.i112 = urem i32 %rem.i111, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %rem14.i112, i32 %conv13.i110)
  %cmp17.i113 = icmp eq i32 %rem14.i112, %conv13.i110
  br i1 %cmp17.i113, label %sw.bb12.i114.for.inc.i124_crit_edge, label %sw.bb12.i114.do.end.i120.split_crit_edge

sw.bb12.i114.do.end.i120.split_crit_edge:         ; preds = %sw.bb12.i114
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i120.split

sw.bb12.i114.for.inc.i124_crit_edge:              ; preds = %sw.bb12.i114
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i124

do.end.i120.split:                                ; preds = %sw.bb12.i114.do.end.i120.split_crit_edge, %sw.bb.i109.do.end.i120.split_crit_edge, %for.body.i107.preheader.do.end.i120.split_crit_edge
  %buf.06.lcssa.i115.split = phi ptr [ %58, %for.body.i107.preheader.do.end.i120.split_crit_edge ], [ %buf.06.i105, %sw.bb12.i114.do.end.i120.split_crit_edge ], [ %buf.06.i105, %sw.bb.i109.do.end.i120.split_crit_edge ]
  %i.04.lcssa.i116.split = phi i32 [ 0, %for.body.i107.preheader.do.end.i120.split_crit_edge ], [ %i.04.i106, %sw.bb12.i114.do.end.i120.split_crit_edge ], [ %i.04.i106, %sw.bb.i109.do.end.i120.split_crit_edge ]
  %63 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %49, align 4
  %dev.i117 = getelementptr inbounds %struct.usb_gadget, ptr %64, i32 0, i32 11
  %65 = ptrtoint ptr %buf.06.lcssa.i115.split to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %buf.06.lcssa.i115.split, align 1
  %conv21.i118 = zext i8 %66 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i117, ptr noundef nonnull @.str.39, i32 noundef %i.04.lcssa.i116.split, i32 noundef %conv21.i118) #13
  %67 = ptrtoint ptr %out_ep17 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %out_ep17, align 4
  %call.i119 = tail call i32 @usb_ep_set_halt(ptr noundef %68) #9
  br label %if.end21thread-pre-split

for.inc.i124:                                     ; preds = %sw.bb12.i114.for.inc.i124_crit_edge, %sw.bb.i109.for.inc.i124_crit_edge
  %inc.i121 = add nuw i32 %i.04.i106, 1
  %incdec.ptr.i122 = getelementptr i8, ptr %buf.06.i105, i32 1
  %exitcond.not.i123 = icmp eq i32 %inc.i121, %60
  br i1 %exitcond.not.i123, label %for.inc.i124.if.end21thread-pre-split_crit_edge, label %for.inc.i124.for.body.i107_crit_edge

for.inc.i124.for.body.i107_crit_edge:             ; preds = %for.inc.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i107

for.inc.i124.if.end21thread-pre-split_crit_edge:  ; preds = %for.inc.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21thread-pre-split

if.end21thread-pre-split:                         ; preds = %for.inc.i124.if.end21thread-pre-split_crit_edge, %do.end.i120.split, %if.then19.if.end21thread-pre-split_crit_edge, %do.end.if.end21thread-pre-split_crit_edge
  %69 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr131 = load ptr, ptr %req, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end21thread-pre-split, %if.end.i104.if.end21_crit_edge
  %70 = phi ptr [ %.pr131, %if.end21thread-pre-split ], [ %58, %if.end.i104.if.end21_crit_edge ]
  %cmp.i126 = icmp eq ptr %70, null
  br i1 %cmp.i126, label %do.end.i127, label %if.end21.free_ep_req.exit_crit_edge, !prof !176

if.end21.free_ep_req.exit_crit_edge:              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_ep_req.exit

do.end.i127:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 80, i32 noundef 9, ptr noundef null) #9
  br label %free_ep_req.exit

free_ep_req.exit:                                 ; preds = %do.end.i127, %if.end21.free_ep_req.exit_crit_edge
  %71 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %req, align 4
  tail call void @kfree(ptr noundef %72) #9
  %73 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %req, align 4
  tail call void @usb_ep_free_request(ptr noundef %ep, ptr noundef %req) #9
  br label %cleanup

do.body23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @source_sink_complete.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@source_sink_complete, %sw.epilog)) #9
          to label %if.then37 [label %sw.epilog], !srcloc !174

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %7, align 4
  %dev39 = getelementptr inbounds %struct.usb_gadget, ptr %75, i32 0, i32 11
  %name40 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %76 = ptrtoint ptr %name40 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %name40, align 4
  %actual41 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 12
  %78 = ptrtoint ptr %actual41 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %actual41, align 4
  %length42 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %80 = ptrtoint ptr %length42 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %length42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @source_sink_complete.__UNIQUE_ID_ddebug231, ptr noundef %dev39, ptr noundef nonnull @.str.37, ptr noundef %77, i32 noundef %3, i32 noundef %79, i32 noundef %81) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then37, %do.body23, %if.then5, %check_read_data.exit.sw.epilog_crit_edge, %if.then3.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %call46 = tail call i32 @usb_ep_queue(ptr noundef %ep, ptr noundef %req, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %sw.epilog.cleanup_crit_edge, label %do.end51

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end51:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %7, align 4
  %dev53 = getelementptr inbounds %struct.usb_gadget, ptr %83, i32 0, i32 11
  %name54 = getelementptr inbounds %struct.usb_ep, ptr %ep, i32 0, i32 1
  %84 = ptrtoint ptr %name54 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %name54, align 4
  %length55 = getelementptr inbounds %struct.usb_request, ptr %req, i32 0, i32 1
  %86 = ptrtoint ptr %length55 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %length55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.38, ptr noundef %85, i32 noundef %87, i32 noundef %call46) #13
  %call56 = tail call i32 @usb_ep_set_halt(ptr noundef %ep) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %sw.epilog.cleanup_crit_edge, %free_ep_req.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_ep_req(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lb_modinit() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !22, !24, !26, !28, !30, !31, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !58, !59, !60, !61, !62, !63, !65, !66, !67, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !126, !127, !128, !130, !131, !132, !134, !135, !137, !138, !139, !141, !142, !143, !144, !146, !148, !149, !150, !152, !153, !155, !156, !157, !159, !161, !163}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170, !171, !172}
!llvm.ident = !{!173}

!0 = !{ptr @__UNIQUE_ID_alias236, !1, !"__UNIQUE_ID_alias236", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 1266, i32 1}
!2 = !{ptr @__initcall__kmod_usb_f_ss_lb__237_1286_sslb_modinit6, !3, !"__initcall__kmod_usb_f_ss_lb__237_1286_sslb_modinit6", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 1286, i32 1}
!4 = !{ptr @__exitcall_sslb_modexit, !5, !"__exitcall_sslb_modexit", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 1287, i32 1}
!6 = !{ptr @__UNIQUE_ID_file238, !7, !"__UNIQUE_ID_file238", i1 false, i1 false}
!7 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 1289, i32 1}
!8 = !{ptr @__UNIQUE_ID_license239, !7, !"__UNIQUE_ID_license239", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 301, i32 3}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @disable_ep.__UNIQUE_ID_ddebug228, !10, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!15 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @SourceSinkusb_func, !1, !"SourceSinkusb_func", i1 false, i1 false}
!17 = !{ptr @source_sink_alloc_inst.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 1253, i32 2}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 1261, i32 57}
!22 = !{ptr @ss_func_type, !23, !"ss_func_type", i1 false, i1 false}
!23 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 1232, i32 38}
!24 = !{ptr @ss_item_ops, !25, !"ss_item_ops", i1 false, i1 false}
!25 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 887, i32 40}
!26 = !{ptr @ss_attrs, !27, !"ss_attrs", i1 false, i1 false}
!27 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 1220, i32 35}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 932, i32 1}
!30 = !{ptr @f_ss_opts_attr_pattern, !29, !"f_ss_opts_attr_pattern", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 897, i32 25}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 975, i32 1}
!35 = !{ptr @f_ss_opts_attr_isoc_interval, !34, !"f_ss_opts_attr_isoc_interval", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 1018, i32 1}
!38 = !{ptr @f_ss_opts_attr_isoc_maxpacket, !37, !"f_ss_opts_attr_isoc_maxpacket", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 1061, i32 1}
!41 = !{ptr @f_ss_opts_attr_isoc_mult, !40, !"f_ss_opts_attr_isoc_mult", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 1104, i32 1}
!44 = !{ptr @f_ss_opts_attr_isoc_maxburst, !43, !"f_ss_opts_attr_isoc_maxburst", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 1142, i32 1}
!47 = !{ptr @f_ss_opts_attr_bulk_buflen, !46, !"f_ss_opts_attr_bulk_buflen", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 1180, i32 1}
!50 = !{ptr @f_ss_opts_attr_bulk_qlen, !49, !"f_ss_opts_attr_bulk_qlen", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 1218, i32 1}
!53 = !{ptr @f_ss_opts_attr_iso_qlen, !52, !"f_ss_opts_attr_iso_qlen", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 861, i32 22}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 335, i32 3}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @sourcesink_bind._entry, !57, !"_entry", i1 false, i1 false}
!62 = !{ptr @sourcesink_bind._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 439, i32 2}
!65 = !{ptr @sourcesink_bind.__UNIQUE_ID_ddebug229, !64, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!66 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @source_sink_intf_alt0, !71, !"source_sink_intf_alt0", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 60, i32 40}
!72 = !{ptr @source_sink_intf_alt1, !73, !"source_sink_intf_alt1", i1 false, i1 false}
!73 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 70, i32 40}
!74 = !{ptr @fs_source_desc, !75, !"fs_source_desc", i1 false, i1 false}
!75 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 82, i32 39}
!76 = !{ptr @fs_sink_desc, !77, !"fs_sink_desc", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 90, i32 39}
!78 = !{ptr @fs_iso_source_desc, !79, !"fs_iso_source_desc", i1 false, i1 false}
!79 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 98, i32 39}
!80 = !{ptr @fs_iso_sink_desc, !81, !"fs_iso_sink_desc", i1 false, i1 false}
!81 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 108, i32 39}
!82 = !{ptr @fs_source_sink_descs, !83, !"fs_source_sink_descs", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 118, i32 38}
!84 = !{ptr @hs_source_sink_descs, !85, !"hs_source_sink_descs", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 167, i32 38}
!86 = !{ptr @ss_source_sink_descs, !87, !"ss_source_sink_descs", i1 false, i1 false}
!87 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 252, i32 38}
!88 = !{ptr @ss_source_comp_desc, !89, !"ss_source_comp_desc", i1 false, i1 false}
!89 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 190, i32 41}
!90 = !{ptr @ss_sink_comp_desc, !91, !"ss_sink_comp_desc", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 207, i32 41}
!92 = !{ptr @hs_source_desc, !93, !"hs_source_desc", i1 false, i1 false}
!93 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 133, i32 39}
!94 = !{ptr @hs_sink_desc, !95, !"hs_sink_desc", i1 false, i1 false}
!95 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 141, i32 39}
!96 = !{ptr @hs_iso_source_desc, !97, !"hs_iso_source_desc", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 149, i32 39}
!98 = !{ptr @hs_iso_sink_desc, !99, !"hs_iso_sink_desc", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 158, i32 39}
!100 = !{ptr @ss_source_desc, !101, !"ss_source_desc", i1 false, i1 false}
!101 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 182, i32 39}
!102 = !{ptr @ss_sink_desc, !103, !"ss_sink_desc", i1 false, i1 false}
!103 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 199, i32 39}
!104 = !{ptr @ss_iso_source_desc, !105, !"ss_iso_source_desc", i1 false, i1 false}
!105 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 216, i32 39}
!106 = !{ptr @ss_iso_source_comp_desc, !107, !"ss_iso_source_comp_desc", i1 false, i1 false}
!107 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 225, i32 41}
!108 = !{ptr @ss_iso_sink_desc, !109, !"ss_iso_sink_desc", i1 false, i1 false}
!109 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 234, i32 39}
!110 = !{ptr @ss_iso_sink_comp_desc, !111, !"ss_iso_sink_comp_desc", i1 false, i1 false}
!111 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 243, i32 41}
!112 = !{ptr @.str.26, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 643, i32 2}
!114 = !{ptr @.str.27, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @disable_source_sink.__UNIQUE_ID_ddebug232, !113, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!116 = !{ptr @.str.28, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 734, i32 2}
!118 = !{ptr @.str.29, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @enable_source_sink.__UNIQUE_ID_ddebug233, !117, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!120 = !{ptr @.str.30, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 625, i32 4}
!122 = !{ptr @.str.31, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @source_sink_start_ep._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @source_sink_start_ep._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.32, !121, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.33, !121, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.34, !121, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.35, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 548, i32 3}
!130 = !{ptr @.str.36, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @source_sink_complete.__UNIQUE_ID_ddebug230, !129, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!132 = !{ptr @.str.37, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 561, i32 3}
!134 = !{ptr @source_sink_complete.__UNIQUE_ID_ddebug231, !133, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!135 = !{ptr @.str.38, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 571, i32 3}
!137 = !{ptr @source_sink_complete._entry, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @source_sink_complete._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.39, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 495, i32 3}
!141 = !{ptr @.str.40, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @check_read_data._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @check_read_data._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.41, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/gadget/u_f.h", i32 80, i32 2}
!146 = !{ptr @.str.42, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 813, i32 3}
!148 = !{ptr @.str.43, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @sourcesink_setup.__UNIQUE_ID_ddebug234, !147, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!150 = !{ptr @.str.44, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 821, i32 3}
!152 = !{ptr @sourcesink_setup.__UNIQUE_ID_ddebug235, !151, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!153 = !{ptr @.str.45, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 828, i32 4}
!155 = !{ptr @sourcesink_setup._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @sourcesink_setup._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @sourcesink_strings, !158, !"sourcesink_strings", i1 false, i1 false}
!158 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 283, i32 35}
!159 = !{ptr @stringtab_sourcesink, !160, !"stringtab_sourcesink", i1 false, i1 false}
!160 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 278, i32 34}
!161 = !{ptr @.str.46, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 274, i32 10}
!163 = !{ptr @strings_sourcesink, !164, !"strings_sourcesink", i1 false, i1 false}
!164 = !{!"../drivers/usb/gadget/function/f_sourcesink.c", i32 273, i32 26}
!165 = !{i32 1, !"wchar_size", i32 2}
!166 = !{i32 1, !"min_enum_size", i32 4}
!167 = !{i32 8, !"branch-target-enforcement", i32 0}
!168 = !{i32 8, !"sign-return-address", i32 0}
!169 = !{i32 8, !"sign-return-address-all", i32 0}
!170 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!171 = !{i32 7, !"uwtable", i32 1}
!172 = !{i32 7, !"frame-pointer", i32 2}
!173 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!174 = !{i64 2148231132, i64 2148231137, i64 2148231150, i64 2148231194, i64 2148231228, i64 2148231249}
!175 = !{!"auto-init"}
!176 = !{!"branch_weights", i32 1, i32 2000}
