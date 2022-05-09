; ModuleID = '/llk/IR_all_yes/drivers/media/usb/uvc/uvc_ctrl.c_pt.bc'
source_filename = "../drivers/media/usb/uvc/uvc_ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_subscribed_event_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.uvc_ctrl_fixup = type { %struct.usb_device_id, i8, i8, i8 }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.uvc_ctrl_blacklist = type { %struct.usb_device_id, i8 }
%struct.uvc_control_info = type { %struct.list_head, [16 x i8], i8, i8, i16, i32 }
%struct.list_head = type { ptr, ptr }
%struct.uvc_control_mapping = type { %struct.list_head, %struct.list_head, i32, ptr, [16 x i8], i8, i8, i8, i32, i32, ptr, i32, i32, i32, [2 x i32], ptr, ptr }
%struct.uvc_menu_info = type { i32, [32 x i8] }
%struct.uvc_video_chain = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mutex, %struct.v4l2_prio_state, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.uvc_control = type { ptr, %struct.uvc_control_info, i8, i8, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.v4l2_queryctrl = type { i32, i32, [32 x i8], i32, i32, i32, i32, i32, [2 x i32] }
%struct.uvc_entity = type { %struct.list_head, %struct.list_head, i32, i16, i16, [64 x i8], [16 x i8], ptr, %struct.v4l2_subdev, i32, i32, ptr, %union.anon.95, i8, ptr, ptr, ptr, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%union.anon.95 = type { %struct.anon.97 }
%struct.anon.97 = type { i8, ptr, i8, ptr }
%struct.v4l2_querymenu = type <{ i32, i32, %union.anon.112, i32 }>
%union.anon.112 = type { i64, [24 x i8] }
%struct.uvc_device = type { ptr, ptr, i32, i32, i32, [32 x i8], ptr, %struct.mutex, i32, %struct.atomic_t, %struct.media_device, %struct.v4l2_device, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.kref, ptr, ptr, ptr, ptr, [64 x i8], %struct.uvc_ctrl_work, ptr }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.uvc_ctrl_work = type { %struct.work_struct, ptr, ptr, ptr, ptr }
%struct.v4l2_event = type { i32, %union.anon.113, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.113 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.114, i32, i32, i32, i32, i32 }
%union.anon.114 = type { i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.v4l2_subscribed_event = type { %struct.list_head, i32, i32, i32, ptr, %struct.list_head, ptr, i32, i32, i32, [0 x %struct.v4l2_kevent] }
%struct.v4l2_kevent = type { %struct.list_head, ptr, %struct.v4l2_event, i64 }
%struct.uvc_fh = type { %struct.v4l2_fh, ptr, ptr, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ext_controls = type { %union.anon.115, i32, i32, i32, [1 x i32], ptr }
%union.anon.115 = type { i32 }
%struct.v4l2_ext_control = type <{ i32, i32, [1 x i32], %union.anon.116 }>
%union.anon.116 = type { i64 }
%struct.uvc_xu_control_query = type { i8, i8, i8, i16, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@uvc_ctrl_sub_ev_ops = dso_local constant { %struct.v4l2_subscribed_event_ops, [16 x i8] } { %struct.v4l2_subscribed_event_ops { ptr @uvc_ctrl_add_event, ptr @uvc_ctrl_del_event, ptr @v4l2_ctrl_replace, ptr @v4l2_ctrl_merge }, [16 x i8] zeroinitializer }, align 32
@uvc_dbg_param = external dso_local local_unnamed_addr global i32, align 4
@uvc_xu_ctrl_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2002, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Extension unit %u not found\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uvc_xu_ctrl_query\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/usb/uvc/uvc_ctrl.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uvc_xu_ctrl_query._entry_ptr = internal global ptr @uvc_xu_ctrl_query._entry, section ".printk_index", align 4
@uvc_xu_ctrl_query._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 2018, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Control %pUl/%u not found\0A\00", [37 x i8] zeroinitializer }, align 32
@uvc_xu_ctrl_query._entry_ptr.7 = internal global ptr @uvc_xu_ctrl_query._entry.5, section ".printk_index", align 4
@uvc_ctrl_restore_values.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 2, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uvcvideo\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"uvc_ctrl_restore_values\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"restoring control %pUl/%u/%u\0A\00", [34 x i8] zeroinitializer }, align 32
@uvc_ctrl_add_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 2234, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Can't add mapping '%s', control id 0x%08x is invalid\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"uvc_ctrl_add_mapping\00", [43 x i8] zeroinitializer }, align 32
@uvc_ctrl_add_mapping._entry_ptr = internal global ptr @uvc_ctrl_add_mapping._entry, section ".printk_index", align 4
@uvc_ctrl_add_mapping._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 2281, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Can't add mapping '%s', control id 0x%08x already exists\0A\00", [38 x i8] zeroinitializer }, align 32
@uvc_ctrl_add_mapping._entry_ptr.15 = internal global ptr @uvc_ctrl_add_mapping._entry.13, section ".printk_index", align 4
@uvc_ctrl_add_mapping._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 2292, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Can't add mapping '%s', maximum mappings count (%u) exceeded\0A\00", [34 x i8] zeroinitializer }, align 32
@uvc_ctrl_add_mapping._entry_ptr.18 = internal global ptr @uvc_ctrl_add_mapping._entry.16, section ".printk_index", align 4
@uvc_ctrl_init_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&dev->async_ctrl.work)\00", [55 x i8] zeroinitializer }, align 32
@uvc_control_classes = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 10092545, i32 9961473], [24 x i8] zeroinitializer }, align 32
@uvc_find_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 885, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Control 0x%08x not found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uvc_find_control\00", [47 x i8] zeroinitializer }, align 32
@uvc_find_control._entry_ptr = internal global ptr @uvc_find_control._entry, section ".printk_index", align 4
@uvc_ctrl_populate_cache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 936, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"UVC non compliance - GET_RES failed on an XU control. Enabling workaround.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"uvc_ctrl_populate_cache\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@uvc_ctrl_populate_cache._entry_ptr = internal global ptr @uvc_ctrl_populate_cache._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@uvc_ctrl_init_xu_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 1973, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Failed to initialize control %pUl/%u on device %s entity %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"uvc_ctrl_init_xu_ctrl\00", [42 x i8] zeroinitializer }, align 32
@uvc_ctrl_init_xu_ctrl._entry_ptr = internal global ptr @uvc_ctrl_init_xu_ctrl._entry, section ".printk_index", align 4
@uvc_ctrl_fill_xu_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1921, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"GET_LEN failed on control %pUl/%u (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"uvc_ctrl_fill_xu_info\00", [42 x i8] zeroinitializer }, align 32
@uvc_ctrl_fill_xu_info._entry_ptr = internal global ptr @uvc_ctrl_fill_xu_info._entry, section ".printk_index", align 4
@uvc_ctrl_fill_xu_info._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 1934, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to get flags for control %pUl/%u (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@uvc_ctrl_fill_xu_info._entry_ptr.31 = internal global ptr @uvc_ctrl_fill_xu_info._entry.29, section ".printk_index", align 4
@uvc_ctrl_fill_xu_info._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 1945, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"XU control %pUl/%u queried: len %u, flags { get %u set %u auto %u }\0A\00", [59 x i8] zeroinitializer }, align 32
@uvc_ctrl_fill_xu_info._entry_ptr.34 = internal global ptr @uvc_ctrl_fill_xu_info._entry.32, section ".printk_index", align 4
@uvc_ctrl_fixup_xu_info.fixups = internal constant { [3 x %struct.uvc_ctrl_fixup], [44 x i8] } { [3 x %struct.uvc_ctrl_fixup] [%struct.uvc_ctrl_fixup { %struct.usb_device_id { i16 3, i16 1133, i16 2242, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, i8 9, i8 1, i8 -83 }, %struct.uvc_ctrl_fixup { %struct.usb_device_id { i16 3, i16 1133, i16 2252, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, i8 9, i8 1, i8 -83 }, %struct.uvc_ctrl_fixup { %struct.usb_device_id { i16 3, i16 1133, i16 2452, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, i8 9, i8 1, i8 -83 }], [44 x i8] zeroinitializer }, align 32
@uvc_ctrl_add_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 2168, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Added control %pUl/%u to device %s entity %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uvc_ctrl_add_info\00", [46 x i8] zeroinitializer }, align 32
@uvc_ctrl_add_info._entry_ptr = internal global ptr @uvc_ctrl_add_info._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unknown Control\00", [16 x i8] zeroinitializer }, align 32
@__uvc_ctrl_add_mapping._entry = internal constant %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 2216, ptr @.str.3, ptr @.str.4 }, align 1
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Adding mapping '%s' to control %pUl/%u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__uvc_ctrl_add_mapping\00", [41 x i8] zeroinitializer }, align 32
@__uvc_ctrl_add_mapping._entry_ptr = internal global ptr @__uvc_ctrl_add_mapping._entry, section ".printk_index", align 4
@uvc_ctrl_status_event_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 1407, ptr @.str.45, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to resubmit status URB (%d).\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"uvc_ctrl_status_event_work\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@uvc_ctrl_status_event_work._entry_ptr = internal global ptr @uvc_ctrl_status_event_work._entry, section ".printk_index", align 4
@uvc_ctrl_prune_entity.processing_blacklist = internal constant { [3 x %struct.uvc_ctrl_blacklist], [44 x i8] } { [3 x %struct.uvc_ctrl_blacklist] [%struct.uvc_ctrl_blacklist { %struct.usb_device_id { i16 3, i16 5075, i16 20635, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, i8 9 }, %struct.uvc_ctrl_blacklist { %struct.usb_device_id { i16 3, i16 7247, i16 12288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, i8 6 }, %struct.uvc_ctrl_blacklist { %struct.usb_device_id { i16 3, i16 22918, i16 577, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, i8 2 }], [44 x i8] zeroinitializer }, align 32
@uvc_ctrl_prune_entity.camera_blacklist = internal constant { [1 x %struct.uvc_ctrl_blacklist], [36 x i8] } { [1 x %struct.uvc_ctrl_blacklist] [%struct.uvc_ctrl_blacklist { %struct.usb_device_id { i16 3, i16 1784, i16 12293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, i8 9 }], [36 x i8] zeroinitializer }, align 32
@uvc_ctrl_prune_entity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 2363, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%u/%u control is black listed, removing it\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"uvc_ctrl_prune_entity\00", [42 x i8] zeroinitializer }, align 32
@uvc_ctrl_prune_entity._entry_ptr = internal global ptr @uvc_ctrl_prune_entity._entry, section ".printk_index", align 4
@uvc_ctrls = internal constant { [36 x %struct.uvc_control_info], [288 x i8] } { [36 x %struct.uvc_control_info] [%struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 0, i8 2, i16 2, i32 127 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 1, i8 3, i16 2, i32 127 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 2, i8 6, i16 2, i32 255 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 3, i8 7, i16 2, i32 127 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 4, i8 8, i16 2, i32 127 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 5, i8 9, i16 2, i32 127 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 6, i8 10, i16 2, i32 255 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 7, i8 12, i16 4, i32 255 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 8, i8 1, i16 2, i32 127 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 9, i8 4, i16 2, i32 127 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 10, i8 5, i16 1, i32 99 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 11, i8 16, i16 1, i32 99 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 12, i8 11, i16 1, i32 99 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 13, i8 13, i16 1, i32 99 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 14, i8 14, i16 2, i32 127 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 15, i8 15, i16 2, i32 127 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 16, i8 17, i16 1, i32 2 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 17, i8 18, i16 1, i32 2 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 0, i8 1, i16 1, i32 67 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 1, i8 2, i16 1, i32 115 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 2, i8 3, i16 1, i32 67 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 3, i8 4, i16 4, i32 255 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 4, i8 5, i16 1, i32 65 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 5, i8 6, i16 2, i32 255 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 6, i8 7, i16 2, i32 189 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 7, i8 9, i16 2, i32 255 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 8, i8 10, i16 1, i32 129 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 9, i8 11, i16 2, i32 255 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 10, i8 12, i16 3, i32 189 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 11, i8 13, i16 8, i32 255 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 12, i8 14, i16 4, i32 191 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 13, i8 15, i16 2, i32 255 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 14, i8 16, i16 2, i32 189 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 17, i8 8, i16 1, i32 99 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 18, i8 17, i16 1, i32 195 }, %struct.uvc_control_info { %struct.list_head zeroinitializer, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\03", i8 0, i8 17, i16 1, i32 130 }], [288 x i8] zeroinitializer }, align 32
@uvc_ctrl_mappings = internal constant { [30 x %struct.uvc_control_mapping], [616 x i8] } { [30 x %struct.uvc_control_mapping] [%struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963776, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 2, i8 16, i8 0, i32 1, i32 1, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963777, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 3, i8 16, i8 0, i32 1, i32 2, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963779, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 6, i8 16, i8 0, i32 1, i32 1, ptr null, i32 0, i32 9963801, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963778, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 7, i8 16, i8 0, i32 1, i32 2, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963803, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 8, i8 16, i8 0, i32 1, i32 2, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963792, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 9, i8 16, i8 0, i32 1, i32 2, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963804, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 1, i8 16, i8 0, i32 1, i32 2, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963795, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 4, i8 16, i8 0, i32 1, i32 2, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963800, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 5, i8 2, i8 0, i32 3, i32 4, ptr @power_line_frequency_controls, i32 3, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963801, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 16, i8 1, i8 0, i32 2, i32 3, ptr null, i32 0, i32 0, i32 0, [2 x i32] [i32 9963779, i32 0], ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094849, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 2, i8 4, i8 0, i32 3, i32 5, ptr @exposure_auto_controls, i32 4, i32 0, i32 0, [2 x i32] [i32 10094850, i32 0], ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094851, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 3, i8 1, i8 0, i32 2, i32 3, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094850, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 4, i8 32, i8 0, i32 1, i32 2, ptr null, i32 0, i32 10094849, i32 1, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963788, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 11, i8 1, i8 0, i32 2, i32 3, ptr null, i32 0, i32 0, i32 0, [2 x i32] [i32 9963802, i32 0], ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963802, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 10, i8 16, i8 0, i32 1, i32 2, ptr null, i32 0, i32 9963788, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963788, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 13, i8 1, i8 0, i32 2, i32 3, ptr null, i32 0, i32 0, i32 0, [2 x i32] [i32 9963791, i32 9963790], ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963791, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 12, i8 16, i8 0, i32 1, i32 1, ptr null, i32 0, i32 9963788, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 9963790, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01", i8 12, i8 16, i8 16, i32 1, i32 1, ptr null, i32 0, i32 9963788, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094858, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 6, i8 16, i8 0, i32 1, i32 2, ptr null, i32 0, i32 10094860, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094860, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 8, i8 1, i8 0, i32 2, i32 3, ptr null, i32 0, i32 0, i32 0, [2 x i32] [i32 10094858, i32 0], ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094865, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 9, i8 16, i8 0, i32 1, i32 2, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094866, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 10, i8 8, i8 0, i32 1, i32 1, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094861, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 11, i8 16, i8 0, i32 1, i32 2, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094863, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 12, i8 0, i8 0, i32 1, i32 1, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr @uvc_ctrl_get_zoom, ptr @uvc_ctrl_set_zoom }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094856, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 13, i8 32, i8 0, i32 1, i32 1, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094857, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 13, i8 32, i8 32, i32 1, i32 1, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094880, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 14, i8 16, i8 0, i32 1, i32 1, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr @uvc_ctrl_get_rel_speed, ptr @uvc_ctrl_set_rel_speed }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094881, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 14, i8 16, i8 16, i32 1, i32 1, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr @uvc_ctrl_get_rel_speed, ptr @uvc_ctrl_set_rel_speed }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094864, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", i8 17, i8 1, i8 0, i32 2, i32 3, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }, %struct.uvc_control_mapping { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 10094864, ptr null, [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\03", i8 17, i8 1, i8 0, i32 2, i32 3, ptr null, i32 0, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null }], [616 x i8] zeroinitializer }, align 32
@power_line_frequency_controls = internal constant { [3 x %struct.uvc_menu_info], [52 x i8] } { [3 x %struct.uvc_menu_info] [%struct.uvc_menu_info { i32 0, [32 x i8] c"Disabled\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.uvc_menu_info { i32 1, [32 x i8] c"50 Hz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.uvc_menu_info { i32 2, [32 x i8] c"60 Hz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [52 x i8] zeroinitializer }, align 32
@exposure_auto_controls = internal constant { [4 x %struct.uvc_menu_info], [48 x i8] } { [4 x %struct.uvc_menu_info] [%struct.uvc_menu_info { i32 2, [32 x i8] c"Auto Mode\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.uvc_menu_info { i32 1, [32 x i8] c"Manual Mode\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.uvc_menu_info { i32 4, [32 x i8] c"Shutter Priority Mode\00\00\00\00\00\00\00\00\00\00\00" }, %struct.uvc_menu_info { i32 8, [32 x i8] c"Aperture Priority Mode\00\00\00\00\00\00\00\00\00\00" }], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 15, i64 5, i64 6, i64 513, i64 32766]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 513]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 8, i64 129, i64 130]
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"uvc_ctrl_sub_ev_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1548, i32 40 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 2001, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 2017, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 2130, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 2232, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 2279, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 2290, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 2479, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c"uvc_control_classes\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 360, i32 18 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 884, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 934, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1970, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1919, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1932, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1940, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [7 x i8] c"fixups\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1869, i32 37 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 2166, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 230, i32 6 }
@___asan_gen_.186 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 214, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 156, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1078, i32 9 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 2214, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1406, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [21 x i8] c"processing_blacklist\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 2319, i32 41 }
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"camera_blacklist\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 2324, i32 41 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 2361, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [10 x i8] c"uvc_ctrls\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 36, i32 38 }
@___asan_gen_.230 = private unnamed_addr constant [18 x i8] c"uvc_ctrl_mappings\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 432, i32 41 }
@___asan_gen_.233 = private unnamed_addr constant [30 x i8] c"power_line_frequency_controls\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 365, i32 35 }
@___asan_gen_.236 = private unnamed_addr constant [23 x i8] c"exposure_auto_controls\00", align 1
@___asan_gen_.237 = private constant [36 x i8] c"../drivers/media/usb/uvc/uvc_ctrl.c\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 371, i32 35 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__uvc_ctrl_add_mapping._entry, ptr @__uvc_ctrl_add_mapping._entry_ptr, ptr @uvc_ctrl_add_info._entry, ptr @uvc_ctrl_add_info._entry_ptr, ptr @uvc_ctrl_add_mapping._entry, ptr @uvc_ctrl_add_mapping._entry.13, ptr @uvc_ctrl_add_mapping._entry.16, ptr @uvc_ctrl_add_mapping._entry_ptr, ptr @uvc_ctrl_add_mapping._entry_ptr.15, ptr @uvc_ctrl_add_mapping._entry_ptr.18, ptr @uvc_ctrl_fill_xu_info._entry, ptr @uvc_ctrl_fill_xu_info._entry.29, ptr @uvc_ctrl_fill_xu_info._entry.32, ptr @uvc_ctrl_fill_xu_info._entry_ptr, ptr @uvc_ctrl_fill_xu_info._entry_ptr.31, ptr @uvc_ctrl_fill_xu_info._entry_ptr.34, ptr @uvc_ctrl_init_xu_ctrl._entry, ptr @uvc_ctrl_init_xu_ctrl._entry_ptr, ptr @uvc_ctrl_populate_cache._entry, ptr @uvc_ctrl_populate_cache._entry_ptr, ptr @uvc_ctrl_prune_entity._entry, ptr @uvc_ctrl_prune_entity._entry_ptr, ptr @uvc_ctrl_status_event_work._entry, ptr @uvc_ctrl_status_event_work._entry_ptr, ptr @uvc_find_control._entry, ptr @uvc_find_control._entry_ptr, ptr @uvc_xu_ctrl_query._entry, ptr @uvc_xu_ctrl_query._entry.5, ptr @uvc_xu_ctrl_query._entry_ptr, ptr @uvc_xu_ctrl_query._entry_ptr.7, ptr @uvc_ctrl_sub_ev_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @uvc_ctrl_init_device.__key, ptr @.str.19, ptr @uvc_control_classes, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @uvc_ctrl_fixup_xu_info.fixups, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @uvc_ctrl_prune_entity.processing_blacklist, ptr @uvc_ctrl_prune_entity.camera_blacklist, ptr @.str.46, ptr @.str.47, ptr @uvc_ctrls, ptr @uvc_ctrl_mappings, ptr @power_line_frequency_controls, ptr @exposure_auto_controls], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ctrl_sub_ev_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_xu_ctrl_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_xu_ctrl_query._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ctrl_add_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ctrl_add_mapping._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ctrl_add_mapping._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ctrl_init_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_control_classes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_find_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ctrl_populate_cache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ctrl_init_xu_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ctrl_fill_xu_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ctrl_fill_xu_info._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ctrl_fill_xu_info._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ctrl_fixup_xu_info.fixups to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ctrl_add_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ctrl_status_event_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ctrl_prune_entity.processing_blacklist to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ctrl_prune_entity.camera_blacklist to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ctrl_prune_entity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ctrls to i32), i32 1152, i32 1440, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_ctrl_mappings to i32), i32 2520, i32 3136, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_line_frequency_controls to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exposure_auto_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_ctrl_is_accessible(ptr noundef %chain, i32 noundef %v4l2_id, i1 noundef zeroext %read) local_unnamed_addr #0 align 64 {
entry:
  %mapping = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapping) #15
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mapping, align 4, !annotation !120
  %and1.i = and i32 %v4l2_id, 268435455
  %ctrl_class_bitmap.i = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 8
  %1 = ptrtoint ptr %ctrl_class_bitmap.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ctrl_class_bitmap.i, align 4
  %conv.i = zext i8 %2 to i32
  %and2.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %for.inc.i, label %if.end.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %v4l2_id)
  %tobool.not.i = icmp sgt i32 %v4l2_id, -1
  br i1 %tobool.not.i, label %if.then5.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10092545, i32 %and1.i)
  %cmp6.i = icmp eq i32 %and1.i, 10092545
  br i1 %cmp6.i, label %if.then5.i.cleanup_crit_edge, label %for.inc.thread34.i

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.i:                                        ; preds = %entry
  %and2.1.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.1.i)
  %tobool3.not.1.i = icmp ne i32 %and2.1.i, 0
  %3 = and i32 %v4l2_id, -1879048193
  call void @__sanitizer_cov_trace_const_cmp4(i32 9961473, i32 %3)
  %4 = icmp eq i32 %3, 9961473
  %5 = and i1 %4, %tobool3.not.1.i
  br i1 %5, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.thread34.i:                               ; preds = %if.then5.i
  %and2.135.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.135.i)
  %tobool3.not.136.i = icmp ne i32 %and2.135.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9961473, i32 %and1.i)
  %cmp6.1.i = icmp eq i32 %and1.i, 9961473
  %or.cond38.i = and i1 %cmp6.1.i, %tobool3.not.136.i
  br i1 %or.cond38.i, label %for.inc.thread34.i.cleanup_crit_edge, label %for.inc.thread34.i.if.end_crit_edge

for.inc.thread34.i.if.end_crit_edge:              ; preds = %for.inc.thread34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.thread34.i.cleanup_crit_edge:             ; preds = %for.inc.thread34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %for.inc.thread34.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %call1 = call fastcc ptr @uvc_find_control(ptr noundef %chain, i32 noundef %v4l2_id, ptr noundef nonnull %mapping)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.uvc_control, ptr %call1, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %8 = and i1 %tobool4.not, %read
  br i1 %8, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %and10 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp ne i32 %and10, 0
  %brmerge22 = or i1 %tobool11.not, %read
  %spec.select = select i1 %brmerge22, i32 0, i32 -13
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.inc.thread34.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.then5.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -13, %if.end3.cleanup_crit_edge ], [ %spec.select, %if.end7 ], [ -13, %if.then5.i.cleanup_crit_edge ], [ -13, %for.inc.thread34.i.cleanup_crit_edge ], [ -13, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapping) #15
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @uvc_find_control(ptr noundef readonly %chain, i32 noundef %v4l2_id, ptr nocapture noundef %mapping) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %mapping, align 4
  %and1 = and i32 %v4l2_id, 268435455
  %entities = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %v4l2_id)
  %tobool11.not.i = icmp sgt i32 %v4l2_id, -1
  br label %for.cond

for.cond:                                         ; preds = %__uvc_find_control.exit.for.cond_crit_edge, %entry
  %ctrl.0 = phi ptr [ null, %entry ], [ %ctrl.5, %__uvc_find_control.exit.for.cond_crit_edge ]
  %.pn.in = phi ptr [ %entities, %entry ], [ %.pn, %__uvc_find_control.exit.for.cond_crit_edge ]
  %1 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %entities
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %entity.0 = getelementptr i8, ptr %.pn, i32 -8
  %cmp.i = icmp eq ptr %entity.0, null
  br i1 %cmp.i, label %for.body.__uvc_find_control.exit_crit_edge, label %for.cond.preheader.i

for.body.__uvc_find_control.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %__uvc_find_control.exit

for.cond.preheader.i:                             ; preds = %for.body
  %ncontrols.i = getelementptr i8, ptr %.pn, i32 340
  %2 = ptrtoint ptr %ncontrols.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ncontrols.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp160.not.i = icmp eq i32 %3, 0
  br i1 %cmp160.not.i, label %for.cond.preheader.i.__uvc_find_control.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.__uvc_find_control.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__uvc_find_control.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %controls.i = getelementptr i8, ptr %.pn, i32 344
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc30.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ctrl.1 = phi ptr [ %ctrl.0, %for.body.lr.ph.i ], [ %ctrl.4, %for.inc30.i.for.body.i_crit_edge ]
  %i.061.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc30.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %controls.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controls.i, align 4
  %arrayidx.i = getelementptr %struct.uvc_control, ptr %5, i32 %i.061.i
  %initialized.i = getelementptr %struct.uvc_control, ptr %5, i32 %i.061.i, i32 3
  %6 = ptrtoint ptr %initialized.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %initialized.i, align 1
  %7 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc30.i_crit_edge, label %if.end3.i

for.body.i.for.inc30.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc30.i

if.end3.i:                                        ; preds = %for.body.i
  %info.i = getelementptr %struct.uvc_control, ptr %5, i32 %i.061.i, i32 1
  %8 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %map.057.i = load ptr, ptr %info.i, align 4
  %cmp8.not58.i = icmp eq ptr %map.057.i, %info.i
  br i1 %cmp8.not58.i, label %if.end3.i.for.inc30.i_crit_edge, label %if.end3.i.for.body9.i_crit_edge

if.end3.i.for.body9.i_crit_edge:                  ; preds = %if.end3.i
  br label %for.body9.i

if.end3.i.for.inc30.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc30.i

for.body9.i:                                      ; preds = %for.inc.i.for.body9.i_crit_edge, %if.end3.i.for.body9.i_crit_edge
  %ctrl.2 = phi ptr [ %ctrl.3, %for.inc.i.for.body9.i_crit_edge ], [ %ctrl.1, %if.end3.i.for.body9.i_crit_edge ]
  %map.059.i = phi ptr [ %map.0.i, %for.inc.i.for.body9.i_crit_edge ], [ %map.057.i, %if.end3.i.for.body9.i_crit_edge ]
  %id.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %map.059.i, i32 0, i32 2
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %and1)
  %cmp10.i = icmp eq i32 %10, %and1
  %or.cond.i = and i1 %tobool11.not.i, %cmp10.i
  br i1 %or.cond.i, label %if.then12.i, label %if.end13.i

if.then12.i:                                      ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %map.059.i, ptr %mapping, align 4
  br label %__uvc_find_control.exit

if.end13.i:                                       ; preds = %for.body9.i
  %12 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mapping, align 4
  %cmp14.i = icmp eq ptr %13, null
  br i1 %cmp14.i, label %land.lhs.true18.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end13.i
  %id15.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %id15.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %10)
  %cmp17.i = icmp ule i32 %15, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %and1)
  %cmp20.i = icmp ule i32 %10, %and1
  %or.cond54.i = or i1 %tobool11.not.i, %cmp20.i
  %or.cond55.i = or i1 %or.cond54.i, %cmp17.i
  br i1 %or.cond55.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false.i.if.then23.i_crit_edge

lor.lhs.false.i.if.then23.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true18.i:                                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %and1)
  %cmp20.old.i = icmp ule i32 %10, %and1
  %or.cond54.old.i = or i1 %tobool11.not.i, %cmp20.old.i
  br i1 %or.cond54.old.i, label %land.lhs.true18.i.for.inc.i_crit_edge, label %land.lhs.true18.i.if.then23.i_crit_edge

land.lhs.true18.i.if.then23.i_crit_edge:          ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23.i

land.lhs.true18.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then23.i:                                      ; preds = %land.lhs.true18.i.if.then23.i_crit_edge, %lor.lhs.false.i.if.then23.i_crit_edge
  %16 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %map.059.i, ptr %mapping, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then23.i, %land.lhs.true18.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge
  %ctrl.3 = phi ptr [ %ctrl.2, %land.lhs.true18.i.for.inc.i_crit_edge ], [ %arrayidx.i, %if.then23.i ], [ %ctrl.2, %lor.lhs.false.i.for.inc.i_crit_edge ]
  %17 = ptrtoint ptr %map.059.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %map.0.i = load ptr, ptr %map.059.i, align 4
  %cmp8.not.i = icmp eq ptr %map.0.i, %info.i
  br i1 %cmp8.not.i, label %for.inc.i.for.inc30.i_crit_edge, label %for.inc.i.for.body9.i_crit_edge

for.inc.i.for.body9.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body9.i

for.inc.i.for.inc30.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %for.inc.i.for.inc30.i_crit_edge, %if.end3.i.for.inc30.i_crit_edge, %for.body.i.for.inc30.i_crit_edge
  %ctrl.4 = phi ptr [ %ctrl.1, %for.body.i.for.inc30.i_crit_edge ], [ %ctrl.1, %if.end3.i.for.inc30.i_crit_edge ], [ %ctrl.3, %for.inc.i.for.inc30.i_crit_edge ]
  %inc.i = add nuw i32 %i.061.i, 1
  %18 = ptrtoint ptr %ncontrols.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ncontrols.i, align 4
  %cmp1.i = icmp ult i32 %inc.i, %19
  br i1 %cmp1.i, label %for.inc30.i.for.body.i_crit_edge, label %for.inc30.i.__uvc_find_control.exit_crit_edge

for.inc30.i.__uvc_find_control.exit_crit_edge:    ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__uvc_find_control.exit

for.inc30.i.for.body.i_crit_edge:                 ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

__uvc_find_control.exit:                          ; preds = %for.inc30.i.__uvc_find_control.exit_crit_edge, %if.then12.i, %for.cond.preheader.i.__uvc_find_control.exit_crit_edge, %for.body.__uvc_find_control.exit_crit_edge
  %ctrl.5 = phi ptr [ %ctrl.0, %for.body.__uvc_find_control.exit_crit_edge ], [ %ctrl.0, %for.cond.preheader.i.__uvc_find_control.exit_crit_edge ], [ %arrayidx.i, %if.then12.i ], [ %ctrl.4, %for.inc30.i.__uvc_find_control.exit_crit_edge ]
  %tobool.not = icmp ne ptr %ctrl.5, null
  %or.cond = and i1 %tobool11.not.i, %tobool.not
  br i1 %or.cond, label %__uvc_find_control.exit.cleanup_crit_edge, label %__uvc_find_control.exit.for.cond_crit_edge

__uvc_find_control.exit.for.cond_crit_edge:       ; preds = %__uvc_find_control.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

__uvc_find_control.exit.cleanup_crit_edge:        ; preds = %__uvc_find_control.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %cmp11 = icmp eq ptr %ctrl.0, null
  %or.cond36 = and i1 %tobool11.not.i, %cmp11
  br i1 %or.cond36, label %do.body, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %20 = load i32, ptr @uvc_dbg_param, align 4
  %and15 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chain, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %dev19 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev19, ptr noundef nonnull @.str.20, i32 noundef %and1) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %for.end.cleanup_crit_edge, %__uvc_find_control.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.body.cleanup_crit_edge ], [ null, %do.end ], [ %ctrl.0, %for.end.cleanup_crit_edge ], [ %ctrl.5, %__uvc_find_control.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_query_v4l2_ctrl(ptr noundef %chain, ptr noundef %v4l2_ctrl) local_unnamed_addr #0 align 64 {
entry:
  %mapping = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapping) #15
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mapping, align 4, !annotation !120
  %ctrl_mutex = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 5
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ctrl_mutex, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %v4l2_ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %v4l2_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %if.then1, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then1:                                         ; preds = %if.end
  %and1.i.i = and i32 %2, 268435455
  %ctrl_class_bitmap.i.i = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 8
  %3 = ptrtoint ptr %ctrl_class_bitmap.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ctrl_class_bitmap.i.i, align 4
  %conv.i.i = zext i8 %4 to i32
  %and2.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %for.inc.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10092545, i32 %and1.i.i)
  %cmp6.i.i = icmp eq i32 %and1.i.i, 10092545
  br i1 %cmp6.i.i, label %if.then5.i.i.uvc_query_v4l2_class.exit_crit_edge, label %for.inc.thread34.i.i

if.then5.i.i.uvc_query_v4l2_class.exit_crit_edge: ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_query_v4l2_class.exit

for.inc.i.i:                                      ; preds = %if.then1
  %and2.1.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.1.i.i)
  %tobool3.not.1.i.i = icmp ne i32 %and2.1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9961473, i32 %and1.i.i)
  %cmp6.1.old.i.i = icmp eq i32 %and1.i.i, 9961473
  %or.cond = select i1 %tobool3.not.1.i.i, i1 %cmp6.1.old.i.i, i1 false
  br i1 %or.cond, label %for.inc.i.i.uvc_query_v4l2_class.exit_crit_edge, label %for.inc.i.i.if.end7_crit_edge

for.inc.i.i.if.end7_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

for.inc.i.i.uvc_query_v4l2_class.exit_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_query_v4l2_class.exit

