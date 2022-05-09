; ModuleID = '/llk/IR_all_yes/drivers/media/usb/uvc/uvc_status.c_pt.bc'
source_filename = "../drivers/media/usb/uvc/uvc_status.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.uvc_device = type { ptr, ptr, i32, i32, i32, [32 x i8], ptr, %struct.mutex, i32, %struct.atomic_t, %struct.media_device, %struct.v4l2_device, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.kref, ptr, ptr, ptr, ptr, [64 x i8], %struct.uvc_ctrl_work, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.uvc_ctrl_work = type { %struct.work_struct, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.uvc_control_status = type { i8, i8, i8, i8, i8, [0 x i8] }
%struct.uvc_control = type { ptr, %struct.uvc_control_info, i8, i8, ptr, ptr }
%struct.uvc_control_info = type { %struct.list_head, [16 x i8], i8, i8, i16, i32 }
%struct.uvc_streaming_status = type { i8, i8, i8, [0 x i8] }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/button\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@uvc_status_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 212, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Non-zero status (%d) in status completion handler.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uvc_status_complete\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/usb/uvc/uvc_status.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uvc_status_complete._entry_ptr = internal global ptr @uvc_status_complete._entry, section ".printk_index", align 4
@uvc_dbg_param = external dso_local local_unnamed_addr global i32, align 4
@uvc_status_complete._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 239, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown status event type %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@uvc_status_complete._entry_ptr.10 = internal global ptr @uvc_status_complete._entry.7, section ".printk_index", align 4
@uvc_status_complete._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 249, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to resubmit status URB (%d).\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@uvc_status_complete._entry_ptr.14 = internal global ptr @uvc_status_complete._entry.11, section ".printk_index", align 4
@uvc_event_control.attrs = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"value\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"failure\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"min\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"max\00", [28 x i8] zeroinitializer }, align 32
@uvc_event_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 165, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid control status event received\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uvc_event_control\00", [46 x i8] zeroinitializer }, align 32
@uvc_event_control._entry_ptr = internal global ptr @uvc_event_control._entry, section ".printk_index", align 4
@uvc_event_control._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 171, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Control %u/%u %s change len %d\0A\00", [32 x i8] zeroinitializer }, align 32
@uvc_event_control._entry_ptr.24 = internal global ptr @uvc_event_control._entry.22, section ".printk_index", align 4
@uvc_event_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 97, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid streaming status event received\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uvc_event_streaming\00", [44 x i8] zeroinitializer }, align 32
@uvc_event_streaming._entry_ptr = internal global ptr @uvc_event_streaming._entry, section ".printk_index", align 4
@uvc_event_streaming._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 106, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Button (intf %u) %s len %d\0A\00", [36 x i8] zeroinitializer }, align 32
@uvc_event_streaming._entry_ptr.29 = internal global ptr @uvc_event_streaming._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pressed\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"released\00", [23 x i8] zeroinitializer }, align 32
@uvc_event_streaming._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.26, ptr @.str.4, i32 110, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Stream %u error event %02x len %d\0A\00", [61 x i8] zeroinitializer }, align 32
@uvc_event_streaming._entry_ptr.34 = internal global ptr @uvc_event_streaming._entry.32, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967225, i64 4294967294]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 31, i32 27 }
@___asan_gen_.40 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 912, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 210, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 238, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 248, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"attrs\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 158, i32 21 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 158, i32 33 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 158, i32 42 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 158, i32 50 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 158, i32 61 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 158, i32 68 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 165, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 169, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 96, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 104, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [38 x i8] c"../drivers/media/usb/uvc/uvc_status.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 109, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @uvc_event_control._entry, ptr @uvc_event_control._entry.22, ptr @uvc_event_control._entry_ptr, ptr @uvc_event_control._entry_ptr.24, ptr @uvc_event_streaming._entry, ptr @uvc_event_streaming._entry.27, ptr @uvc_event_streaming._entry.32, ptr @uvc_event_streaming._entry_ptr, ptr @uvc_event_streaming._entry_ptr.29, ptr @uvc_event_streaming._entry_ptr.34, ptr @uvc_status_complete._entry, ptr @uvc_status_complete._entry.11, ptr @uvc_status_complete._entry.7, ptr @uvc_status_complete._entry_ptr, ptr @uvc_status_complete._entry_ptr.10, ptr @uvc_status_complete._entry_ptr.14, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @uvc_event_control.attrs, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_status_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_status_complete._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_status_complete._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_event_control.attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_event_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_event_control._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_event_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_event_streaming._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uvc_event_streaming._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_status_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %int_ep = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %int_ep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %int_ep, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @input_allocate_device() #7
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.end.uvc_input_init.exit_crit_edge, label %if.end.i