for.inc.thread34.i.i:                             ; preds = %if.then5.i.i
  %and2.135.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.135.i.i)
  %tobool3.not.136.i.i = icmp ne i32 %and2.135.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9961473, i32 %and1.i.i)
  %cmp6.1.i.i = icmp eq i32 %and1.i.i, 9961473
  %or.cond38.i.i = and i1 %cmp6.1.i.i, %tobool3.not.136.i.i
  br i1 %or.cond38.i.i, label %for.inc.thread34.i.i.uvc_query_v4l2_class.exit_crit_edge, label %for.inc.thread34.i.i.if.end7_crit_edge

for.inc.thread34.i.i.if.end7_crit_edge:           ; preds = %for.inc.thread34.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

for.inc.thread34.i.i.uvc_query_v4l2_class.exit_crit_edge: ; preds = %for.inc.thread34.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_query_v4l2_class.exit

uvc_query_v4l2_class.exit:                        ; preds = %for.inc.thread34.i.i.uvc_query_v4l2_class.exit_crit_edge, %for.inc.i.i.uvc_query_v4l2_class.exit_crit_edge, %if.then5.i.i.uvc_query_v4l2_class.exit_crit_edge
  %retval.0.i.ph.i = phi i32 [ 1, %for.inc.thread34.i.i.uvc_query_v4l2_class.exit_crit_edge ], [ 0, %if.then5.i.i.uvc_query_v4l2_class.exit_crit_edge ], [ 1, %for.inc.i.i.uvc_query_v4l2_class.exit_crit_edge ]
  %5 = getelementptr inbounds i8, ptr %v4l2_ctrl, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 64)
  %arrayidx.i = getelementptr [2 x i32], ptr @uvc_control_classes, i32 0, i32 %retval.0.i.ph.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %v4l2_ctrl to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %v4l2_ctrl, align 4
  %name.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl, i32 0, i32 2
  %call2.i = tail call ptr @v4l2_ctrl_get_name(i32 noundef %8) #15
  %call3.i = tail call i32 @strscpy(ptr noundef %name.i, ptr noundef %call2.i, i32 noundef 32) #15
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 6, ptr %5, align 4
  %flags.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl, i32 0, i32 7
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 68, ptr %flags.i, align 4
  br label %done

if.end7:                                          ; preds = %for.inc.thread34.i.i.if.end7_crit_edge, %for.inc.i.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %12 = ptrtoint ptr %v4l2_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %v4l2_ctrl, align 4
  %call9 = call fastcc ptr @uvc_find_control(ptr noundef %chain, i32 noundef %13, ptr noundef nonnull %mapping)
  %cmp10 = icmp eq ptr %call9, null
  br i1 %cmp10, label %if.end7.done_crit_edge, label %if.end12

if.end7.done_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end12:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %v4l2_ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %v4l2_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool15.not = icmp sgt i32 %15, -1
  br i1 %tobool15.not, label %if.end12.if.end23_crit_edge, label %if.then16

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then16:                                        ; preds = %if.end12
  %16 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mapping, align 4
  %id18 = getelementptr inbounds %struct.uvc_control_mapping, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %id18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id18, align 4
  %and1.i.i45 = and i32 %15, 268435455
  %ctrl_class_bitmap.i.i46 = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 8
  %20 = ptrtoint ptr %ctrl_class_bitmap.i.i46 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ctrl_class_bitmap.i.i46, align 4
  %conv.i.i47 = zext i8 %21 to i32
  %and2.i.i48 = and i32 %conv.i.i47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i48)
  %tobool3.not.i.i49 = icmp eq i32 %and2.i.i48, 0
  br i1 %tobool3.not.i.i49, label %for.inc.i.i57, label %if.end10.i.i54

if.end10.i.i54:                                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_const_cmp4(i32 10092545, i32 %and1.i.i45)
  %cmp12.i.i53 = icmp ult i32 %and1.i.i45, 10092545
  call void @__sanitizer_cov_trace_const_cmp4(i32 10092545, i32 %19)
  %cmp15.i.i = icmp ugt i32 %19, 10092545
  %or.cond.i.i = and i1 %cmp12.i.i53, %cmp15.i.i
  br i1 %or.cond.i.i, label %if.end10.i.i54.uvc_query_v4l2_class.exit79_crit_edge, label %for.inc.thread.i.i

if.end10.i.i54.uvc_query_v4l2_class.exit79_crit_edge: ; preds = %if.end10.i.i54
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_query_v4l2_class.exit79

for.inc.i.i57:                                    ; preds = %if.then16
  %and2.1.i.i55 = and i32 %conv.i.i47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.1.i.i55)
  %tobool3.not.1.i.i56 = icmp eq i32 %and2.1.i.i55, 0
  br i1 %tobool3.not.1.i.i56, label %for.inc.i.i57.if.end23_crit_edge, label %for.inc.i.i57.if.end10.1.i.i67_crit_edge

for.inc.i.i57.if.end10.1.i.i67_crit_edge:         ; preds = %for.inc.i.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.1.i.i67

for.inc.i.i57.if.end23_crit_edge:                 ; preds = %for.inc.i.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

for.inc.thread.i.i:                               ; preds = %if.end10.i.i54
  %and2.132.i.i63 = and i32 %conv.i.i47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.132.i.i63)
  %tobool3.not.133.i.i64 = icmp eq i32 %and2.132.i.i63, 0
  br i1 %tobool3.not.133.i.i64, label %for.inc.thread.i.i.if.end23_crit_edge, label %for.inc.thread.i.i.if.end10.1.i.i67_crit_edge

for.inc.thread.i.i.if.end10.1.i.i67_crit_edge:    ; preds = %for.inc.thread.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.1.i.i67

for.inc.thread.i.i.if.end23_crit_edge:            ; preds = %for.inc.thread.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.end10.1.i.i67:                                 ; preds = %for.inc.thread.i.i.if.end10.1.i.i67_crit_edge, %for.inc.i.i57.if.end10.1.i.i67_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 9961473, i32 %and1.i.i45)
  %cmp12.1.i.i66 = icmp ult i32 %and1.i.i45, 9961473
  call void @__sanitizer_cov_trace_const_cmp4(i32 9961473, i32 %19)
  %cmp15.1.i.i = icmp ugt i32 %19, 9961473
  %or.cond.1.i.i = and i1 %cmp12.1.i.i66, %cmp15.1.i.i
  br i1 %or.cond.1.i.i, label %if.end10.1.i.i67.uvc_query_v4l2_class.exit79_crit_edge, label %if.end10.1.i.i67.if.end23_crit_edge

if.end10.1.i.i67.if.end23_crit_edge:              ; preds = %if.end10.1.i.i67
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.end10.1.i.i67.uvc_query_v4l2_class.exit79_crit_edge: ; preds = %if.end10.1.i.i67
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_query_v4l2_class.exit79

uvc_query_v4l2_class.exit79:                      ; preds = %if.end10.1.i.i67.uvc_query_v4l2_class.exit79_crit_edge, %if.end10.i.i54.uvc_query_v4l2_class.exit79_crit_edge
  %retval.0.i.ph.i70 = phi i32 [ 1, %if.end10.1.i.i67.uvc_query_v4l2_class.exit79_crit_edge ], [ 0, %if.end10.i.i54.uvc_query_v4l2_class.exit79_crit_edge ]
  %22 = getelementptr inbounds i8, ptr %v4l2_ctrl, i32 4
  %23 = call ptr @memset(ptr %22, i32 0, i32 64)
  %arrayidx.i71 = getelementptr [2 x i32], ptr @uvc_control_classes, i32 0, i32 %retval.0.i.ph.i70
  %24 = ptrtoint ptr %arrayidx.i71 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i71, align 4
  %26 = ptrtoint ptr %v4l2_ctrl to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %v4l2_ctrl, align 4
  %name.i72 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl, i32 0, i32 2
  %call2.i73 = tail call ptr @v4l2_ctrl_get_name(i32 noundef %25) #15
  %call3.i74 = tail call i32 @strscpy(ptr noundef %name.i72, ptr noundef %call2.i73, i32 noundef 32) #15
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 6, ptr %22, align 4
  %flags.i76 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl, i32 0, i32 7
  %28 = ptrtoint ptr %flags.i76 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 68, ptr %flags.i76, align 4
  br label %done

if.end23:                                         ; preds = %if.end10.1.i.i67.if.end23_crit_edge, %for.inc.thread.i.i.if.end23_crit_edge, %for.inc.i.i57.if.end23_crit_edge, %if.end12.if.end23_crit_edge
  %29 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mapping, align 4
  %call24 = tail call fastcc i32 @__uvc_query_v4l2_ctrl(ptr noundef %chain, ptr noundef nonnull %call9, ptr noundef %30, ptr noundef %v4l2_ctrl)
  br label %done

done:                                             ; preds = %if.end23, %uvc_query_v4l2_class.exit79, %if.end7.done_crit_edge, %uvc_query_v4l2_class.exit
  %ret.0 = phi i32 [ %call24, %if.end23 ], [ 0, %uvc_query_v4l2_class.exit79 ], [ 0, %uvc_query_v4l2_class.exit ], [ -22, %if.end7.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ctrl_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ -512, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapping) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__uvc_query_v4l2_ctrl(ptr nocapture noundef readonly %chain, ptr noundef %ctrl, ptr noundef %mapping, ptr noundef %v4l2_ctrl) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %v4l2_ctrl, i32 0, i32 68)
  %id = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 2
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %3 = ptrtoint ptr %v4l2_ctrl to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %v4l2_ctrl, align 4
  %v4l2_type = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 8
  %4 = ptrtoint ptr %v4l2_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v4l2_type, align 4
  %type = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %type, align 4
  %name = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl, i32 0, i32 2
  %name1.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 3
  %7 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name1.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.uvc_map_get_name.exit_crit_edge

entry.uvc_map_get_name.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_map_get_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %call.i = tail call ptr @v4l2_ctrl_get_name(i32 noundef %10) #15
  %tobool3.not.i = icmp eq ptr %call.i, null
  %.str.40.call.i = select i1 %tobool3.not.i, ptr @.str.40, ptr %call.i
  br label %uvc_map_get_name.exit

uvc_map_get_name.exit:                            ; preds = %if.end.i, %entry.uvc_map_get_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %entry.uvc_map_get_name.exit_crit_edge ], [ %.str.40.call.i, %if.end.i ]
  %call2 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %retval.0.i, i32 noundef 32) #15
  %flags = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl, i32 0, i32 7
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flags, align 4
  %flags3 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags3, align 4
  %and = shl i32 %13, 5
  %14 = and i32 %and, 64
  %15 = xor i32 %14, 64
  store i32 %15, ptr %flags, align 4
  %16 = load i32, ptr %flags3, align 4
  %and7 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then9, label %uvc_map_get_name.exit.if.end12_crit_edge

uvc_map_get_name.exit.if.end12_crit_edge:         ; preds = %uvc_map_get_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then9:                                         ; preds = %uvc_map_get_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  %or11 = or i32 %15, 4
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or11, ptr %flags, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %uvc_map_get_name.exit.if.end12_crit_edge
  %master_id = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 12
  %18 = ptrtoint ptr %master_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %master_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool13.not = icmp eq i32 %19, 0
  br i1 %tobool13.not, label %if.end12.if.end32_crit_edge, label %if.then14

if.end12.if.end32_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then14:                                        ; preds = %if.end12
  %20 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl, align 4
  %cmp.i = icmp eq ptr %21, null
  br i1 %cmp.i, label %if.then14.if.end32_crit_edge, label %for.cond.preheader.i

if.then14.if.end32_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

for.cond.preheader.i:                             ; preds = %if.then14
  %ncontrols.i = getelementptr inbounds %struct.uvc_entity, ptr %21, i32 0, i32 17
  %22 = ptrtoint ptr %ncontrols.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ncontrols.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp160.not.i = icmp eq i32 %23, 0
  br i1 %cmp160.not.i, label %for.cond.preheader.i.if.end32_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end32_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %controls.i = getelementptr inbounds %struct.uvc_entity, ptr %21, i32 0, i32 18
  %24 = ptrtoint ptr %controls.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %controls.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc30.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.061.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc30.i.for.body.i_crit_edge ]
  %initialized.i = getelementptr %struct.uvc_control, ptr %25, i32 %i.061.i, i32 3
  %26 = ptrtoint ptr %initialized.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i = load i8, ptr %initialized.i, align 1
  %27 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i163 = icmp eq i8 %27, 0
  br i1 %tobool.not.i163, label %for.body.i.for.inc30.i_crit_edge, label %if.end3.i

for.body.i.for.inc30.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc30.i

if.end3.i:                                        ; preds = %for.body.i
  %info.i = getelementptr %struct.uvc_control, ptr %25, i32 %i.061.i, i32 1
  %28 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %map.057.i = load ptr, ptr %info.i, align 4
  %cmp8.not58.i = icmp eq ptr %map.057.i, %info.i
  br i1 %cmp8.not58.i, label %if.end3.i.for.inc30.i_crit_edge, label %if.end3.i.for.body9.i_crit_edge

if.end3.i.for.body9.i_crit_edge:                  ; preds = %if.end3.i
  br label %for.body9.i

if.end3.i.for.inc30.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc30.i

for.body9.i:                                      ; preds = %for.inc.i.for.body9.i_crit_edge, %if.end3.i.for.body9.i_crit_edge
  %map.059.i = phi ptr [ %map.0.i, %for.inc.i.for.body9.i_crit_edge ], [ %map.057.i, %if.end3.i.for.body9.i_crit_edge ]
  %id.i164 = getelementptr inbounds %struct.uvc_control_mapping, ptr %map.059.i, i32 0, i32 2
  %29 = ptrtoint ptr %id.i164 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id.i164, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %19)
  %cmp10.i = icmp eq i32 %30, %19
  br i1 %cmp10.i, label %if.end16, label %for.inc.i

for.inc.i:                                        ; preds = %for.body9.i
  %31 = ptrtoint ptr %map.059.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %map.0.i = load ptr, ptr %map.059.i, align 4
  %cmp8.not.i = icmp eq ptr %map.0.i, %info.i
  br i1 %cmp8.not.i, label %for.inc.i.for.inc30.i_crit_edge, label %for.inc.i.for.body9.i_crit_edge

for.inc.i.for.body9.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body9.i

for.inc.i.for.inc30.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %for.inc.i.for.inc30.i_crit_edge, %if.end3.i.for.inc30.i_crit_edge, %for.body.i.for.inc30.i_crit_edge
  %inc.i = add nuw i32 %i.061.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %23
  br i1 %exitcond.not, label %for.inc30.i.if.end32_crit_edge, label %for.inc30.i.for.body.i_crit_edge

for.inc30.i.for.body.i_crit_edge:                 ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc30.i.if.end32_crit_edge:                   ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.end16:                                         ; preds = %for.body9.i
  %arrayidx.i.le = getelementptr %struct.uvc_control, ptr %25, i32 %i.061.i
  %tobool17.not = icmp eq ptr %arrayidx.i.le, null
  br i1 %tobool17.not, label %if.end16.if.end32_crit_edge, label %land.lhs.true

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end16
  %flags19 = getelementptr %struct.uvc_control, ptr %25, i32 %i.061.i, i32 1, i32 5
  %32 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags19, align 4
  %and20 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end32_crit_edge, label %if.then22

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then22:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #15
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %val, align 4, !annotation !120
  %call23 = call fastcc i32 @__uvc_ctrl_get(ptr noundef %chain, ptr noundef nonnull %arrayidx.i.le, ptr noundef %map.059.i, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %cleanup98.critedge, label %if.end25

if.end25:                                         ; preds = %if.then22
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  %master_manual = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 13
  %37 = ptrtoint ptr %master_manual to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %master_manual, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp26.not = icmp eq i32 %36, %38
  br i1 %cmp26.not, label %if.end32.critedge, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %or29 = or i32 %40, 16
  store i32 %or29, ptr %flags, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #15
  br label %if.end32

if.end32.critedge:                                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #15
  br label %if.end32

if.end32:                                         ; preds = %if.end32.critedge, %if.then27, %land.lhs.true.if.end32_crit_edge, %if.end16.if.end32_crit_edge, %for.inc30.i.if.end32_crit_edge, %for.cond.preheader.i.if.end32_crit_edge, %if.then14.if.end32_crit_edge, %if.end12.if.end32_crit_edge
  %cached = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 3
  %41 = ptrtoint ptr %cached to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %cached, align 1
  %42 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool33.not = icmp eq i8 %42, 0
  br i1 %tobool33.not, label %if.then34, label %if.end32.if.end43_crit_edge

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then34:                                        ; preds = %if.end32
  %call36 = tail call fastcc i32 @uvc_ctrl_populate_cache(ptr noundef %chain, ptr noundef %ctrl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then34.cleanup98_crit_edge, label %if.then34.if.end43_crit_edge

if.then34.if.end43_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then34.cleanup98_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup98

if.end43:                                         ; preds = %if.then34.if.end43_crit_edge, %if.end32.if.end43_crit_edge
  %43 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags3, align 4
  %and46 = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end43.if.end51_crit_edge, label %if.then48

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  %get = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 15
  %45 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %get, align 4
  %uvc_data.i = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 4
  %47 = ptrtoint ptr %uvc_data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %uvc_data.i, align 4
  %size.i = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 4
  %49 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %50 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 5
  %add.ptr.i = getelementptr i8, ptr %48, i32 %mul.i
  %call50 = tail call i32 %46(ptr noundef %mapping, i8 noundef zeroext -121, ptr noundef %add.ptr.i) #15
  %default_value = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl, i32 0, i32 6
  %51 = ptrtoint ptr %default_value to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call50, ptr %default_value, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end43.if.end51_crit_edge
  %52 = ptrtoint ptr %v4l2_type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %v4l2_type, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i32 %53, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb60
    i32 4, label %sw.bb64
  ]

sw.bb:                                            ; preds = %if.end51
  %minimum = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl, i32 0, i32 3
  %55 = ptrtoint ptr %minimum to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %minimum, align 4
  %menu_count = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 11
  %56 = ptrtoint ptr %menu_count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %menu_count, align 4
  %sub = add i32 %57, -1
  %maximum = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl, i32 0, i32 4
  %58 = ptrtoint ptr %maximum to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub, ptr %maximum, align 4
  %step = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl, i32 0, i32 5
  %59 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %step, align 4
  %60 = load i32, ptr %menu_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp54192.not = icmp eq i32 %60, 0
  br i1 %cmp54192.not, label %sw.bb.cleanup98_crit_edge, label %for.body.lr.ph

sw.bb.cleanup98_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup98

for.body.lr.ph:                                   ; preds = %sw.bb
  %menu_info = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 10
  %61 = ptrtoint ptr %menu_info to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %menu_info, align 4
  %default_value55 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl, i32 0, i32 6
  %63 = ptrtoint ptr %default_value55 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %default_value55, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0194 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %menu.0193 = phi ptr [ %62, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %65 = ptrtoint ptr %menu.0193 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %menu.0193, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %64)
  %cmp56 = icmp eq i32 %66, %64
  br i1 %cmp56, label %if.then57, label %for.inc

if.then57:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %67 = ptrtoint ptr %default_value55 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %i.0194, ptr %default_value55, align 4
  br label %cleanup98

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0194, 1
  %incdec.ptr = getelementptr %struct.uvc_menu_info, ptr %menu.0193, i32 1
  %exitcond198.not = icmp eq i32 %inc, %60
  br i1 %exitcond198.not, label %for.inc.cleanup98_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup98_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup98

sw.bb60:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  %minimum61 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl, i32 0, i32 3
  %68 = ptrtoint ptr %minimum61 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %minimum61, align 4
  %maximum62 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl, i32 0, i32 4
  %69 = ptrtoint ptr %maximum62 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %maximum62, align 4
  %step63 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl, i32 0, i32 5
  %70 = ptrtoint ptr %step63 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %step63, align 4
  br label %cleanup98

sw.bb64:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #17
  %minimum65 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl, i32 0, i32 3
  %71 = ptrtoint ptr %minimum65 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %minimum65, align 4
  %maximum66 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl, i32 0, i32 4
  %72 = ptrtoint ptr %maximum66 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %maximum66, align 4
  %step67 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl, i32 0, i32 5
  %73 = ptrtoint ptr %step67 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %step67, align 4
  br label %cleanup98

sw.epilog:                                        ; preds = %if.end51
  %74 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags3, align 4
  %and70 = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %sw.epilog.if.end77_crit_edge, label %if.then72

sw.epilog.if.end77_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

if.then72:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %get73 = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 15
  %76 = ptrtoint ptr %get73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %get73, align 4
  %uvc_data.i165 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 4
  %78 = ptrtoint ptr %uvc_data.i165 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %uvc_data.i165, align 4
  %size.i166 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 4
  %80 = ptrtoint ptr %size.i166 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %size.i166, align 2
  %conv.i167 = zext i16 %81 to i32
  %mul.i168 = shl nuw nsw i32 %conv.i167, 1
  %add.ptr.i169 = getelementptr i8, ptr %79, i32 %mul.i168
  %call75 = tail call i32 %77(ptr noundef %mapping, i8 noundef zeroext -126, ptr noundef %add.ptr.i169) #15
  %minimum76 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl, i32 0, i32 3
  %82 = ptrtoint ptr %minimum76 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call75, ptr %minimum76, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then72, %sw.epilog.if.end77_crit_edge
  %83 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags3, align 4
  %and80 = and i32 %84, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end77.if.end87_crit_edge, label %if.then82

if.end77.if.end87_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end87

if.then82:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  %get83 = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 15
  %85 = ptrtoint ptr %get83 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %get83, align 4
  %uvc_data.i170 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 4
  %87 = ptrtoint ptr %uvc_data.i170 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %uvc_data.i170, align 4
  %size.i171 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 4
  %89 = ptrtoint ptr %size.i171 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %size.i171, align 2
  %conv.i172 = zext i16 %90 to i32
  %mul.i173 = mul nuw nsw i32 %conv.i172, 3
  %add.ptr.i174 = getelementptr i8, ptr %88, i32 %mul.i173
  %call85 = tail call i32 %86(ptr noundef %mapping, i8 noundef zeroext -125, ptr noundef %add.ptr.i174) #15
  %maximum86 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl, i32 0, i32 4
  %91 = ptrtoint ptr %maximum86 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call85, ptr %maximum86, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then82, %if.end77.if.end87_crit_edge
  %92 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags3, align 4
  %and90 = and i32 %93, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end87.cleanup98_crit_edge, label %if.then92

if.end87.cleanup98_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup98

if.then92:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #17
  %get93 = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 15
  %94 = ptrtoint ptr %get93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %get93, align 4
  %uvc_data.i175 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 4
  %96 = ptrtoint ptr %uvc_data.i175 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %uvc_data.i175, align 4
  %size.i176 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 4
  %98 = ptrtoint ptr %size.i176 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %size.i176, align 2
  %conv.i177 = zext i16 %99 to i32
  %mul.i178 = shl nuw nsw i32 %conv.i177, 2
  %add.ptr.i179 = getelementptr i8, ptr %97, i32 %mul.i178
  %call95 = tail call i32 %95(ptr noundef %mapping, i8 noundef zeroext -124, ptr noundef %add.ptr.i179) #15
  %step96 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl, i32 0, i32 5
  %100 = ptrtoint ptr %step96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %call95, ptr %step96, align 4
  br label %cleanup98

cleanup98.critedge:                               ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #15
  br label %cleanup98

cleanup98:                                        ; preds = %cleanup98.critedge, %if.then92, %if.end87.cleanup98_crit_edge, %sw.bb64, %sw.bb60, %for.inc.cleanup98_crit_edge, %if.then57, %sw.bb.cleanup98_crit_edge, %if.then34.cleanup98_crit_edge
  %retval.3 = phi i32 [ 0, %sw.bb64 ], [ 0, %sw.bb60 ], [ %call36, %if.then34.cleanup98_crit_edge ], [ %call23, %cleanup98.critedge ], [ 0, %if.then57 ], [ 0, %if.then92 ], [ 0, %if.end87.cleanup98_crit_edge ], [ 0, %sw.bb.cleanup98_crit_edge ], [ 0, %for.inc.cleanup98_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_query_v4l2_menu(ptr noundef %chain, ptr noundef %query_menu) local_unnamed_addr #0 align 64 {
entry:
  %mapping = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapping) #15
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mapping, align 4, !annotation !120
  %index1 = getelementptr inbounds %struct.v4l2_querymenu, ptr %query_menu, i32 0, i32 1
  %1 = ptrtoint ptr %index1 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %index1, align 1
  %3 = ptrtoint ptr %query_menu to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %query_menu, align 1
  %5 = getelementptr inbounds i8, ptr %query_menu, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 36)
  store i32 %4, ptr %query_menu, align 1
  store i32 %2, ptr %index1, align 1
  %ctrl_mutex = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 5
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ctrl_mutex, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup36_crit_edge, label %if.end

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup36

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %query_menu to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %query_menu, align 1
  %call6 = call fastcc ptr @uvc_find_control(ptr noundef %chain, i32 noundef %8, ptr noundef nonnull %mapping)
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %if.end.done_crit_edge, label %lor.lhs.false

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

lor.lhs.false:                                    ; preds = %if.end
  %9 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mapping, align 4
  %v4l2_type = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %v4l2_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %v4l2_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp8.not = icmp eq i32 %12, 3
  br i1 %cmp8.not, label %if.end10, label %lor.lhs.false.done_crit_edge

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end10:                                         ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %index1 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %index1, align 1
  %menu_count = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 11
  %15 = ptrtoint ptr %menu_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %menu_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp12.not = icmp ult i32 %14, %16
  br i1 %cmp12.not, label %if.end14, label %if.end10.done_crit_edge

if.end10.done_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end14:                                         ; preds = %if.end10
  %menu_info15 = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 10
  %17 = ptrtoint ptr %menu_info15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %menu_info15, align 4
  %arrayidx = getelementptr %struct.uvc_menu_info, ptr %18, i32 %14
  %data_type = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 9
  %19 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %20)
  %cmp17 = icmp eq i32 %20, 5
  br i1 %cmp17, label %land.lhs.true, label %if.end14.if.end32_crit_edge

if.end14.if.end32_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end14
  %flags = getelementptr inbounds %struct.uvc_control, ptr %call6, i32 0, i32 1, i32 5
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end32_crit_edge, label %if.then18

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then18:                                        ; preds = %land.lhs.true
  %cached = getelementptr inbounds %struct.uvc_control, ptr %call6, i32 0, i32 3
  %23 = ptrtoint ptr %cached to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %cached, align 1
  %24 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool19.not = icmp eq i8 %24, 0
  br i1 %tobool19.not, label %if.then20, label %if.then18.if.end25_crit_edge

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then20:                                        ; preds = %if.then18
  %call21 = tail call fastcc i32 @uvc_ctrl_populate_cache(ptr noundef %chain, ptr noundef nonnull %call6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then20.done_crit_edge, label %if.then20.if.end25_crit_edge

if.then20.if.end25_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then20.done_crit_edge:                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end25:                                         ; preds = %if.then20.if.end25_crit_edge, %if.then18.if.end25_crit_edge
  %ret.0 = phi i32 [ %call, %if.then18.if.end25_crit_edge ], [ 0, %if.then20.if.end25_crit_edge ]
  %get = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 15
  %25 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get, align 4
  %uvc_data.i = getelementptr inbounds %struct.uvc_control, ptr %call6, i32 0, i32 4
  %27 = ptrtoint ptr %uvc_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %uvc_data.i, align 4
  %size.i = getelementptr inbounds %struct.uvc_control, ptr %call6, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %30 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.ptr.i = getelementptr i8, ptr %28, i32 %mul.i
  %call27 = tail call i32 %26(ptr noundef %10, i8 noundef zeroext -124, ptr noundef %add.ptr.i) #15
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %and28 = and i32 %32, %call27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end25.done_crit_edge, label %if.end25.if.end32_crit_edge

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.end25.done_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end32:                                         ; preds = %if.end25.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %if.end14.if.end32_crit_edge
  %ret.2 = phi i32 [ %call, %land.lhs.true.if.end32_crit_edge ], [ %call, %if.end14.if.end32_crit_edge ], [ %ret.0, %if.end25.if.end32_crit_edge ]
  %33 = getelementptr inbounds %struct.v4l2_querymenu, ptr %query_menu, i32 0, i32 2
  %name = getelementptr %struct.uvc_menu_info, ptr %18, i32 %14, i32 1
  %call34 = tail call i32 @strscpy(ptr noundef %33, ptr noundef %name, i32 noundef 32) #15
  br label %done

done:                                             ; preds = %if.end32, %if.end25.done_crit_edge, %if.then20.done_crit_edge, %if.end10.done_crit_edge, %lor.lhs.false.done_crit_edge, %if.end.done_crit_edge
  %ret.3 = phi i32 [ %ret.2, %if.end32 ], [ -22, %lor.lhs.false.done_crit_edge ], [ -22, %if.end.done_crit_edge ], [ -22, %if.end10.done_crit_edge ], [ %call21, %if.then20.done_crit_edge ], [ -22, %if.end25.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ctrl_mutex) #15
  br label %cleanup36

cleanup36:                                        ; preds = %done, %entry.cleanup36_crit_edge
  %retval.0 = phi i32 [ %ret.3, %done ], [ -512, %entry.cleanup36_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapping) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvc_ctrl_populate_cache(ptr nocapture noundef readonly %chain, ptr noundef %ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chain, align 4
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 4
  %id = getelementptr inbounds %struct.uvc_entity, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %id, align 4
  %conv = trunc i16 %7 to i8
  %intfnum = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %intfnum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %intfnum, align 8
  %conv2 = trunc i32 %9 to i8
  %selector = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %selector to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %selector, align 1
  %uvc_data.i = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 4
  %12 = ptrtoint ptr %uvc_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %uvc_data.i, align 4
  %size.i = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %15 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 5
  %add.ptr.i = getelementptr i8, ptr %13, i32 %mul.i
  %call5 = tail call i32 @uvc_query_ctrl(ptr noundef %3, i8 noundef zeroext -121, i8 noundef zeroext %conv, i8 noundef zeroext %conv2, i8 noundef zeroext %11, ptr noundef %add.ptr.i, i16 noundef zeroext %15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and11 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end8.if.end31_crit_edge, label %if.then13

if.end8.if.end31_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then13:                                        ; preds = %if.end8
  %18 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chain, align 4
  %20 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl, align 4
  %id16 = getelementptr inbounds %struct.uvc_entity, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %id16 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %id16, align 4
  %conv17 = trunc i16 %23 to i8
  %intfnum19 = getelementptr inbounds %struct.uvc_device, ptr %19, i32 0, i32 4
  %24 = ptrtoint ptr %intfnum19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %intfnum19, align 8
  %conv20 = trunc i32 %25 to i8
  %selector22 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %selector22 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %selector22, align 1
  %uvc_data.i138 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 4
  %28 = ptrtoint ptr %uvc_data.i138 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %uvc_data.i138, align 4
  %size.i139 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 4
  %30 = ptrtoint ptr %size.i139 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %size.i139, align 2
  %conv.i140 = zext i16 %31 to i32
  %mul.i141 = shl nuw nsw i32 %conv.i140, 1
  %add.ptr.i142 = getelementptr i8, ptr %29, i32 %mul.i141
  %call26 = tail call i32 @uvc_query_ctrl(ptr noundef %19, i8 noundef zeroext -126, i8 noundef zeroext %conv17, i8 noundef zeroext %conv20, i8 noundef zeroext %27, ptr noundef %add.ptr.i142, i16 noundef zeroext %31) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then13.cleanup_crit_edge, label %if.then13.if.end31_crit_edge

if.then13.if.end31_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end31:                                         ; preds = %if.then13.if.end31_crit_edge, %if.end8.if.end31_crit_edge
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %and34 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end31.if.end54_crit_edge, label %if.then36

if.end31.if.end54_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

if.then36:                                        ; preds = %if.end31
  %34 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chain, align 4
  %36 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctrl, align 4
  %id39 = getelementptr inbounds %struct.uvc_entity, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %id39 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %id39, align 4
  %conv40 = trunc i16 %39 to i8
  %intfnum42 = getelementptr inbounds %struct.uvc_device, ptr %35, i32 0, i32 4
  %40 = ptrtoint ptr %intfnum42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %intfnum42, align 8
  %conv43 = trunc i32 %41 to i8
  %selector45 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 3
  %42 = ptrtoint ptr %selector45 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %selector45, align 1
  %uvc_data.i143 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 4
  %44 = ptrtoint ptr %uvc_data.i143 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %uvc_data.i143, align 4
  %size.i144 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 4
  %46 = ptrtoint ptr %size.i144 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %size.i144, align 2
  %conv.i145 = zext i16 %47 to i32
  %mul.i146 = mul nuw nsw i32 %conv.i145, 3
  %add.ptr.i147 = getelementptr i8, ptr %45, i32 %mul.i146
  %call49 = tail call i32 @uvc_query_ctrl(ptr noundef %35, i8 noundef zeroext -125, i8 noundef zeroext %conv40, i8 noundef zeroext %conv43, i8 noundef zeroext %43, ptr noundef %add.ptr.i147, i16 noundef zeroext %47) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then36.cleanup_crit_edge, label %if.then36.if.end54_crit_edge

if.then36.if.end54_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end54:                                         ; preds = %if.then36.if.end54_crit_edge, %if.end31.if.end54_crit_edge
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 4
  %and57 = and i32 %49, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end54.if.end98_crit_edge, label %if.then59

if.end54.if.end98_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end98

if.then59:                                        ; preds = %if.end54
  %50 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chain, align 4
  %52 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctrl, align 4
  %id62 = getelementptr inbounds %struct.uvc_entity, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %id62 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %id62, align 4
  %conv63 = trunc i16 %55 to i8
  %intfnum65 = getelementptr inbounds %struct.uvc_device, ptr %51, i32 0, i32 4
  %56 = ptrtoint ptr %intfnum65 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %intfnum65, align 8
  %conv66 = trunc i32 %57 to i8
  %selector68 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 3
  %58 = ptrtoint ptr %selector68 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %selector68, align 1
  %uvc_data.i148 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 4
  %60 = ptrtoint ptr %uvc_data.i148 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %uvc_data.i148, align 4
  %size.i149 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 4
  %62 = ptrtoint ptr %size.i149 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %size.i149, align 2
  %conv.i150 = zext i16 %63 to i32
  %mul.i151 = shl nuw nsw i32 %conv.i150, 2
  %add.ptr.i152 = getelementptr i8, ptr %61, i32 %mul.i151
  %call72 = tail call i32 @uvc_query_ctrl(ptr noundef %51, i8 noundef zeroext -124, i8 noundef zeroext %conv63, i8 noundef zeroext %conv66, i8 noundef zeroext %59, ptr noundef %add.ptr.i152, i16 noundef zeroext %63) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.then75, label %if.then59.if.end98_crit_edge

if.then59.if.end98_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end98

if.then75:                                        ; preds = %if.then59
  %64 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctrl, align 4
  %type = getelementptr inbounds %struct.uvc_entity, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %type, align 2
  %68 = and i16 %67, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %68)
  %cmp79.not = icmp eq i16 %68, 6
  br i1 %cmp79.not, label %do.body, label %if.then75.cleanup_crit_edge

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %if.then75
  %69 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chain, align 4
  %warnings = getelementptr inbounds %struct.uvc_device, ptr %70, i32 0, i32 2
  %call84 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %warnings) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %do.end, label %do.body.do.end92_crit_edge

do.body.do.end92_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end92

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %71 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %chain, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  %dev89 = getelementptr inbounds %struct.usb_device, ptr %74, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev89, ptr noundef nonnull @.str.22) #18
  br label %do.end92