if.end.uvc_input_init.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %uvc_input_init.exit

if.end.i:                                         ; preds = %if.end
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %input_phys.i = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 22
  %bus.i.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %bus_name.i.i = getelementptr inbounds %struct.usb_bus, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bus_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_name.i.i, align 4
  %devpath.i.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 1
  %call.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %input_phys.i, i32 noundef 64, ptr noundef nonnull @.str.1, ptr noundef %7, ptr noundef %devpath.i.i) #7
  %call4.i = tail call i32 @strlcat(ptr noundef %input_phys.i, ptr noundef nonnull @.str, i32 noundef 64) #7
  %name.i = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %name.i, ptr %call.i, align 8
  %phys.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %input_phys.i, ptr %phys.i, align 4
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %id.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 3, ptr %id.i, align 2
  %idVendor.i.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 16, i32 7
  %13 = ptrtoint ptr %idVendor.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %idVendor.i.i, align 8
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #7
  %vendor.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %vendor.i.i, align 2
  %idProduct.i.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 16, i32 8
  %17 = ptrtoint ptr %idProduct.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %idProduct.i.i, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #7
  %product.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %product.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %product.i.i, align 2
  %bcdDevice.i.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 16, i32 9
  %21 = ptrtoint ptr %bcdDevice.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %bcdDevice.i.i, align 4
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #7
  %version.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %version.i.i, align 2
  %intf.i = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 1
  %25 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %intf.i, align 4
  %dev10.i = getelementptr inbounds %struct.usb_interface, ptr %26, i32 0, i32 7
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 40, i32 1
  %27 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev10.i, ptr %parent.i, align 8
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %evbit.i, align 4
  %or.i.i = or i32 %29, 2
  store i32 %or.i.i, ptr %evbit.i, align 4
  %add.ptr.i.i = getelementptr %struct.input_dev, ptr %call.i, i32 0, i32 6, i32 6
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i, align 4
  %or.i1.i = or i32 %31, 1048576
  store i32 %or.i1.i, ptr %add.ptr.i.i, align 4
  %call14.i = tail call i32 @input_register_device(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %error.i, label %if.end17.i

if.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %input18.i = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 21
  %32 = ptrtoint ptr %input18.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %input18.i, align 8
  br label %uvc_input_init.exit

error.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @input_free_device(ptr noundef nonnull %call.i) #7
  br label %uvc_input_init.exit

uvc_input_init.exit:                              ; preds = %error.i, %if.end17.i, %if.end.uvc_input_init.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 16) #10
  %status = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 20
  %34 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %status, align 4
  %cmp3 = icmp eq ptr %call7.i.i, null
  br i1 %cmp3, label %uvc_input_init.exit.cleanup_crit_edge, label %if.end5

uvc_input_init.exit.cleanup_crit_edge:            ; preds = %uvc_input_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %uvc_input_init.exit
  %call6 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %int_urb = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 19
  %35 = ptrtoint ptr %int_urb to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call6, ptr %int_urb, align 8
  %cmp8 = icmp eq ptr %call6, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %status, align 4
  tail call void @kfree(ptr noundef %37) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 8
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bEndpointAddress, align 2
  %conv = zext i8 %41 to i32
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %39, align 8
  %shl.i = shl i32 %43, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or13 = or i32 %or.i, 1073741952
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %1, i32 0, i32 5
  %44 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bInterval, align 2
  %conv15 = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %45)
  %cmp16 = icmp ugt i8 %45, 16
  br i1 %cmp16, label %land.lhs.true, label %if.end11.if.end24_crit_edge

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end11
  %speed = getelementptr inbounds %struct.usb_device, ptr %39, i32 0, i32 4
  %46 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp19 = icmp eq i32 %47, 3
  br i1 %cmp19, label %land.lhs.true21, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

land.lhs.true21:                                  ; preds = %land.lhs.true
  %quirks = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 3
  %48 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %quirks, align 4
  %and = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true21.if.end24_crit_edge, label %if.then22

land.lhs.true21.if.end24_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then22:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  %50 = tail call i32 @llvm.ctlz.i32(i32 %conv15, i1 true) #7, !range !67
  %sub = xor i32 %50, 31
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %land.lhs.true21.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %if.end11.if.end24_crit_edge
  %interval.0 = phi i32 [ %sub, %if.then22 ], [ %conv15, %land.lhs.true21.if.end24_crit_edge ], [ %conv15, %land.lhs.true.if.end24_crit_edge ], [ %conv15, %if.end11.if.end24_crit_edge ]
  %51 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %status, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 8
  %53 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %39, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 10
  %54 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or13, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 14
  %55 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 19
  %56 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 16, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 28
  %57 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @uvc_status_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 27
  %58 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %dev, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %39, i32 0, i32 4
  %59 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %cmp.i47 = icmp eq i32 %60, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %60)
  %cmp6.i = icmp ugt i32 %60, 4
  %or.cond.i = or i1 %cmp.i47, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end24.usb_fill_int_urb.exit_crit_edge

if.end24.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %61 = tail call i32 @llvm.smax.i32(i32 %interval.0, i32 1) #7
  %62 = tail call i32 @llvm.umin.i32(i32 %61, i32 16) #7
  %sub.i48 = add nsw i32 %62, -1
  %shl.i49 = shl nuw nsw i32 1, %sub.i48
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end24.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i49, %if.then.i ], [ %interval.0, %if.end24.usb_fill_int_urb.exit_crit_edge ]
  %63 = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 25
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %interval.sink.i, ptr %63, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 23
  %65 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %start_frame.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %usb_fill_int_urb.exit, %if.then9, %uvc_input_init.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then9 ], [ 0, %usb_fill_int_urb.exit ], [ 0, %entry.cleanup_crit_edge ], [ -12, %uvc_input_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uvc_status_complete(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 0, label %sw.epilog
    i32 -2, label %entry.cleanup40_crit_edge
    i32 -104, label %entry.cleanup40_crit_edge87
    i32 -108, label %entry.cleanup40_crit_edge88
    i32 -71, label %entry.cleanup40_crit_edge89
  ]

entry.cleanup40_crit_edge89:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

entry.cleanup40_crit_edge88:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

entry.cleanup40_crit_edge87:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %3) #11
  br label %cleanup40

sw.epilog:                                        ; preds = %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %7 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %if.then, label %sw.epilog.if.end28_crit_edge

sw.epilog.if.end28_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then:                                          ; preds = %sw.epilog
  %status3 = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %status3, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv = zext i8 %12 to i32
  %and = and i32 %conv, 15
  %13 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %and, label %do.body13 [
    i32 1, label %sw.bb4
    i32 2, label %sw.bb8
  ]

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %cmp.i = icmp ult i32 %8, 6
  br i1 %cmp.i, label %sw.bb4.do.body.i_crit_edge, label %lor.lhs.false.i

sw.bb4.do.body.i_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %sw.bb4
  %bEvent.i = getelementptr inbounds %struct.uvc_control_status, ptr %10, i32 0, i32 2
  %14 = ptrtoint ptr %bEvent.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bEvent.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp1.not.i = icmp eq i8 %15, 0
  br i1 %cmp1.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.do.body.i_crit_edge

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %bAttribute.i = getelementptr inbounds %struct.uvc_control_status, ptr %10, i32 0, i32 4
  %16 = ptrtoint ptr %bAttribute.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bAttribute.i, align 1
  %conv4.i = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %17)
  %cmp5.i = icmp ugt i8 %17, 4
  br i1 %cmp5.i, label %lor.lhs.false3.i.do.body.i_crit_edge, label %do.body13.i

lor.lhs.false3.i.do.body.i_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false3.i.do.body.i_crit_edge, %lor.lhs.false.i.do.body.i_crit_edge, %sw.bb4.do.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %18 = load i32, ptr @uvc_dbg_param, align 4
  %and.i = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end28_crit_edge, label %do.end.i

do.body.i.if.end28_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %dev9.i = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev9.i, ptr noundef nonnull @.str.20) #11
  br label %if.end28

do.body13.i:                                      ; preds = %lor.lhs.false3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %21 = load i32, ptr @uvc_dbg_param, align 4
  %and14.i = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %do.body13.i.do.end27.i_crit_edge, label %do.end19.i