do.end92:                                         ; preds = %do.end, %do.body.do.end92_crit_edge
  %75 = ptrtoint ptr %uvc_data.i148 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %uvc_data.i148, align 4
  %77 = ptrtoint ptr %size.i149 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %size.i149, align 2
  %conv.i155 = zext i16 %78 to i32
  %mul.i156 = shl nuw nsw i32 %conv.i155, 2
  %add.ptr.i157 = getelementptr i8, ptr %76, i32 %mul.i156
  %79 = call ptr @memset(ptr %add.ptr.i157, i32 0, i32 %conv.i155)
  br label %if.end98

if.end98:                                         ; preds = %do.end92, %if.then59.if.end98_crit_edge, %if.end54.if.end98_crit_edge
  %cached = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 3
  %80 = ptrtoint ptr %cached to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load = load i8, ptr %cached, align 1
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %cached, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.then75.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end98 ], [ %call5, %if.then.cleanup_crit_edge ], [ %call26, %if.then13.cleanup_crit_edge ], [ %call49, %if.then36.cleanup_crit_edge ], [ %call72, %if.then75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvc_ctrl_status_event(ptr noundef %chain, ptr noundef %ctrl, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %v4l2_ctrl.i.i = alloca %struct.v4l2_queryctrl, align 4
  %ev.i = alloca %struct.v4l2_event, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_mutex = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %ctrl_mutex, i32 noundef 0) #15
  %handle1 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 5
  %0 = ptrtoint ptr %handle1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle1, align 4
  store ptr null, ptr %handle1, align 4
  %info = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %mapping.038 = load ptr, ptr %info, align 4
  %cmp.not39 = icmp eq ptr %mapping.038, %info
  br i1 %cmp.not39, label %entry.for.end16_crit_edge, label %for.body.lr.ph

entry.for.end16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end16

for.body.lr.ph:                                   ; preds = %entry
  %id1.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i, i32 0, i32 5
  %u.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.v4l2_event, ptr %ev.i, i32 0, i32 1, i32 0, i32 2
  %type4.i.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i.i, i32 0, i32 1
  %type6.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i, i32 0, i32 1, i32 0, i32 1
  %flags.i.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i.i, i32 0, i32 7
  %flags8.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i, i32 0, i32 1, i32 0, i32 3
  %minimum.i.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i.i, i32 0, i32 3
  %minimum10.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i, i32 0, i32 1, i32 0, i32 4
  %maximum.i.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i.i, i32 0, i32 4
  %maximum12.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i, i32 0, i32 1, i32 0, i32 5
  %step.i.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i.i, i32 0, i32 5
  %step14.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i, i32 0, i32 1, i32 0, i32 6
  %default_value.i.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i.i, i32 0, i32 6
  %default_value16.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i, i32 0, i32 1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %uvc_ctrl_send_event.exit.for.body_crit_edge, %for.body.lr.ph
  %mapping.040 = phi ptr [ %mapping.038, %for.body.lr.ph ], [ %mapping.0, %uvc_ctrl_send_event.exit.for.body_crit_edge ]
  %get.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping.040, i32 0, i32 15
  %4 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get.i, align 4
  %call.i = call i32 %5(ptr noundef %mapping.040, i8 noundef zeroext -127, ptr noundef %data) #15
  %v4l2_type.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping.040, i32 0, i32 8
  %6 = ptrtoint ptr %v4l2_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v4l2_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i = icmp eq i32 %7, 3
  br i1 %cmp.i, label %if.then.i, label %for.body.__uvc_ctrl_get_value.exit_crit_edge

for.body.__uvc_ctrl_get_value.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %__uvc_ctrl_get_value.exit

if.then.i:                                        ; preds = %for.body
  %menu_count.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping.040, i32 0, i32 11
  %8 = ptrtoint ptr %menu_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %menu_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp114.not.i = icmp eq i32 %9, 0
  br i1 %cmp114.not.i, label %if.then.i.__uvc_ctrl_get_value.exit_crit_edge, label %for.body.preheader.i

if.then.i.__uvc_ctrl_get_value.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__uvc_ctrl_get_value.exit

for.body.preheader.i:                             ; preds = %if.then.i
  %menu_info.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping.040, i32 0, i32 10
  %10 = ptrtoint ptr %menu_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %menu_info.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.016.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %menu.015.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %11, %for.body.preheader.i ]
  %12 = ptrtoint ptr %menu.015.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %menu.015.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %call.i)
  %cmp3.i = icmp eq i32 %13, %call.i
  br i1 %cmp3.i, label %for.body.i.__uvc_ctrl_get_value.exit_crit_edge, label %for.inc.i

for.body.i.__uvc_ctrl_get_value.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__uvc_ctrl_get_value.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.016.i, 1
  %incdec.ptr.i = getelementptr %struct.uvc_menu_info, ptr %menu.015.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.inc.i.__uvc_ctrl_get_value.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.__uvc_ctrl_get_value.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__uvc_ctrl_get_value.exit

__uvc_ctrl_get_value.exit:                        ; preds = %for.inc.i.__uvc_ctrl_get_value.exit_crit_edge, %for.body.i.__uvc_ctrl_get_value.exit_crit_edge, %if.then.i.__uvc_ctrl_get_value.exit_crit_edge, %for.body.__uvc_ctrl_get_value.exit_crit_edge
  %value.1.i = phi i32 [ %call.i, %for.body.__uvc_ctrl_get_value.exit_crit_edge ], [ %call.i, %if.then.i.__uvc_ctrl_get_value.exit_crit_edge ], [ %call.i, %for.inc.i.__uvc_ctrl_get_value.exit_crit_edge ], [ %i.016.i, %for.body.i.__uvc_ctrl_get_value.exit_crit_edge ]
  %arrayidx = getelementptr %struct.uvc_control_mapping, ptr %mapping.040, i32 0, i32 14, i32 0
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %__uvc_ctrl_get_value.exit.for.end_crit_edge, label %if.end

__uvc_ctrl_get_value.exit.for.end_crit_edge:      ; preds = %__uvc_ctrl_get_value.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end:                                           ; preds = %__uvc_ctrl_get_value.exit
  call fastcc void @uvc_ctrl_send_slave_event(ptr noundef %chain, ptr noundef %1, ptr noundef %ctrl, i32 noundef %15)
  %arrayidx.1 = getelementptr %struct.uvc_control_mapping, ptr %mapping.040, i32 0, i32 14, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.1 = icmp eq i32 %17, 0
  br i1 %tobool.not.1, label %if.end.for.end_crit_edge, label %if.end.1

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end.1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @uvc_ctrl_send_slave_event(ptr noundef %chain, ptr noundef %1, ptr noundef %ctrl, i32 noundef %17)
  br label %for.end

for.end:                                          ; preds = %if.end.1, %if.end.for.end_crit_edge, %__uvc_ctrl_get_value.exit.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %ev.i) #15
  %ev_subs.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping.040, i32 0, i32 1
  %18 = ptrtoint ptr %ev_subs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %ev_subs.i, align 4
  %cmp.i.not.i = icmp eq ptr %19, %ev_subs.i
  br i1 %cmp.i.not.i, label %for.end.uvc_ctrl_send_event.exit_crit_edge, label %if.end.i

for.end.uvc_ctrl_send_event.exit_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_send_event.exit

if.end.i:                                         ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %v4l2_ctrl.i.i) #15
  %20 = call ptr @memset(ptr %v4l2_ctrl.i.i, i32 255, i32 68)
  %call.i.i = call fastcc i32 @__uvc_query_v4l2_ctrl(ptr noundef %chain, ptr noundef %ctrl, ptr noundef %mapping.040, ptr noundef nonnull %v4l2_ctrl.i.i) #15
  %21 = call ptr @memset(ptr %ev.i, i32 0, i32 136)
  %22 = ptrtoint ptr %ev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %ev.i, align 8
  %23 = ptrtoint ptr %v4l2_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %v4l2_ctrl.i.i, align 4
  %25 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %id1.i.i, align 8
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %value.1.i, ptr %3, align 8
  %27 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %u.i.i, align 8
  %28 = ptrtoint ptr %type4.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type4.i.i, align 4
  %30 = ptrtoint ptr %type6.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %type6.i.i, align 4
  %31 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags.i.i, align 4
  %33 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %flags8.i.i, align 8
  %34 = ptrtoint ptr %minimum.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %minimum.i.i, align 4
  %36 = ptrtoint ptr %minimum10.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %minimum10.i.i, align 4
  %37 = ptrtoint ptr %maximum.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %maximum.i.i, align 4
  %39 = ptrtoint ptr %maximum12.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %maximum12.i.i, align 8
  %40 = ptrtoint ptr %step.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %step.i.i, align 4
  %42 = ptrtoint ptr %step14.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %step14.i.i, align 4
  %43 = ptrtoint ptr %default_value.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %default_value.i.i, align 4
  %45 = ptrtoint ptr %default_value16.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %default_value16.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %v4l2_ctrl.i.i) #15
  %46 = ptrtoint ptr %ev_subs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn28.i = load ptr, ptr %ev_subs.i, align 4
  %cmp.not29.i = icmp eq ptr %.pn28.i, %ev_subs.i
  br i1 %cmp.not29.i, label %if.end.i.uvc_ctrl_send_event.exit_crit_edge, label %if.end.i.for.body.i35_crit_edge

if.end.i.for.body.i35_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i35

if.end.i.uvc_ctrl_send_event.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_send_event.exit

for.body.i35:                                     ; preds = %for.inc.i36.for.body.i35_crit_edge, %if.end.i.for.body.i35_crit_edge
  %.pn30.i = phi ptr [ %.pn.i, %for.inc.i36.for.body.i35_crit_edge ], [ %.pn28.i, %if.end.i.for.body.i35_crit_edge ]
  %fh.i = getelementptr i8, ptr %.pn30.i, i32 -4
  %47 = ptrtoint ptr %fh.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fh.i, align 4
  %cmp4.not.i = icmp eq ptr %48, %1
  br i1 %cmp4.not.i, label %lor.lhs.false.i, label %for.body.i35.if.then9.i_crit_edge

for.body.i35.if.then9.i_crit_edge:                ; preds = %for.body.i35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9.i

lor.lhs.false.i:                                  ; preds = %for.body.i35
  %flags.i = getelementptr i8, ptr %.pn30.i, i32 -8
  %49 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i, align 8
  %51 = and i32 %50, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %lor.lhs.false.i.for.inc.i36_crit_edge, label %lor.lhs.false.i.if.then9.i_crit_edge

lor.lhs.false.i.if.then9.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9.i

lor.lhs.false.i.for.inc.i36_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i36

if.then9.i:                                       ; preds = %lor.lhs.false.i.if.then9.i_crit_edge, %for.body.i35.if.then9.i_crit_edge
  call void @v4l2_event_queue_fh(ptr noundef %48, ptr noundef nonnull %ev.i) #15
  br label %for.inc.i36

for.inc.i36:                                      ; preds = %if.then9.i, %lor.lhs.false.i.for.inc.i36_crit_edge
  %53 = ptrtoint ptr %.pn30.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn.i = load ptr, ptr %.pn30.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ev_subs.i
  br i1 %cmp.not.i, label %for.inc.i36.uvc_ctrl_send_event.exit_crit_edge, label %for.inc.i36.for.body.i35_crit_edge

for.inc.i36.for.body.i35_crit_edge:               ; preds = %for.inc.i36
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i35

for.inc.i36.uvc_ctrl_send_event.exit_crit_edge:   ; preds = %for.inc.i36
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_send_event.exit

uvc_ctrl_send_event.exit:                         ; preds = %for.inc.i36.uvc_ctrl_send_event.exit_crit_edge, %if.end.i.uvc_ctrl_send_event.exit_crit_edge, %for.end.uvc_ctrl_send_event.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %ev.i) #15
  %54 = ptrtoint ptr %mapping.040 to i32
  call void @__asan_load4_noabort(i32 %54)
  %mapping.0 = load ptr, ptr %mapping.040, align 4
  %cmp.not = icmp eq ptr %mapping.0, %info
  br i1 %cmp.not, label %uvc_ctrl_send_event.exit.for.end16_crit_edge, label %uvc_ctrl_send_event.exit.for.body_crit_edge

uvc_ctrl_send_event.exit.for.body_crit_edge:      ; preds = %uvc_ctrl_send_event.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

uvc_ctrl_send_event.exit.for.end16_crit_edge:     ; preds = %uvc_ctrl_send_event.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end16

for.end16:                                        ; preds = %uvc_ctrl_send_event.exit.for.end16_crit_edge, %entry.for.end16_crit_edge
  call void @mutex_unlock(ptr noundef %ctrl_mutex) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uvc_ctrl_send_slave_event(ptr nocapture noundef readonly %chain, ptr noundef readnone %handle, ptr nocapture noundef readonly %master, i32 noundef %slave_id) unnamed_addr #0 align 64 {
entry:
  %v4l2_ctrl.i.i = alloca %struct.v4l2_queryctrl, align 4
  %ev.i = alloca %struct.v4l2_event, align 8
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #15
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %1 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %master, align 4
  %cmp.i = icmp eq ptr %2, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %for.cond.preheader.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader.i:                             ; preds = %entry
  %ncontrols.i = getelementptr inbounds %struct.uvc_entity, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %ncontrols.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ncontrols.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp160.not.i = icmp eq i32 %4, 0
  br i1 %cmp160.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %controls.i = getelementptr inbounds %struct.uvc_entity, ptr %2, i32 0, i32 18
  %5 = ptrtoint ptr %controls.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %controls.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc30.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.061.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc30.i.for.body.i_crit_edge ]
  %initialized.i = getelementptr %struct.uvc_control, ptr %6, i32 %i.061.i, i32 3
  %7 = ptrtoint ptr %initialized.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %initialized.i, align 1
  %8 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc30.i_crit_edge, label %if.end3.i

for.body.i.for.inc30.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc30.i

if.end3.i:                                        ; preds = %for.body.i
  %info.i = getelementptr %struct.uvc_control, ptr %6, i32 %i.061.i, i32 1
  %9 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %map.057.i = load ptr, ptr %info.i, align 4
  %cmp8.not58.i = icmp eq ptr %map.057.i, %info.i
  br i1 %cmp8.not58.i, label %if.end3.i.for.inc30.i_crit_edge, label %if.end3.i.for.body9.i_crit_edge

if.end3.i.for.body9.i_crit_edge:                  ; preds = %if.end3.i
  br label %for.body9.i

if.end3.i.for.inc30.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc30.i

for.body9.i:                                      ; preds = %for.inc.i.for.body9.i_crit_edge, %if.end3.i.for.body9.i_crit_edge
  %map.059.i = phi ptr [ %map.0.i, %for.inc.i.for.body9.i_crit_edge ], [ %map.057.i, %if.end3.i.for.body9.i_crit_edge ]
  %id.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %map.059.i, i32 0, i32 2
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %slave_id)
  %cmp10.i = icmp eq i32 %11, %slave_id
  br i1 %cmp10.i, label %__uvc_find_control.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body9.i
  %12 = ptrtoint ptr %map.059.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %map.0.i = load ptr, ptr %map.059.i, align 4
  %cmp8.not.i = icmp eq ptr %map.0.i, %info.i
  br i1 %cmp8.not.i, label %for.inc.i.for.inc30.i_crit_edge, label %for.inc.i.for.body9.i_crit_edge

for.inc.i.for.body9.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body9.i

for.inc.i.for.inc30.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %for.inc.i.for.inc30.i_crit_edge, %if.end3.i.for.inc30.i_crit_edge, %for.body.i.for.inc30.i_crit_edge
  %inc.i = add nuw i32 %i.061.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %4
  br i1 %exitcond.not, label %for.inc30.i.cleanup_crit_edge, label %for.inc30.i.for.body.i_crit_edge

for.inc30.i.for.body.i_crit_edge:                 ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc30.i.cleanup_crit_edge:                    ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

__uvc_find_control.exit:                          ; preds = %for.body9.i
  %arrayidx.i.le = getelementptr %struct.uvc_control, ptr %6, i32 %i.061.i
  %cmp = icmp eq ptr %arrayidx.i.le, null
  br i1 %cmp, label %__uvc_find_control.exit.cleanup_crit_edge, label %if.end

__uvc_find_control.exit.cleanup_crit_edge:        ; preds = %__uvc_find_control.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %__uvc_find_control.exit
  %call = call fastcc i32 @__uvc_ctrl_get(ptr noundef %chain, ptr noundef nonnull %arrayidx.i.le, ptr noundef %map.059.i, ptr noundef nonnull %val)
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %ev.i) #15
  %ev_subs.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %map.059.i, i32 0, i32 1
  %15 = ptrtoint ptr %ev_subs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %ev_subs.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %ev_subs.i
  br i1 %cmp.i.not.i, label %if.end.uvc_ctrl_send_event.exit_crit_edge, label %if.end.i

if.end.uvc_ctrl_send_event.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_send_event.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp eq i32 %call, 0
  %spec.select = select i1 %cmp1, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %v4l2_ctrl.i.i) #15
  %17 = call ptr @memset(ptr %v4l2_ctrl.i.i, i32 255, i32 68)
  %call.i.i = call fastcc i32 @__uvc_query_v4l2_ctrl(ptr noundef %chain, ptr noundef nonnull %arrayidx.i.le, ptr noundef %map.059.i, ptr noundef nonnull %v4l2_ctrl.i.i) #15
  %18 = call ptr @memset(ptr %ev.i, i32 0, i32 136)
  %19 = ptrtoint ptr %ev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %ev.i, align 8
  %20 = ptrtoint ptr %v4l2_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %v4l2_ctrl.i.i, align 4
  %id1.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i, i32 0, i32 5
  %22 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %id1.i.i, align 8
  %u.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i, i32 0, i32 1
  %23 = getelementptr inbounds %struct.v4l2_event, ptr %ev.i, i32 0, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %14, ptr %23, align 8
  %25 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.select, ptr %u.i.i, align 8
  %type4.i.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %type4.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type4.i.i, align 4
  %type6.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i, i32 0, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %type6.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %type6.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i.i, align 4
  %flags8.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i, i32 0, i32 1, i32 0, i32 3
  %31 = ptrtoint ptr %flags8.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %flags8.i.i, align 8
  %minimum.i.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %minimum.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %minimum.i.i, align 4
  %minimum10.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i, i32 0, i32 1, i32 0, i32 4
  %34 = ptrtoint ptr %minimum10.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %minimum10.i.i, align 4
  %maximum.i.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %maximum.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %maximum.i.i, align 4
  %maximum12.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i, i32 0, i32 1, i32 0, i32 5
  %37 = ptrtoint ptr %maximum12.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %maximum12.i.i, align 8
  %step.i.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %step.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %step.i.i, align 4
  %step14.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i, i32 0, i32 1, i32 0, i32 6
  %40 = ptrtoint ptr %step14.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %step14.i.i, align 4
  %default_value.i.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i.i, i32 0, i32 6
  %41 = ptrtoint ptr %default_value.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %default_value.i.i, align 4
  %default_value16.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i, i32 0, i32 1, i32 0, i32 7
  %43 = ptrtoint ptr %default_value16.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %default_value16.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %v4l2_ctrl.i.i) #15
  %44 = ptrtoint ptr %ev_subs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn28.i = load ptr, ptr %ev_subs.i, align 4
  %cmp.not29.i = icmp eq ptr %.pn28.i, %ev_subs.i
  br i1 %cmp.not29.i, label %if.end.i.uvc_ctrl_send_event.exit_crit_edge, label %if.end.i.for.body.i9_crit_edge

if.end.i.for.body.i9_crit_edge:                   ; preds = %if.end.i
  br label %for.body.i9

if.end.i.uvc_ctrl_send_event.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_send_event.exit

for.body.i9:                                      ; preds = %for.body.i9.for.body.i9_crit_edge, %if.end.i.for.body.i9_crit_edge
  %.pn30.i = phi ptr [ %.pn.i, %for.body.i9.for.body.i9_crit_edge ], [ %.pn28.i, %if.end.i.for.body.i9_crit_edge ]
  %fh.i = getelementptr i8, ptr %.pn30.i, i32 -4
  %45 = ptrtoint ptr %fh.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fh.i, align 4
  call void @v4l2_event_queue_fh(ptr noundef %46, ptr noundef nonnull %ev.i) #15
  %47 = ptrtoint ptr %.pn30.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn.i = load ptr, ptr %.pn30.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ev_subs.i
  br i1 %cmp.not.i, label %for.body.i9.uvc_ctrl_send_event.exit_crit_edge, label %for.body.i9.for.body.i9_crit_edge

for.body.i9.for.body.i9_crit_edge:                ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i9

for.body.i9.uvc_ctrl_send_event.exit_crit_edge:   ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_send_event.exit

uvc_ctrl_send_event.exit:                         ; preds = %for.body.i9.uvc_ctrl_send_event.exit_crit_edge, %if.end.i.uvc_ctrl_send_event.exit_crit_edge, %if.end.uvc_ctrl_send_event.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %ev.i) #15
  br label %cleanup

cleanup:                                          ; preds = %uvc_ctrl_send_event.exit, %__uvc_find_control.exit.cleanup_crit_edge, %for.inc30.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @uvc_ctrl_status_event_async(ptr noundef %urb, ptr noundef %chain, ptr noundef %ctrl, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %info = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %info, align 4
  %cmp.i = icmp ne ptr %3, %info
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %handle = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 5
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %handle, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %async_ctrl = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 23
  %data2 = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 23, i32 4
  %5 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data, ptr %data2, align 4
  %urb3 = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 23, i32 1
  %6 = ptrtoint ptr %urb3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %urb, ptr %urb3, align 4
  %chain4 = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 23, i32 2
  %7 = ptrtoint ptr %chain4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %chain, ptr %chain4, align 4
  %ctrl5 = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 23, i32 3
  %8 = ptrtoint ptr %ctrl5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ctrl, ptr %ctrl5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %async_ctrl) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_ctrl_add_event(ptr noundef %sev, i32 noundef %elems) #0 align 64 {
entry:
  %v4l2_ctrl.i = alloca %struct.v4l2_queryctrl, align 4
  %mapping = alloca ptr, align 4
  %ev = alloca %struct.v4l2_event, align 8
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fh = getelementptr inbounds %struct.v4l2_subscribed_event, ptr %sev, i32 0, i32 4
  %0 = ptrtoint ptr %fh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapping) #15
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %mapping, align 4, !annotation !120
  %chain = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chain, align 4
  %ctrl_mutex = getelementptr inbounds %struct.uvc_video_chain, ptr %4, i32 0, i32 5
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ctrl_mutex, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chain, align 4
  %id = getelementptr inbounds %struct.v4l2_subscribed_event, ptr %sev, i32 0, i32 2
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not.i = icmp sgt i32 %8, -1
  %and1.i = and i32 %8, 268435455
  %ctrl_class_bitmap.i = getelementptr inbounds %struct.uvc_video_chain, ptr %6, i32 0, i32 8
  %9 = ptrtoint ptr %ctrl_class_bitmap.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl_class_bitmap.i, align 4
  %conv.i = zext i8 %10 to i32
  %and2.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %for.inc.i, label %if.end.i

if.end.i:                                         ; preds = %if.end
  br i1 %tobool.not.i, label %if.then5.i, label %if.end.i.if.end5_crit_edge

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10092545, i32 %and1.i)
  %cmp6.i = icmp eq i32 %and1.i, 10092545
  br i1 %cmp6.i, label %if.then5.i.done_crit_edge, label %for.inc.thread34.i

if.then5.i.done_crit_edge:                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

for.inc.i:                                        ; preds = %if.end
  %and2.1.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.1.i)
  %tobool3.not.1.i = icmp ne i32 %and2.1.i, 0
  %brmerge.not = select i1 %tobool3.not.1.i, i1 %tobool.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 9961473, i32 %and1.i)
  %cmp6.1.old.i = icmp eq i32 %and1.i, 9961473
  %or.cond = select i1 %brmerge.not, i1 %cmp6.1.old.i, i1 false
  br i1 %or.cond, label %for.inc.i.done_crit_edge, label %for.inc.i.if.end5_crit_edge

for.inc.i.if.end5_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

for.inc.i.done_crit_edge:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

for.inc.thread34.i:                               ; preds = %if.then5.i
  %and2.135.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.135.i)
  %tobool3.not.136.i = icmp ne i32 %and2.135.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9961473, i32 %and1.i)
  %cmp6.1.i = icmp eq i32 %and1.i, 9961473
  %or.cond38.i = and i1 %cmp6.1.i, %tobool3.not.136.i
  br i1 %or.cond38.i, label %for.inc.thread34.i.done_crit_edge, label %for.inc.thread34.i.if.end5_crit_edge

for.inc.thread34.i.if.end5_crit_edge:             ; preds = %for.inc.thread34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

for.inc.thread34.i.done_crit_edge:                ; preds = %for.inc.thread34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end5:                                          ; preds = %for.inc.thread34.i.if.end5_crit_edge, %for.inc.i.if.end5_crit_edge, %if.end.i.if.end5_crit_edge
  %call8 = call fastcc ptr @uvc_find_control(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %mapping)
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %if.end5.done_crit_edge, label %if.end11

if.end5.done_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end11:                                         ; preds = %if.end5
  %node = getelementptr inbounds %struct.v4l2_subscribed_event, ptr %sev, i32 0, i32 5
  %11 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mapping, align 4
  %ev_subs = getelementptr inbounds %struct.uvc_control_mapping, ptr %12, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %12, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %14, ptr noundef %ev_subs) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end11.list_add_tail.exit_crit_edge

if.end11.list_add_tail.exit_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %node, ptr %prev.i, align 4
  %16 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ev_subs, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.v4l2_subscribed_event, ptr %sev, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %node, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end11.list_add_tail.exit_crit_edge
  %flags = getelementptr inbounds %struct.v4l2_subscribed_event, ptr %sev, i32 0, i32 3
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 8
  %and = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %list_add_tail.exit.done_crit_edge, label %if.then12

list_add_tail.exit.done_crit_edge:                ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.then12:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %ev) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #15
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %val, align 4
  %22 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chain, align 4
  %call14 = call fastcc i32 @__uvc_ctrl_get(ptr noundef %23, ptr noundef nonnull %call8, ptr noundef %12, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  %spec.select = select i1 %cmp15, i32 3, i32 2
  %24 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chain, align 4
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %v4l2_ctrl.i) #15
  %28 = call ptr @memset(ptr %v4l2_ctrl.i, i32 255, i32 68)
  %call.i = call fastcc i32 @__uvc_query_v4l2_ctrl(ptr noundef %25, ptr noundef nonnull %call8, ptr noundef %12, ptr noundef nonnull %v4l2_ctrl.i) #15
  %29 = call ptr @memset(ptr %ev, i32 0, i32 136)
  %30 = ptrtoint ptr %ev to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %ev, align 8
  %31 = ptrtoint ptr %v4l2_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %v4l2_ctrl.i, align 4
  %id1.i = getelementptr inbounds %struct.v4l2_event, ptr %ev, i32 0, i32 5
  %33 = ptrtoint ptr %id1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %id1.i, align 8
  %u.i = getelementptr inbounds %struct.v4l2_event, ptr %ev, i32 0, i32 1
  %34 = getelementptr inbounds %struct.v4l2_event, ptr %ev, i32 0, i32 1, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %27, ptr %34, align 8
  %36 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.select, ptr %u.i, align 8
  %type4.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i, i32 0, i32 1
  %37 = ptrtoint ptr %type4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type4.i, align 4
  %type6.i = getelementptr inbounds %struct.v4l2_event, ptr %ev, i32 0, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %type6.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %type6.i, align 4
  %flags.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i, i32 0, i32 7
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i, align 4
  %flags8.i = getelementptr inbounds %struct.v4l2_event, ptr %ev, i32 0, i32 1, i32 0, i32 3
  %42 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %flags8.i, align 8
  %minimum.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i, i32 0, i32 3
  %43 = ptrtoint ptr %minimum.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %minimum.i, align 4
  %minimum10.i = getelementptr inbounds %struct.v4l2_event, ptr %ev, i32 0, i32 1, i32 0, i32 4
  %45 = ptrtoint ptr %minimum10.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %minimum10.i, align 4
  %maximum.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i, i32 0, i32 4
  %46 = ptrtoint ptr %maximum.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %maximum.i, align 4
  %maximum12.i = getelementptr inbounds %struct.v4l2_event, ptr %ev, i32 0, i32 1, i32 0, i32 5
  %48 = ptrtoint ptr %maximum12.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %maximum12.i, align 8
  %step.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i, i32 0, i32 5
  %49 = ptrtoint ptr %step.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %step.i, align 4
  %step14.i = getelementptr inbounds %struct.v4l2_event, ptr %ev, i32 0, i32 1, i32 0, i32 6
  %51 = ptrtoint ptr %step14.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %step14.i, align 4
  %default_value.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i, i32 0, i32 6
  %52 = ptrtoint ptr %default_value.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %default_value.i, align 4
  %default_value16.i = getelementptr inbounds %struct.v4l2_event, ptr %ev, i32 0, i32 1, i32 0, i32 7
  %54 = ptrtoint ptr %default_value16.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %default_value16.i, align 8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %v4l2_ctrl.i) #15
  %elems19 = getelementptr inbounds %struct.v4l2_subscribed_event, ptr %sev, i32 0, i32 7
  %55 = ptrtoint ptr %elems19 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %elems, ptr %elems19, align 4
  %56 = ptrtoint ptr %fh to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fh, align 4
  call void @v4l2_event_queue_fh(ptr noundef %57, ptr noundef nonnull %ev) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #15
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %ev) #15
  br label %done

done:                                             ; preds = %if.then12, %list_add_tail.exit.done_crit_edge, %if.end5.done_crit_edge, %for.inc.thread34.i.done_crit_edge, %for.inc.i.done_crit_edge, %if.then5.i.done_crit_edge
  %ret.0 = phi i32 [ %call, %if.then12 ], [ %call, %list_add_tail.exit.done_crit_edge ], [ -22, %if.end5.done_crit_edge ], [ 0, %if.then5.i.done_crit_edge ], [ 0, %for.inc.thread34.i.done_crit_edge ], [ 0, %for.inc.i.done_crit_edge ]
  %58 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chain, align 4
  %ctrl_mutex23 = getelementptr inbounds %struct.uvc_video_chain, ptr %59, i32 0, i32 5
  call void @mutex_unlock(ptr noundef %ctrl_mutex23) #15
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ -512, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapping) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_ctrl_del_event(ptr noundef %sev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fh = getelementptr inbounds %struct.v4l2_subscribed_event, ptr %sev, i32 0, i32 4
  %0 = ptrtoint ptr %fh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fh, align 4
  %chain = getelementptr inbounds %struct.uvc_fh, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chain, align 4
  %ctrl_mutex = getelementptr inbounds %struct.uvc_video_chain, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %ctrl_mutex, i32 noundef 0) #15
  %4 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chain, align 4
  %id = getelementptr inbounds %struct.v4l2_subscribed_event, ptr %sev, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool.not.i = icmp sgt i32 %7, -1
  %and1.i = and i32 %7, 268435455
  %ctrl_class_bitmap.i = getelementptr inbounds %struct.uvc_video_chain, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %ctrl_class_bitmap.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrl_class_bitmap.i, align 4
  %conv.i = zext i8 %9 to i32
  %and2.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %for.inc.i, label %if.end.i

if.end.i:                                         ; preds = %entry
  br i1 %tobool.not.i, label %if.then5.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10092545, i32 %and1.i)
  %cmp6.i = icmp eq i32 %and1.i, 10092545
  br i1 %cmp6.i, label %if.then5.i.done_crit_edge, label %for.inc.thread34.i

if.then5.i.done_crit_edge:                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

for.inc.i:                                        ; preds = %entry
  %and2.1.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.1.i)
  %tobool3.not.1.i = icmp ne i32 %and2.1.i, 0
  %brmerge.not = select i1 %tobool3.not.1.i, i1 %tobool.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 9961473, i32 %and1.i)
  %cmp6.1.old.i = icmp eq i32 %and1.i, 9961473
  %or.cond = select i1 %brmerge.not, i1 %cmp6.1.old.i, i1 false
  br i1 %or.cond, label %for.inc.i.done_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.i.done_crit_edge:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

for.inc.thread34.i:                               ; preds = %if.then5.i
  %and2.135.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.135.i)
  %tobool3.not.136.i = icmp ne i32 %and2.135.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9961473, i32 %and1.i)
  %cmp6.1.i = icmp eq i32 %and1.i, 9961473
  %or.cond38.i = and i1 %cmp6.1.i, %tobool3.not.136.i
  br i1 %or.cond38.i, label %for.inc.thread34.i.done_crit_edge, label %for.inc.thread34.i.if.end_crit_edge