do.body13.i.do.end27.i_crit_edge:                 ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27.i

do.end19.i:                                       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %dev21.i = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  %bOriginator.i = getelementptr inbounds %struct.uvc_control_status, ptr %10, i32 0, i32 1
  %24 = ptrtoint ptr %bOriginator.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bOriginator.i, align 1
  %conv22.i = zext i8 %25 to i32
  %bSelector.i = getelementptr inbounds %struct.uvc_control_status, ptr %10, i32 0, i32 3
  %26 = ptrtoint ptr %bSelector.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bSelector.i, align 1
  %conv23.i = zext i8 %27 to i32
  %arrayidx.i = getelementptr [5 x ptr], ptr @uvc_event_control.attrs, i32 0, i32 %conv4.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev21.i, ptr noundef nonnull @.str.23, i32 noundef %conv22.i, i32 noundef %conv23.i, ptr noundef %29, i32 noundef %8) #11
  br label %do.end27.i

do.end27.i:                                       ; preds = %do.end19.i, %do.body13.i.do.end27.i_crit_edge
  %chains.i.i = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 15
  %30 = ptrtoint ptr %chains.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn52.i.i = load ptr, ptr %chains.i.i, align 4
  %cmp.not54.i.i = icmp eq ptr %.pn52.i.i, %chains.i.i
  br i1 %cmp.not54.i.i, label %do.end27.i.if.end28_crit_edge, label %for.body.lr.ph.i.i

do.end27.i.if.end28_crit_edge:                    ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

for.body.lr.ph.i.i:                               ; preds = %do.end27.i
  %bOriginator.i.i = getelementptr inbounds %struct.uvc_control_status, ptr %10, i32 0, i32 1
  %bSelector.i.i = getelementptr inbounds %struct.uvc_control_status, ptr %10, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc23.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn55.i.i = phi ptr [ %.pn52.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc23.i.i.for.body.i.i_crit_edge ]
  %entities.i.i = getelementptr i8, ptr %.pn55.i.i, i32 8
  %31 = ptrtoint ptr %entities.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn4148.i.i = load ptr, ptr %entities.i.i, align 4
  %cmp9.not49.i.i = icmp eq ptr %.pn4148.i.i, %entities.i.i
  br i1 %cmp9.not49.i.i, label %for.body.i.i.for.inc23.i.i_crit_edge, label %for.body11.lr.ph.i.i

for.body.i.i.for.inc23.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc23.i.i

for.body11.lr.ph.i.i:                             ; preds = %for.body.i.i
  %32 = ptrtoint ptr %bOriginator.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bOriginator.i.i, align 1
  %34 = zext i8 %33 to i16
  br label %for.body11.i.i

for.body11.i.i:                                   ; preds = %for.inc.i.i.for.body11.i.i_crit_edge, %for.body11.lr.ph.i.i
  %.pn4150.i.i = phi ptr [ %.pn4148.i.i, %for.body11.lr.ph.i.i ], [ %.pn41.i.i, %for.inc.i.i.for.body11.i.i_crit_edge ]
  %id.i.i = getelementptr i8, ptr %.pn4150.i.i, i32 12
  %35 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %36, i16 %34)
  %cmp13.not.i.i = icmp eq i16 %36, %34
  br i1 %cmp13.not.i.i, label %if.end.i.i, label %for.body11.i.i.for.inc.i.i_crit_edge

for.body11.i.i.for.inc.i.i_crit_edge:             ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body11.i.i
  %37 = ptrtoint ptr %bSelector.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bSelector.i.i, align 1
  %ncontrols.i.i.i = getelementptr i8, ptr %.pn4150.i.i, i32 340
  %39 = ptrtoint ptr %ncontrols.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ncontrols.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp10.not.i.i.i = icmp eq i32 %40, 0
  br i1 %cmp10.not.i.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %for.body.preheader.i.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.body.preheader.i.i.i:                         ; preds = %if.end.i.i
  %controls.i.i.i = getelementptr i8, ptr %.pn4150.i.i, i32 344
  %41 = ptrtoint ptr %controls.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %controls.i.i.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %i.012.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %ctrl.011.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %42, %for.body.preheader.i.i.i ]
  %selector1.i.i.i = getelementptr inbounds %struct.uvc_control, ptr %ctrl.011.i.i.i, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %selector1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %selector1.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %38)
  %cmp3.i.i.i = icmp eq i8 %44, %38
  br i1 %cmp3.i.i.i, label %uvc_event_entity_find_ctrl.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.012.i.i.i, 1
  %incdec.ptr.i.i.i = getelementptr %struct.uvc_control, ptr %ctrl.011.i.i.i, i32 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %40
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.for.inc.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.for.inc.i.i_crit_edge:              ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

uvc_event_entity_find_ctrl.exit.i.i:              ; preds = %for.body.i.i.i
  %tobool.not.i.i = icmp eq ptr %ctrl.011.i.i.i, null
  br i1 %tobool.not.i.i, label %uvc_event_entity_find_ctrl.exit.i.i.for.inc.i.i_crit_edge, label %if.end30.i

uvc_event_entity_find_ctrl.exit.i.i.for.inc.i.i_crit_edge: ; preds = %uvc_event_entity_find_ctrl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %uvc_event_entity_find_ctrl.exit.i.i.for.inc.i.i_crit_edge, %for.inc.i.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body11.i.i.for.inc.i.i_crit_edge
  %45 = ptrtoint ptr %.pn4150.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn41.i.i = load ptr, ptr %.pn4150.i.i, align 4
  %cmp9.not.i.i = icmp eq ptr %.pn41.i.i, %entities.i.i
  br i1 %cmp9.not.i.i, label %for.inc.i.i.for.inc23.i.i_crit_edge, label %for.inc.i.i.for.body11.i.i_crit_edge

for.inc.i.i.for.body11.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11.i.i

for.inc.i.i.for.inc23.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc23.i.i

for.inc23.i.i:                                    ; preds = %for.inc.i.i.for.inc23.i.i_crit_edge, %for.body.i.i.for.inc23.i.i_crit_edge
  %46 = ptrtoint ptr %.pn55.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn.i.i = load ptr, ptr %.pn55.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %chains.i.i
  br i1 %cmp.not.i.i, label %for.inc23.i.i.if.end28_crit_edge, label %for.inc23.i.i.for.body.i.i_crit_edge

for.inc23.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc23.i.i.if.end28_crit_edge:                 ; preds = %for.inc23.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end30.i:                                       ; preds = %uvc_event_entity_find_ctrl.exit.i.i
  %47 = ptrtoint ptr %bAttribute.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bAttribute.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cond.i = icmp eq i8 %48, 0
  br i1 %cond.i, label %uvc_event_control.exit, label %if.end30.i.if.end28_crit_edge

if.end30.i.if.end28_crit_edge:                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

uvc_event_control.exit:                           ; preds = %if.end30.i
  %chain.0.le.i = getelementptr i8, ptr %.pn55.i.i, i32 -4
  %bValue.i = getelementptr inbounds %struct.uvc_control_status, ptr %10, i32 0, i32 5
  %call33.i = tail call zeroext i1 @uvc_ctrl_status_event_async(ptr noundef %urb, ptr noundef %chain.0.le.i, ptr noundef nonnull %ctrl.011.i.i.i, ptr noundef %bValue.i) #7
  br i1 %call33.i, label %uvc_event_control.exit.cleanup40_crit_edge, label %uvc_event_control.exit.if.end28_crit_edge

uvc_event_control.exit.if.end28_crit_edge:        ; preds = %uvc_event_control.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

uvc_event_control.exit.cleanup40_crit_edge:       ; preds = %uvc_event_control.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

sw.bb8:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp.i61 = icmp ult i32 %8, 3
  br i1 %cmp.i61, label %do.body.i64, label %if.end5.i

do.body.i64:                                      ; preds = %sw.bb8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %49 = load i32, ptr @uvc_dbg_param, align 4
  %and.i62 = and i32 %49, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i62)
  %tobool.not.i63 = icmp eq i32 %and.i62, 0
  br i1 %tobool.not.i63, label %do.body.i64.if.end28_crit_edge, label %do.end.i65

do.body.i64.if.end28_crit_edge:                   ; preds = %do.body.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.end.i65:                                       ; preds = %do.body.i64
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %dev3.i = getelementptr inbounds %struct.usb_device, ptr %51, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev3.i, ptr noundef nonnull @.str.25) #11
  br label %if.end28