for.inc.thread34.i.if.end_crit_edge:              ; preds = %for.inc.thread34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.thread34.i.done_crit_edge:                ; preds = %for.inc.thread34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end:                                           ; preds = %for.inc.thread34.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %node = getelementptr inbounds %struct.v4l2_subscribed_event, ptr %sev, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.v4l2_subscribed_event, ptr %sev, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %16 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.v4l2_subscribed_event, ptr %sev, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %done

done:                                             ; preds = %list_del.exit, %for.inc.thread34.i.done_crit_edge, %for.inc.i.done_crit_edge, %if.then5.i.done_crit_edge
  %18 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chain, align 4
  %ctrl_mutex3 = getelementptr inbounds %struct.uvc_video_chain, ptr %19, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %ctrl_mutex3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_replace(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_merge(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_ctrl_begin(ptr noundef %chain) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_mutex = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 5
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ctrl_mutex, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i32 0, i32 -512
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__uvc_ctrl_commit(ptr noundef %handle, i32 noundef %rollback, ptr noundef %ctrls) local_unnamed_addr #0 align 64 {
entry:
  %v4l2_ctrl.i.i.i = alloca %struct.v4l2_queryctrl, align 4
  %ev.i.i = alloca %struct.v4l2_event, align 8
  %mapping.i = alloca ptr, align 4
  %err_ctrl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %chain1 = getelementptr inbounds %struct.uvc_fh, ptr %handle, i32 0, i32 1
  %0 = ptrtoint ptr %chain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err_ctrl) #15
  %2 = ptrtoint ptr %err_ctrl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %err_ctrl, align 4, !annotation !120
  %entities = getelementptr inbounds %struct.uvc_video_chain, ptr %1, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %entities, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %3 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %entities
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %entity.0 = getelementptr i8, ptr %.pn, i32 -8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call = call fastcc i32 @uvc_ctrl_commit_entity(ptr noundef %5, ptr noundef %entity.0, i32 noundef %rollback, ptr noundef nonnull %err_ctrl)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %done, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rollback)
  %tobool.not = icmp eq i32 %rollback, 0
  br i1 %tobool.not, label %if.then10, label %for.end.if.end16_crit_edge

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then10:                                        ; preds = %for.end
  %controls = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctrls, i32 0, i32 5
  %6 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %controls, align 4
  %count = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctrls, i32 0, i32 1
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapping.i) #15
  %10 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %mapping.i, align 4, !annotation !120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp66.not.i = icmp eq i32 %9, 0
  br i1 %cmp66.not.i, label %if.then10.uvc_ctrl_send_events.exit_crit_edge, label %for.body.lr.ph.i

if.then10.uvc_ctrl_send_events.exit_crit_edge:    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_send_events.exit

for.body.lr.ph.i:                                 ; preds = %if.then10
  %id1.i.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i.i, i32 0, i32 5
  %u.i.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.v4l2_event, ptr %ev.i.i, i32 0, i32 1, i32 0, i32 2
  %type4.i.i.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i.i.i, i32 0, i32 1
  %type6.i.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i.i, i32 0, i32 1, i32 0, i32 1
  %flags.i.i.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i.i.i, i32 0, i32 7
  %flags8.i.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i.i, i32 0, i32 1, i32 0, i32 3
  %minimum.i.i.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i.i.i, i32 0, i32 3
  %minimum10.i.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i.i, i32 0, i32 1, i32 0, i32 4
  %maximum.i.i.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i.i.i, i32 0, i32 4
  %maximum12.i.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i.i, i32 0, i32 1, i32 0, i32 5
  %step.i.i.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i.i.i, i32 0, i32 5
  %step14.i.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i.i, i32 0, i32 1, i32 0, i32 6
  %default_value.i.i.i = getelementptr inbounds %struct.v4l2_queryctrl, ptr %v4l2_ctrl.i.i.i, i32 0, i32 6
  %default_value16.i.i.i = getelementptr inbounds %struct.v4l2_event, ptr %ev.i.i, i32 0, i32 1, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc19.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.068.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc20.i, %for.inc19.i.for.body.i_crit_edge ]
  %changes.067.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %changes.2.i, %for.inc19.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %chain1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chain1, align 4
  %arrayidx.i = getelementptr %struct.v4l2_ext_control, ptr %7, i32 %i.068.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %arrayidx.i, align 1
  %call.i = call fastcc ptr @uvc_find_control(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %mapping.i) #15
  %flags.i = getelementptr inbounds %struct.uvc_control, ptr %call.i, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.cond1.preheader.i, label %for.body.i.for.inc19.i_crit_edge

for.body.i.for.inc19.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc19.i

for.cond1.preheader.i:                            ; preds = %for.body.i
  %18 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mapping.i, align 4
  %arrayidx4.i = getelementptr %struct.uvc_control_mapping, ptr %19, i32 0, i32 14, i32 0
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool5.not.i = icmp eq i32 %21, 0
  br i1 %tobool5.not.i, label %for.cond1.preheader.i.for.end.i_crit_edge, label %for.body.i.preheader.i

for.cond1.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i.preheader.i:                           ; preds = %for.cond1.preheader.i
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %7, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %21)
  %cmp2.i58.i = icmp eq i32 %23, %21
  br i1 %cmp2.i58.i, label %for.body.i.preheader.i.for.inc.i_crit_edge, label %for.body.i.preheader.i.for.cond.i.i_crit_edge

for.body.i.preheader.i.for.cond.i.i_crit_edge:    ; preds = %for.body.i.preheader.i
  br label %for.cond.i.i

for.body.i.preheader.i.for.inc.i_crit_edge:       ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.preheader.i.for.cond.i.i_crit_edge
  %i.06.i59.i = phi i32 [ %inc.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.for.cond.i.i_crit_edge ]
  %inc.i.i = add nuw i32 %i.06.i59.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %9)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %9
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.end10.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.end10.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %arrayidx.i.i = getelementptr %struct.v4l2_ext_control, ptr %7, i32 %inc.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %arrayidx.i.i, align 1
  %cmp2.i.i = icmp eq i32 %25, %21
  br i1 %cmp2.i.i, label %uvc_ctrl_xctrls_has_control.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i

uvc_ctrl_xctrls_has_control.exit.i:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %9)
  %cmp.i.le.i = icmp ult i32 %inc.i.i, %9
  br i1 %cmp.i.le.i, label %uvc_ctrl_xctrls_has_control.exit.i.for.inc.i_crit_edge, label %uvc_ctrl_xctrls_has_control.exit.i.if.end10.i_crit_edge

uvc_ctrl_xctrls_has_control.exit.i.if.end10.i_crit_edge: ; preds = %uvc_ctrl_xctrls_has_control.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

uvc_ctrl_xctrls_has_control.exit.i.for.inc.i_crit_edge: ; preds = %uvc_ctrl_xctrls_has_control.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end10.i:                                       ; preds = %uvc_ctrl_xctrls_has_control.exit.i.if.end10.i_crit_edge, %for.cond.i.i.if.end10.i_crit_edge
  %26 = ptrtoint ptr %chain1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chain1, align 4
  call fastcc void @uvc_ctrl_send_slave_event(ptr noundef %27, ptr noundef %handle, ptr noundef %call.i, i32 noundef %21) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i, %uvc_ctrl_xctrls_has_control.exit.i.for.inc.i_crit_edge, %for.body.i.preheader.i.for.inc.i_crit_edge
  %arrayidx4.1.i = getelementptr %struct.uvc_control_mapping, ptr %19, i32 0, i32 14, i32 1
  %28 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx4.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool5.not.1.i = icmp eq i32 %29, 0
  br i1 %tobool5.not.1.i, label %for.inc.i.for.end.i_crit_edge, label %for.body.i.preheader.1.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i.preheader.1.i:                         ; preds = %for.inc.i
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %7, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp2.i58.1.i = icmp eq i32 %31, %29
  br i1 %cmp2.i58.1.i, label %for.body.i.preheader.1.i.for.end.i_crit_edge, label %for.body.i.preheader.1.i.for.cond.i.1.i_crit_edge

for.body.i.preheader.1.i.for.cond.i.1.i_crit_edge: ; preds = %for.body.i.preheader.1.i
  br label %for.cond.i.1.i

for.body.i.preheader.1.i.for.end.i_crit_edge:     ; preds = %for.body.i.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.cond.i.1.i:                                   ; preds = %for.body.i.1.i.for.cond.i.1.i_crit_edge, %for.body.i.preheader.1.i.for.cond.i.1.i_crit_edge
  %i.06.i59.1.i = phi i32 [ %inc.i.1.i, %for.body.i.1.i.for.cond.i.1.i_crit_edge ], [ 0, %for.body.i.preheader.1.i.for.cond.i.1.i_crit_edge ]
  %inc.i.1.i = add nuw i32 %i.06.i59.1.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.1.i, i32 %9)
  %exitcond.not.i.1.i = icmp eq i32 %inc.i.1.i, %9
  br i1 %exitcond.not.i.1.i, label %for.cond.i.1.i.if.end10.1.i_crit_edge, label %for.body.i.1.i

for.cond.i.1.i.if.end10.1.i_crit_edge:            ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.1.i

for.body.i.1.i:                                   ; preds = %for.cond.i.1.i
  %arrayidx.i.1.i = getelementptr %struct.v4l2_ext_control, ptr %7, i32 %inc.i.1.i
  %32 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %arrayidx.i.1.i, align 1
  %cmp2.i.1.i = icmp eq i32 %33, %29
  br i1 %cmp2.i.1.i, label %uvc_ctrl_xctrls_has_control.exit.1.i, label %for.body.i.1.i.for.cond.i.1.i_crit_edge

for.body.i.1.i.for.cond.i.1.i_crit_edge:          ; preds = %for.body.i.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.1.i

uvc_ctrl_xctrls_has_control.exit.1.i:             ; preds = %for.body.i.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.1.i, i32 %9)
  %cmp.i.1.le.i = icmp ult i32 %inc.i.1.i, %9
  br i1 %cmp.i.1.le.i, label %uvc_ctrl_xctrls_has_control.exit.1.i.for.end.i_crit_edge, label %uvc_ctrl_xctrls_has_control.exit.1.i.if.end10.1.i_crit_edge

uvc_ctrl_xctrls_has_control.exit.1.i.if.end10.1.i_crit_edge: ; preds = %uvc_ctrl_xctrls_has_control.exit.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.1.i

uvc_ctrl_xctrls_has_control.exit.1.i.for.end.i_crit_edge: ; preds = %uvc_ctrl_xctrls_has_control.exit.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

if.end10.1.i:                                     ; preds = %uvc_ctrl_xctrls_has_control.exit.1.i.if.end10.1.i_crit_edge, %for.cond.i.1.i.if.end10.1.i_crit_edge
  %34 = ptrtoint ptr %chain1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chain1, align 4
  call fastcc void @uvc_ctrl_send_slave_event(ptr noundef %35, ptr noundef %handle, ptr noundef %call.i, i32 noundef %29) #15
  br label %for.end.i

for.end.i:                                        ; preds = %if.end10.1.i, %uvc_ctrl_xctrls_has_control.exit.1.i.for.end.i_crit_edge, %for.body.i.preheader.1.i.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %for.cond1.preheader.i.for.end.i_crit_edge
  %master_id.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %19, i32 0, i32 12
  %36 = ptrtoint ptr %master_id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %master_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool12.not.i = icmp eq i32 %37, 0
  br i1 %tobool12.not.i, label %for.end.i.if.end16.i_crit_edge, label %for.body.i51.preheader.i

for.end.i.if.end16.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i

for.body.i51.preheader.i:                         ; preds = %for.end.i
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %7, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %37)
  %cmp2.i5062.i = icmp eq i32 %39, %37
  br i1 %cmp2.i5062.i, label %for.body.i51.preheader.i.uvc_ctrl_xctrls_has_control.exit53.thread.i_crit_edge, label %for.body.i51.preheader.i.for.cond.i46.i_crit_edge

for.body.i51.preheader.i.for.cond.i46.i_crit_edge: ; preds = %for.body.i51.preheader.i
  br label %for.cond.i46.i

for.body.i51.preheader.i.uvc_ctrl_xctrls_has_control.exit53.thread.i_crit_edge: ; preds = %for.body.i51.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_xctrls_has_control.exit53.thread.i

for.cond.i46.i:                                   ; preds = %for.body.i51.i.for.cond.i46.i_crit_edge, %for.body.i51.preheader.i.for.cond.i46.i_crit_edge
  %i.06.i4863.i = phi i32 [ %inc.i43.i, %for.body.i51.i.for.cond.i46.i_crit_edge ], [ 0, %for.body.i51.preheader.i.for.cond.i46.i_crit_edge ]
  %inc.i43.i = add nuw i32 %i.06.i4863.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i43.i, i32 %9)
  %exitcond.not.i45.i = icmp eq i32 %inc.i43.i, %9
  br i1 %exitcond.not.i45.i, label %for.cond.i46.i.if.end16.i_crit_edge, label %for.body.i51.i

for.cond.i46.i.if.end16.i_crit_edge:              ; preds = %for.cond.i46.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i

for.body.i51.i:                                   ; preds = %for.cond.i46.i
  %arrayidx.i49.i = getelementptr %struct.v4l2_ext_control, ptr %7, i32 %inc.i43.i
  %40 = ptrtoint ptr %arrayidx.i49.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %arrayidx.i49.i, align 1
  %cmp2.i50.i = icmp eq i32 %41, %37
  br i1 %cmp2.i50.i, label %uvc_ctrl_xctrls_has_control.exit53.i, label %for.body.i51.i.for.cond.i46.i_crit_edge

for.body.i51.i.for.cond.i46.i_crit_edge:          ; preds = %for.body.i51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i46.i

uvc_ctrl_xctrls_has_control.exit53.i:             ; preds = %for.body.i51.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i43.i, i32 %9)
  %cmp.i44.le.i = icmp ult i32 %inc.i43.i, %9
  br i1 %cmp.i44.le.i, label %uvc_ctrl_xctrls_has_control.exit53.i.uvc_ctrl_xctrls_has_control.exit53.thread.i_crit_edge, label %uvc_ctrl_xctrls_has_control.exit53.i.if.end16.i_crit_edge

uvc_ctrl_xctrls_has_control.exit53.i.if.end16.i_crit_edge: ; preds = %uvc_ctrl_xctrls_has_control.exit53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i

uvc_ctrl_xctrls_has_control.exit53.i.uvc_ctrl_xctrls_has_control.exit53.thread.i_crit_edge: ; preds = %uvc_ctrl_xctrls_has_control.exit53.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_xctrls_has_control.exit53.thread.i

uvc_ctrl_xctrls_has_control.exit53.thread.i:      ; preds = %uvc_ctrl_xctrls_has_control.exit53.i.uvc_ctrl_xctrls_has_control.exit53.thread.i_crit_edge, %for.body.i51.preheader.i.uvc_ctrl_xctrls_has_control.exit53.thread.i_crit_edge
  %or72.i = or i32 %changes.067.i, 2
  br label %if.end16.i

if.end16.i:                                       ; preds = %uvc_ctrl_xctrls_has_control.exit53.thread.i, %uvc_ctrl_xctrls_has_control.exit53.i.if.end16.i_crit_edge, %for.cond.i46.i.if.end16.i_crit_edge, %for.end.i.if.end16.i_crit_edge
  %changes.1.i = phi i32 [ %changes.067.i, %for.end.i.if.end16.i_crit_edge ], [ %or72.i, %uvc_ctrl_xctrls_has_control.exit53.thread.i ], [ %changes.067.i, %uvc_ctrl_xctrls_has_control.exit53.i.if.end16.i_crit_edge ], [ %changes.067.i, %for.cond.i46.i.if.end16.i_crit_edge ]
  %42 = ptrtoint ptr %chain1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chain1, align 4
  %44 = getelementptr %struct.v4l2_ext_control, ptr %7, i32 %i.068.i, i32 3
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %ev.i.i) #15
  %ev_subs.i.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %19, i32 0, i32 1
  %47 = ptrtoint ptr %ev_subs.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %ev_subs.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %48, %ev_subs.i.i
  br i1 %cmp.i.not.i.i, label %if.end16.i.uvc_ctrl_send_event.exit.i_crit_edge, label %if.end.i.i

if.end16.i.uvc_ctrl_send_event.exit.i_crit_edge:  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_send_event.exit.i

if.end.i.i:                                       ; preds = %if.end16.i
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %v4l2_ctrl.i.i.i) #15
  %49 = call ptr @memset(ptr %v4l2_ctrl.i.i.i, i32 255, i32 68)
  %call.i.i.i = call fastcc i32 @__uvc_query_v4l2_ctrl(ptr noundef %43, ptr noundef %call.i, ptr noundef %19, ptr noundef nonnull %v4l2_ctrl.i.i.i) #15
  %50 = call ptr @memset(ptr %ev.i.i, i32 0, i32 136)
  %51 = ptrtoint ptr %ev.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3, ptr %ev.i.i, align 8
  %52 = ptrtoint ptr %v4l2_ctrl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %v4l2_ctrl.i.i.i, align 4
  %54 = ptrtoint ptr %id1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %id1.i.i.i, align 8
  %55 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %46, ptr %11, align 8
  %56 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %changes.1.i, ptr %u.i.i.i, align 8
  %57 = ptrtoint ptr %type4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %type4.i.i.i, align 4
  %59 = ptrtoint ptr %type6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %type6.i.i.i, align 4
  %60 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags.i.i.i, align 4
  %62 = ptrtoint ptr %flags8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %flags8.i.i.i, align 8
  %63 = ptrtoint ptr %minimum.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %minimum.i.i.i, align 4
  %65 = ptrtoint ptr %minimum10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %minimum10.i.i.i, align 4
  %66 = ptrtoint ptr %maximum.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %maximum.i.i.i, align 4
  %68 = ptrtoint ptr %maximum12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %maximum12.i.i.i, align 8
  %69 = ptrtoint ptr %step.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %step.i.i.i, align 4
  %71 = ptrtoint ptr %step14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %step14.i.i.i, align 4
  %72 = ptrtoint ptr %default_value.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %default_value.i.i.i, align 4
  %74 = ptrtoint ptr %default_value16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %default_value16.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %v4l2_ctrl.i.i.i) #15
  %75 = ptrtoint ptr %ev_subs.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pn28.i.i = load ptr, ptr %ev_subs.i.i, align 4
  %cmp.not29.i.i = icmp eq ptr %.pn28.i.i, %ev_subs.i.i
  br i1 %cmp.not29.i.i, label %if.end.i.i.uvc_ctrl_send_event.exit.i_crit_edge, label %if.end.i.i.for.body.i54.i_crit_edge

if.end.i.i.for.body.i54.i_crit_edge:              ; preds = %if.end.i.i
  br label %for.body.i54.i

if.end.i.i.uvc_ctrl_send_event.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_send_event.exit.i

for.body.i54.i:                                   ; preds = %for.inc.i.i.for.body.i54.i_crit_edge, %if.end.i.i.for.body.i54.i_crit_edge
  %.pn30.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i54.i_crit_edge ], [ %.pn28.i.i, %if.end.i.i.for.body.i54.i_crit_edge ]
  %fh.i.i = getelementptr i8, ptr %.pn30.i.i, i32 -4
  %76 = ptrtoint ptr %fh.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fh.i.i, align 4
  %cmp4.not.i.i = icmp eq ptr %77, %handle
  br i1 %cmp4.not.i.i, label %lor.lhs.false.i.i, label %for.body.i54.i.if.then9.i.i_crit_edge

for.body.i54.i.if.then9.i.i_crit_edge:            ; preds = %for.body.i54.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i54.i
  %flags.i.i = getelementptr i8, ptr %.pn30.i.i, i32 -8
  %78 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags.i.i, align 8
  %80 = or i32 %79, %changes.1.i
  %81 = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge, label %lor.lhs.false.i.i.if.then9.i.i_crit_edge

lor.lhs.false.i.i.if.then9.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9.i.i

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.then9.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then9.i.i_crit_edge, %for.body.i54.i.if.then9.i.i_crit_edge
  call void @v4l2_event_queue_fh(ptr noundef %77, ptr noundef nonnull %ev.i.i) #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then9.i.i, %lor.lhs.false.i.i.for.inc.i.i_crit_edge
  %83 = ptrtoint ptr %.pn30.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pn.i.i = load ptr, ptr %.pn30.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ev_subs.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.uvc_ctrl_send_event.exit.i_crit_edge, label %for.inc.i.i.for.body.i54.i_crit_edge

for.inc.i.i.for.body.i54.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i54.i

for.inc.i.i.uvc_ctrl_send_event.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_send_event.exit.i

uvc_ctrl_send_event.exit.i:                       ; preds = %for.inc.i.i.uvc_ctrl_send_event.exit.i_crit_edge, %if.end.i.i.uvc_ctrl_send_event.exit.i_crit_edge, %if.end16.i.uvc_ctrl_send_event.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %ev.i.i) #15
  br label %for.inc19.i

for.inc19.i:                                      ; preds = %uvc_ctrl_send_event.exit.i, %for.body.i.for.inc19.i_crit_edge
  %changes.2.i = phi i32 [ %changes.067.i, %for.body.i.for.inc19.i_crit_edge ], [ %changes.1.i, %uvc_ctrl_send_event.exit.i ]
  %inc20.i = add nuw i32 %i.068.i, 1
  %exitcond.not.i = icmp eq i32 %inc20.i, %9
  br i1 %exitcond.not.i, label %for.inc19.i.uvc_ctrl_send_events.exit_crit_edge, label %for.inc19.i.for.body.i_crit_edge

for.inc19.i.for.body.i_crit_edge:                 ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc19.i.uvc_ctrl_send_events.exit_crit_edge:  ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_send_events.exit

uvc_ctrl_send_events.exit:                        ; preds = %for.inc19.i.uvc_ctrl_send_events.exit_crit_edge, %if.then10.uvc_ctrl_send_events.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapping.i) #15
  br label %if.end16

done:                                             ; preds = %for.body
  %tobool13.not = icmp eq ptr %ctrls, null
  br i1 %tobool13.not, label %done.if.end16_crit_edge, label %if.then14

done.if.end16_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then14:                                        ; preds = %done
  %84 = ptrtoint ptr %err_ctrl to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %err_ctrl, align 4
  %tobool.not.i31 = icmp eq ptr %entity.0, null
  %count.i = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctrls, i32 0, i32 1
  %86 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %count.i, align 4
  br i1 %tobool.not.i31, label %if.then14.uvc_ctrl_find_ctrl_idx.exit_crit_edge, label %for.cond.preheader.i

if.then14.uvc_ctrl_find_ctrl_idx.exit_crit_edge:  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_find_ctrl_idx.exit

for.cond.preheader.i:                             ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp18.not.i = icmp eq i32 %87, 0
  br i1 %cmp18.not.i, label %for.cond.preheader.i.uvc_ctrl_find_ctrl_idx.exit_crit_edge, label %for.cond.preheader.i.lr.ph.i

for.cond.preheader.i.uvc_ctrl_find_ctrl_idx.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_find_ctrl_idx.exit

for.cond.preheader.i.lr.ph.i:                     ; preds = %for.cond.preheader.i
  %controls.i = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctrls, i32 0, i32 5
  %88 = ptrtoint ptr %controls.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %controls.i, align 4
  %ncontrols.i.i = getelementptr i8, ptr %.pn, i32 340
  %90 = ptrtoint ptr %ncontrols.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ncontrols.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp160.not.i.i = icmp eq i32 %91, 0
  %controls.i.i = getelementptr i8, ptr %.pn, i32 344
  br label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %for.inc.i36.for.cond.preheader.i.i_crit_edge, %for.cond.preheader.i.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.cond.preheader.i.lr.ph.i ], [ %inc.i, %for.inc.i36.for.cond.preheader.i.i_crit_edge ]
  %ctrl_found.020.i = phi ptr [ null, %for.cond.preheader.i.lr.ph.i ], [ %ctrl_found.1.i, %for.inc.i36.for.cond.preheader.i.i_crit_edge ]
  %arrayidx.i32 = getelementptr %struct.v4l2_ext_control, ptr %89, i32 %i.021.i
  %92 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %arrayidx.i32, align 1
  br i1 %cmp160.not.i.i, label %for.cond.preheader.i.i.__uvc_find_control.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.__uvc_find_control.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__uvc_find_control.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %94 = ptrtoint ptr %controls.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %controls.i.i, align 4
  br label %for.body.i.i33

for.body.i.i33:                                   ; preds = %for.inc30.i.i.for.body.i.i33_crit_edge, %for.body.lr.ph.i.i
  %i.061.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i34, %for.inc30.i.i.for.body.i.i33_crit_edge ]
  %initialized.i.i = getelementptr %struct.uvc_control, ptr %95, i32 %i.061.i.i, i32 3
  %96 = ptrtoint ptr %initialized.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load.i.i = load i8, ptr %initialized.i.i, align 1
  %97 = and i8 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i.i = icmp eq i8 %97, 0
  br i1 %tobool.not.i.i, label %for.body.i.i33.for.inc30.i.i_crit_edge, label %if.end3.i.i

for.body.i.i33.for.inc30.i.i_crit_edge:           ; preds = %for.body.i.i33
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc30.i.i

if.end3.i.i:                                      ; preds = %for.body.i.i33
  %info.i.i = getelementptr %struct.uvc_control, ptr %95, i32 %i.061.i.i, i32 1
  %98 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %map.057.i.i = load ptr, ptr %info.i.i, align 4
  %cmp8.not58.i.i = icmp eq ptr %map.057.i.i, %info.i.i
  br i1 %cmp8.not58.i.i, label %if.end3.i.i.for.inc30.i.i_crit_edge, label %if.end3.i.i.for.body9.i.i_crit_edge

if.end3.i.i.for.body9.i.i_crit_edge:              ; preds = %if.end3.i.i
  br label %for.body9.i.i

if.end3.i.i.for.inc30.i.i_crit_edge:              ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc30.i.i

for.body9.i.i:                                    ; preds = %if.end13.i.i.for.body9.i.i_crit_edge, %if.end3.i.i.for.body9.i.i_crit_edge
  %map.059.i.i = phi ptr [ %map.0.i.i, %if.end13.i.i.for.body9.i.i_crit_edge ], [ %map.057.i.i, %if.end3.i.i.for.body9.i.i_crit_edge ]
  %id.i.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %map.059.i.i, i32 0, i32 2
  %99 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %93)
  %cmp10.i.i = icmp eq i32 %100, %93
  br i1 %cmp10.i.i, label %__uvc_find_control.exit.loopexit.i, label %if.end13.i.i

if.end13.i.i:                                     ; preds = %for.body9.i.i
  %101 = ptrtoint ptr %map.059.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %map.0.i.i = load ptr, ptr %map.059.i.i, align 4
  %cmp8.not.i.i = icmp eq ptr %map.0.i.i, %info.i.i
  br i1 %cmp8.not.i.i, label %if.end13.i.i.for.inc30.i.i_crit_edge, label %if.end13.i.i.for.body9.i.i_crit_edge

if.end13.i.i.for.body9.i.i_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body9.i.i

if.end13.i.i.for.inc30.i.i_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc30.i.i

for.inc30.i.i:                                    ; preds = %if.end13.i.i.for.inc30.i.i_crit_edge, %if.end3.i.i.for.inc30.i.i_crit_edge, %for.body.i.i33.for.inc30.i.i_crit_edge
  %inc.i.i34 = add nuw i32 %i.061.i.i, 1
  %exitcond.not.i35 = icmp eq i32 %inc.i.i34, %91
  br i1 %exitcond.not.i35, label %for.inc30.i.i.__uvc_find_control.exit.i_crit_edge, label %for.inc30.i.i.for.body.i.i33_crit_edge

for.inc30.i.i.for.body.i.i33_crit_edge:           ; preds = %for.inc30.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i33

for.inc30.i.i.__uvc_find_control.exit.i_crit_edge: ; preds = %for.inc30.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__uvc_find_control.exit.i

__uvc_find_control.exit.loopexit.i:               ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i.le.i = getelementptr %struct.uvc_control, ptr %95, i32 %i.061.i.i
  br label %__uvc_find_control.exit.i

__uvc_find_control.exit.i:                        ; preds = %__uvc_find_control.exit.loopexit.i, %for.inc30.i.i.__uvc_find_control.exit.i_crit_edge, %for.cond.preheader.i.i.__uvc_find_control.exit.i_crit_edge
  %ctrl_found.1.i = phi ptr [ %ctrl_found.020.i, %for.cond.preheader.i.i.__uvc_find_control.exit.i_crit_edge ], [ %arrayidx.i.le.i, %__uvc_find_control.exit.loopexit.i ], [ %ctrl_found.020.i, %for.inc30.i.i.__uvc_find_control.exit.i_crit_edge ]
  %cmp2.i = icmp eq ptr %ctrl_found.1.i, %85
  br i1 %cmp2.i, label %__uvc_find_control.exit.i.uvc_ctrl_find_ctrl_idx.exit_crit_edge, label %for.inc.i36

__uvc_find_control.exit.i.uvc_ctrl_find_ctrl_idx.exit_crit_edge: ; preds = %__uvc_find_control.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_find_ctrl_idx.exit

for.inc.i36:                                      ; preds = %__uvc_find_control.exit.i
  %inc.i = add nuw i32 %i.021.i, 1
  %exitcond26.not.i = icmp eq i32 %inc.i, %87
  br i1 %exitcond26.not.i, label %for.inc.i36.uvc_ctrl_find_ctrl_idx.exit_crit_edge, label %for.inc.i36.for.cond.preheader.i.i_crit_edge

for.inc.i36.for.cond.preheader.i.i_crit_edge:     ; preds = %for.inc.i36
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.preheader.i.i

for.inc.i36.uvc_ctrl_find_ctrl_idx.exit_crit_edge: ; preds = %for.inc.i36
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_find_ctrl_idx.exit

uvc_ctrl_find_ctrl_idx.exit:                      ; preds = %for.inc.i36.uvc_ctrl_find_ctrl_idx.exit_crit_edge, %__uvc_find_control.exit.i.uvc_ctrl_find_ctrl_idx.exit_crit_edge, %for.cond.preheader.i.uvc_ctrl_find_ctrl_idx.exit_crit_edge, %if.then14.uvc_ctrl_find_ctrl_idx.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.cond.preheader.i.uvc_ctrl_find_ctrl_idx.exit_crit_edge ], [ %87, %if.then14.uvc_ctrl_find_ctrl_idx.exit_crit_edge ], [ %87, %for.inc.i36.uvc_ctrl_find_ctrl_idx.exit_crit_edge ], [ %i.021.i, %__uvc_find_control.exit.i.uvc_ctrl_find_ctrl_idx.exit_crit_edge ]
  %error_idx = getelementptr inbounds %struct.v4l2_ext_controls, ptr %ctrls, i32 0, i32 2
  %102 = ptrtoint ptr %error_idx to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %retval.0.i, ptr %error_idx, align 4
  br label %if.end16

if.end16:                                         ; preds = %uvc_ctrl_find_ctrl_idx.exit, %done.if.end16_crit_edge, %uvc_ctrl_send_events.exit, %for.end.if.end16_crit_edge
  %ret.141 = phi i32 [ %call, %uvc_ctrl_find_ctrl_idx.exit ], [ %call, %done.if.end16_crit_edge ], [ 0, %for.end.if.end16_crit_edge ], [ 0, %uvc_ctrl_send_events.exit ]
  %ctrl_mutex = getelementptr inbounds %struct.uvc_video_chain, ptr %1, i32 0, i32 5
  call void @mutex_unlock(ptr noundef %ctrl_mutex) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err_ctrl) #15
  ret i32 %ret.141
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvc_ctrl_commit_entity(ptr noundef %dev, ptr noundef readonly %entity, i32 noundef %rollback, ptr noundef writeonly %err_ctrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %entity, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %ncontrols = getelementptr inbounds %struct.uvc_entity, ptr %entity, i32 0, i32 17
  %0 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ncontrols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp190.not = icmp eq i32 %1, 0
  br i1 %cmp190.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %controls = getelementptr inbounds %struct.uvc_entity, ptr %entity, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rollback)
  %tobool18.not = icmp eq i32 %rollback, 0
  %intfnum = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.091 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controls, align 4
  %arrayidx = getelementptr %struct.uvc_control, ptr %3, i32 %i.091
  %initialized = getelementptr %struct.uvc_control, ptr %3, i32 %i.091, i32 3
  %4 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %initialized, align 1
  %5 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end3:                                          ; preds = %for.body
  %flags = getelementptr %struct.uvc_control, ptr %3, i32 %i.091, i32 1, i32 5
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %8 = and i32 %7, 130
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %.not = icmp eq i32 %8, 2
  br i1 %.not, label %if.end12thread-pre-split, label %if.then9

if.then9:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %bf.clear11 = and i8 %bf.load, -65
  %9 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %bf.clear11, ptr %initialized, align 1
  br label %if.end12

if.end12thread-pre-split:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load13.pr = load i8, ptr %initialized, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.end12thread-pre-split, %if.then9
  %bf.load13 = phi i8 [ %bf.load13.pr, %if.end12thread-pre-split ], [ %bf.clear11, %if.then9 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load13)
  %tobool15.not = icmp sgt i8 %bf.load13, -1
  br i1 %tobool15.not, label %if.end12.for.inc_crit_edge, label %if.end17

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end17:                                         ; preds = %if.end12
  br i1 %tobool18.not, label %if.end25, label %if.end17.if.then30_crit_edge

if.end17.if.then30_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then30

if.end25:                                         ; preds = %if.end17
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %id = getelementptr inbounds %struct.uvc_entity, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %id, align 4
  %conv = trunc i16 %14 to i8
  %15 = ptrtoint ptr %intfnum to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %intfnum, align 8
  %conv21 = trunc i32 %16 to i8
  %selector = getelementptr %struct.uvc_control, ptr %3, i32 %i.091, i32 1, i32 3
  %17 = ptrtoint ptr %selector to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %selector, align 1
  %uvc_data.i = getelementptr %struct.uvc_control, ptr %3, i32 %i.091, i32 4
  %19 = ptrtoint ptr %uvc_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %uvc_data.i, align 4
  %size = getelementptr %struct.uvc_control, ptr %3, i32 %i.091, i32 1, i32 4
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %size, align 2
  %call24 = tail call i32 @uvc_query_ctrl(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext %conv21, i8 noundef zeroext %18, ptr noundef %20, i16 noundef zeroext %22) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp28 = icmp slt i32 %call24, 0
  br i1 %cmp28, label %if.end25.if.then30_crit_edge, label %if.end36

if.end25.if.then30_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then30

if.then30:                                        ; preds = %if.end25.if.then30_crit_edge, %if.end17.if.then30_crit_edge
  %ret.084 = phi i32 [ %call24, %if.end25.if.then30_crit_edge ], [ 0, %if.end17.if.then30_crit_edge ]
  %uvc_data.i73 = getelementptr %struct.uvc_control, ptr %3, i32 %i.091, i32 4
  %23 = ptrtoint ptr %uvc_data.i73 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %uvc_data.i73, align 4
  %size.i74 = getelementptr %struct.uvc_control, ptr %3, i32 %i.091, i32 1, i32 4
  %25 = ptrtoint ptr %size.i74 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %size.i74, align 2
  %conv.i78 = zext i16 %26 to i32
  %add.ptr.i = getelementptr i8, ptr %24, i32 %conv.i78
  %27 = call ptr @memcpy(ptr %24, ptr %add.ptr.i, i32 %conv.i78)
  %28 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load3887 = load i8, ptr %initialized, align 1
  %bf.clear3988 = and i8 %bf.load3887, 127
  store i8 %bf.clear3988, ptr %initialized, align 1
  br i1 %tobool18.not, label %if.then43, label %if.then30.for.inc_crit_edge

if.then30.for.inc_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end36:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load38 = load i8, ptr %initialized, align 1
  %bf.clear39 = and i8 %bf.load38, 127
  store i8 %bf.clear39, ptr %initialized, align 1
  br label %for.inc

if.then43:                                        ; preds = %if.then30
  %tobool44.not = icmp eq ptr %err_ctrl, null
  br i1 %tobool44.not, label %if.then43.cleanup_crit_edge, label %if.then45

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then45:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %err_ctrl to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx, ptr %err_ctrl, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.end36, %if.then30.for.inc_crit_edge, %if.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.091, 1
  %31 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ncontrols, align 4
  %cmp1 = icmp ult i32 %inc, %32
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then45, %if.then43.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.084, %if.then45 ], [ %ret.084, %if.then43.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_ctrl_get(ptr noundef %chain, ptr nocapture noundef %xctrl) local_unnamed_addr #0 align 64 {
entry:
  %mapping = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapping) #15
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mapping, align 4, !annotation !120
  %1 = ptrtoint ptr %xctrl to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %xctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not.i = icmp sgt i32 %2, -1
  %and1.i = and i32 %2, 268435455
  %ctrl_class_bitmap.i = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 8
  %3 = ptrtoint ptr %ctrl_class_bitmap.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ctrl_class_bitmap.i, align 4
  %conv.i = zext i8 %4 to i32
  %and2.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %for.inc.i, label %if.end.i

if.end.i:                                         ; preds = %entry
  br i1 %tobool.not.i, label %if.then5.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10092545, i32 %and1.i)
  %cmp6.i = icmp eq i32 %and1.i, 10092545
  br i1 %cmp6.i, label %if.then5.i.cleanup_crit_edge, label %for.inc.thread34.i

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.i:                                        ; preds = %entry
  %and2.1.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.1.i)
  %tobool3.not.1.i = icmp ne i32 %and2.1.i, 0
  %brmerge.not = select i1 %tobool3.not.1.i, i1 %tobool.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 9961473, i32 %and1.i)
  %cmp6.1.old.i = icmp eq i32 %and1.i, 9961473
  %or.cond = select i1 %brmerge.not, i1 %cmp6.1.old.i, i1 false
  br i1 %or.cond, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.thread34.i:                               ; preds = %if.then5.i
  %and2.135.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.135.i)
  %tobool3.not.136.i = icmp ne i32 %and2.135.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9961473, i32 %and1.i)
  %cmp6.1.i = icmp eq i32 %and1.i, 9961473
  %or.cond38.i = and i1 %cmp6.1.i, %tobool3.not.136.i
  br i1 %or.cond38.i, label %for.inc.thread34.i.cleanup_crit_edge, label %for.inc.thread34.i.if.end_crit_edge

for.inc.thread34.i.if.end_crit_edge:              ; preds = %for.inc.thread34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.thread34.i.cleanup_crit_edge:             ; preds = %for.inc.thread34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %for.inc.thread34.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %call2 = call fastcc ptr @uvc_find_control(ptr noundef %chain, i32 noundef %2, ptr noundef nonnull %mapping)
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mapping, align 4
  %7 = getelementptr inbounds %struct.v4l2_ext_control, ptr %xctrl, i32 0, i32 3
  %call6 = tail call fastcc i32 @__uvc_ctrl_get(ptr noundef %chain, ptr noundef nonnull %call2, ptr noundef %6, ptr noundef %7)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %for.inc.thread34.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.then5.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ -22, %if.end.cleanup_crit_edge ], [ -13, %if.then5.i.cleanup_crit_edge ], [ -13, %for.inc.thread34.i.cleanup_crit_edge ], [ -13, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapping) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__uvc_ctrl_get(ptr nocapture noundef readonly %chain, ptr nocapture noundef %ctrl, ptr noundef %mapping, ptr nocapture noundef writeonly %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %loaded = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 3
  %2 = ptrtoint ptr %loaded to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %loaded, align 1
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then1:                                         ; preds = %if.end
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 4
  %get_cur = getelementptr inbounds %struct.uvc_entity, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %get_cur to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_cur, align 4
  %tobool2.not = icmp eq ptr %7, null
  %8 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chain, align 4
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #17
  %selector = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %selector to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %selector, align 1
  %uvc_data.i = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 4
  %12 = ptrtoint ptr %uvc_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %uvc_data.i, align 4
  %size.i = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %size.i, align 2
  %call9 = tail call i32 %7(ptr noundef %9, ptr noundef %5, i8 noundef zeroext %11, ptr noundef %13, i16 noundef zeroext %15) #15
  br label %if.end20

if.else:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #17
  %id = getelementptr inbounds %struct.uvc_entity, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %id, align 4
  %conv = trunc i16 %17 to i8
  %intfnum = getelementptr inbounds %struct.uvc_device, ptr %9, i32 0, i32 4
  %18 = ptrtoint ptr %intfnum to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %intfnum, align 8
  %conv13 = trunc i32 %19 to i8
  %selector15 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %selector15 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %selector15, align 1
  %uvc_data.i47 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 4
  %22 = ptrtoint ptr %uvc_data.i47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %uvc_data.i47, align 4
  %size.i48 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %size.i48 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %size.i48, align 2
  %call19 = tail call i32 @uvc_query_ctrl(ptr noundef %9, i8 noundef zeroext -127, i8 noundef zeroext %conv, i8 noundef zeroext %conv13, i8 noundef zeroext %21, ptr noundef %23, i16 noundef zeroext %25) #15
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then3
  %ret.0 = phi i32 [ %call9, %if.then3 ], [ %call19, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp21 = icmp slt i32 %ret.0, 0
  br i1 %cmp21, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %loaded to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load26 = load i8, ptr %loaded, align 1
  %bf.set = or i8 %bf.load26, 64
  store i8 %bf.set, ptr %loaded, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.end24, %if.end.if.end28_crit_edge
  %uvc_data.i50 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 4
  %27 = ptrtoint ptr %uvc_data.i50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %uvc_data.i50, align 4
  %get.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 15
  %29 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get.i, align 4
  %call.i = tail call i32 %30(ptr noundef %mapping, i8 noundef zeroext -127, ptr noundef %28) #15
  %v4l2_type.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 8
  %31 = ptrtoint ptr %v4l2_type.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %v4l2_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp.i = icmp eq i32 %32, 3
  br i1 %cmp.i, label %if.then.i, label %if.end28.__uvc_ctrl_get_value.exit_crit_edge

if.end28.__uvc_ctrl_get_value.exit_crit_edge:     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %__uvc_ctrl_get_value.exit

if.then.i:                                        ; preds = %if.end28
  %menu_count.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 11
  %33 = ptrtoint ptr %menu_count.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %menu_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp114.not.i = icmp eq i32 %34, 0
  br i1 %cmp114.not.i, label %if.then.i.__uvc_ctrl_get_value.exit_crit_edge, label %for.body.preheader.i

if.then.i.__uvc_ctrl_get_value.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__uvc_ctrl_get_value.exit

for.body.preheader.i:                             ; preds = %if.then.i
  %menu_info.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 10
  %35 = ptrtoint ptr %menu_info.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %menu_info.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.016.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %menu.015.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %36, %for.body.preheader.i ]
  %37 = ptrtoint ptr %menu.015.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %menu.015.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %call.i)
  %cmp3.i = icmp eq i32 %38, %call.i
  br i1 %cmp3.i, label %for.body.i.__uvc_ctrl_get_value.exit_crit_edge, label %for.inc.i

for.body.i.__uvc_ctrl_get_value.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__uvc_ctrl_get_value.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.016.i, 1
  %incdec.ptr.i = getelementptr %struct.uvc_menu_info, ptr %menu.015.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %34
  br i1 %exitcond.not.i, label %for.inc.i.__uvc_ctrl_get_value.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.__uvc_ctrl_get_value.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__uvc_ctrl_get_value.exit

__uvc_ctrl_get_value.exit:                        ; preds = %for.inc.i.__uvc_ctrl_get_value.exit_crit_edge, %for.body.i.__uvc_ctrl_get_value.exit_crit_edge, %if.then.i.__uvc_ctrl_get_value.exit_crit_edge, %if.end28.__uvc_ctrl_get_value.exit_crit_edge
  %value.1.i = phi i32 [ %call.i, %if.end28.__uvc_ctrl_get_value.exit_crit_edge ], [ %call.i, %if.then.i.__uvc_ctrl_get_value.exit_crit_edge ], [ %call.i, %for.inc.i.__uvc_ctrl_get_value.exit_crit_edge ], [ %i.016.i, %for.body.i.__uvc_ctrl_get_value.exit_crit_edge ]
  %39 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %value.1.i, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %__uvc_ctrl_get_value.exit, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__uvc_ctrl_get_value.exit ], [ -13, %entry.cleanup_crit_edge ], [ %ret.0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_ctrl_set(ptr noundef %handle, ptr nocapture noundef %xctrl) local_unnamed_addr #0 align 64 {
entry:
  %mapping = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %chain1 = getelementptr inbounds %struct.uvc_fh, ptr %handle, i32 0, i32 1
  %0 = ptrtoint ptr %chain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mapping) #15
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %mapping, align 4, !annotation !120
  %3 = ptrtoint ptr %xctrl to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %xctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not.i = icmp sgt i32 %4, -1
  %and1.i = and i32 %4, 268435455
  %ctrl_class_bitmap.i = getelementptr inbounds %struct.uvc_video_chain, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %ctrl_class_bitmap.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ctrl_class_bitmap.i, align 4
  %conv.i = zext i8 %6 to i32
  %and2.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %for.inc.i, label %if.end.i

if.end.i:                                         ; preds = %entry
  br i1 %tobool.not.i, label %if.then5.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10092545, i32 %and1.i)
  %cmp6.i = icmp eq i32 %and1.i, 10092545
  br i1 %cmp6.i, label %if.then5.i.cleanup_crit_edge, label %for.inc.thread34.i

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.i:                                        ; preds = %entry
  %and2.1.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.1.i)
  %tobool3.not.1.i = icmp ne i32 %and2.1.i, 0
  %brmerge.not = select i1 %tobool3.not.1.i, i1 %tobool.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 9961473, i32 %and1.i)
  %cmp6.1.old.i = icmp eq i32 %and1.i, 9961473
  %or.cond283 = select i1 %brmerge.not, i1 %cmp6.1.old.i, i1 false
  br i1 %or.cond283, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.inc.thread34.i:                               ; preds = %if.then5.i
  %and2.135.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.135.i)
  %tobool3.not.136.i = icmp ne i32 %and2.135.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9961473, i32 %and1.i)
  %cmp6.1.i = icmp eq i32 %and1.i, 9961473
  %or.cond38.i = and i1 %cmp6.1.i, %tobool3.not.136.i
  br i1 %or.cond38.i, label %for.inc.thread34.i.cleanup_crit_edge, label %for.inc.thread34.i.if.end_crit_edge

for.inc.thread34.i.if.end_crit_edge:              ; preds = %for.inc.thread34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.inc.thread34.i.cleanup_crit_edge:             ; preds = %for.inc.thread34.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %for.inc.thread34.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %call3 = call fastcc ptr @uvc_find_control(ptr noundef %1, i32 noundef %4, ptr noundef nonnull %mapping)
  %cmp4 = icmp eq ptr %call3, null
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.uvc_control, ptr %call3, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %if.end8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end6
  %9 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mapping, align 4
  %v4l2_type = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %v4l2_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %v4l2_type, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %12, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb52
    i32 3, label %sw.bb65
  ]

sw.bb:                                            ; preds = %if.end8
  %cached = getelementptr inbounds %struct.uvc_control, ptr %call3, i32 0, i32 3
  %14 = ptrtoint ptr %cached to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %cached, align 1
  %15 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not = icmp eq i8 %15, 0
  br i1 %tobool9.not, label %if.then10, label %sw.bb.if.end15_crit_edge

sw.bb.if.end15_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then10:                                        ; preds = %sw.bb
  %call11 = tail call fastcc i32 @uvc_ctrl_populate_cache(ptr noundef %1, ptr noundef nonnull %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then10.cleanup_crit_edge, label %if.then10.if.end15_crit_edge

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %sw.bb.if.end15_crit_edge
  %get = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 15
  %16 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get, align 4
  %uvc_data.i = getelementptr inbounds %struct.uvc_control, ptr %call3, i32 0, i32 4
  %18 = ptrtoint ptr %uvc_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %uvc_data.i, align 4
  %size.i = getelementptr inbounds %struct.uvc_control, ptr %call3, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %size.i, align 2
  %conv.i249 = zext i16 %21 to i32
  %mul.i = shl nuw nsw i32 %conv.i249, 1
  %add.ptr.i = getelementptr i8, ptr %19, i32 %mul.i
  %call17 = tail call i32 %17(ptr noundef %10, i8 noundef zeroext -126, ptr noundef %add.ptr.i) #15
  %22 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get, align 4
  %24 = ptrtoint ptr %uvc_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %uvc_data.i, align 4
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %size.i, align 2
  %conv.i252 = zext i16 %27 to i32
  %mul.i253 = mul nuw nsw i32 %conv.i252, 3
  %add.ptr.i254 = getelementptr i8, ptr %25, i32 %mul.i253
  %call20 = tail call i32 %23(ptr noundef %10, i8 noundef zeroext -125, ptr noundef %add.ptr.i254) #15
  %28 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get, align 4
  %30 = ptrtoint ptr %uvc_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %uvc_data.i, align 4
  %32 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %size.i, align 2
  %conv.i257 = zext i16 %33 to i32
  %mul.i258 = shl nuw nsw i32 %conv.i257, 2
  %add.ptr.i259 = getelementptr i8, ptr %31, i32 %mul.i258
  %call23 = tail call i32 %29(ptr noundef %10, i8 noundef zeroext -124, ptr noundef %add.ptr.i259) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp eq i32 %call23, 0
  %spec.store.select = select i1 %cmp24, i32 1, i32 %call23
  %34 = getelementptr inbounds %struct.v4l2_ext_control, ptr %xctrl, i32 0, i32 3
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %34, align 1
  %sub = sub i32 %36, %call17
  %div247 = lshr i32 %spec.store.select, 1
  %add = add i32 %div247, %sub
  %37 = urem i32 %add, %spec.store.select
  %mul = sub i32 %add, %37
  %add28 = add i32 %mul, %call17
  store i32 %add28, ptr %34, align 1
  %data_type = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 9
  %38 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp29 = icmp eq i32 %39, 1
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %40 = tail call i32 @llvm.smax.i32(i32 %add28, i32 %call17)
  %41 = tail call i32 @llvm.smin.i32(i32 %40, i32 %call20)
  br label %if.end51

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %42 = tail call i32 @llvm.umax.i32(i32 %add28, i32 %call17)
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 %call20)
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then30
  %storemerge = phi i32 [ %43, %if.else ], [ %41, %if.then30 ]
  %44 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %storemerge, ptr %34, align 1
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %45 = getelementptr inbounds %struct.v4l2_ext_control, ptr %xctrl, i32 0, i32 3
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %45, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp54 = icmp sgt i32 %47, 0
  %cond64 = zext i1 %cmp54 to i32
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %cond64, ptr %45, align 1
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end8
  %49 = getelementptr inbounds %struct.v4l2_ext_control, ptr %xctrl, i32 0, i32 3
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %49, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp66 = icmp slt i32 %51, 0
  br i1 %cmp66, label %sw.bb65.cleanup_crit_edge, label %lor.lhs.false

sw.bb65.cleanup_crit_edge:                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb65
  %menu_count = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 11
  %52 = ptrtoint ptr %menu_count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %menu_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp67.not = icmp ult i32 %51, %53
  br i1 %cmp67.not, label %if.end69, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end69:                                         ; preds = %lor.lhs.false
  %menu_info = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 10
  %54 = ptrtoint ptr %menu_info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %menu_info, align 4
  %arrayidx = getelementptr %struct.uvc_menu_info, ptr %55, i32 %51
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx, align 4
  %data_type71 = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 9
  %58 = ptrtoint ptr %data_type71 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %data_type71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %59)
  %cmp72 = icmp ne i32 %59, 5
  %and75 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  %or.cond = select i1 %cmp72, i1 true, i1 %tobool76.not
  br i1 %or.cond, label %if.end69.sw.epilog_crit_edge, label %if.then77

if.end69.sw.epilog_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then77:                                        ; preds = %if.end69
  %cached78 = getelementptr inbounds %struct.uvc_control, ptr %call3, i32 0, i32 3
  %60 = ptrtoint ptr %cached78 to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load79 = load i8, ptr %cached78, align 1
  %61 = and i8 %bf.load79, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool82.not = icmp eq i8 %61, 0
  br i1 %tobool82.not, label %if.then83, label %if.then77.if.end88_crit_edge

if.then77.if.end88_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

if.then83:                                        ; preds = %if.then77
  %call84 = tail call fastcc i32 @uvc_ctrl_populate_cache(ptr noundef %1, ptr noundef nonnull %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.then83.cleanup_crit_edge, label %if.then83.if.end88_crit_edge

if.then83.if.end88_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

if.then83.cleanup_crit_edge:                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end88:                                         ; preds = %if.then83.if.end88_crit_edge, %if.then77.if.end88_crit_edge
  %get89 = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 15
  %62 = ptrtoint ptr %get89 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %get89, align 4
  %uvc_data.i260 = getelementptr inbounds %struct.uvc_control, ptr %call3, i32 0, i32 4
  %64 = ptrtoint ptr %uvc_data.i260 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %uvc_data.i260, align 4
  %size.i261 = getelementptr inbounds %struct.uvc_control, ptr %call3, i32 0, i32 1, i32 4
  %66 = ptrtoint ptr %size.i261 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %size.i261, align 2
  %conv.i262 = zext i16 %67 to i32
  %mul.i263 = shl nuw nsw i32 %conv.i262, 2
  %add.ptr.i264 = getelementptr i8, ptr %65, i32 %mul.i263
  %call91 = tail call i32 %63(ptr noundef %10, i8 noundef zeroext -124, ptr noundef %add.ptr.i264) #15
  %and92 = and i32 %call91, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end88.cleanup_crit_edge, label %if.end88.sw.epilog_crit_edge

if.end88.sw.epilog_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.default:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %68 = getelementptr inbounds %struct.v4l2_ext_control, ptr %xctrl, i32 0, i32 3
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %68, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end88.sw.epilog_crit_edge, %if.end69.sw.epilog_crit_edge, %sw.bb52, %if.end51
  %value.0 = phi i32 [ %70, %sw.default ], [ %57, %if.end88.sw.epilog_crit_edge ], [ %57, %if.end69.sw.epilog_crit_edge ], [ %cond64, %sw.bb52 ], [ %storemerge, %if.end51 ]
  %loaded = getelementptr inbounds %struct.uvc_control, ptr %call3, i32 0, i32 3
  %71 = ptrtoint ptr %loaded to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load97 = load i8, ptr %loaded, align 1
  %72 = and i8 %bf.load97, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool100.not = icmp eq i8 %72, 0
  br i1 %tobool100.not, label %land.lhs.true101, label %sw.epilog.if.end137_crit_edge

sw.epilog.if.end137_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end137

land.lhs.true101:                                 ; preds = %sw.epilog
  %size = getelementptr inbounds %struct.uvc_control, ptr %call3, i32 0, i32 1, i32 4
  %73 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %size, align 2
  %conv = zext i16 %74 to i32
  %mul103 = shl nuw nsw i32 %conv, 3
  %size104 = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 6
  %75 = ptrtoint ptr %size104 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %size104, align 1
  %conv105 = zext i8 %76 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul103, i32 %conv105)
  %cmp106.not = icmp eq i32 %mul103, %conv105
  br i1 %cmp106.not, label %if.end137thread-pre-split, label %if.then108

if.then108:                                       ; preds = %land.lhs.true101
  %77 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags, align 4
  %and111 = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %cmp112 = icmp eq i32 %and111, 0
  br i1 %cmp112, label %if.then114, label %if.else119

if.then114:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #17
  %uvc_data.i265 = getelementptr inbounds %struct.uvc_control, ptr %call3, i32 0, i32 4
  %79 = ptrtoint ptr %uvc_data.i265 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %uvc_data.i265, align 4
  %81 = call ptr @memset(ptr %80, i32 0, i32 %conv)
  br label %if.end133

if.else119:                                       ; preds = %if.then108
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  %84 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call3, align 4
  %id120 = getelementptr inbounds %struct.uvc_entity, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %id120 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %id120, align 4
  %conv121 = trunc i16 %87 to i8
  %intfnum = getelementptr inbounds %struct.uvc_device, ptr %83, i32 0, i32 4
  %88 = ptrtoint ptr %intfnum to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %intfnum, align 8
  %conv123 = trunc i32 %89 to i8
  %selector = getelementptr inbounds %struct.uvc_control, ptr %call3, i32 0, i32 1, i32 3
  %90 = ptrtoint ptr %selector to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %selector, align 1
  %uvc_data.i268 = getelementptr inbounds %struct.uvc_control, ptr %call3, i32 0, i32 4
  %92 = ptrtoint ptr %uvc_data.i268 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %uvc_data.i268, align 4
  %call128 = tail call i32 @uvc_query_ctrl(ptr noundef %83, i8 noundef zeroext -127, i8 noundef zeroext %conv121, i8 noundef zeroext %conv123, i8 noundef zeroext %91, ptr noundef %93, i16 noundef zeroext %74) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %if.else119.cleanup_crit_edge, label %if.else119.if.end133_crit_edge

if.else119.if.end133_crit_edge:                   ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end133

if.else119.cleanup_crit_edge:                     ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end133:                                        ; preds = %if.else119.if.end133_crit_edge, %if.then114
  %94 = ptrtoint ptr %loaded to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load135 = load i8, ptr %loaded, align 1
  %bf.set = or i8 %bf.load135, 64
  store i8 %bf.set, ptr %loaded, align 1
  br label %if.end137

if.end137thread-pre-split:                        ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #17
  %95 = ptrtoint ptr %loaded to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load138.pr = load i8, ptr %loaded, align 1
  br label %if.end137

if.end137:                                        ; preds = %if.end137thread-pre-split, %if.end133, %sw.epilog.if.end137_crit_edge
  %bf.load138 = phi i8 [ %bf.load138.pr, %if.end137thread-pre-split ], [ %bf.set, %if.end133 ], [ %bf.load97, %sw.epilog.if.end137_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load138)
  %tobool140.not = icmp sgt i8 %bf.load138, -1
  br i1 %tobool140.not, label %if.then141, label %if.end137.if.end147_crit_edge

if.end137.if.end147_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end147

if.then141:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #17
  %uvc_data.i271 = getelementptr inbounds %struct.uvc_control, ptr %call3, i32 0, i32 4
  %96 = ptrtoint ptr %uvc_data.i271 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %uvc_data.i271, align 4
  %size.i272 = getelementptr inbounds %struct.uvc_control, ptr %call3, i32 0, i32 1, i32 4
  %98 = ptrtoint ptr %size.i272 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %size.i272, align 2
  %conv.i273 = zext i16 %99 to i32
  %add.ptr.i274 = getelementptr i8, ptr %97, i32 %conv.i273
  %100 = call ptr @memcpy(ptr %add.ptr.i274, ptr %97, i32 %conv.i273)
  br label %if.end147

if.end147:                                        ; preds = %if.then141, %if.end137.if.end147_crit_edge
  %set = getelementptr inbounds %struct.uvc_control_mapping, ptr %10, i32 0, i32 16
  %101 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %set, align 4
  %uvc_data.i278 = getelementptr inbounds %struct.uvc_control, ptr %call3, i32 0, i32 4
  %103 = ptrtoint ptr %uvc_data.i278 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %uvc_data.i278, align 4
  tail call void %102(ptr noundef %10, i32 noundef %value.0, ptr noundef %104) #15
  %105 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags, align 4
  %and151 = and i32 %106, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.end147.if.end155_crit_edge, label %if.then153

if.end147.if.end155_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end155

if.then153:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #17
  %handle154 = getelementptr inbounds %struct.uvc_control, ptr %call3, i32 0, i32 5
  %107 = ptrtoint ptr %handle154 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %handle, ptr %handle154, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %if.end147.if.end155_crit_edge
  %108 = ptrtoint ptr %loaded to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load157 = load i8, ptr %loaded, align 1
  %bf.set162 = or i8 %bf.load157, -96
  store i8 %bf.set162, ptr %loaded, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end155, %if.else119.cleanup_crit_edge, %if.end88.cleanup_crit_edge, %if.then83.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb65.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.inc.thread34.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.then5.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end155 ], [ -22, %if.end.cleanup_crit_edge ], [ -13, %if.end6.cleanup_crit_edge ], [ %call11, %if.then10.cleanup_crit_edge ], [ -34, %lor.lhs.false.cleanup_crit_edge ], [ -34, %sw.bb65.cleanup_crit_edge ], [ %call84, %if.then83.cleanup_crit_edge ], [ -22, %if.end88.cleanup_crit_edge ], [ %call128, %if.else119.cleanup_crit_edge ], [ -13, %if.then5.i.cleanup_crit_edge ], [ -13, %for.inc.thread34.i.cleanup_crit_edge ], [ -13, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mapping) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvc_query_ctrl(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_xu_ctrl_query(ptr noundef %chain, ptr nocapture noundef readonly %xqry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %entities = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 2
  %0 = ptrtoint ptr %entities to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn208 = load ptr, ptr %entities, align 4
  %cmp.not209 = icmp eq ptr %.pn208, %entities
  br i1 %cmp.not209, label %entry.do.body.critedge_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body.critedge_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn210 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn208, %entry.for.body_crit_edge ]
  %type = getelementptr i8, ptr %.pn210, i32 14
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %type, align 2
  %3 = and i16 %2, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %3)
  %cmp3 = icmp eq i16 %3, 6
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %id = getelementptr i8, ptr %.pn210, i32 12
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id, align 4
  %6 = ptrtoint ptr %xqry to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %xqry, align 4
  %8 = zext i8 %7 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %8)
  %cmp7 = icmp eq i16 %5, %8
  br i1 %cmp7, label %for.cond26.preheader, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.cond26.preheader:                             ; preds = %land.lhs.true
  %ncontrols = getelementptr i8, ptr %.pn210, i32 340
  %9 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ncontrols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp27212.not = icmp eq i32 %10, 0
  br i1 %cmp27212.not, label %for.cond26.preheader.do.body40_crit_edge, label %for.body29.lr.ph

for.cond26.preheader.do.body40_crit_edge:         ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body40

for.body29.lr.ph:                                 ; preds = %for.cond26.preheader
  %controls = getelementptr i8, ptr %.pn210, i32 344
  %11 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %controls, align 4
  %selector = getelementptr inbounds %struct.uvc_xu_control_query, ptr %xqry, i32 0, i32 1
  %13 = ptrtoint ptr %selector to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %selector, align 1
  %conv31 = zext i8 %14 to i32
  %sub = add nsw i32 %conv31, -1
  br label %for.body29

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %.pn210 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn210, align 4
  %cmp.not = icmp eq ptr %.pn, %entities
  br i1 %cmp.not, label %for.inc.do.body.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.do.body.critedge_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.critedge

do.body.critedge:                                 ; preds = %for.inc.do.body.critedge_crit_edge, %entry.do.body.critedge_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %16 = load i32, ptr @uvc_dbg_param, align 4
  %and15 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body.critedge.cleanup_crit_edge, label %do.end

do.body.critedge.cleanup_crit_edge:               ; preds = %do.body.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %do.body.critedge
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chain, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %dev19 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %xqry to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %xqry, align 4
  %conv21 = zext i8 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev19, ptr noundef nonnull @.str, i32 noundef %conv21) #18
  br label %cleanup

for.body29:                                       ; preds = %for.inc36.for.body29_crit_edge, %for.body29.lr.ph
  %i.0213 = phi i32 [ 0, %for.body29.lr.ph ], [ %inc, %for.inc36.for.body29_crit_edge ]
  %index = getelementptr %struct.uvc_control, ptr %12, i32 %i.0213, i32 2
  %23 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %index, align 4
  %conv30 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv30)
  %cmp32 = icmp eq i32 %sub, %conv30
  br i1 %cmp32, label %if.end55, label %for.inc36

for.inc36:                                        ; preds = %for.body29
  %inc = add nuw i32 %i.0213, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %for.inc36.do.body40_crit_edge, label %for.inc36.for.body29_crit_edge

for.inc36.for.body29_crit_edge:                   ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body29

for.inc36.do.body40_crit_edge:                    ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body40

do.body40:                                        ; preds = %for.inc36.do.body40_crit_edge, %for.cond26.preheader.do.body40_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %25 = load i32, ptr @uvc_dbg_param, align 4
  %and41 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.body40.cleanup_crit_edge, label %do.end46

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end46:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chain, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %dev49 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  %guid = getelementptr i8, ptr %.pn210, i32 80
  %selector50 = getelementptr inbounds %struct.uvc_xu_control_query, ptr %xqry, i32 0, i32 1
  %30 = ptrtoint ptr %selector50 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %selector50, align 1
  %conv51 = zext i8 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev49, ptr noundef nonnull @.str.6, ptr noundef %guid, i32 noundef %conv51) #18
  br label %cleanup

if.end55:                                         ; preds = %for.body29
  %ctrl_mutex = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 5
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ctrl_mutex, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool56.not = icmp eq i32 %call, 0
  br i1 %tobool56.not, label %if.end58, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end58:                                         ; preds = %if.end55
  %arrayidx.le = getelementptr %struct.uvc_control, ptr %12, i32 %i.0213
  %32 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chain, align 4
  %call60 = tail call fastcc i32 @uvc_ctrl_init_xu_ctrl(ptr noundef %33, ptr noundef %arrayidx.le)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end58.done_crit_edge, label %if.end64

if.end58.done_crit_edge:                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end64:                                         ; preds = %if.end58
  %size65 = getelementptr %struct.uvc_control, ptr %12, i32 %i.0213, i32 1, i32 4
  %34 = ptrtoint ptr %size65 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %size65, align 2
  %query = getelementptr inbounds %struct.uvc_xu_control_query, ptr %xqry, i32 0, i32 2
  %36 = ptrtoint ptr %query to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %query, align 2
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %37, label %if.end64.done_crit_edge [
    i8 -127, label %if.end64.sw.epilog_crit_edge
    i8 -126, label %sw.bb67
    i8 -125, label %sw.bb68
    i8 -121, label %sw.bb69
    i8 -124, label %sw.bb70
    i8 1, label %sw.bb71
    i8 -123, label %sw.bb72
    i8 -122, label %sw.bb73
  ]

if.end64.sw.epilog_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end64.done_crit_edge:                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

sw.bb67:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb70:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb72:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb73, %sw.bb72, %sw.bb71, %sw.bb70, %sw.bb69, %sw.bb68, %sw.bb67, %if.end64.sw.epilog_crit_edge
  %tobool81.not = phi i1 [ true, %sw.bb73 ], [ true, %sw.bb72 ], [ false, %sw.bb71 ], [ false, %sw.bb70 ], [ false, %sw.bb69 ], [ false, %sw.bb68 ], [ false, %sw.bb67 ], [ false, %if.end64.sw.epilog_crit_edge ]
  %reqflags.0 = phi i32 [ 0, %sw.bb73 ], [ 0, %sw.bb72 ], [ 1, %sw.bb71 ], [ 16, %sw.bb70 ], [ 32, %sw.bb69 ], [ 8, %sw.bb68 ], [ 4, %sw.bb67 ], [ 2, %if.end64.sw.epilog_crit_edge ]
  %size.0 = phi i16 [ 1, %sw.bb73 ], [ 2, %sw.bb72 ], [ %35, %sw.bb71 ], [ %35, %sw.bb70 ], [ %35, %sw.bb69 ], [ %35, %sw.bb68 ], [ %35, %sw.bb67 ], [ %35, %if.end64.sw.epilog_crit_edge ]
  %conv74 = zext i16 %size.0 to i32
  %size75 = getelementptr inbounds %struct.uvc_xu_control_query, ptr %xqry, i32 0, i32 3
  %39 = ptrtoint ptr %size75 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %size75, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %size.0, i16 %40)
  %cmp77.not = icmp eq i16 %size.0, %40
  br i1 %cmp77.not, label %if.end80, label %sw.epilog.done_crit_edge

sw.epilog.done_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end80:                                         ; preds = %sw.epilog
  br i1 %tobool81.not, label %if.end80.if.end8.i_crit_edge, label %land.lhs.true82

if.end80.if.end8.i_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

land.lhs.true82:                                  ; preds = %if.end80
  %flags = getelementptr %struct.uvc_control, ptr %12, i32 %i.0213, i32 1, i32 5
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %and84 = and i32 %42, %reqflags.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %land.lhs.true82.done_crit_edge, label %land.lhs.true82.if.end8.i_crit_edge

land.lhs.true82.if.end8.i_crit_edge:              ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