if.end5.i:                                        ; preds = %sw.bb8
  %bEvent.i66 = getelementptr inbounds %struct.uvc_streaming_status, ptr %10, i32 0, i32 2
  %52 = ptrtoint ptr %bEvent.i66 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bEvent.i66, align 1
  %conv.i = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp6.i = icmp eq i8 %53, 0
  br i1 %cmp6.i, label %if.then8.i, label %do.body29.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp9.i = icmp ult i32 %8, 4
  br i1 %cmp9.i, label %if.then8.i.if.end28_crit_edge, label %do.body13.i69

if.then8.i.if.end28_crit_edge:                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.body13.i69:                                    ; preds = %if.then8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %54 = load i32, ptr @uvc_dbg_param, align 4
  %and14.i67 = and i32 %54, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i67)
  %tobool15.not.i68 = icmp eq i32 %and14.i67, 0
  br i1 %tobool15.not.i68, label %do.body13.i69.do.end25.i_crit_edge, label %do.end18.i

do.body13.i69.do.end25.i_crit_edge:               ; preds = %do.body13.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25.i

do.end18.i:                                       ; preds = %do.body13.i69
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 8
  %dev20.i = getelementptr inbounds %struct.usb_device, ptr %56, i32 0, i32 15
  %bOriginator.i70 = getelementptr inbounds %struct.uvc_streaming_status, ptr %10, i32 0, i32 1
  %57 = ptrtoint ptr %bOriginator.i70 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bOriginator.i70, align 1
  %conv21.i = zext i8 %58 to i32
  %bValue.i71 = getelementptr inbounds %struct.uvc_streaming_status, ptr %10, i32 0, i32 3
  %59 = ptrtoint ptr %bValue.i71 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bValue.i71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool23.not.i = icmp eq i8 %60, 0
  %cond.i72 = select i1 %tobool23.not.i, ptr @.str.31, ptr @.str.30
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev20.i, ptr noundef nonnull @.str.28, i32 noundef %conv21.i, ptr noundef nonnull %cond.i72, i32 noundef %8) #11
  br label %do.end25.i

do.end25.i:                                       ; preds = %do.end18.i, %do.body13.i69.do.end25.i_crit_edge
  %input.i.i = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 21
  %61 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %input.i.i, align 8
  %tobool.not.i.i73 = icmp eq ptr %62, null
  br i1 %tobool.not.i.i73, label %do.end25.i.if.end28_crit_edge, label %if.then.i.i

do.end25.i.if.end28_crit_edge:                    ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then.i.i:                                      ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %bValue26.i = getelementptr inbounds %struct.uvc_streaming_status, ptr %10, i32 0, i32 3
  %63 = ptrtoint ptr %bValue26.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bValue26.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.i.i.i = icmp ne i8 %64, 0
  %lnot.ext.i.i.i = zext i1 %tobool.i.i.i to i32
  tail call void @input_event(ptr noundef nonnull %62, i32 noundef 1, i32 noundef 212, i32 noundef %lnot.ext.i.i.i) #7
  %65 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %input.i.i, align 8
  tail call void @input_event(ptr noundef %66, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %if.end28

do.body29.i:                                      ; preds = %if.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %67 = load i32, ptr @uvc_dbg_param, align 4
  %and30.i = and i32 %67, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %do.body29.i.if.end28_crit_edge, label %do.end34.i

do.body29.i.if.end28_crit_edge:                   ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.end34.i:                                       ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  %dev36.i = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 15
  %bOriginator37.i = getelementptr inbounds %struct.uvc_streaming_status, ptr %10, i32 0, i32 1
  %70 = ptrtoint ptr %bOriginator37.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bOriginator37.i, align 1
  %conv38.i = zext i8 %71 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev36.i, ptr noundef nonnull @.str.33, i32 noundef %conv38.i, i32 noundef %conv.i, i32 noundef %8) #11
  br label %if.end28

do.body13:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uvc_dbg_param to i32))
  %72 = load i32, ptr @uvc_dbg_param, align 4
  %and14 = and i32 %72, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool.not = icmp eq i32 %and14, 0
  br i1 %tobool.not, label %do.body13.if.end28_crit_edge, label %do.end18

do.body13.if.end28_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.end18:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 8
  %dev20 = getelementptr inbounds %struct.usb_device, ptr %74, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %dev20, ptr noundef nonnull @.str.8, i32 noundef %conv) #11
  br label %if.end28