land.lhs.true82.done_crit_edge:                   ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end8.i:                                        ; preds = %land.lhs.true82.if.end8.i_crit_edge, %if.end80.if.end8.i_crit_edge
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv74, i32 noundef 3264) #19
  %cmp90 = icmp eq ptr %call9.i, null
  br i1 %cmp90, label %if.end8.i.done_crit_edge, label %if.end93

if.end8.i.done_crit_edge:                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end93:                                         ; preds = %if.end8.i
  %43 = ptrtoint ptr %query to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %query, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp96 = icmp eq i8 %44, 1
  br i1 %cmp96, label %land.lhs.true98, label %if.end93.if.end104_crit_edge

if.end93.if.end104_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104

land.lhs.true98:                                  ; preds = %if.end93
  %data99 = getelementptr inbounds %struct.uvc_xu_control_query, ptr %xqry, i32 0, i32 4
  %45 = ptrtoint ptr %data99 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data99, align 4
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %conv74, i1 noundef zeroext false) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 156) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %land.lhs.true98.if.end.i.i181_crit_edge, label %land.lhs.true.i.i

land.lhs.true98.if.end.i.i181_crit_edge:          ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i181

land.lhs.true.i.i:                                ; preds = %land.lhs.true98
  %47 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %46, i32 %conv74, i32 -1226833920) #20, !srcloc !121
  %asmresult.i.i = extractvalue { i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i181_crit_edge, !prof !122

land.lhs.true.i.i.if.end.i.i181_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i181

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef %conv74) #15
  %48 = tail call i32 @llvm.read_register.i32(metadata !110) #15
  %and.i.i.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 4
  %50 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !123
  %and.i.i.i.i = and i32 %50, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #15, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !125
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i, ptr noundef %46, i32 noundef %conv74) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #15, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !125
  br label %if.end.i.i181

if.end.i.i181:                                    ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i181_crit_edge, %land.lhs.true98.if.end.i.i181_crit_edge
  %res.0.i.i = phi i32 [ %conv74, %land.lhs.true98.if.end.i.i181_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %conv74, %land.lhs.true.i.i.if.end.i.i181_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i181.if.end104_crit_edge, label %if.then11.i.i, !prof !122

if.end.i.i181.if.end104_crit_edge:                ; preds = %if.end.i.i181
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104

if.then11.i.i:                                    ; preds = %if.end.i.i181
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = sub i32 %conv74, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call9.i, i32 %sub.i.i
  %51 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %done

if.end104:                                        ; preds = %if.end.i.i181.if.end104_crit_edge, %if.end93.if.end104_crit_edge
  %52 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chain, align 4
  %54 = ptrtoint ptr %query to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %query, align 2
  %56 = ptrtoint ptr %xqry to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %xqry, align 4
  %intfnum = getelementptr inbounds %struct.uvc_device, ptr %53, i32 0, i32 4
  %58 = ptrtoint ptr %intfnum to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %intfnum, align 8
  %conv109 = trunc i32 %59 to i8
  %60 = ptrtoint ptr %selector to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %selector, align 1
  %call111 = tail call i32 @uvc_query_ctrl(ptr noundef %53, i8 noundef zeroext %55, i8 noundef zeroext %57, i8 noundef zeroext %conv109, i8 noundef zeroext %61, ptr noundef nonnull %call9.i, i16 noundef zeroext %size.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %if.end104.done_crit_edge, label %if.end115

if.end104.done_crit_edge:                         ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end115:                                        ; preds = %if.end104
  %62 = ptrtoint ptr %query to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %query, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %63)
  %cmp118.not = icmp eq i8 %63, 1
  br i1 %cmp118.not, label %if.end115.done_crit_edge, label %land.lhs.true120

if.end115.done_crit_edge:                         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

land.lhs.true120:                                 ; preds = %if.end115
  %data121 = getelementptr inbounds %struct.uvc_xu_control_query, ptr %xqry, i32 0, i32 4
  %64 = ptrtoint ptr %data121 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data121, align 4
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %conv74, i1 noundef zeroext true) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.39, i32 noundef 174) #15
  %call.i.i191 = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i191, label %land.lhs.true120.copy_to_user.exit_crit_edge, label %if.end.i.i195

land.lhs.true120.copy_to_user.exit_crit_edge:     ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.end.i.i195:                                    ; preds = %land.lhs.true120
  %66 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %65, i32 %conv74, i32 -1226833920) #20, !srcloc !126
  %asmresult.i.i193 = extractvalue { i32, i32 } %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i193)
  %cmp.i6.i194 = icmp eq i32 %asmresult.i.i193, 0
  br i1 %cmp.i6.i194, label %if.then2.i.i, label %if.end.i.i195.copy_to_user.exit_crit_edge

if.end.i.i195.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i195
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i195
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i196 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef %conv74) #15
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %65, ptr noundef nonnull %call9.i, i32 noundef %conv74) #15
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i195.copy_to_user.exit_crit_edge, %land.lhs.true120.copy_to_user.exit_crit_edge
  %n.addr.0.i197 = phi i32 [ %conv74, %land.lhs.true120.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %conv74, %if.end.i.i195.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i197)
  %tobool124.not = icmp eq i32 %n.addr.0.i197, 0
  %spec.select = select i1 %tobool124.not, i32 %call111, i32 -14
  br label %done

done:                                             ; preds = %copy_to_user.exit, %if.end115.done_crit_edge, %if.end104.done_crit_edge, %if.then11.i.i, %if.end8.i.done_crit_edge, %land.lhs.true82.done_crit_edge, %sw.epilog.done_crit_edge, %if.end64.done_crit_edge, %if.end58.done_crit_edge
  %data.0 = phi ptr [ %call9.i, %if.end104.done_crit_edge ], [ %call9.i, %if.end115.done_crit_edge ], [ null, %if.end58.done_crit_edge ], [ null, %if.end64.done_crit_edge ], [ null, %sw.epilog.done_crit_edge ], [ null, %land.lhs.true82.done_crit_edge ], [ null, %if.end8.i.done_crit_edge ], [ %call9.i, %if.then11.i.i ], [ %call9.i, %copy_to_user.exit ]
  %ret.0 = phi i32 [ %call111, %if.end104.done_crit_edge ], [ %call111, %if.end115.done_crit_edge ], [ -2, %if.end58.done_crit_edge ], [ -22, %if.end64.done_crit_edge ], [ -105, %sw.epilog.done_crit_edge ], [ -56, %land.lhs.true82.done_crit_edge ], [ -12, %if.end8.i.done_crit_edge ], [ -14, %if.then11.i.i ], [ %spec.select, %copy_to_user.exit ]
  tail call void @kfree(ptr noundef %data.0) #15
  tail call void @mutex_unlock(ptr noundef %ctrl_mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end55.cleanup_crit_edge, %do.end46, %do.body40.cleanup_crit_edge, %do.end, %do.body.critedge.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ -2, %do.end ], [ -2, %do.body.critedge.cleanup_crit_edge ], [ -2, %do.end46 ], [ -2, %do.body40.cleanup_crit_edge ], [ -512, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvc_ctrl_init_xu_ctrl(ptr noundef %dev, ptr noundef %ctrl) unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.uvc_control_info, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info) #15
  %0 = getelementptr inbounds %struct.uvc_control_info, ptr %info, i32 0, i32 1
  %1 = getelementptr inbounds %struct.uvc_control_info, ptr %info, i32 0, i32 2
  %2 = getelementptr inbounds %struct.uvc_control_info, ptr %info, i32 0, i32 3
  %3 = getelementptr inbounds %struct.uvc_control_info, ptr %info, i32 0, i32 4
  %4 = getelementptr inbounds %struct.uvc_control_info, ptr %info, i32 0, i32 5
  %initialized = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 3
  %5 = call ptr @memset(ptr %info, i32 255, i32 32)
  %6 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %initialized, align 1
  %7 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 2) #21
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %9 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl, align 4
  %guid.i = getelementptr inbounds %struct.uvc_entity, ptr %10, i32 0, i32 6
  %11 = call ptr @memcpy(ptr %0, ptr %guid.i, i32 16)
  %index.i = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 2
  %12 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %index.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %1, align 4
  %add.i = add i8 %13, 1
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %add.i, ptr %2, align 1
  %id.i = getelementptr inbounds %struct.uvc_entity, ptr %10, i32 0, i32 3
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %id.i, align 4
  %conv7.i = trunc i16 %17 to i8
  %intfnum.i = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 4
  %18 = ptrtoint ptr %intfnum.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %intfnum.i, align 8
  %conv8.i = trunc i32 %19 to i8
  %call10.i = tail call i32 @uvc_query_ctrl(ptr noundef %dev, i8 noundef zeroext -123, i8 noundef zeroext %conv7.i, i8 noundef zeroext %conv8.i, i8 noundef zeroext %add.i, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %do.body.i, label %if.end24.i

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %20 = load i32, ptr @uvc_dbg_param, align 4
  %and.i = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.uvc_ctrl_fill_xu_info.exit.thread40_crit_edge, label %do.end.i

do.body.i.uvc_ctrl_fill_xu_info.exit.thread40_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_fill_xu_info.exit.thread40

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %dev16.i = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %2, align 1
  %conv20.i = zext i8 %24 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev16.i, ptr noundef nonnull @.str.27, ptr noundef %0, i32 noundef %conv20.i, i32 noundef %call10.i) #18
  br label %uvc_ctrl_fill_xu_info.exit.thread40

if.end24.i:                                       ; preds = %if.end.i
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %call7.i.i, align 8
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #15
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %3, align 2
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 60, ptr %4, align 4
  %call26.i = call fastcc i32 @uvc_ctrl_get_flags(ptr noundef %dev, ptr noundef %ctrl, ptr noundef nonnull %info) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %do.body30.i, label %if.end46.i

do.body30.i:                                      ; preds = %if.end24.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %30 = load i32, ptr @uvc_dbg_param, align 4
  %and31.i = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %do.body30.i.uvc_ctrl_fill_xu_info.exit.thread40_crit_edge, label %do.end36.i

do.body30.i.uvc_ctrl_fill_xu_info.exit.thread40_crit_edge: ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_fill_xu_info.exit.thread40

do.end36.i:                                       ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  %dev38.i = getelementptr inbounds %struct.usb_device, ptr %32, i32 0, i32 15
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %2, align 1
  %conv42.i = zext i8 %34 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev38.i, ptr noundef nonnull @.str.30, ptr noundef %0, i32 noundef %conv42.i, i32 noundef %call26.i) #18
  br label %uvc_ctrl_fill_xu_info.exit.thread40

if.end46.i:                                       ; preds = %if.end24.i
  %intf.i.i = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 1
  %35 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %intf.i.i, align 4
  %call.i.i = tail call i32 @usb_match_one_id(ptr noundef %36, ptr noundef nonnull @uvc_ctrl_fixup_xu_info.fixups) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end46.i.for.inc.i.i_crit_edge, label %if.end.i.i

if.end46.i.for.inc.i.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %if.end46.i
  %37 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctrl, align 4
  %id3.i.i = getelementptr inbounds %struct.uvc_entity, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %40)
  %cmp5.i.i = icmp eq i16 %40, 9
  br i1 %cmp5.i.i, label %land.lhs.true.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp11.i.i = icmp eq i8 %42, 1
  br i1 %cmp11.i.i, label %land.lhs.true.i.i.if.then13.i.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

land.lhs.true.i.i.if.then13.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13.i.i

if.then13.i.i:                                    ; preds = %land.lhs.true.2.i.i.if.then13.i.i_crit_edge, %land.lhs.true.1.i.i.if.then13.i.i_crit_edge, %land.lhs.true.i.i.if.then13.i.i_crit_edge
  %i.025.lcssa.i.i = phi i32 [ 0, %land.lhs.true.i.i.if.then13.i.i_crit_edge ], [ 1, %land.lhs.true.1.i.i.if.then13.i.i_crit_edge ], [ 2, %land.lhs.true.2.i.i.if.then13.i.i_crit_edge ]
  %flags.i.i = getelementptr [3 x %struct.uvc_ctrl_fixup], ptr @uvc_ctrl_fixup_xu_info.fixups, i32 0, i32 %i.025.lcssa.i.i, i32 3
  %43 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %flags.i.i, align 2
  %conv15.i.i = zext i8 %44 to i32
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv15.i.i, ptr %4, align 4
  br label %uvc_ctrl_fixup_xu_info.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %if.end46.i.for.inc.i.i_crit_edge
  %46 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %intf.i.i, align 4
  %call.1.i.i = tail call i32 @usb_match_one_id(ptr noundef %47, ptr noundef getelementptr inbounds ([3 x %struct.uvc_ctrl_fixup], ptr @uvc_ctrl_fixup_xu_info.fixups, i32 0, i32 1)) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %call.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.end.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1.i.i

if.end.1.i.i:                                     ; preds = %for.inc.i.i
  %48 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctrl, align 4
  %id3.1.i.i = getelementptr inbounds %struct.uvc_entity, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %id3.1.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %id3.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %51)
  %cmp5.1.i.i = icmp eq i16 %51, 9
  br i1 %cmp5.1.i.i, label %land.lhs.true.1.i.i, label %if.end.1.i.i.for.inc.1.i.i_crit_edge

if.end.1.i.i.for.inc.1.i.i_crit_edge:             ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1.i.i

land.lhs.true.1.i.i:                              ; preds = %if.end.1.i.i
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %53)
  %cmp11.1.i.i = icmp eq i8 %53, 1
  br i1 %cmp11.1.i.i, label %land.lhs.true.1.i.i.if.then13.i.i_crit_edge, label %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge

land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge:      ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1.i.i

land.lhs.true.1.i.i.if.then13.i.i_crit_edge:      ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13.i.i

for.inc.1.i.i:                                    ; preds = %land.lhs.true.1.i.i.for.inc.1.i.i_crit_edge, %if.end.1.i.i.for.inc.1.i.i_crit_edge, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %54 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %intf.i.i, align 4
  %call.2.i.i = tail call i32 @usb_match_one_id(ptr noundef %55, ptr noundef getelementptr inbounds ([3 x %struct.uvc_ctrl_fixup], ptr @uvc_ctrl_fixup_xu_info.fixups, i32 0, i32 2)) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %call.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.inc.1.i.i.uvc_ctrl_fixup_xu_info.exit.i_crit_edge, label %if.end.2.i.i

for.inc.1.i.i.uvc_ctrl_fixup_xu_info.exit.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_fixup_xu_info.exit.i

if.end.2.i.i:                                     ; preds = %for.inc.1.i.i
  %56 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctrl, align 4
  %id3.2.i.i = getelementptr inbounds %struct.uvc_entity, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %id3.2.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %id3.2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %59)
  %cmp5.2.i.i = icmp eq i16 %59, 9
  br i1 %cmp5.2.i.i, label %land.lhs.true.2.i.i, label %if.end.2.i.i.uvc_ctrl_fixup_xu_info.exit.i_crit_edge

if.end.2.i.i.uvc_ctrl_fixup_xu_info.exit.i_crit_edge: ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_fixup_xu_info.exit.i

land.lhs.true.2.i.i:                              ; preds = %if.end.2.i.i
  %60 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %61)
  %cmp11.2.i.i = icmp eq i8 %61, 1
  br i1 %cmp11.2.i.i, label %land.lhs.true.2.i.i.if.then13.i.i_crit_edge, label %land.lhs.true.2.i.i.uvc_ctrl_fixup_xu_info.exit.i_crit_edge

land.lhs.true.2.i.i.uvc_ctrl_fixup_xu_info.exit.i_crit_edge: ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_fixup_xu_info.exit.i

land.lhs.true.2.i.i.if.then13.i.i_crit_edge:      ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13.i.i

uvc_ctrl_fixup_xu_info.exit.i:                    ; preds = %land.lhs.true.2.i.i.uvc_ctrl_fixup_xu_info.exit.i_crit_edge, %if.end.2.i.i.uvc_ctrl_fixup_xu_info.exit.i_crit_edge, %for.inc.1.i.i.uvc_ctrl_fixup_xu_info.exit.i_crit_edge, %if.then13.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %62 = load i32, ptr @uvc_dbg_param, align 4
  %and48.i = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %uvc_ctrl_fixup_xu_info.exit.i.if.end2_crit_edge, label %do.end53.i

uvc_ctrl_fixup_xu_info.exit.i.if.end2_crit_edge:  ; preds = %uvc_ctrl_fixup_xu_info.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end2

do.end53.i:                                       ; preds = %uvc_ctrl_fixup_xu_info.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 8
  %dev55.i = getelementptr inbounds %struct.usb_device, ptr %64, i32 0, i32 15
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %2, align 1
  %conv59.i = zext i8 %66 to i32
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %3, align 2
  %conv61.i = zext i16 %68 to i32
  %69 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %4, align 4
  %and63.i = lshr i32 %70, 1
  %and63.lobit.i = and i32 %and63.i, 1
  %and66.i = and i32 %70, 1
  %and70.i = lshr i32 %70, 7
  %and70.lobit.i = and i32 %and70.i, 1
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev55.i, ptr noundef nonnull @.str.33, ptr noundef %0, i32 noundef %conv59.i, i32 noundef %conv61.i, i32 noundef %and63.lobit.i, i32 noundef %and66.i, i32 noundef %and70.lobit.i) #18
  br label %if.end2

uvc_ctrl_fill_xu_info.exit.thread40:              ; preds = %do.end36.i, %do.body30.i.uvc_ctrl_fill_xu_info.exit.thread40_crit_edge, %do.end.i, %do.body.i.uvc_ctrl_fill_xu_info.exit.thread40_crit_edge
  %ret.0.i.ph = phi i32 [ %call26.i, %do.body30.i.uvc_ctrl_fill_xu_info.exit.thread40_crit_edge ], [ %call26.i, %do.end36.i ], [ %call10.i, %do.body.i.uvc_ctrl_fill_xu_info.exit.thread40_crit_edge ], [ %call10.i, %do.end.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.end2:                                          ; preds = %do.end53.i, %uvc_ctrl_fixup_xu_info.exit.i.if.end2_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  %info1.i = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1
  %71 = call ptr @memcpy(ptr %info1.i, ptr %info, i32 32)
  %72 = ptrtoint ptr %info1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %info1.i, ptr %info1.i, align 4
  %prev.i.i = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %info1.i, ptr %prev.i.i, align 4
  %size.i28 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 4
  %74 = ptrtoint ptr %size.i28 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %size.i28, align 2
  %conv.i = zext i16 %75 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 6
  %add.i29 = or i32 %mul.i, 1
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i29, i32 noundef 3520) #19
  %uvc_data.i = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 4
  %76 = ptrtoint ptr %uvc_data.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call9.i.i.i, ptr %uvc_data.i, align 4
  %tobool.not.i30 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i30, label %do.body, label %if.end.i32

if.end.i32:                                       ; preds = %if.end2
  %77 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load.i = load i8, ptr %initialized, align 1
  %bf.set.i = or i8 %bf.load.i, 8
  store i8 %bf.set.i, ptr %initialized, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %78 = load i32, ptr @uvc_dbg_param, align 4
  %and.i31 = and i32 %78, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31)
  %tobool5.not.i = icmp eq i32 %and.i31, 0
  br i1 %tobool5.not.i, label %if.end.i32.cleanup_crit_edge, label %do.end.i36

if.end.i32.cleanup_crit_edge:                     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end.i36:                                       ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #17
  %79 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev, align 8
  %dev8.i = getelementptr inbounds %struct.usb_device, ptr %80, i32 0, i32 15
  %entity.i33 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 1
  %selector.i34 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 3
  %81 = ptrtoint ptr %selector.i34 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %selector.i34, align 1
  %conv11.i = zext i8 %82 to i32
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %80, i32 0, i32 1
  %83 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ctrl, align 4
  %id.i35 = getelementptr inbounds %struct.uvc_entity, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %id.i35 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %id.i35, align 4
  %conv15.i = zext i16 %86 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev8.i, ptr noundef nonnull @.str.35, ptr noundef %entity.i33, i32 noundef %conv11.i, ptr noundef %devpath.i, i32 noundef %conv15.i) #18
  br label %cleanup

do.body:                                          ; preds = %if.end2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %87 = load i32, ptr @uvc_dbg_param, align 4
  %and = and i32 %87, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %88 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev, align 8
  %dev9 = getelementptr inbounds %struct.usb_device, ptr %89, i32 0, i32 15
  %90 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %2, align 1
  %conv = zext i8 %91 to i32
  %devpath = getelementptr inbounds %struct.usb_device, ptr %89, i32 0, i32 1
  %92 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ctrl, align 4
  %id = getelementptr inbounds %struct.uvc_entity, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %id, align 4
  %conv13 = zext i16 %95 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev9, ptr noundef nonnull @.str.25, ptr noundef %0, i32 noundef %conv, ptr noundef %devpath, i32 noundef %conv13) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %do.end.i36, %if.end.i32.cleanup_crit_edge, %uvc_ctrl_fill_xu_info.exit.thread40, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %do.body.cleanup_crit_edge ], [ -12, %do.end ], [ %ret.0.i.ph, %uvc_ctrl_fill_xu_info.exit.thread40 ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end.i32.cleanup_crit_edge ], [ 0, %do.end.i36 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_ctrl_restore_values(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %entities = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 14
  br label %for.cond

for.cond:                                         ; preds = %for.end.for.cond_crit_edge, %entry
  %entity.0.in = phi ptr [ %entities, %entry ], [ %entity.0, %for.end.for.cond_crit_edge ]
  %0 = ptrtoint ptr %entity.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %entity.0 = load ptr, ptr %entity.0.in, align 4
  %cmp.not = icmp eq ptr %entity.0, %entities
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.cond2.preheader

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond2.preheader:                              ; preds = %for.cond
  %ncontrols = getelementptr inbounds %struct.uvc_entity, ptr %entity.0, i32 0, i32 17
  %1 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ncontrols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp358.not = icmp eq i32 %2, 0
  br i1 %cmp358.not, label %for.cond2.preheader.for.end_crit_edge, label %for.body4.lr.ph

for.cond2.preheader.for.end_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %controls = getelementptr inbounds %struct.uvc_entity, ptr %entity.0, i32 0, i32 18
  br label %for.body4

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.body4.lr.ph
  %i.059 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %for.inc.for.body4_crit_edge ]
  %3 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %controls, align 4
  %initialized = getelementptr %struct.uvc_control, ptr %4, i32 %i.059, i32 3
  %5 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %initialized, align 1
  %6 = and i8 %bf.load, 40
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %6)
  %.not = icmp eq i8 %6, 40
  br i1 %.not, label %lor.lhs.false9, label %for.body4.for.inc_crit_edge

for.body4.for.inc_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

lor.lhs.false9:                                   ; preds = %for.body4
  %flags = getelementptr %struct.uvc_control, ptr %4, i32 %i.059, i32 1, i32 5
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp10 = icmp eq i32 %and, 0
  br i1 %cmp10, label %lor.lhs.false9.for.inc_crit_edge, label %do.body

lor.lhs.false9.for.inc_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

do.body:                                          ; preds = %lor.lhs.false9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uvc_ctrl_restore_values.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uvc_ctrl_restore_values, %if.then16)) #15
          to label %do.end [label %if.then16], !srcloc !127

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %dev17 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  %entity19 = getelementptr %struct.uvc_control, ptr %4, i32 %i.059, i32 1, i32 1
  %index = getelementptr %struct.uvc_control, ptr %4, i32 %i.059, i32 1, i32 2
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %index, align 4
  %conv = zext i8 %12 to i32
  %selector = getelementptr %struct.uvc_control, ptr %4, i32 %i.059, i32 1, i32 3
  %13 = ptrtoint ptr %selector to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %selector, align 1
  %conv22 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uvc_ctrl_restore_values.__UNIQUE_ID_ddebug319, ptr noundef %dev17, ptr noundef nonnull @.str.10, ptr noundef %entity19, i32 noundef %conv, i32 noundef %conv22) #15
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  %15 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load24 = load i8, ptr %initialized, align 1
  %bf.set = or i8 %bf.load24, -128
  store i8 %bf.set, ptr %initialized, align 1
  br label %for.inc

for.inc:                                          ; preds = %do.end, %lor.lhs.false9.for.inc_crit_edge, %for.body4.for.inc_crit_edge
  %inc = add nuw i32 %i.059, 1
  %16 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ncontrols, align 4
  %cmp3 = icmp ult i32 %inc, %17
  br i1 %cmp3, label %for.inc.for.body4_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body4

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond2.preheader.for.end_crit_edge
  %call26 = tail call fastcc i32 @uvc_ctrl_commit_entity(ptr noundef %dev, ptr noundef %entity.0, i32 noundef 0, ptr noundef null)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %for.end.cleanup_crit_edge, label %for.end.for.cond_crit_edge

for.end.for.cond_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %for.end.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_ctrl_add_mapping(ptr noundef %chain, ptr noundef %mapping) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %id = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %3)
  %tobool.not = icmp ult i32 %3, 268435456
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %4 = load i32, ptr @uvc_dbg_param, align 4
  %and2 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %do.body.cleanup131_crit_edge, label %do.end

do.body.cleanup131_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup131

do.end:                                           ; preds = %do.body
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %dev6 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  %name1.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 3
  %7 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name1.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.uvc_map_get_name.exit_crit_edge

do.end.uvc_map_get_name.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_map_get_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call ptr @v4l2_ctrl_get_name(i32 noundef %3) #15
  %tobool3.not.i = icmp eq ptr %call.i, null
  %.str.40.call.i = select i1 %tobool3.not.i, ptr @.str.40, ptr %call.i
  br label %uvc_map_get_name.exit

uvc_map_get_name.exit:                            ; preds = %if.end.i, %do.end.uvc_map_get_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %do.end.uvc_map_get_name.exit_crit_edge ], [ %.str.40.call.i, %if.end.i ]
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev6, ptr noundef nonnull @.str.11, ptr noundef %retval.0.i, i32 noundef %10) #18
  br label %cleanup131

if.end10:                                         ; preds = %entry
  %entities = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 2
  %entity16 = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 4
  %selector = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 5
  %11 = ptrtoint ptr %entities to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn223 = load ptr, ptr %entities, align 4
  %cmp.not224 = icmp eq ptr %.pn223, %entities
  br i1 %cmp.not224, label %if.end10.for.end40_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.for.end40_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end40

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end10.for.body_crit_edge
  %.pn227 = phi ptr [ %.pn, %cleanup.for.body_crit_edge ], [ %.pn223, %if.end10.for.body_crit_edge ]
  %ctrl.0226 = phi ptr [ %ctrl.3, %cleanup.for.body_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.end10.for.body_crit_edge ]
  %found.0225 = phi i32 [ %found.2, %cleanup.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %type = getelementptr i8, ptr %.pn227, i32 14
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %type, align 2
  %14 = and i16 %13, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %14)
  %cmp14.not = icmp eq i16 %14, 6
  br i1 %cmp14.not, label %lor.lhs.false, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %guid1.i = getelementptr i8, ptr %.pn227, i32 80
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %guid1.i, ptr noundef dereferenceable(16) %entity16, i32 16) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i.not, label %for.cond21.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond21.preheader:                             ; preds = %lor.lhs.false
  %ncontrols = getelementptr i8, ptr %.pn227, i32 340
  %15 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ncontrols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp22198.not = icmp eq i32 %16, 0
  br i1 %cmp22198.not, label %for.cond21.preheader.for.end_crit_edge, label %for.body24.lr.ph

for.cond21.preheader.for.end_crit_edge:           ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body24.lr.ph:                                 ; preds = %for.cond21.preheader
  %controls = getelementptr i8, ptr %.pn227, i32 344
  %17 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %controls, align 4
  %19 = ptrtoint ptr %selector to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %selector, align 4
  %conv26 = zext i8 %20 to i32
  %sub = add nsw i32 %conv26, -1
  %uglygep = getelementptr i8, ptr %18, i32 -48
  %21 = mul i32 %16, 48
  %uglygep203 = getelementptr i8, ptr %uglygep, i32 %21
  br label %for.body24

for.cond21:                                       ; preds = %for.body24
  %inc = add nuw i32 %i.0199, 1
  %exitcond.not = icmp eq i32 %inc, %16
  br i1 %exitcond.not, label %for.cond21.for.end_crit_edge, label %for.cond21.for.body24_crit_edge

for.cond21.for.body24_crit_edge:                  ; preds = %for.cond21
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body24

for.cond21.for.end_crit_edge:                     ; preds = %for.cond21
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body24:                                       ; preds = %for.cond21.for.body24_crit_edge, %for.body24.lr.ph
  %i.0199 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc, %for.cond21.for.body24_crit_edge ]
  %index = getelementptr %struct.uvc_control, ptr %18, i32 %i.0199, i32 2
  %22 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %index, align 4
  %conv25 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv25)
  %cmp27 = icmp eq i32 %sub, %conv25
  br i1 %cmp27, label %if.end43.loopexit, label %for.cond21

for.end:                                          ; preds = %for.cond21.for.end_crit_edge, %for.cond21.preheader.for.end_crit_edge
  %ctrl.2 = phi ptr [ %ctrl.0226, %for.cond21.preheader.for.end_crit_edge ], [ %uglygep203, %for.cond21.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.0225)
  %tobool31.not = icmp eq i32 %found.0225, 0
  %not.tobool31.not = xor i1 %tobool31.not, true
  %.177 = zext i1 %not.tobool31.not to i32
  br i1 %tobool31.not, label %for.end.cleanup_crit_edge, label %for.end.for.end40_crit_edge

for.end.for.end40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end40

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %found.2 = phi i32 [ %found.0225, %lor.lhs.false.cleanup_crit_edge ], [ %found.0225, %for.body.cleanup_crit_edge ], [ %.177, %for.end.cleanup_crit_edge ]
  %ctrl.3 = phi ptr [ %ctrl.0226, %lor.lhs.false.cleanup_crit_edge ], [ %ctrl.0226, %for.body.cleanup_crit_edge ], [ %ctrl.2, %for.end.cleanup_crit_edge ]
  %24 = ptrtoint ptr %.pn227 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn227, align 4
  %cmp.not = icmp eq ptr %.pn, %entities
  br i1 %cmp.not, label %cleanup.for.end40_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup.for.end40_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end40

for.end40:                                        ; preds = %cleanup.for.end40_crit_edge, %for.end.for.end40_crit_edge, %if.end10.for.end40_crit_edge
  %found.3 = phi i32 [ 0, %if.end10.for.end40_crit_edge ], [ %found.2, %cleanup.for.end40_crit_edge ], [ %.177, %for.end.for.end40_crit_edge ]
  %ctrl.4 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end10.for.end40_crit_edge ], [ %ctrl.3, %cleanup.for.end40_crit_edge ], [ %ctrl.2, %for.end.for.end40_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.3)
  %tobool41.not = icmp eq i32 %found.3, 0
  br i1 %tobool41.not, label %for.end40.cleanup131_crit_edge, label %for.end40.if.end43_crit_edge

for.end40.if.end43_crit_edge:                     ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

for.end40.cleanup131_crit_edge:                   ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup131

if.end43.loopexit:                                ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.le = getelementptr %struct.uvc_control, ptr %18, i32 %i.0199
  br label %if.end43

if.end43:                                         ; preds = %if.end43.loopexit, %for.end40.if.end43_crit_edge
  %ctrl.4218 = phi ptr [ %ctrl.4, %for.end40.if.end43_crit_edge ], [ %arrayidx.le, %if.end43.loopexit ]
  %ctrl_mutex = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 5
  %call44 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ctrl_mutex, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.cleanup131_crit_edge

if.end43.cleanup131_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup131

if.end47:                                         ; preds = %if.end43
  %call48 = tail call fastcc i32 @uvc_ctrl_init_xu_ctrl(ptr noundef %1, ptr noundef %ctrl.4218)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end47.done_crit_edge, label %if.end52

if.end47.done_crit_edge:                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end52:                                         ; preds = %if.end47
  %size = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 6
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %26)
  %cmp54 = icmp ugt i8 %26, 32
  br i1 %cmp54, label %if.end52.done_crit_edge, label %lor.lhs.false56

if.end52.done_crit_edge:                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

lor.lhs.false56:                                  ; preds = %if.end52
  %conv53 = zext i8 %26 to i32
  %offset = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 7
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %offset, align 2
  %conv57 = zext i8 %28 to i32
  %add = add nuw nsw i32 %conv57, %conv53
  %info = getelementptr inbounds %struct.uvc_control, ptr %ctrl.4218, i32 0, i32 1
  %size60 = getelementptr inbounds %struct.uvc_control, ptr %ctrl.4218, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %size60 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %size60, align 2
  %conv61 = zext i16 %30 to i32
  %mul = shl nuw nsw i32 %conv61, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul)
  %cmp62 = icmp ugt i32 %add, %mul
  br i1 %cmp62, label %lor.lhs.false56.done_crit_edge, label %lor.lhs.false56.for.cond71_crit_edge

lor.lhs.false56.for.cond71_crit_edge:             ; preds = %lor.lhs.false56
  br label %for.cond71

lor.lhs.false56.done_crit_edge:                   ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

for.cond71:                                       ; preds = %for.body77.for.cond71_crit_edge, %lor.lhs.false56.for.cond71_crit_edge
  %map.0.in = phi ptr [ %map.0, %for.body77.for.cond71_crit_edge ], [ %info, %lor.lhs.false56.for.cond71_crit_edge ]
  %31 = ptrtoint ptr %map.0.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %map.0 = load ptr, ptr %map.0.in, align 4
  %cmp74.not = icmp eq ptr %map.0, %info
  br i1 %cmp74.not, label %for.end104, label %for.body77

for.body77:                                       ; preds = %for.cond71
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id, align 4
  %id79 = getelementptr inbounds %struct.uvc_control_mapping, ptr %map.0, i32 0, i32 2
  %34 = ptrtoint ptr %id79 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id79, align 4
  %cmp80 = icmp eq i32 %33, %35
  br i1 %cmp80, label %do.body83, label %for.body77.for.cond71_crit_edge

for.body77.for.cond71_crit_edge:                  ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond71

do.body83:                                        ; preds = %for.body77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %36 = load i32, ptr @uvc_dbg_param, align 4
  %and84 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %do.body83.done_crit_edge, label %do.end89

do.body83.done_crit_edge:                         ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

do.end89:                                         ; preds = %do.body83
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %dev91 = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 15
  %name1.i180 = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 3
  %39 = ptrtoint ptr %name1.i180 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name1.i180, align 4
  %tobool.not.i181 = icmp eq ptr %40, null
  br i1 %tobool.not.i181, label %if.end.i186, label %do.end89.uvc_map_get_name.exit188_crit_edge

do.end89.uvc_map_get_name.exit188_crit_edge:      ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_map_get_name.exit188

if.end.i186:                                      ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #17
  %call.i183 = tail call ptr @v4l2_ctrl_get_name(i32 noundef %33) #15
  %tobool3.not.i184 = icmp eq ptr %call.i183, null
  %.str.40.call.i185 = select i1 %tobool3.not.i184, ptr @.str.40, ptr %call.i183
  br label %uvc_map_get_name.exit188

uvc_map_get_name.exit188:                         ; preds = %if.end.i186, %do.end89.uvc_map_get_name.exit188_crit_edge
  %retval.0.i187 = phi ptr [ %40, %do.end89.uvc_map_get_name.exit188_crit_edge ], [ %.str.40.call.i185, %if.end.i186 ]
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev91, ptr noundef nonnull @.str.14, ptr noundef %retval.0.i187, i32 noundef %42) #18
  br label %done

for.end104:                                       ; preds = %for.cond71
  %nmappings = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nmappings, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr %nmappings, i32 1, i32 3, i32 1) #15
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nmappings, ptr %nmappings, i32 1, ptr elementtype(i32) %nmappings) #15, !srcloc !129
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %43, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %asmresult.i.i.i.i)
  %cmp106 = icmp sgt i32 %asmresult.i.i.i.i, 1024
  br i1 %cmp106, label %if.then108, label %if.end123

if.then108:                                       ; preds = %for.end104
  %call.i.i178 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nmappings, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %nmappings, i32 1, i32 3, i32 1) #15
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nmappings, ptr %nmappings, i32 1, ptr elementtype(i32) %nmappings) #15, !srcloc !131
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %45 = load i32, ptr @uvc_dbg_param, align 4
  %and111 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.then108.done_crit_edge, label %do.end116

if.then108.done_crit_edge:                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

do.end116:                                        ; preds = %if.then108
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  %dev118 = getelementptr inbounds %struct.usb_device, ptr %47, i32 0, i32 15
  %name1.i189 = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 3
  %48 = ptrtoint ptr %name1.i189 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name1.i189, align 4
  %tobool.not.i190 = icmp eq ptr %49, null
  br i1 %tobool.not.i190, label %if.end.i195, label %do.end116.uvc_map_get_name.exit197_crit_edge

do.end116.uvc_map_get_name.exit197_crit_edge:     ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_map_get_name.exit197

if.end.i195:                                      ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id, align 4
  %call.i192 = tail call ptr @v4l2_ctrl_get_name(i32 noundef %51) #15
  %tobool3.not.i193 = icmp eq ptr %call.i192, null
  %.str.40.call.i194 = select i1 %tobool3.not.i193, ptr @.str.40, ptr %call.i192
  br label %uvc_map_get_name.exit197

uvc_map_get_name.exit197:                         ; preds = %if.end.i195, %do.end116.uvc_map_get_name.exit197_crit_edge
  %retval.0.i196 = phi ptr [ %49, %do.end116.uvc_map_get_name.exit197_crit_edge ], [ %.str.40.call.i194, %if.end.i195 ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev118, ptr noundef nonnull @.str.17, ptr noundef %retval.0.i196, i32 noundef 1024) #18
  br label %done

if.end123:                                        ; preds = %for.end104
  %call124 = tail call fastcc i32 @__uvc_ctrl_add_mapping(ptr noundef %chain, ptr noundef %ctrl.4218, ptr noundef %mapping)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp125 = icmp slt i32 %call124, 0
  br i1 %cmp125, label %if.then127, label %if.end123.done_crit_edge

if.end123.done_crit_edge:                         ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.then127:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i179 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nmappings, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %nmappings, i32 1, i32 3, i32 1) #15
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nmappings, ptr %nmappings, i32 1, ptr elementtype(i32) %nmappings) #15, !srcloc !131
  br label %done

done:                                             ; preds = %if.then127, %if.end123.done_crit_edge, %uvc_map_get_name.exit197, %if.then108.done_crit_edge, %uvc_map_get_name.exit188, %do.body83.done_crit_edge, %lor.lhs.false56.done_crit_edge, %if.end52.done_crit_edge, %if.end47.done_crit_edge
  %ret.0 = phi i32 [ %call124, %if.then127 ], [ 0, %if.end123.done_crit_edge ], [ -2, %if.end47.done_crit_edge ], [ -22, %lor.lhs.false56.done_crit_edge ], [ -22, %if.end52.done_crit_edge ], [ -17, %uvc_map_get_name.exit188 ], [ -17, %do.body83.done_crit_edge ], [ -12, %uvc_map_get_name.exit197 ], [ -12, %if.then108.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ctrl_mutex) #15
  br label %cleanup131

cleanup131:                                       ; preds = %done, %if.end43.cleanup131_crit_edge, %for.end40.cleanup131_crit_edge, %uvc_map_get_name.exit, %do.body.cleanup131_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ -22, %uvc_map_get_name.exit ], [ -22, %do.body.cleanup131_crit_edge ], [ -2, %for.end40.cleanup131_crit_edge ], [ -512, %if.end43.cleanup131_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__uvc_ctrl_add_mapping(ptr nocapture noundef %chain, ptr noundef %ctrl, ptr noundef %mapping) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef %mapping, i32 noundef 84, i32 noundef 3264) #15
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %ev_subs = getelementptr inbounds %struct.uvc_control_mapping, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %ev_subs to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %ev_subs, ptr %ev_subs, align 4
  %prev.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %call, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ev_subs, ptr %prev.i, align 4
  %menu_count = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 11
  %2 = ptrtoint ptr %menu_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %menu_count, align 4
  %mul = mul i32 %3, 36
  %menu_info = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 10
  %4 = ptrtoint ptr %menu_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %menu_info, align 4
  %call1 = tail call ptr @kmemdup(ptr noundef %5, i32 noundef %mul, i32 noundef 3264) #15
  %menu_info2 = getelementptr inbounds %struct.uvc_control_mapping, ptr %call, i32 0, i32 10
  %6 = ptrtoint ptr %menu_info2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %menu_info2, align 4
  %cmp4 = icmp eq ptr %call1, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %get = getelementptr inbounds %struct.uvc_control_mapping, ptr %call, i32 0, i32 15
  %7 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get, align 4
  %cmp7 = icmp eq ptr %8, null
  br i1 %cmp7, label %if.then8, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @uvc_get_le_value, ptr %get, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6.if.end10_crit_edge
  %set = getelementptr inbounds %struct.uvc_control_mapping, ptr %call, i32 0, i32 16
  %10 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set, align 4
  %cmp11 = icmp eq ptr %11, null
  br i1 %cmp11, label %if.then12, label %if.end10.if.end14_crit_edge

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @uvc_set_le_value, ptr %set, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %id = getelementptr inbounds %struct.uvc_control_mapping, ptr %call, i32 0, i32 2
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %15 = and i32 %14, 268369920
  call void @__sanitizer_cov_trace_const_cmp4(i32 10092544, i32 %15)
  %cmp17 = icmp eq i32 %15, 10092544
  br i1 %cmp17, label %if.end14.if.then18_crit_edge, label %for.inc

if.end14.if.then18_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then18

if.then18:                                        ; preds = %for.inc.if.then18_crit_edge, %if.end14.if.then18_crit_edge
  %i.055.lcssa = phi i8 [ 0, %if.end14.if.then18_crit_edge ], [ 1, %for.inc.if.then18_crit_edge ]
  %shl = shl nuw nsw i8 1, %i.055.lcssa
  %ctrl_class_bitmap = getelementptr inbounds %struct.uvc_video_chain, ptr %chain, i32 0, i32 8
  %16 = ptrtoint ptr %ctrl_class_bitmap to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ctrl_class_bitmap, align 4
  %conv19 = or i8 %17, %shl
  store i8 %conv19, ptr %ctrl_class_bitmap, align 4
  br label %for.end

for.inc:                                          ; preds = %if.end14
  %18 = and i32 %14, 268369920
  call void @__sanitizer_cov_trace_const_cmp4(i32 9961472, i32 %18)
  %cmp17.1 = icmp eq i32 %18, 9961472
  br i1 %cmp17.1, label %for.inc.if.then18_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.if.then18_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then18

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then18
  %info = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1
  %prev.i53 = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i53, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %20, ptr noundef %info) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %prev.i53 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call, ptr %prev.i53, align 4
  %22 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %info, ptr %call, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call, ptr %20, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.end.list_add_tail.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %25 = load i32, ptr @uvc_dbg_param, align 4
  %and21 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool.not = icmp eq i32 %and21, 0
  br i1 %tobool.not, label %list_add_tail.exit.cleanup_crit_edge, label %do.end

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %list_add_tail.exit
  %26 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chain, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  %dev24 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  %name1.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %call, i32 0, i32 3
  %30 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name1.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.uvc_map_get_name.exit_crit_edge

do.end.uvc_map_get_name.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_map_get_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id, align 4
  %call.i = tail call ptr @v4l2_ctrl_get_name(i32 noundef %33) #15
  %tobool3.not.i = icmp eq ptr %call.i, null
  %.str.40.call.i = select i1 %tobool3.not.i, ptr @.str.40, ptr %call.i
  br label %uvc_map_get_name.exit

uvc_map_get_name.exit:                            ; preds = %if.end.i, %do.end.uvc_map_get_name.exit_crit_edge
  %retval.0.i = phi ptr [ %31, %do.end.uvc_map_get_name.exit_crit_edge ], [ %.str.40.call.i, %if.end.i ]
  %entity = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 1
  %selector = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %selector to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %selector, align 1
  %conv28 = zext i8 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev24, ptr noundef nonnull @.str.41, ptr noundef %retval.0.i, ptr noundef %entity, i32 noundef %conv28) #18
  br label %cleanup

cleanup:                                          ; preds = %uvc_map_get_name.exit, %list_add_tail.exit.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then5 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %uvc_map_get_name.exit ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_ctrl_init_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %async_ctrl = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 23
  tail call void @__init_work(ptr noundef %async_ctrl, i32 noundef 0) #15
  %0 = ptrtoint ptr %async_ctrl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %async_ctrl, align 4
  %lockdep_map = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 23, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.19, ptr noundef nonnull @uvc_ctrl_init_device.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry7 = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 23, i32 0, i32 1
  %1 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 23, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 23, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @uvc_ctrl_status_event_work, ptr %func, align 4
  %chains = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 15
  %4 = ptrtoint ptr %chains to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn32 = load ptr, ptr %chains, align 4
  %cmp.not33 = icmp eq ptr %.pn32, %chains
  br i1 %cmp.not33, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %uvc_ctrl_init_chain.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn34 = phi ptr [ %.pn, %uvc_ctrl_init_chain.exit.for.body_crit_edge ], [ %.pn32, %entry.for.body_crit_edge ]
  %chain.0 = getelementptr i8, ptr %.pn34, i32 -4
  %entities.i = getelementptr i8, ptr %.pn34, i32 8
  %5 = ptrtoint ptr %entities.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn133.i = load ptr, ptr %entities.i, align 4
  %cmp.not135.i = icmp eq ptr %.pn133.i, %entities.i
  br i1 %cmp.not135.i, label %for.body.uvc_ctrl_init_chain.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.uvc_ctrl_init_chain.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_init_chain.exit

for.body.i:                                       ; preds = %for.inc66.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %.pn136.i = phi ptr [ %.pn.i, %for.inc66.i.for.body.i_crit_edge ], [ %.pn133.i, %for.body.for.body.i_crit_edge ]
  %entity.0137.i = getelementptr i8, ptr %.pn136.i, i32 -8
  %type.i = getelementptr i8, ptr %.pn136.i, i32 14
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type.i, align 2
  %trunc.i = trunc i16 %7 to i15
  %8 = zext i15 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.50)
  switch i15 %trunc.i, label %for.body.i.if.end39.i_crit_edge [
    i15 6, label %if.then.i
    i15 5, label %if.then13.i
    i15 513, label %if.then23.i
    i15 -2, label %if.then33.i
  ]

for.body.i.if.end39.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %bmControls5.i = getelementptr i8, ptr %.pn136.i, i32 312
  %9 = ptrtoint ptr %bmControls5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bmControls5.i, align 4
  %bControlSize6.i = getelementptr i8, ptr %.pn136.i, i32 309
  %11 = ptrtoint ptr %bControlSize6.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bControlSize6.i, align 1
  br label %if.end39.i

if.then13.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %bmControls14.i = getelementptr i8, ptr %.pn136.i, i32 312
  %13 = ptrtoint ptr %bmControls14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bmControls14.i, align 4
  %bControlSize15.i = getelementptr i8, ptr %.pn136.i, i32 310
  %15 = ptrtoint ptr %bControlSize15.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bControlSize15.i, align 2
  br label %if.end39.i

if.then23.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %bmControls24.i = getelementptr i8, ptr %.pn136.i, i32 316
  %17 = ptrtoint ptr %bmControls24.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bmControls24.i, align 4
  %bControlSize25.i = getelementptr i8, ptr %.pn136.i, i32 314
  %19 = ptrtoint ptr %bControlSize25.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bControlSize25.i, align 2
  br label %if.end39.i

if.then33.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %21 = getelementptr i8, ptr %.pn136.i, i32 308
  %bmControls34.i = getelementptr i8, ptr %.pn136.i, i32 312
  %22 = ptrtoint ptr %bmControls34.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bmControls34.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %21, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then33.i, %if.then23.i, %if.then13.i, %if.then.i, %for.body.i.if.end39.i_crit_edge
  %bControlSize.0.shrunk.i = phi i8 [ %12, %if.then.i ], [ %16, %if.then13.i ], [ %20, %if.then23.i ], [ %25, %if.then33.i ], [ 0, %for.body.i.if.end39.i_crit_edge ]
  %bmControls.0.i = phi ptr [ %10, %if.then.i ], [ %14, %if.then13.i ], [ %18, %if.then23.i ], [ %23, %if.then33.i ], [ null, %for.body.i.if.end39.i_crit_edge ]
  %bControlSize.0.i = zext i8 %bControlSize.0.shrunk.i to i32
  %26 = ptrtoint ptr %chain.0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chain.0, align 4
  %28 = and i16 %7, 32767
  %and.i.i = zext i16 %28 to i32
  %29 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %and.i.i, label %if.end39.i.uvc_ctrl_prune_entity.exit.i_crit_edge [
    i32 5, label %if.end39.i.sw.epilog.i.i_crit_edge
    i32 513, label %sw.bb2.i.i
  ]

if.end39.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i.i

if.end39.i.uvc_ctrl_prune_entity.exit.i_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_prune_entity.exit.i

sw.bb2.i.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb2.i.i, %if.end39.i.sw.epilog.i.i_crit_edge
  %.sink143.i = phi i32 [ 316, %sw.bb2.i.i ], [ 312, %if.end39.i.sw.epilog.i.i_crit_edge ]
  %.sink.i = phi i32 [ 314, %sw.bb2.i.i ], [ 310, %if.end39.i.sw.epilog.i.i_crit_edge ]
  %blacklist.0.i.i = phi ptr [ @uvc_ctrl_prune_entity.camera_blacklist, %sw.bb2.i.i ], [ @uvc_ctrl_prune_entity.processing_blacklist, %if.end39.i.sw.epilog.i.i_crit_edge ]
  %exitcond.not.i.i = phi i1 [ true, %sw.bb2.i.i ], [ false, %if.end39.i.sw.epilog.i.i_crit_edge ]
  %bmControls3.i.i = getelementptr i8, ptr %.pn136.i, i32 %.sink143.i
  %bControlSize4.i.i = getelementptr i8, ptr %.pn136.i, i32 %.sink.i
  %30 = ptrtoint ptr %bmControls3.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %controls.0.i.i = load ptr, ptr %bmControls3.i.i, align 4
  %31 = ptrtoint ptr %bControlSize4.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %size.0.in.i.i = load i8, ptr %bControlSize4.i.i, align 2
  %size.0.i.i = zext i8 %size.0.in.i.i to i32
  %intf.i.i = getelementptr inbounds %struct.uvc_device, ptr %27, i32 0, i32 1
  %mul.i.i = shl nuw nsw i32 %size.0.i.i, 3
  %id23.i.i = getelementptr i8, ptr %.pn136.i, i32 12
  %32 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %intf.i.i, align 4
  %call.i.i = tail call i32 @usb_match_one_id(ptr noundef %33, ptr noundef nonnull %blacklist.0.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %sw.epilog.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

sw.epilog.i.i.for.inc.i.i_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %sw.epilog.i.i
  %index.i.i = getelementptr %struct.uvc_ctrl_blacklist, ptr %blacklist.0.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %index.i.i, align 4
  %conv8.i.i = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %conv8.i.i)
  %cmp9.not.i.i = icmp ugt i32 %mul.i.i, %conv8.i.i
  br i1 %cmp9.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %shr.i58.i.i = lshr i32 %conv8.i.i, 3
  %arrayidx.i.i.i = getelementptr i8, ptr %controls.0.i.i, i32 %shr.i58.i.i
  %36 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %37 to i32
  %and.i.i.i = and i32 %conv8.i.i, 7
  %38 = shl nuw nsw i32 1, %and.i.i.i
  %39 = and i32 %38, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool15.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool15.not.i.i, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge, label %do.body.i.i

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

do.body.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %40 = load i32, ptr @uvc_dbg_param, align 4
  %and18.i.i = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool19.not.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool19.not.i.i, label %do.body.i.i.do.end30.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.end30.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %27, align 8
  %dev22.i.i = getelementptr inbounds %struct.usb_device, ptr %42, i32 0, i32 15
  %43 = ptrtoint ptr %id23.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %id23.i.i, align 4
  %conv24.i.i = zext i16 %44 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev22.i.i, ptr noundef nonnull @.str.46, i32 noundef %conv24.i.i, i32 noundef %conv8.i.i) #18
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %do.end.i.i, %do.body.i.i.do.end30.i.i_crit_edge
  %45 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i.i.i, align 1
  %47 = trunc i32 %38 to i8
  %48 = xor i8 %47, -1
  %conv2.i.i.i = and i8 %46, %48
  store i8 %conv2.i.i.i, ptr %arrayidx.i.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end30.i.i, %lor.lhs.false.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %sw.epilog.i.i.for.inc.i.i_crit_edge
  br i1 %exitcond.not.i.i, label %for.inc.i.i.uvc_ctrl_prune_entity.exit.i_crit_edge, label %for.body.i.i.1

for.inc.i.i.uvc_ctrl_prune_entity.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_prune_entity.exit.i

for.body.i.i.1:                                   ; preds = %for.inc.i.i
  %49 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %intf.i.i, align 4
  %arrayidx.i.i.1 = getelementptr %struct.uvc_ctrl_blacklist, ptr %blacklist.0.i.i, i32 1
  %call.i.i.1 = tail call i32 @usb_match_one_id(ptr noundef %50, ptr noundef %arrayidx.i.i.1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool.not.i.i.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool.not.i.i.1, label %for.body.i.i.1.for.body.i.i.2_crit_edge, label %if.end.i.i.1

for.body.i.i.1.for.body.i.i.2_crit_edge:          ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.2

if.end.i.i.1:                                     ; preds = %for.body.i.i.1
  %index.i.i.1 = getelementptr %struct.uvc_ctrl_blacklist, ptr %blacklist.0.i.i, i32 1, i32 1
  %51 = ptrtoint ptr %index.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %index.i.i.1, align 4
  %conv8.i.i.1 = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %conv8.i.i.1)
  %cmp9.not.i.i.1 = icmp ugt i32 %mul.i.i, %conv8.i.i.1
  br i1 %cmp9.not.i.i.1, label %lor.lhs.false.i.i.1, label %if.end.i.i.1.for.body.i.i.2_crit_edge

if.end.i.i.1.for.body.i.i.2_crit_edge:            ; preds = %if.end.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.2

lor.lhs.false.i.i.1:                              ; preds = %if.end.i.i.1
  %shr.i58.i.i.1 = lshr i32 %conv8.i.i.1, 3
  %arrayidx.i.i.i.1 = getelementptr i8, ptr %controls.0.i.i, i32 %shr.i58.i.i.1
  %53 = ptrtoint ptr %arrayidx.i.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.i.i.1, align 1
  %conv.i.i.i.1 = zext i8 %54 to i32
  %and.i.i.i.1 = and i32 %conv8.i.i.1, 7
  %55 = shl nuw nsw i32 1, %and.i.i.i.1
  %56 = and i32 %55, %conv.i.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool15.not.i.i.1 = icmp eq i32 %56, 0
  br i1 %tobool15.not.i.i.1, label %lor.lhs.false.i.i.1.for.body.i.i.2_crit_edge, label %do.body.i.i.1

lor.lhs.false.i.i.1.for.body.i.i.2_crit_edge:     ; preds = %lor.lhs.false.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.2

do.body.i.i.1:                                    ; preds = %lor.lhs.false.i.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %57 = load i32, ptr @uvc_dbg_param, align 4
  %and18.i.i.1 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i.1)
  %tobool19.not.i.i.1 = icmp eq i32 %and18.i.i.1, 0
  br i1 %tobool19.not.i.i.1, label %do.body.i.i.1.do.end30.i.i.1_crit_edge, label %do.end.i.i.1

do.body.i.i.1.do.end30.i.i.1_crit_edge:           ; preds = %do.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30.i.i.1

do.end.i.i.1:                                     ; preds = %do.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #17
  %58 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %27, align 8
  %dev22.i.i.1 = getelementptr inbounds %struct.usb_device, ptr %59, i32 0, i32 15
  %60 = ptrtoint ptr %id23.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %id23.i.i, align 4
  %conv24.i.i.1 = zext i16 %61 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev22.i.i.1, ptr noundef nonnull @.str.46, i32 noundef %conv24.i.i.1, i32 noundef %conv8.i.i.1) #18
  br label %do.end30.i.i.1

do.end30.i.i.1:                                   ; preds = %do.end.i.i.1, %do.body.i.i.1.do.end30.i.i.1_crit_edge
  %62 = ptrtoint ptr %arrayidx.i.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i.i.i.1, align 1
  %64 = trunc i32 %55 to i8
  %65 = xor i8 %64, -1
  %conv2.i.i.i.1 = and i8 %63, %65
  store i8 %conv2.i.i.i.1, ptr %arrayidx.i.i.i.1, align 1
  br label %for.body.i.i.2

for.body.i.i.2:                                   ; preds = %do.end30.i.i.1, %lor.lhs.false.i.i.1.for.body.i.i.2_crit_edge, %if.end.i.i.1.for.body.i.i.2_crit_edge, %for.body.i.i.1.for.body.i.i.2_crit_edge
  %66 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %intf.i.i, align 4
  %arrayidx.i.i.2 = getelementptr %struct.uvc_ctrl_blacklist, ptr %blacklist.0.i.i, i32 2
  %call.i.i.2 = tail call i32 @usb_match_one_id(ptr noundef %67, ptr noundef %arrayidx.i.i.2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %tobool.not.i.i.2 = icmp eq i32 %call.i.i.2, 0
  br i1 %tobool.not.i.i.2, label %for.body.i.i.2.uvc_ctrl_prune_entity.exit.i_crit_edge, label %if.end.i.i.2

for.body.i.i.2.uvc_ctrl_prune_entity.exit.i_crit_edge: ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_prune_entity.exit.i

if.end.i.i.2:                                     ; preds = %for.body.i.i.2
  %index.i.i.2 = getelementptr %struct.uvc_ctrl_blacklist, ptr %blacklist.0.i.i, i32 2, i32 1
  %68 = ptrtoint ptr %index.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %index.i.i.2, align 4
  %conv8.i.i.2 = zext i8 %69 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %conv8.i.i.2)
  %cmp9.not.i.i.2 = icmp ugt i32 %mul.i.i, %conv8.i.i.2
  br i1 %cmp9.not.i.i.2, label %lor.lhs.false.i.i.2, label %if.end.i.i.2.uvc_ctrl_prune_entity.exit.i_crit_edge

if.end.i.i.2.uvc_ctrl_prune_entity.exit.i_crit_edge: ; preds = %if.end.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_prune_entity.exit.i

lor.lhs.false.i.i.2:                              ; preds = %if.end.i.i.2
  %shr.i58.i.i.2 = lshr i32 %conv8.i.i.2, 3
  %arrayidx.i.i.i.2 = getelementptr i8, ptr %controls.0.i.i, i32 %shr.i58.i.i.2
  %70 = ptrtoint ptr %arrayidx.i.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i.i.i.2, align 1
  %conv.i.i.i.2 = zext i8 %71 to i32
  %and.i.i.i.2 = and i32 %conv8.i.i.2, 7
  %72 = shl nuw nsw i32 1, %and.i.i.i.2
  %73 = and i32 %72, %conv.i.i.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool15.not.i.i.2 = icmp eq i32 %73, 0
  br i1 %tobool15.not.i.i.2, label %lor.lhs.false.i.i.2.uvc_ctrl_prune_entity.exit.i_crit_edge, label %do.body.i.i.2

lor.lhs.false.i.i.2.uvc_ctrl_prune_entity.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_prune_entity.exit.i

do.body.i.i.2:                                    ; preds = %lor.lhs.false.i.i.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %74 = load i32, ptr @uvc_dbg_param, align 4
  %and18.i.i.2 = and i32 %74, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i.2)
  %tobool19.not.i.i.2 = icmp eq i32 %and18.i.i.2, 0
  br i1 %tobool19.not.i.i.2, label %do.body.i.i.2.do.end30.i.i.2_crit_edge, label %do.end.i.i.2

do.body.i.i.2.do.end30.i.i.2_crit_edge:           ; preds = %do.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30.i.i.2

do.end.i.i.2:                                     ; preds = %do.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %27, align 8
  %dev22.i.i.2 = getelementptr inbounds %struct.usb_device, ptr %76, i32 0, i32 15
  %77 = ptrtoint ptr %id23.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %id23.i.i, align 4
  %conv24.i.i.2 = zext i16 %78 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev22.i.i.2, ptr noundef nonnull @.str.46, i32 noundef %conv24.i.i.2, i32 noundef %conv8.i.i.2) #18
  br label %do.end30.i.i.2

do.end30.i.i.2:                                   ; preds = %do.end.i.i.2, %do.body.i.i.2.do.end30.i.i.2_crit_edge
  %79 = ptrtoint ptr %arrayidx.i.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.i.i.i.2, align 1
  %81 = trunc i32 %72 to i8
  %82 = xor i8 %81, -1
  %conv2.i.i.i.2 = and i8 %80, %82
  store i8 %conv2.i.i.i.2, ptr %arrayidx.i.i.i.2, align 1
  br label %uvc_ctrl_prune_entity.exit.i

uvc_ctrl_prune_entity.exit.i:                     ; preds = %do.end30.i.i.2, %lor.lhs.false.i.i.2.uvc_ctrl_prune_entity.exit.i_crit_edge, %if.end.i.i.2.uvc_ctrl_prune_entity.exit.i_crit_edge, %for.body.i.i.2.uvc_ctrl_prune_entity.exit.i_crit_edge, %for.inc.i.i.uvc_ctrl_prune_entity.exit.i_crit_edge, %if.end39.i.uvc_ctrl_prune_entity.exit.i_crit_edge
  %call.i = tail call i32 @memweight(ptr noundef %bmControls.0.i, i32 noundef %bControlSize.0.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp40.i = icmp eq i32 %call.i, 0
  br i1 %cmp40.i, label %uvc_ctrl_prune_entity.exit.i.for.inc66.i_crit_edge, label %if.end43.i

uvc_ctrl_prune_entity.exit.i.for.inc66.i_crit_edge: ; preds = %uvc_ctrl_prune_entity.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc66.i

if.end43.i:                                       ; preds = %uvc_ctrl_prune_entity.exit.i
  %83 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 48) #15
  %84 = extractvalue { i32, i1 } %83, 1
  br i1 %84, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !132

kcalloc.exit.thread.i:                            ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #17
  %controls118.i = getelementptr i8, ptr %.pn136.i, i32 344
  %85 = ptrtoint ptr %controls118.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %controls118.i, align 4
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %if.end43.i
  %86 = extractvalue { i32, i1 } %83, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %86, i32 noundef 3520) #19
  %controls.i = getelementptr i8, ptr %.pn136.i, i32 344
  %87 = ptrtoint ptr %controls.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call8.i.i.i, ptr %controls.i, align 4
  %cmp46.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp46.i, label %if.end7.i.i.i.cleanup_crit_edge, label %if.end49.i

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end49.i:                                       ; preds = %if.end7.i.i.i
  %ncontrols50.i = getelementptr i8, ptr %.pn136.i, i32 340
  %88 = ptrtoint ptr %ncontrols50.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call.i, ptr %ncontrols50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bControlSize.0.shrunk.i)
  %cmp53128.not.i = icmp eq i8 %bControlSize.0.shrunk.i, 0
  br i1 %cmp53128.not.i, label %if.end49.i.for.inc66.i_crit_edge, label %for.body55.lr.ph.i

if.end49.i.for.inc66.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc66.i

for.body55.lr.ph.i:                               ; preds = %if.end49.i
  %mul.i = shl nuw nsw i32 %bControlSize.0.i, 3
  %guid1.i.i.i = getelementptr i8, ptr %.pn136.i, i32 80
  %umax.i = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 1) #15
  br label %for.body55.i

for.body55.i:                                     ; preds = %for.inc.i.for.body55.i_crit_edge, %for.body55.lr.ph.i
  %ctrl.0130.i = phi ptr [ %call8.i.i.i, %for.body55.lr.ph.i ], [ %ctrl.1.i, %for.inc.i.for.body55.i_crit_edge ]
  %i.0129.i = phi i32 [ 0, %for.body55.lr.ph.i ], [ %inc.i, %for.inc.i.for.body55.i_crit_edge ]
  %89 = lshr i32 %i.0129.i, 3
  %arrayidx.i107.i = getelementptr i8, ptr %bmControls.0.i, i32 %89
  %90 = ptrtoint ptr %arrayidx.i107.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.i107.i, align 1
  %conv.i.i = zext i8 %91 to i32
  %and.i108.i = and i32 %i.0129.i, 7
  %92 = shl nuw nsw i32 1, %and.i108.i
  %93 = and i32 %92, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp57.i = icmp eq i32 %93, 0
  br i1 %cmp57.i, label %for.body55.i.for.inc.i_crit_edge, label %if.end60.i

for.body55.i.for.inc.i_crit_edge:                 ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end60.i:                                       ; preds = %for.body55.i
  %94 = ptrtoint ptr %ctrl.0130.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %entity.0137.i, ptr %ctrl.0130.i, align 4
  %conv62.i = trunc i32 %i.0129.i to i8
  %index.i = getelementptr inbounds %struct.uvc_control, ptr %ctrl.0130.i, i32 0, i32 2
  %95 = ptrtoint ptr %index.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv62.i, ptr %index.i, align 4
  %96 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %type.i, align 2
  %98 = and i16 %97, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %98)
  %cmp.i.i = icmp eq i16 %98, 6
  br i1 %cmp.i.i, label %if.end60.i.uvc_ctrl_init_ctrl.exit.i_crit_edge, label %if.end60.i.for.body.i111.i_crit_edge

if.end60.i.for.body.i111.i_crit_edge:             ; preds = %if.end60.i
  br label %for.body.i111.i

if.end60.i.uvc_ctrl_init_ctrl.exit.i_crit_edge:   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_init_ctrl.exit.i

for.body.i111.i:                                  ; preds = %for.inc.i116.i.for.body.i111.i_crit_edge, %if.end60.i.for.body.i111.i_crit_edge
  %info.073.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i116.i.for.body.i111.i_crit_edge ], [ @uvc_ctrls, %if.end60.i.for.body.i111.i_crit_edge ]
  %entity6.i.i = getelementptr inbounds %struct.uvc_control_info, ptr %info.073.i.i, i32 0, i32 1
  %bcmp.i.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %guid1.i.i.i, ptr noundef dereferenceable(16) %entity6.i.i, i32 16) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %cmp.i.not.i.i, label %land.lhs.true.i.i, label %for.body.i111.i.for.inc.i116.i_crit_edge

for.body.i111.i.for.inc.i116.i_crit_edge:         ; preds = %for.body.i111.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i116.i

land.lhs.true.i.i:                                ; preds = %for.body.i111.i
  %index8.i.i = getelementptr inbounds %struct.uvc_control_info, ptr %info.073.i.i, i32 0, i32 2
  %99 = ptrtoint ptr %index8.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %index8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %100, i8 %conv62.i)
  %cmp10.i.i = icmp eq i8 %100, %conv62.i
  br i1 %cmp10.i.i, label %if.then12.i.i, label %land.lhs.true.i.i.for.inc.i116.i_crit_edge

land.lhs.true.i.i.for.inc.i116.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i116.i

if.then12.i.i:                                    ; preds = %land.lhs.true.i.i
  %101 = ptrtoint ptr %chain.0 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %chain.0, align 4
  %info1.i.i.i = getelementptr inbounds %struct.uvc_control, ptr %ctrl.0130.i, i32 0, i32 1
  %103 = call ptr @memcpy(ptr %info1.i.i.i, ptr %info.073.i.i, i32 32)
  %104 = ptrtoint ptr %info1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %info1.i.i.i, ptr %info1.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.uvc_control, ptr %ctrl.0130.i, i32 0, i32 1, i32 0, i32 1
  %105 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %info1.i.i.i, ptr %prev.i.i.i.i, align 4
  %size.i.i.i = getelementptr inbounds %struct.uvc_control, ptr %ctrl.0130.i, i32 0, i32 1, i32 4
  %106 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %size.i.i.i, align 2
  %conv.i67.i.i = zext i16 %107 to i32
  %mul.i.i.i = mul nuw nsw i32 %conv.i67.i.i, 6
  %add.i.i.i = or i32 %mul.i.i.i, 1
  %call9.i.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i, i32 noundef 3520) #19
  %uvc_data.i.i.i = getelementptr inbounds %struct.uvc_control, ptr %ctrl.0130.i, i32 0, i32 4
  %108 = ptrtoint ptr %uvc_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call9.i.i.i.i.i, ptr %uvc_data.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then12.i.i.uvc_ctrl_add_info.exit.i.i_crit_edge, label %if.end.i.i115.i