if.end28:                                         ; preds = %do.end18, %do.body13.if.end28_crit_edge, %do.end34.i, %do.body29.i.if.end28_crit_edge, %if.then.i.i, %do.end25.i.if.end28_crit_edge, %if.then8.i.if.end28_crit_edge, %do.end.i65, %do.body.i64.if.end28_crit_edge, %uvc_event_control.exit.if.end28_crit_edge, %if.end30.i.if.end28_crit_edge, %for.inc23.i.i.if.end28_crit_edge, %do.end27.i.if.end28_crit_edge, %do.end.i, %do.body.i.if.end28_crit_edge, %sw.epilog.if.end28_crit_edge
  %int_ep = getelementptr inbounds %struct.uvc_device, ptr %1, i32 0, i32 18
  %75 = ptrtoint ptr %int_ep to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %int_ep, align 4
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %bInterval, align 2
  %conv29 = zext i8 %78 to i32
  %interval = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %79 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv29, ptr %interval, align 4
  %call30 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end36, label %if.end28.cleanup40_crit_edge

if.end28.cleanup40_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 8
  %dev38 = getelementptr inbounds %struct.usb_device, ptr %81, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.12, i32 noundef %call30) #11
  br label %cleanup40

cleanup40:                                        ; preds = %do.end36, %if.end28.cleanup40_crit_edge, %uvc_event_control.exit.cleanup40_crit_edge, %do.end, %entry.cleanup40_crit_edge, %entry.cleanup40_crit_edge87, %entry.cleanup40_crit_edge88, %entry.cleanup40_crit_edge89
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvc_status_unregister(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %int_urb = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %int_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %int_urb, align 8
  tail call void @usb_kill_urb(ptr noundef %1) #7
  %input.i = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 21
  %2 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.uvc_input_unregister.exit_crit_edge, label %if.then.i

entry.uvc_input_unregister.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %uvc_input_unregister.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @input_unregister_device(ptr noundef nonnull %3) #7
  br label %uvc_input_unregister.exit

uvc_input_unregister.exit:                        ; preds = %if.then.i, %entry.uvc_input_unregister.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvc_status_cleanup(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %int_urb = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %int_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %int_urb, align 8
  tail call void @usb_free_urb(ptr noundef %1) #7
  %status = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %status, align 4
  tail call void @kfree(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uvc_status_start(ptr nocapture noundef readonly %dev, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %int_urb = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %int_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %int_urb, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @usb_submit_urb(ptr noundef nonnull %1, i32 noundef %flags) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uvc_status_stop(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %int_urb = getelementptr inbounds %struct.uvc_device, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %int_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %int_urb, align 8
  tail call void @usb_kill_urb(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uvc_ctrl_status_event_async(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !54, !56, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/uvc/uvc_status.c", i32 31, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/usb.h", i32 912, i32 31}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/uvc/uvc_status.c", i32 210, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @uvc_status_complete._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @uvc_status_complete._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/uvc/uvc_status.c", i32 238, i32 4}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @uvc_status_complete._entry.7, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @uvc_status_complete._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/uvc/uvc_status.c", i32 248, i32 3}
!19 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @uvc_status_complete._entry.11, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @uvc_status_complete._entry_ptr.14, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/uvc/uvc_status.c", i32 158, i32 33}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/uvc/uvc_status.c", i32 158, i32 42}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/uvc/uvc_status.c", i32 158, i32 50}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/uvc/uvc_status.c", i32 158, i32 61}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/uvc/uvc_status.c", i32 158, i32 68}
!32 = !{ptr @uvc_event_control.attrs, !33, !"attrs", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/uvc/uvc_status.c", i32 158, i32 21}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/uvc/uvc_status.c", i32 165, i32 3}
!36 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @uvc_event_control._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @uvc_event_control._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/uvc/uvc_status.c", i32 169, i32 2}
!41 = !{ptr @uvc_event_control._entry.22, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @uvc_event_control._entry_ptr.24, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/uvc/uvc_status.c", i32 96, i32 3}
!45 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @uvc_event_streaming._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @uvc_event_streaming._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/uvc/uvc_status.c", i32 104, i32 3}
!50 = !{ptr @uvc_event_streaming._entry.27, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @uvc_event_streaming._entry_ptr.29, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/uvc/uvc_status.c", i32 109, i32 3}
!56 = !{ptr @uvc_event_streaming._entry.32, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @uvc_event_streaming._entry_ptr.34, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i32 0, i32 33}