if.then12.i.i.uvc_ctrl_add_info.exit.i.i_crit_edge: ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_add_info.exit.i.i

if.end.i.i115.i:                                  ; preds = %if.then12.i.i
  %initialized.i.i.i = getelementptr inbounds %struct.uvc_control, ptr %ctrl.0130.i, i32 0, i32 3
  %109 = ptrtoint ptr %initialized.i.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %bf.load.i.i.i = load i8, ptr %initialized.i.i.i, align 1
  %bf.set.i.i.i = or i8 %bf.load.i.i.i, 8
  store i8 %bf.set.i.i.i, ptr %initialized.i.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %110 = load i32, ptr @uvc_dbg_param, align 4
  %and.i.i114.i = and i32 %110, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i114.i)
  %tobool5.not.i.i.i = icmp eq i32 %and.i.i114.i, 0
  br i1 %tobool5.not.i.i.i, label %if.end.i.i115.i.uvc_ctrl_add_info.exit.i.i_crit_edge, label %do.end.i.i.i

if.end.i.i115.i.uvc_ctrl_add_info.exit.i.i_crit_edge: ; preds = %if.end.i.i115.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_add_info.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i115.i
  call void @__sanitizer_cov_trace_pc() #17
  %111 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %102, align 8
  %dev8.i.i.i = getelementptr inbounds %struct.usb_device, ptr %112, i32 0, i32 15
  %entity.i.i.i = getelementptr inbounds %struct.uvc_control, ptr %ctrl.0130.i, i32 0, i32 1, i32 1
  %selector.i.i.i = getelementptr inbounds %struct.uvc_control, ptr %ctrl.0130.i, i32 0, i32 1, i32 3
  %113 = ptrtoint ptr %selector.i.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %selector.i.i.i, align 1
  %conv11.i.i.i = zext i8 %114 to i32
  %devpath.i.i.i = getelementptr inbounds %struct.usb_device, ptr %112, i32 0, i32 1
  %115 = ptrtoint ptr %ctrl.0130.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ctrl.0130.i, align 4
  %id.i.i.i = getelementptr inbounds %struct.uvc_entity, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %id.i.i.i, align 4
  %conv15.i.i.i = zext i16 %118 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev8.i.i.i, ptr noundef nonnull @.str.35, ptr noundef %entity.i.i.i, i32 noundef %conv11.i.i.i, ptr noundef %devpath.i.i.i, i32 noundef %conv15.i.i.i) #18
  br label %uvc_ctrl_add_info.exit.i.i

uvc_ctrl_add_info.exit.i.i:                       ; preds = %do.end.i.i.i, %if.end.i.i115.i.uvc_ctrl_add_info.exit.i.i_crit_edge, %if.then12.i.i.uvc_ctrl_add_info.exit.i.i_crit_edge
  %119 = ptrtoint ptr %chain.0 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %chain.0, align 4
  %call16.i.i = tail call fastcc i32 @uvc_ctrl_get_flags(ptr noundef %120, ptr noundef %ctrl.0130.i, ptr noundef %info1.i.i.i) #15
  br label %for.end.i.i

for.inc.i116.i:                                   ; preds = %land.lhs.true.i.i.for.inc.i116.i_crit_edge, %for.body.i111.i.for.inc.i116.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.uvc_control_info, ptr %info.073.i.i, i32 1
  %cmp3.i.i = icmp ult ptr %incdec.ptr.i.i, getelementptr inbounds ([36 x %struct.uvc_control_info], ptr @uvc_ctrls, i32 1, i32 0)
  br i1 %cmp3.i.i, label %for.inc.i116.i.for.body.i111.i_crit_edge, label %for.inc.i116.i.for.end.i.i_crit_edge

for.inc.i116.i.for.end.i.i_crit_edge:             ; preds = %for.inc.i116.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.inc.i116.i.for.body.i111.i_crit_edge:         ; preds = %for.inc.i116.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i111.i

for.end.i.i:                                      ; preds = %for.inc.i116.i.for.end.i.i_crit_edge, %uvc_ctrl_add_info.exit.i.i
  %initialized.i.i = getelementptr inbounds %struct.uvc_control, ptr %ctrl.0130.i, i32 0, i32 3
  %121 = ptrtoint ptr %initialized.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %bf.load.i.i = load i8, ptr %initialized.i.i, align 1
  %122 = and i8 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool18.not.i.i = icmp eq i8 %122, 0
  br i1 %tobool18.not.i.i, label %for.end.i.i.uvc_ctrl_init_ctrl.exit.i_crit_edge, label %for.cond21.preheader.i.i

for.end.i.i.uvc_ctrl_init_ctrl.exit.i_crit_edge:  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_init_ctrl.exit.i

for.cond21.preheader.i.i:                         ; preds = %for.end.i.i
  %selector.i.i = getelementptr inbounds %struct.uvc_control, ptr %ctrl.0130.i, i32 0, i32 1, i32 3
  br label %for.body24.i.i

for.body24.i.i:                                   ; preds = %for.inc40.i.i.for.body24.i.i_crit_edge, %for.cond21.preheader.i.i
  %mapping.075.i.i = phi ptr [ @uvc_ctrl_mappings, %for.cond21.preheader.i.i ], [ %incdec.ptr41.i.i, %for.inc40.i.i.for.body24.i.i_crit_edge ]
  %123 = ptrtoint ptr %ctrl.0130.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ctrl.0130.i, align 4
  %entity26.i.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping.075.i.i, i32 0, i32 4
  %guid1.i68.i.i = getelementptr inbounds %struct.uvc_entity, ptr %124, i32 0, i32 6
  %bcmp.i69.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %guid1.i68.i.i, ptr noundef dereferenceable(16) %entity26.i.i, i32 16) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i69.i.i)
  %cmp.i70.not.i.i = icmp eq i32 %bcmp.i69.i.i, 0
  br i1 %cmp.i70.not.i.i, label %land.lhs.true30.i.i, label %for.body24.i.i.for.inc40.i.i_crit_edge

for.body24.i.i.for.inc40.i.i_crit_edge:           ; preds = %for.body24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc40.i.i

land.lhs.true30.i.i:                              ; preds = %for.body24.i.i
  %125 = ptrtoint ptr %selector.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %selector.i.i, align 1
  %selector33.i.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping.075.i.i, i32 0, i32 5
  %127 = ptrtoint ptr %selector33.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %selector33.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %126, i8 %128)
  %cmp35.i.i = icmp eq i8 %126, %128
  br i1 %cmp35.i.i, label %if.then37.i.i, label %land.lhs.true30.i.i.for.inc40.i.i_crit_edge

land.lhs.true30.i.i.for.inc40.i.i_crit_edge:      ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc40.i.i

if.then37.i.i:                                    ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call38.i.i = tail call fastcc i32 @__uvc_ctrl_add_mapping(ptr noundef %chain.0, ptr noundef %ctrl.0130.i, ptr noundef %mapping.075.i.i) #15
  br label %for.inc40.i.i

for.inc40.i.i:                                    ; preds = %if.then37.i.i, %land.lhs.true30.i.i.for.inc40.i.i_crit_edge, %for.body24.i.i.for.inc40.i.i_crit_edge
  %incdec.ptr41.i.i = getelementptr %struct.uvc_control_mapping, ptr %mapping.075.i.i, i32 1
  %cmp22.i.i = icmp ult ptr %incdec.ptr41.i.i, getelementptr inbounds ([30 x %struct.uvc_control_mapping], ptr @uvc_ctrl_mappings, i32 1, i32 0)
  br i1 %cmp22.i.i, label %for.inc40.i.i.for.body24.i.i_crit_edge, label %for.inc40.i.i.uvc_ctrl_init_ctrl.exit.i_crit_edge

for.inc40.i.i.uvc_ctrl_init_ctrl.exit.i_crit_edge: ; preds = %for.inc40.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_init_ctrl.exit.i

for.inc40.i.i.for.body24.i.i_crit_edge:           ; preds = %for.inc40.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body24.i.i

uvc_ctrl_init_ctrl.exit.i:                        ; preds = %for.inc40.i.i.uvc_ctrl_init_ctrl.exit.i_crit_edge, %for.end.i.i.uvc_ctrl_init_ctrl.exit.i_crit_edge, %if.end60.i.uvc_ctrl_init_ctrl.exit.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.uvc_control, ptr %ctrl.0130.i, i32 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %uvc_ctrl_init_ctrl.exit.i, %for.body55.i.for.inc.i_crit_edge
  %ctrl.1.i = phi ptr [ %ctrl.0130.i, %for.body55.i.for.inc.i_crit_edge ], [ %incdec.ptr.i, %uvc_ctrl_init_ctrl.exit.i ]
  %inc.i = add nuw nsw i32 %i.0129.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.inc.i.for.inc66.i_crit_edge, label %for.inc.i.for.body55.i_crit_edge

for.inc.i.for.body55.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body55.i

for.inc.i.for.inc66.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc66.i

for.inc66.i:                                      ; preds = %for.inc.i.for.inc66.i_crit_edge, %if.end49.i.for.inc66.i_crit_edge, %uvc_ctrl_prune_entity.exit.i.for.inc66.i_crit_edge
  %129 = ptrtoint ptr %.pn136.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %.pn.i = load ptr, ptr %.pn136.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %entities.i
  br i1 %cmp.not.i, label %for.inc66.i.uvc_ctrl_init_chain.exit_crit_edge, label %for.inc66.i.for.body.i_crit_edge

for.inc66.i.for.body.i_crit_edge:                 ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc66.i.uvc_ctrl_init_chain.exit_crit_edge:   ; preds = %for.inc66.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_init_chain.exit

uvc_ctrl_init_chain.exit:                         ; preds = %for.inc66.i.uvc_ctrl_init_chain.exit_crit_edge, %for.body.uvc_ctrl_init_chain.exit_crit_edge
  %130 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %130)
  %.pn = load ptr, ptr %.pn34, align 4
  %cmp.not = icmp eq ptr %.pn, %chains
  br i1 %cmp.not, label %uvc_ctrl_init_chain.exit.cleanup_crit_edge, label %uvc_ctrl_init_chain.exit.for.body_crit_edge

uvc_ctrl_init_chain.exit.for.body_crit_edge:      ; preds = %uvc_ctrl_init_chain.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

uvc_ctrl_init_chain.exit.cleanup_crit_edge:       ; preds = %uvc_ctrl_init_chain.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %uvc_ctrl_init_chain.exit.cleanup_crit_edge, %if.end7.i.i.i.cleanup_crit_edge, %kcalloc.exit.thread.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %kcalloc.exit.thread.i ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ 0, %uvc_ctrl_init_chain.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_ctrl_status_event_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.uvc_ctrl_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %ctrl = getelementptr inbounds %struct.uvc_ctrl_work, ptr %work, i32 0, i32 3
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  %data = getelementptr inbounds %struct.uvc_ctrl_work, ptr %work, i32 0, i32 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  tail call void @uvc_ctrl_status_event(ptr noundef %1, ptr noundef %3, ptr noundef %5)
  %int_ep = getelementptr i8, ptr %work, i32 -80
  %6 = ptrtoint ptr %int_ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %int_ep, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInterval, align 2
  %conv = zext i8 %9 to i32
  %urb = getelementptr inbounds %struct.uvc_ctrl_work, ptr %work, i32 0, i32 1
  %10 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %urb, align 4
  %interval = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %interval, align 4
  %13 = load ptr, ptr %urb, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %13, i32 noundef 3264) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr = getelementptr i8, ptr %work, i32 -1012
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 8
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.43, i32 noundef %call) #18
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvc_ctrl_cleanup_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %func = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 23, i32 0, i32 2
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %async_ctrl = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 23
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %async_ctrl) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %entities = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %entities to i32
  call void @__asan_load4_noabort(i32 %2)
  %entity.033 = load ptr, ptr %entities, align 4
  %cmp.not34 = icmp eq ptr %entity.033, %entities
  br i1 %cmp.not34, label %if.end.for.end17_crit_edge, label %if.end.for.cond4.preheader_crit_edge

if.end.for.cond4.preheader_crit_edge:             ; preds = %if.end
  br label %for.cond4.preheader

if.end.for.end17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end17

for.cond4.preheader:                              ; preds = %for.end.for.cond4.preheader_crit_edge, %if.end.for.cond4.preheader_crit_edge
  %entity.035 = phi ptr [ %entity.0, %for.end.for.cond4.preheader_crit_edge ], [ %entity.033, %if.end.for.cond4.preheader_crit_edge ]
  %ncontrols = getelementptr inbounds %struct.uvc_entity, ptr %entity.035, i32 0, i32 17
  %3 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ncontrols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp530.not = icmp eq i32 %4, 0
  br i1 %cmp530.not, label %for.cond4.preheader.for.end_crit_edge, label %for.body6.lr.ph

for.cond4.preheader.for.end_crit_edge:            ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %controls = getelementptr inbounds %struct.uvc_entity, ptr %entity.035, i32 0, i32 18
  br label %for.body6

for.body6:                                        ; preds = %cleanup.for.body6_crit_edge, %for.body6.lr.ph
  %i.031 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %cleanup.for.body6_crit_edge ]
  %5 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %controls, align 4
  %initialized = getelementptr %struct.uvc_control, ptr %6, i32 %i.031, i32 3
  %7 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %initialized, align 1
  %8 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %for.body6.cleanup_crit_edge, label %if.end9

for.body6.cleanup_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %for.body6
  %info.i = getelementptr %struct.uvc_control, ptr %6, i32 %i.031, i32 1
  %9 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info.i, align 4
  %cmp.not1.i = icmp eq ptr %10, %info.i
  br i1 %cmp.not1.i, label %if.end9.uvc_ctrl_cleanup_mappings.exit_crit_edge, label %if.end9.for.body.i_crit_edge

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

if.end9.uvc_ctrl_cleanup_mappings.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_cleanup_mappings.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %mapping.02.i = phi ptr [ %nm.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %10, %if.end9.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %mapping.02.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %nm.0.i = load ptr, ptr %mapping.02.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mapping.02.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %mapping.02.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %mapping.02.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mapping.02.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %18 = ptrtoint ptr %mapping.02.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %mapping.02.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mapping.02.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %menu_info.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping.02.i, i32 0, i32 10
  %20 = ptrtoint ptr %menu_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %menu_info.i, align 4
  tail call void @kfree(ptr noundef %21) #15
  %name.i = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping.02.i, i32 0, i32 3
  %22 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name.i, align 4
  tail call void @kfree(ptr noundef %23) #15
  tail call void @kfree(ptr noundef %mapping.02.i) #15
  %cmp.not.i = icmp eq ptr %nm.0.i, %info.i
  br i1 %cmp.not.i, label %list_del.exit.i.uvc_ctrl_cleanup_mappings.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

list_del.exit.i.uvc_ctrl_cleanup_mappings.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %uvc_ctrl_cleanup_mappings.exit

uvc_ctrl_cleanup_mappings.exit:                   ; preds = %list_del.exit.i.uvc_ctrl_cleanup_mappings.exit_crit_edge, %if.end9.uvc_ctrl_cleanup_mappings.exit_crit_edge
  %uvc_data = getelementptr %struct.uvc_control, ptr %6, i32 %i.031, i32 4
  %24 = ptrtoint ptr %uvc_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %uvc_data, align 4
  tail call void @kfree(ptr noundef %25) #15
  br label %cleanup

cleanup:                                          ; preds = %uvc_ctrl_cleanup_mappings.exit, %for.body6.cleanup_crit_edge
  %inc = add nuw i32 %i.031, 1
  %26 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ncontrols, align 4
  %cmp5 = icmp ult i32 %inc, %27
  br i1 %cmp5, label %cleanup.for.body6_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup.for.body6_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body6

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond4.preheader.for.end_crit_edge
  %controls10 = getelementptr inbounds %struct.uvc_entity, ptr %entity.035, i32 0, i32 18
  %28 = ptrtoint ptr %controls10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %controls10, align 4
  tail call void @kfree(ptr noundef %29) #15
  %30 = ptrtoint ptr %entity.035 to i32
  call void @__asan_load4_noabort(i32 %30)
  %entity.0 = load ptr, ptr %entity.035, align 4
  %cmp.not = icmp eq ptr %entity.0, %entities
  br i1 %cmp.not, label %for.end.for.end17_crit_edge, label %for.end.for.cond4.preheader_crit_edge

for.end.for.cond4.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond4.preheader

for.end.for.end17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end17

for.end17:                                        ; preds = %for.end.for.end17_crit_edge, %if.end.for.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_get_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue_fh(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uvc_ctrl_get_flags(ptr noundef %dev, ptr nocapture noundef readonly %ctrl, ptr nocapture noundef %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1) #21
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl, align 4
  %get_info = getelementptr inbounds %struct.uvc_entity, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %get_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_info, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %selector = getelementptr inbounds %struct.uvc_control, ptr %ctrl, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %selector to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %selector, align 1
  %call6 = tail call i32 %4(ptr noundef %dev, ptr noundef %2, i8 noundef zeroext %6, ptr noundef nonnull %call7.i) #15
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %id = getelementptr inbounds %struct.uvc_entity, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %id, align 4
  %conv = trunc i16 %8 to i8
  %intfnum = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 4
  %9 = ptrtoint ptr %intfnum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %intfnum, align 8
  %conv8 = trunc i32 %10 to i8
  %selector9 = getelementptr inbounds %struct.uvc_control_info, ptr %info, i32 0, i32 3
  %11 = ptrtoint ptr %selector9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %selector9, align 1
  %call10 = tail call i32 @uvc_query_ctrl(ptr noundef %dev, i8 noundef zeroext -122, i8 noundef zeroext %conv, i8 noundef zeroext %conv8, i8 noundef zeroext %12, ptr noundef nonnull %call7.i, i16 noundef zeroext 1) #15
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then1
  %ret.0 = phi i32 [ %call6, %if.then1 ], [ %call10, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool12.not = icmp eq i32 %ret.0, 0
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.end34_crit_edge

if.end11.if.end34_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %call7.i, align 8
  %conv14 = zext i8 %14 to i32
  %trunc = trunc i8 %14 to i2
  %rev = tail call i2 @llvm.bitreverse.i2(i2 %trunc)
  %or = zext i2 %rev to i32
  %and23 = shl nuw nsw i32 %conv14, 4
  %15 = and i32 %and23, 128
  %16 = and i32 %and23, 256
  %flags = getelementptr inbounds %struct.uvc_control_info, ptr %info, i32 0, i32 5
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %or26 = or i32 %18, %or
  %or32 = or i32 %or26, %15
  %or33 = or i32 %or32, %16
  store i32 %or33, ptr %flags, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then13, %if.end11.if.end34_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end34 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_match_one_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @uvc_get_le_value(ptr nocapture noundef readonly %mapping, i8 noundef zeroext %query, ptr nocapture noundef readonly %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 6
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %size, align 1
  %conv = zext i8 %1 to i32
  %offset1 = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 7
  %2 = ptrtoint ptr %offset1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %offset1, align 2
  %conv2 = zext i8 %3 to i32
  %div64 = lshr i32 %conv2, 3
  %add.ptr = getelementptr i8, ptr %data, i32 %div64
  %and = and i32 %conv2, 7
  %sh_prom = zext i8 %1 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %sh_prom3 = zext i32 %and to i64
  %shl4 = shl i64 %sub, %sh_prom3
  %conv5 = trunc i64 %shl4 to i8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr, align 1
  %and86572 = and i8 %5, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp73.not = icmp eq i32 %and, 0
  %conv1174 = zext i8 %and86572 to i32
  %shr75 = lshr i32 %conv1174, %and
  %sub1376 = sub nsw i32 0, %and
  %shl1477 = shl i32 %conv1174, %sub1376
  %cond78 = select i1 %cmp73.not, i32 %shl1477, i32 %shr75
  %sub21.neg79 = add nsw i32 %conv, -8
  %sub2280 = add nsw i32 %sub21.neg79, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub2280)
  %cmp2381 = icmp slt i32 %sub2280, 1
  br i1 %cmp2381, label %entry.while.end_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  br label %cleanup

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %sub2285 = phi i32 [ %sub22, %cleanup.cleanup_crit_edge ], [ %sub2280, %entry.cleanup_crit_edge ]
  %or84 = phi i32 [ %or, %cleanup.cleanup_crit_edge ], [ %cond78, %entry.cleanup_crit_edge ]
  %offset.083 = phi i32 [ %sub25, %cleanup.cleanup_crit_edge ], [ %and, %entry.cleanup_crit_edge ]
  %data.addr.082 = phi ptr [ %incdec.ptr, %cleanup.cleanup_crit_edge ], [ %add.ptr, %entry.cleanup_crit_edge ]
  %sub25 = add i32 %offset.083, -8
  %notmask66 = shl nsw i32 -1, %sub2285
  %6 = trunc i32 %notmask66 to i8
  %conv28 = xor i8 %6, -1
  %incdec.ptr = getelementptr i8, ptr %data.addr.082, i32 1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr, align 1
  %and865 = and i8 %8, %conv28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub25)
  %cmp = icmp sgt i32 %sub25, 0
  %conv11 = zext i8 %and865 to i32
  %shr = lshr i32 %conv11, %sub25
  %sub13 = sub i32 8, %offset.083
  %shl14 = shl i32 %conv11, %sub13
  %cond = select i1 %cmp, i32 %shr, i32 %shl14
  %or = or i32 %cond, %or84
  %9 = tail call i32 @llvm.smax.i32(i32 %sub25, i32 0)
  %sub21.neg = add i32 %sub2285, -8
  %sub22 = add i32 %sub21.neg, %9
  %cmp23 = icmp slt i32 %sub22, 1
  br i1 %cmp23, label %cleanup.while.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  %or.lcssa = phi i32 [ %cond78, %entry.while.end_crit_edge ], [ %or, %cleanup.while.end_crit_edge ]
  %data_type = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 9
  %10 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp29 = icmp eq i32 %11, 1
  br i1 %cmp29, label %if.then31, label %while.end.if.end39_crit_edge

while.end.if.end39_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then31:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %sub34 = add nsw i32 %conv, -1
  %shl35 = shl nuw i32 1, %sub34
  %and36 = and i32 %or.lcssa, %shl35
  %sub37 = sub i32 0, %and36
  %or38 = or i32 %or.lcssa, %sub37
  br label %if.end39

if.end39:                                         ; preds = %if.then31, %while.end.if.end39_crit_edge
  %value.1 = phi i32 [ %or38, %if.then31 ], [ %or.lcssa, %while.end.if.end39_crit_edge ]
  ret i32 %value.1
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_set_le_value(ptr nocapture noundef readonly %mapping, i32 noundef %value, ptr nocapture noundef %data) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 6
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp435.not = icmp eq i8 %1, 0
  br i1 %cmp435.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %offset1 = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 7
  %2 = ptrtoint ptr %offset1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %offset1, align 2
  %conv2 = zext i8 %3 to i32
  %and = and i32 %conv2, 7
  %div33 = lshr i32 %conv2, 3
  %add.ptr = getelementptr i8, ptr %data, i32 %div33
  %v4l2_type = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 8
  %4 = ptrtoint ptr %v4l2_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v4l2_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp eq i32 %5, 4
  %spec.select = select i1 %cmp, i32 -1, i32 %value
  %conv = zext i8 %1 to i32
  %sh_prom.peel = zext i8 %1 to i64
  %notmask.peel = shl nsw i64 -1, %sh_prom.peel
  %sub.peel = xor i64 %notmask.peel, -1
  %sh_prom6.peel = zext i32 %and to i64
  %shl7.peel = shl i64 %sub.peel, %sh_prom6.peel
  %conv8.peel = trunc i64 %shl7.peel to i32
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr, align 1
  %conv9.peel = zext i8 %7 to i32
  %neg.peel = xor i32 %conv8.peel, -1
  %and11.peel = and i32 %conv9.peel, %neg.peel
  %shl12.peel = shl i32 %spec.select, %and
  %and14.peel = and i32 %shl12.peel, %conv8.peel
  %or.peel = or i32 %and11.peel, %and14.peel
  %conv15.peel = trunc i32 %or.peel to i8
  store i8 %conv15.peel, ptr %add.ptr, align 1
  %sub16.neg.peel = add nsw i32 %conv, -8
  %sub17.peel = add nsw i32 %sub16.neg.peel, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub17.peel)
  %cmp4.peel = icmp sgt i32 %sub17.peel, 0
  br i1 %cmp4.peel, label %for.body.peel.next, label %for.body.preheader.for.end_crit_edge

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.peel.next:                               ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.peel = icmp eq i32 %and, 0
  %spec.select34.peel = select i1 %tobool.not.peel, i32 8, i32 %and
  %shr.peel = ashr i32 %spec.select, %spec.select34.peel
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.peel.next
  %bits.038 = phi i32 [ %sub16.neg, %for.body.for.body_crit_edge ], [ %sub17.peel, %for.body.peel.next ]
  %data.addr.037.pn = phi ptr [ %data.addr.037, %for.body.for.body_crit_edge ], [ %add.ptr, %for.body.peel.next ]
  %value.addr.136 = phi i32 [ %shr, %for.body.for.body_crit_edge ], [ %shr.peel, %for.body.peel.next ]
  %data.addr.037 = getelementptr i8, ptr %data.addr.037.pn, i32 1
  %sh_prom = zext i32 %bits.038 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %8 = trunc i64 %notmask to i32
  %conv8 = xor i32 %8, -1
  %9 = ptrtoint ptr %data.addr.037 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data.addr.037, align 1
  %conv9 = zext i8 %10 to i32
  %and11 = and i32 %conv9, %8
  %and14 = and i32 %value.addr.136, %conv8
  %or = or i32 %and11, %and14
  %conv15 = trunc i32 %or to i8
  store i8 %conv15, ptr %data.addr.037, align 1
  %shr = ashr i32 %value.addr.136, 8
  %sub16.neg = add nsw i32 %bits.038, -8
  %cmp4 = icmp sgt i32 %bits.038, 8
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge, !llvm.loop !133

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.body.preheader.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memweight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uvc_ctrl_get_zoom(ptr nocapture noundef readnone %mapping, i8 noundef zeroext %query, ptr nocapture noundef readonly %data) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %query)
  %cond = icmp eq i8 %query, -127
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %cond.false

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp4 = icmp sgt i8 %1, 0
  %arrayidx7 = getelementptr i8, ptr %data, i32 2
  %2 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %3 to i32
  %sub = sub nsw i32 0, %conv8
  %spec.select = select i1 %cmp4, i32 %conv8, i32 %sub
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx15 = getelementptr i8, ptr %data, i32 2
  %4 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %5 to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %cond.false, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv16, %sw.default ], [ 0, %sw.bb.cleanup_crit_edge ], [ %spec.select, %cond.false ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @uvc_ctrl_set_zoom(ptr nocapture noundef readnone %mapping, i32 noundef %value, ptr nocapture noundef writeonly %data) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %value)
  %cmp1.inv = icmp slt i32 %value, 1
  %phi.cast = select i1 %cmp1.inv, i8 -1, i8 1
  %cond2 = select i1 %cmp, i8 0, i8 %phi.cast
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %cond2, ptr %data, align 1
  %1 = tail call i32 @llvm.abs.i32(i32 %value, i1 false)
  %2 = tail call i32 @llvm.smin.i32(i32 %1, i32 255)
  %conv16 = trunc i32 %2 to i8
  %arrayidx17 = getelementptr i8, ptr %data, i32 2
  %3 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv16, ptr %arrayidx17, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uvc_ctrl_get_rel_speed(ptr nocapture noundef readonly %mapping, i8 noundef zeroext %query, ptr nocapture noundef readonly %data) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 7
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %offset, align 2
  %2 = lshr i8 %1, 3
  %div = zext i8 %2 to i32
  %3 = zext i8 %query to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %query, label %sw.default [
    i8 -127, label %sw.bb
    i8 -126, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  %arrayidx = getelementptr i8, ptr %data, i32 %div
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %cond.false

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp5 = icmp sgt i8 %5, 0
  %add = add nuw nsw i32 %div, 1
  %arrayidx8 = getelementptr i8, ptr %data, i32 %add
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %sub = sub nsw i32 0, %conv9
  %spec.select = select i1 %cmp5, i32 %conv9, i32 %sub
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add17 = add nuw nsw i32 %div, 1
  %arrayidx18 = getelementptr i8, ptr %data, i32 %add17
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %9 to i32
  %sub20 = sub nsw i32 0, %conv19
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add22 = add nuw nsw i32 %div, 1
  %arrayidx23 = getelementptr i8, ptr %data, i32 %add22
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %11 to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb16, %cond.false, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv24, %sw.default ], [ %sub20, %sw.bb16 ], [ 0, %sw.bb.cleanup_crit_edge ], [ %spec.select, %cond.false ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @uvc_ctrl_set_rel_speed(ptr nocapture noundef readonly %mapping, i32 noundef %value, ptr nocapture noundef writeonly %data) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.uvc_control_mapping, ptr %mapping, i32 0, i32 7
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %offset, align 2
  %2 = lshr i8 %1, 3
  %div = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %value)
  %cmp2.inv = icmp slt i32 %value, 1
  %phi.cast = select i1 %cmp2.inv, i8 -1, i8 1
  %cond4 = select i1 %cmp, i8 0, i8 %phi.cast
  %arrayidx = getelementptr i8, ptr %data, i32 %div
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %cond4, ptr %arrayidx, align 1
  %4 = tail call i32 @llvm.abs.i32(i32 %value, i1 false)
  %5 = tail call i32 @llvm.smin.i32(i32 %4, i32 255)
  %conv19 = trunc i32 %5 to i8
  %add = add nuw nsw i32 %div, 1
  %arrayidx20 = getelementptr i8, ptr %data, i32 %add
  %6 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv19, ptr %arrayidx20, align 1
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readnone }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !73, !75, !76, !78, !80, !82, !84, !85, !86, !87, !89, !90, !91, !92, !93, !95, !97, !99, !100, !101, !102, !104, !106, !108}
!llvm.named.register.sp = !{!110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @uvc_ctrl_sub_ev_ops, !1, !"uvc_ctrl_sub_ev_ops", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 1548, i32 40}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 2001, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @uvc_xu_ctrl_query._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @uvc_xu_ctrl_query._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 2017, i32 3}
!12 = !{ptr @uvc_xu_ctrl_query._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @uvc_xu_ctrl_query._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 2130, i32 4}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @uvc_ctrl_restore_values.__UNIQUE_ID_ddebug319, !15, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 2232, i32 3}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @uvc_ctrl_add_mapping._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @uvc_ctrl_add_mapping._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 2279, i32 4}
!26 = !{ptr @uvc_ctrl_add_mapping._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @uvc_ctrl_add_mapping._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 2290, i32 3}
!30 = !{ptr @uvc_ctrl_add_mapping._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @uvc_ctrl_add_mapping._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @uvc_ctrl_init_device.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 2479, i32 2}
!34 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @uvc_control_classes, !36, !"uvc_control_classes", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 360, i32 18}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 884, i32 3}
!39 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @uvc_find_control._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @uvc_find_control._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 934, i32 4}
!44 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @uvc_ctrl_populate_cache._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @uvc_ctrl_populate_cache._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 1970, i32 3}
!50 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @uvc_ctrl_init_xu_ctrl._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @uvc_ctrl_init_xu_ctrl._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 1919, i32 3}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @uvc_ctrl_fill_xu_info._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @uvc_ctrl_fill_xu_info._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 1932, i32 3}
!60 = !{ptr @uvc_ctrl_fill_xu_info._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @uvc_ctrl_fill_xu_info._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 1940, i32 2}
!64 = !{ptr @uvc_ctrl_fill_xu_info._entry.32, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @uvc_ctrl_fill_xu_info._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @uvc_ctrl_fixup_xu_info.fixups, !67, !"fixups", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 1869, i32 37}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 2166, i32 2}
!70 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @uvc_ctrl_add_info._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @uvc_ctrl_add_info._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!75 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 1078, i32 9}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 2214, i32 2}
!84 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @__uvc_ctrl_add_mapping._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @__uvc_ctrl_add_mapping._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 1406, i32 3}
!89 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @uvc_ctrl_status_event_work._entry, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @uvc_ctrl_status_event_work._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @uvc_ctrl_prune_entity.processing_blacklist, !94, !"processing_blacklist", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 2319, i32 41}
!95 = !{ptr @uvc_ctrl_prune_entity.camera_blacklist, !96, !"camera_blacklist", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 2324, i32 41}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 2361, i32 3}
!99 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @uvc_ctrl_prune_entity._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @uvc_ctrl_prune_entity._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @uvc_ctrls, !103, !"uvc_ctrls", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 36, i32 38}
!104 = !{ptr @uvc_ctrl_mappings, !105, !"uvc_ctrl_mappings", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 432, i32 41}
!106 = !{ptr @power_line_frequency_controls, !107, !"power_line_frequency_controls", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 365, i32 35}
!108 = !{ptr @exposure_auto_controls, !109, !"exposure_auto_controls", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/uvc/uvc_ctrl.c", i32 371, i32 35}
!110 = !{!"sp"}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{!"auto-init"}
!121 = !{i64 2152525535, i64 2152525560}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{i64 5021090}
!124 = !{i64 5021287}
!125 = !{i64 2152506520}
!126 = !{i64 2152526216, i64 2152526241}
!127 = !{i64 2148754395, i64 2148754400, i64 2148754413, i64 2148754457, i64 2148754491, i64 2148754512}
!128 = !{i64 2148357991}
!129 = !{i64 2148273300, i64 2148273332, i64 2148273361, i64 2148273395, i64 2148273426, i64 2148273449}
!130 = !{i64 2148358220}
!131 = !{i64 2148275045, i64 2148275071, i64 2148275100, i64 2148275134, i64 2148275165, i64 2148275188}
!132 = !{!"branch_weights", i32 1, i32 2000}
!133 = distinct !{!133, !134}
!134 = !{!"llvm.loop.peeled.count", i32 1}
