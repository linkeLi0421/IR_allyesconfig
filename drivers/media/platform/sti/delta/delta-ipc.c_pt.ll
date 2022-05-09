; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sti/delta/delta-ipc.c_pt.bc'
source_filename = "../drivers/media/platform/sti/delta/delta-ipc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rpmsg_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rpmsg_device_id = type { [32 x i8], i32 }
%struct.delta_ipc_open_msg = type { %struct.delta_ipc_header_msg, i32, i32, [32 x i8], i32, i32 }
%struct.delta_ipc_header_msg = type { i32, ptr, i32, i32 }
%struct.delta_ctx = type { i32, %struct.v4l2_fh, ptr, ptr, %struct.delta_ipc_ctx, i32, i32, i32, i32, %struct.delta_streaminfo, %struct.delta_frameinfo, i32, [21 x ptr], i32, i32, i32, i32, i32, i32, %struct.list_head, [100 x i8], %struct.work_struct, %struct.mutex, i8, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delta_ipc_ctx = type { i32, i32, %struct.completion, %struct.delta_buf, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delta_buf = type { i32, ptr, i32, ptr, i32 }
%struct.delta_streaminfo = type { i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, [32 x i8], [32 x i8], [32 x i8], i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.delta_frameinfo = type { i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_fract, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delta_dev = type { %struct.v4l2_device, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, [10 x ptr], i32, [10 x i32], i32, [10 x i32], i32, i8, ptr, %struct.rpmsg_driver, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delta_ipc_param = type { i32, ptr }
%struct.rpmsg_device = type { %struct.device, %struct.rpmsg_device_id, ptr, i32, i32, ptr, i8, i8, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.delta_ipc_set_stream_msg = type { %struct.delta_ipc_header_msg, i32, i32 }
%struct.delta_ipc_decode_msg = type { %struct.delta_ipc_header_msg, i32, i32, i32, i32 }
%struct.delta_ipc_close_msg = type { %struct.delta_ipc_header_msg }
%struct.delta_ipc_cb_msg = type { %struct.delta_ipc_header_msg, i32 }

@delta_ipc_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 124, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s   ipc: failed to open, rpmsg is not initialized\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"delta_ipc_open\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/sti/delta/delta-ipc.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@delta_ipc_open._entry_ptr = internal global ptr @delta_ipc_open._entry, section ".printk_index", align 4
@delta_ipc_open._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 132, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s   ipc: failed to open, no name given\0A\00", [55 x i8] zeroinitializer }, align 32
@delta_ipc_open._entry_ptr.7 = internal global ptr @delta_ipc_open._entry.5, section ".printk_index", align 4
@delta_ipc_open._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 139, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s  ipc: failed to open, empty parameter\0A\00", [54 x i8] zeroinitializer }, align 32
@delta_ipc_open._entry_ptr.10 = internal global ptr @delta_ipc_open._entry.8, section ".printk_index", align 4
@delta_ipc_open._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 146, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s   ipc: failed to open, no size given for ipc buffer\0A\00", [40 x i8] zeroinitializer }, align 32
@delta_ipc_open._entry_ptr.13 = internal global ptr @delta_ipc_open._entry.11, section ".printk_index", align 4
@delta_ipc_open._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 154, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%s   ipc: failed to open, too large ipc parameter (%d bytes while max %d expected)\0A\00", [44 x i8] zeroinitializer }, align 32
@delta_ipc_open._entry_ptr.16 = internal global ptr @delta_ipc_open._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ipc data buffer\00", [16 x i8] zeroinitializer }, align 32
@delta_ipc_open._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 190, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"%s   ipc: failed to open, rpmsg_send failed (%d) for DELTA_IPC_OPEN (name=%s, size=%d, data=%p)\0A\00", [63 x i8] zeroinitializer }, align 32
@delta_ipc_open._entry_ptr.20 = internal global ptr @delta_ipc_open._entry.18, section ".printk_index", align 4
@delta_ipc_open._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 200, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"%s   ipc: failed to open, timeout waiting for DELTA_IPC_OPEN callback (name=%s, size=%d, data=%p)\0A\00", [61 x i8] zeroinitializer }, align 32
@delta_ipc_open._entry_ptr.23 = internal global ptr @delta_ipc_open._entry.21, section ".printk_index", align 4
@delta_ipc_open._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 210, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"%s   ipc: failed to open, DELTA_IPC_OPEN completed but with error (%d) (name=%s, size=%d, data=%p)\0A\00", [60 x i8] zeroinitializer }, align 32
@delta_ipc_open._entry_ptr.26 = internal global ptr @delta_ipc_open._entry.24, section ".printk_index", align 4
@delta_ipc_set_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 240, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s   ipc: failed to set stream, invalid ipc handle\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"delta_ipc_set_stream\00", [43 x i8] zeroinitializer }, align 32
@delta_ipc_set_stream._entry_ptr = internal global ptr @delta_ipc_set_stream._entry, section ".printk_index", align 4
@delta_ipc_set_stream._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 247, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s   ipc: failed to set stream, rpmsg is not initialized\0A\00", [38 x i8] zeroinitializer }, align 32
@delta_ipc_set_stream._entry_ptr.31 = internal global ptr @delta_ipc_set_stream._entry.29, section ".printk_index", align 4
@delta_ipc_set_stream._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 254, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s  ipc: failed to set stream, empty parameter\0A\00", [48 x i8] zeroinitializer }, align 32
@delta_ipc_set_stream._entry_ptr.34 = internal global ptr @delta_ipc_set_stream._entry.32, section ".printk_index", align 4
@delta_ipc_set_stream._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.2, i32 262, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"%s   ipc: failed to set stream, too large ipc parameter(%d bytes while max %d expected)\0A\00", [39 x i8] zeroinitializer }, align 32
@delta_ipc_set_stream._entry_ptr.37 = internal global ptr @delta_ipc_set_stream._entry.35, section ".printk_index", align 4
@delta_ipc_set_stream._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.2, i32 273, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"%s   ipc: failed to set stream, parameter is not in expected address range (size=%d, data=%p not in %p..%p)\0A\00", [51 x i8] zeroinitializer }, align 32
@delta_ipc_set_stream._entry_ptr.40 = internal global ptr @delta_ipc_set_stream._entry.38, section ".printk_index", align 4
@delta_ipc_set_stream._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.28, ptr @.str.2, i32 289, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"%s   ipc: failed to set stream, rpmsg_send failed (%d) for DELTA_IPC_SET_STREAM (size=%d, data=%p)\0A\00", [60 x i8] zeroinitializer }, align 32
@delta_ipc_set_stream._entry_ptr.43 = internal global ptr @delta_ipc_set_stream._entry.41, section ".printk_index", align 4
@delta_ipc_set_stream._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.28, ptr @.str.2, i32 300, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"%s   ipc: failed to set stream, timeout waiting for DELTA_IPC_SET_STREAM callback (size=%d, data=%p)\0A\00", [58 x i8] zeroinitializer }, align 32
@delta_ipc_set_stream._entry_ptr.46 = internal global ptr @delta_ipc_set_stream._entry.44, section ".printk_index", align 4
@delta_ipc_set_stream._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.28, ptr @.str.2, i32 310, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"%s   ipc: failed to set stream, DELTA_IPC_SET_STREAM completed but with error (%d) (size=%d, data=%p)\0A\00", [57 x i8] zeroinitializer }, align 32
@delta_ipc_set_stream._entry_ptr.49 = internal global ptr @delta_ipc_set_stream._entry.47, section ".printk_index", align 4
@delta_ipc_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 331, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s   ipc: failed to decode, invalid ipc handle\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"delta_ipc_decode\00", [47 x i8] zeroinitializer }, align 32
@delta_ipc_decode._entry_ptr = internal global ptr @delta_ipc_decode._entry, section ".printk_index", align 4
@delta_ipc_decode._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 338, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s   ipc: failed to decode, rpmsg is not initialized\0A\00", [42 x i8] zeroinitializer }, align 32
@delta_ipc_decode._entry_ptr.54 = internal global ptr @delta_ipc_decode._entry.52, section ".printk_index", align 4
@delta_ipc_decode._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.2, i32 345, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s  ipc: failed to decode, empty parameter\0A\00", [52 x i8] zeroinitializer }, align 32
@delta_ipc_decode._entry_ptr.57 = internal global ptr @delta_ipc_decode._entry.55, section ".printk_index", align 4
@delta_ipc_decode._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.2, i32 352, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s  ipc: failed to decode, empty status\0A\00", [55 x i8] zeroinitializer }, align 32
@delta_ipc_decode._entry_ptr.60 = internal global ptr @delta_ipc_decode._entry.58, section ".printk_index", align 4
@delta_ipc_decode._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.51, ptr @.str.2, i32 362, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"%s   ipc: failed to decode, too large ipc parameter (%d bytes (param) + %d bytes (status) while max %d expected)\0A\00", [46 x i8] zeroinitializer }, align 32
@delta_ipc_decode._entry_ptr.63 = internal global ptr @delta_ipc_decode._entry.61, section ".printk_index", align 4
@delta_ipc_decode._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.51, ptr @.str.2, i32 373, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"%s   ipc: failed to decode, parameter is not in expected address range (size=%d, data=%p not in %p..%p)\0A\00", [55 x i8] zeroinitializer }, align 32
@delta_ipc_decode._entry_ptr.66 = internal global ptr @delta_ipc_decode._entry.64, section ".printk_index", align 4
@delta_ipc_decode._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.51, ptr @.str.2, i32 384, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"%s   ipc: failed to decode, status is not in expected address range (size=%d, data=%p not in %p..%p)\0A\00", [58 x i8] zeroinitializer }, align 32
@delta_ipc_decode._entry_ptr.69 = internal global ptr @delta_ipc_decode._entry.67, section ".printk_index", align 4
@delta_ipc_decode._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.51, ptr @.str.2, i32 403, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"%s   ipc: failed to decode, rpmsg_send failed (%d) for DELTA_IPC_DECODE (size=%d, data=%p)\0A\00", [36 x i8] zeroinitializer }, align 32
@delta_ipc_decode._entry_ptr.72 = internal global ptr @delta_ipc_decode._entry.70, section ".printk_index", align 4
@delta_ipc_decode._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.51, ptr @.str.2, i32 414, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"%s   ipc: failed to decode, timeout waiting for DELTA_IPC_DECODE callback (size=%d, data=%p)\0A\00", [34 x i8] zeroinitializer }, align 32
@delta_ipc_decode._entry_ptr.75 = internal global ptr @delta_ipc_decode._entry.73, section ".printk_index", align 4
@delta_ipc_decode._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.51, ptr @.str.2, i32 424, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"%s   ipc: failed to decode, DELTA_IPC_DECODE completed but with error (%d) (size=%d, data=%p)\0A\00", [33 x i8] zeroinitializer }, align 32
@delta_ipc_decode._entry_ptr.78 = internal global ptr @delta_ipc_decode._entry.76, section ".printk_index", align 4
@delta_ipc_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 444, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s   ipc: failed to close, invalid ipc handle\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"delta_ipc_close\00", [16 x i8] zeroinitializer }, align 32
@delta_ipc_close._entry_ptr = internal global ptr @delta_ipc_close._entry, section ".printk_index", align 4
@delta_ipc_close._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 456, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s   ipc: failed to close, rpmsg is not initialized\0A\00", [43 x i8] zeroinitializer }, align 32
@delta_ipc_close._entry_ptr.83 = internal global ptr @delta_ipc_close._entry.81, section ".printk_index", align 4
@delta_ipc_close._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.2, i32 468, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s   ipc: failed to close, rpmsg_send failed (%d) for DELTA_IPC_CLOSE\0A\00", [57 x i8] zeroinitializer }, align 32
@delta_ipc_close._entry_ptr.86 = internal global ptr @delta_ipc_close._entry.84, section ".printk_index", align 4
@delta_ipc_close._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str.2, i32 478, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"%s   ipc: failed to close, timeout waiting for DELTA_IPC_CLOSE callback\0A\00", [55 x i8] zeroinitializer }, align 32
@delta_ipc_close._entry_ptr.89 = internal global ptr @delta_ipc_close._entry.87, section ".printk_index", align 4
@delta_ipc_close._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.80, ptr @.str.2, i32 487, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s   ipc: failed to close, DELTA_IPC_CLOSE completed but with error (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@delta_ipc_close._entry_ptr.92 = internal global ptr @delta_ipc_close._entry.90, section ".printk_index", align 4
@delta_rpmsg_driver = internal constant { %struct.rpmsg_driver, [36 x i8] } { %struct.rpmsg_driver { %struct.device_driver { ptr @.str.94, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @delta_ipc_device_id_table, ptr @delta_ipc_probe, ptr @delta_ipc_remove, ptr @delta_ipc_cb }, [36 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"st_delta\00", [23 x i8] zeroinitializer }, align 32
@delta_ipc_device_id_table = internal global { [2 x %struct.rpmsg_device_id], [56 x i8] } { [2 x %struct.rpmsg_device_id] [%struct.rpmsg_device_id { [32 x i8] c"rpmsg-delta\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.rpmsg_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@delta_ipc_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 500, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rpdev is NULL\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"delta_ipc_cb\00", [19 x i8] zeroinitializer }, align 32
@delta_ipc_cb._entry_ptr = internal global ptr @delta_ipc_cb._entry, section ".printk_index", align 4
@delta_ipc_cb._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.2, i32 506, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unexpected empty message received from src=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@delta_ipc_cb._entry_ptr.99 = internal global ptr @delta_ipc_cb._entry.97, section ".printk_index", align 4
@delta_ipc_cb._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.96, ptr @.str.2, i32 513, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"unexpected message length received from src=%d (received %d bytes while %zu bytes expected)\0A\00", [35 x i8] zeroinitializer }, align 32
@delta_ipc_cb._entry_ptr.102 = internal global ptr @delta_ipc_cb._entry.100, section ".printk_index", align 4
@delta_ipc_cb._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.96, ptr @.str.2, i32 521, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"unexpected message tag received from src=%d (received %x tag while %x expected)\0A\00", [47 x i8] zeroinitializer }, align 32
@delta_ipc_cb._entry_ptr.105 = internal global ptr @delta_ipc_cb._entry.103, section ".printk_index", align 4
@delta_ipc_cb._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.96, ptr @.str.2, i32 529, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"unexpected message with NULL host_hdl received from src=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@delta_ipc_cb._entry_ptr.108 = internal global ptr @delta_ipc_cb._entry.106, section ".printk_index", align 4
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 122, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 130, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 137, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 144, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 151, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 167, i32 10 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 187, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 197, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 207, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 238, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 245, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 252, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 259, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 267, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 286, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 297, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 307, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 329, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 336, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 343, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 350, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 357, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 367, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 378, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 400, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 411, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 421, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 442, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 454, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 466, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 476, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 485, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant [19 x i8] c"delta_rpmsg_driver\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 573, i32 28 }
@___asan_gen_.322 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 87, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 574, i32 18 }
@___asan_gen_.331 = private unnamed_addr constant [26 x i8] c"delta_ipc_device_id_table\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 568, i32 31 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 500, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 505, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 511, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 519, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.365 = private constant [48 x i8] c"../drivers/media/platform/sti/delta/delta-ipc.c\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 527, i32 3 }
@llvm.compiler.used = appending global [122 x ptr] [ptr @delta_ipc_cb._entry, ptr @delta_ipc_cb._entry.100, ptr @delta_ipc_cb._entry.103, ptr @delta_ipc_cb._entry.106, ptr @delta_ipc_cb._entry.97, ptr @delta_ipc_cb._entry_ptr, ptr @delta_ipc_cb._entry_ptr.102, ptr @delta_ipc_cb._entry_ptr.105, ptr @delta_ipc_cb._entry_ptr.108, ptr @delta_ipc_cb._entry_ptr.99, ptr @delta_ipc_close._entry, ptr @delta_ipc_close._entry.81, ptr @delta_ipc_close._entry.84, ptr @delta_ipc_close._entry.87, ptr @delta_ipc_close._entry.90, ptr @delta_ipc_close._entry_ptr, ptr @delta_ipc_close._entry_ptr.83, ptr @delta_ipc_close._entry_ptr.86, ptr @delta_ipc_close._entry_ptr.89, ptr @delta_ipc_close._entry_ptr.92, ptr @delta_ipc_decode._entry, ptr @delta_ipc_decode._entry.52, ptr @delta_ipc_decode._entry.55, ptr @delta_ipc_decode._entry.58, ptr @delta_ipc_decode._entry.61, ptr @delta_ipc_decode._entry.64, ptr @delta_ipc_decode._entry.67, ptr @delta_ipc_decode._entry.70, ptr @delta_ipc_decode._entry.73, ptr @delta_ipc_decode._entry.76, ptr @delta_ipc_decode._entry_ptr, ptr @delta_ipc_decode._entry_ptr.54, ptr @delta_ipc_decode._entry_ptr.57, ptr @delta_ipc_decode._entry_ptr.60, ptr @delta_ipc_decode._entry_ptr.63, ptr @delta_ipc_decode._entry_ptr.66, ptr @delta_ipc_decode._entry_ptr.69, ptr @delta_ipc_decode._entry_ptr.72, ptr @delta_ipc_decode._entry_ptr.75, ptr @delta_ipc_decode._entry_ptr.78, ptr @delta_ipc_open._entry, ptr @delta_ipc_open._entry.11, ptr @delta_ipc_open._entry.14, ptr @delta_ipc_open._entry.18, ptr @delta_ipc_open._entry.21, ptr @delta_ipc_open._entry.24, ptr @delta_ipc_open._entry.5, ptr @delta_ipc_open._entry.8, ptr @delta_ipc_open._entry_ptr, ptr @delta_ipc_open._entry_ptr.10, ptr @delta_ipc_open._entry_ptr.13, ptr @delta_ipc_open._entry_ptr.16, ptr @delta_ipc_open._entry_ptr.20, ptr @delta_ipc_open._entry_ptr.23, ptr @delta_ipc_open._entry_ptr.26, ptr @delta_ipc_open._entry_ptr.7, ptr @delta_ipc_set_stream._entry, ptr @delta_ipc_set_stream._entry.29, ptr @delta_ipc_set_stream._entry.32, ptr @delta_ipc_set_stream._entry.35, ptr @delta_ipc_set_stream._entry.38, ptr @delta_ipc_set_stream._entry.41, ptr @delta_ipc_set_stream._entry.44, ptr @delta_ipc_set_stream._entry.47, ptr @delta_ipc_set_stream._entry_ptr, ptr @delta_ipc_set_stream._entry_ptr.31, ptr @delta_ipc_set_stream._entry_ptr.34, ptr @delta_ipc_set_stream._entry_ptr.37, ptr @delta_ipc_set_stream._entry_ptr.40, ptr @delta_ipc_set_stream._entry_ptr.43, ptr @delta_ipc_set_stream._entry_ptr.46, ptr @delta_ipc_set_stream._entry_ptr.49, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @delta_rpmsg_driver, ptr @init_completion.__key, ptr @.str.93, ptr @.str.94, ptr @delta_ipc_device_id_table, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_open._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_open._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_open._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_open._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_open._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_open._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_open._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_set_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_set_stream._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_set_stream._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_set_stream._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_set_stream._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_set_stream._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_set_stream._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_set_stream._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_decode._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_decode._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_decode._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_decode._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_decode._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_decode._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_decode._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_decode._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_decode._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_close._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_close._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_close._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_close._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_rpmsg_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_device_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_cb._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_cb._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_cb._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delta_ipc_cb._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @delta_ipc_open(ptr noundef %pctx, ptr noundef %name, ptr noundef readonly %param, i32 noundef %ipc_buf_size, ptr nocapture noundef writeonly %ipc_buf, ptr nocapture noundef writeonly %hdl) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.delta_ipc_open_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %rpmsg_device1 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %rpmsg_device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rpmsg_device1, align 4
  %ipc_ctx = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %msg) #5
  %4 = getelementptr inbounds i8, ptr %msg, i32 24
  %5 = call ptr @memset(ptr %4, i32 255, i32 40)
  %ipc_buf_struct = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 4, i32 3
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev2 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %name3 = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef %name3) #8
  %sys_errors = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 18
  %8 = ptrtoint ptr %sys_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sys_errors, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %sys_errors, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %name, null
  br i1 %tobool4.not, label %do.end8, label %if.end12

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev9 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev9, align 4
  %name10 = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef %name10) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %tobool13.not = icmp eq ptr %param, null
  br i1 %tobool13.not, label %if.end12.do.end20_crit_edge, label %lor.lhs.false

if.end12.do.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20

lor.lhs.false:                                    ; preds = %if.end12
  %data = getelementptr inbounds %struct.delta_ipc_param, ptr %param, i32 0, i32 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %lor.lhs.false.do.end20_crit_edge, label %lor.lhs.false15

lor.lhs.false.do.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool16.not = icmp eq i32 %15, 0
  br i1 %tobool16.not, label %lor.lhs.false15.do.end20_crit_edge, label %if.end24

lor.lhs.false15.do.end20_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20

do.end20:                                         ; preds = %lor.lhs.false15.do.end20_crit_edge, %lor.lhs.false.do.end20_crit_edge, %if.end12.do.end20_crit_edge
  %dev21 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev21, align 4
  %name22 = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.9, ptr noundef %name22) #8
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ipc_buf_size)
  %tobool25.not = icmp eq i32 %ipc_buf_size, 0
  br i1 %tobool25.not, label %do.end29, label %if.end33

do.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %dev30 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev30, align 4
  %name31 = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.12, ptr noundef %name31) #8
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %ipc_buf_size)
  %cmp = icmp ugt i32 %15, %ipc_buf_size
  br i1 %cmp, label %do.end38, label %if.end45

do.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %dev39 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev39, align 4
  %name40 = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 20
  %ipc_buf43 = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 4, i32 4
  %22 = ptrtoint ptr %ipc_buf43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ipc_buf43, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.15, ptr noundef %name40, i32 noundef %15, i32 noundef %25) #8
  br label %cleanup

if.end45:                                         ; preds = %if.end33
  %done = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 4, i32 2
  %26 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 4, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.93, ptr noundef nonnull @init_completion.__key) #5
  %call = tail call i32 @hw_alloc(ptr noundef %pctx, i32 noundef %ipc_buf_size, ptr noundef nonnull @.str.17, ptr noundef %ipc_buf_struct) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool46.not = icmp eq i32 %call, 0
  br i1 %tobool46.not, label %if.end48, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end48:                                         ; preds = %if.end45
  %ipc_buf49 = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 4, i32 4
  %27 = ptrtoint ptr %ipc_buf49 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %ipc_buf_struct, ptr %ipc_buf49, align 4
  %28 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -559038737, ptr %msg, align 4
  %host_hdl.i = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %msg, i32 0, i32 1
  %29 = ptrtoint ptr %host_hdl.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ipc_ctx, ptr %host_hdl.i, align 4
  %copro_hdl.i = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %copro_hdl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %copro_hdl.i, align 4
  %copro_hdl1.i = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %msg, i32 0, i32 2
  %32 = ptrtoint ptr %copro_hdl1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %copro_hdl1.i, align 4
  %command2.i = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %msg, i32 0, i32 3
  %33 = ptrtoint ptr %command2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %command2.i, align 4
  %ipc_buf_size50 = getelementptr inbounds %struct.delta_ipc_open_msg, ptr %msg, i32 0, i32 1
  %34 = ptrtoint ptr %ipc_buf_size50 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %ipc_buf_size, ptr %ipc_buf_size50, align 4
  %paddr = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 4, i32 3, i32 2
  %35 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %paddr, align 4
  %ipc_buf_paddr = getelementptr inbounds %struct.delta_ipc_open_msg, ptr %msg, i32 0, i32 2
  %37 = ptrtoint ptr %ipc_buf_paddr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ipc_buf_paddr, align 4
  %name52 = getelementptr inbounds %struct.delta_ipc_open_msg, ptr %msg, i32 0, i32 3
  %call54 = call i32 @strscpy(ptr noundef %name52, ptr noundef nonnull %name, i32 noundef 32) #5
  %38 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %param, align 4
  %param_size = getelementptr inbounds %struct.delta_ipc_open_msg, ptr %msg, i32 0, i32 4
  %40 = ptrtoint ptr %param_size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %param_size, align 4
  %41 = ptrtoint ptr %ipc_buf49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ipc_buf49, align 4
  %vaddr = getelementptr inbounds %struct.delta_buf, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vaddr, align 4
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  %47 = call ptr @memcpy(ptr %44, ptr %46, i32 %39)
  %48 = load ptr, ptr %ipc_buf49, align 4
  %paddr60 = getelementptr inbounds %struct.delta_buf, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %paddr60 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %paddr60, align 4
  %param_paddr = getelementptr inbounds %struct.delta_ipc_open_msg, ptr %msg, i32 0, i32 5
  %51 = ptrtoint ptr %param_paddr to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %param_paddr, align 4
  %ept = getelementptr inbounds %struct.rpmsg_device, ptr %3, i32 0, i32 5
  %52 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ept, align 8
  %call61 = call i32 @rpmsg_send(ptr noundef %53, ptr noundef nonnull %msg, i32 noundef 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end72, label %do.end66

do.end66:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %dev67 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %54 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev67, align 4
  %name68 = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 20
  %56 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %param, align 4
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.19, ptr noundef %name68, i32 noundef %call61, ptr noundef nonnull %name, i32 noundef %57, ptr noundef %59) #8
  br label %err

if.end72:                                         ; preds = %if.end48
  %call75 = call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %do.end80, label %if.end86

do.end80:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %dev81 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %60 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev81, align 4
  %name82 = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 20
  %62 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %param, align 4
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.22, ptr noundef %name82, ptr noundef nonnull %name, i32 noundef %63, ptr noundef %65) #8
  br label %err

if.end86:                                         ; preds = %if.end72
  %66 = ptrtoint ptr %ipc_ctx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ipc_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool87.not = icmp eq i32 %67, 0
  br i1 %tobool87.not, label %if.end98, label %do.end91

do.end91:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  %dev92 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %68 = ptrtoint ptr %dev92 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev92, align 4
  %name93 = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 20
  %70 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %param, align 4
  %72 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.25, ptr noundef %name93, i32 noundef %67, ptr noundef nonnull %name, i32 noundef %71, ptr noundef %73) #8
  br label %err

if.end98:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %ipc_buf49 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ipc_buf49, align 4
  %76 = ptrtoint ptr %ipc_buf to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %ipc_buf, align 4
  %77 = ptrtoint ptr %hdl to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %ipc_ctx, ptr %hdl, align 4
  br label %cleanup

err:                                              ; preds = %do.end91, %do.end80, %do.end66
  %ret.0 = phi i32 [ %call61, %do.end66 ], [ -5, %do.end91 ], [ -110, %do.end80 ]
  %sys_errors100 = getelementptr inbounds %struct.delta_ctx, ptr %pctx, i32 0, i32 18
  %78 = ptrtoint ptr %sys_errors100 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sys_errors100, align 4
  %inc101 = add i32 %79, 1
  store i32 %inc101, ptr %sys_errors100, align 4
  %80 = ptrtoint ptr %ipc_buf49 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ipc_buf49, align 4
  call void @hw_free(ptr noundef %pctx, ptr noundef %81) #5
  %82 = ptrtoint ptr %ipc_buf49 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %ipc_buf49, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end98, %if.end45.cleanup_crit_edge, %do.end38, %do.end29, %do.end20, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end38 ], [ %ret.0, %err ], [ 0, %if.end98 ], [ -22, %do.end29 ], [ -22, %do.end20 ], [ -22, %do.end8 ], [ -22, %do.end ], [ %call, %if.end45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %msg) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_alloc(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @delta_ipc_set_stream(ptr noundef %hdl, ptr noundef readonly %param) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.delta_ipc_set_stream_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %hdl, i32 -8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %rpmsg_device1 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %rpmsg_device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rpmsg_device1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #5
  %4 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %msg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %msg, i32 0, i32 2
  %6 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %msg, i32 0, i32 3
  %7 = getelementptr inbounds %struct.delta_ipc_set_stream_msg, ptr %msg, i32 0, i32 1
  %8 = getelementptr inbounds %struct.delta_ipc_set_stream_msg, ptr %msg, i32 0, i32 2
  %tobool.not = icmp eq ptr %hdl, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev2 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.27, ptr noundef nonnull inttoptr (i32 456 to ptr)) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end7, label %if.end11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev8 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev8, align 4
  %name9 = getelementptr i8, ptr %hdl, i32 456
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.30, ptr noundef %name9) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %tobool12.not = icmp eq ptr %param, null
  br i1 %tobool12.not, label %if.end11.do.end19_crit_edge, label %lor.lhs.false

if.end11.do.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

lor.lhs.false:                                    ; preds = %if.end11
  %data = getelementptr inbounds %struct.delta_ipc_param, ptr %param, i32 0, i32 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %lor.lhs.false.do.end19_crit_edge, label %lor.lhs.false14

lor.lhs.false.do.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool15.not = icmp eq i32 %16, 0
  br i1 %tobool15.not, label %lor.lhs.false14.do.end19_crit_edge, label %if.end23

lor.lhs.false14.do.end19_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

do.end19:                                         ; preds = %lor.lhs.false14.do.end19_crit_edge, %lor.lhs.false.do.end19_crit_edge, %if.end11.do.end19_crit_edge
  %dev20 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev20, align 4
  %name21 = getelementptr i8, ptr %hdl, i32 456
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.33, ptr noundef %name21) #8
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false14
  %ipc_buf = getelementptr inbounds %struct.delta_ipc_ctx, ptr %hdl, i32 0, i32 4
  %19 = ptrtoint ptr %ipc_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ipc_buf, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %22)
  %cmp = icmp ugt i32 %16, %22
  br i1 %cmp, label %do.end29, label %if.end36

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %dev30 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev30, align 4
  %name31 = getelementptr i8, ptr %hdl, i32 456
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.36, ptr noundef %name31, i32 noundef %16, i32 noundef %22) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end23
  %vaddr.i = getelementptr inbounds %struct.delta_buf, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vaddr.i, align 4
  %cmp.not.i = icmp ule ptr %26, %14
  %add.ptr.i = getelementptr i8, ptr %14, i32 %16
  %add.ptr5.i = getelementptr i8, ptr %26, i32 %22
  %cmp6.i = icmp ule ptr %add.ptr.i, %add.ptr5.i
  %or.cond = select i1 %cmp.not.i, i1 %cmp6.i, i1 false
  br i1 %or.cond, label %if.end55, label %do.end42

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %dev43 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev43, align 4
  %name44 = getelementptr i8, ptr %hdl, i32 456
  %add.ptr54 = getelementptr i8, ptr %add.ptr5.i, i32 -1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.39, ptr noundef %name44, i32 noundef %16, ptr noundef nonnull %14, ptr noundef %26, ptr noundef %add.ptr54) #8
  br label %cleanup

if.end55:                                         ; preds = %if.end36
  %29 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -559038737, ptr %msg, align 4
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %hdl, ptr %4, align 4
  %copro_hdl.i = getelementptr inbounds %struct.delta_ipc_ctx, ptr %hdl, i32 0, i32 1
  %31 = ptrtoint ptr %copro_hdl.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %copro_hdl.i, align 4
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %5, align 4
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %6, align 4
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %16, ptr %7, align 4
  %paddr.i = getelementptr inbounds %struct.delta_buf, ptr %20, i32 0, i32 2
  %36 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %paddr.i, align 4
  %38 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vaddr.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i = add i32 %37, %sub.ptr.lhs.cast.i
  %add.i = sub i32 %sub.ptr.sub.i, %sub.ptr.rhs.cast.i
  %40 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add.i, ptr %8, align 4
  %ept = getelementptr inbounds %struct.rpmsg_device, ptr %3, i32 0, i32 5
  %41 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ept, align 8
  %call59 = call i32 @rpmsg_send(ptr noundef %42, ptr noundef nonnull %msg, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end70, label %do.end64

do.end64:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %dev65 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %43 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev65, align 4
  %name66 = getelementptr i8, ptr %hdl, i32 456
  %45 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %param, align 4
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.42, ptr noundef %name66, i32 noundef %call59, i32 noundef %46, ptr noundef %48) #8
  %sys_errors = getelementptr i8, ptr %hdl, i32 444
  %49 = ptrtoint ptr %sys_errors to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sys_errors, align 4
  %inc = add i32 %50, 1
  store i32 %inc, ptr %sys_errors, align 4
  br label %cleanup

if.end70:                                         ; preds = %if.end55
  %done = getelementptr inbounds %struct.delta_ipc_ctx, ptr %hdl, i32 0, i32 2
  %call72 = call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %do.end77, label %if.end85

do.end77:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  %dev78 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %51 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev78, align 4
  %name79 = getelementptr i8, ptr %hdl, i32 456
  %53 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %param, align 4
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.45, ptr noundef %name79, i32 noundef %54, ptr noundef %56) #8
  %sys_errors83 = getelementptr i8, ptr %hdl, i32 444
  %57 = ptrtoint ptr %sys_errors83 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sys_errors83, align 4
  %inc84 = add i32 %58, 1
  store i32 %inc84, ptr %sys_errors83, align 4
  br label %cleanup

if.end85:                                         ; preds = %if.end70
  %59 = ptrtoint ptr %hdl to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hdl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool86.not = icmp eq i32 %60, 0
  br i1 %tobool86.not, label %if.end85.cleanup_crit_edge, label %do.end90

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end90:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  %dev91 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %61 = ptrtoint ptr %dev91 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev91, align 4
  %name92 = getelementptr i8, ptr %hdl, i32 456
  %63 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %param, align 4
  %65 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.48, ptr noundef %name92, i32 noundef %60, i32 noundef %64, ptr noundef %66) #8
  %sys_errors97 = getelementptr i8, ptr %hdl, i32 444
  %67 = ptrtoint ptr %sys_errors97 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sys_errors97, align 4
  %inc98 = add i32 %68, 1
  store i32 %inc98, ptr %sys_errors97, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end90, %if.end85.cleanup_crit_edge, %do.end77, %do.end64, %do.end42, %do.end29, %do.end19, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end29 ], [ %call59, %do.end64 ], [ -5, %do.end90 ], [ -110, %do.end77 ], [ -22, %do.end42 ], [ -22, %do.end19 ], [ -22, %do.end7 ], [ -22, %do.end ], [ 0, %if.end85.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @delta_ipc_decode(ptr noundef %hdl, ptr noundef readonly %param, ptr noundef readonly %status) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.delta_ipc_decode_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %hdl, i32 -8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %rpmsg_device1 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %rpmsg_device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rpmsg_device1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %msg) #5
  %4 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %msg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %msg, i32 0, i32 2
  %6 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %msg, i32 0, i32 3
  %7 = getelementptr inbounds %struct.delta_ipc_decode_msg, ptr %msg, i32 0, i32 1
  %8 = getelementptr inbounds %struct.delta_ipc_decode_msg, ptr %msg, i32 0, i32 2
  %9 = getelementptr inbounds %struct.delta_ipc_decode_msg, ptr %msg, i32 0, i32 3
  %10 = getelementptr inbounds %struct.delta_ipc_decode_msg, ptr %msg, i32 0, i32 4
  %tobool.not = icmp eq ptr %hdl, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev2 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.50, ptr noundef nonnull inttoptr (i32 456 to ptr)) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.end7, label %if.end11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev8 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev8, align 4
  %name9 = getelementptr i8, ptr %hdl, i32 456
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.53, ptr noundef %name9) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %tobool12.not = icmp eq ptr %param, null
  br i1 %tobool12.not, label %if.end11.do.end19_crit_edge, label %lor.lhs.false

if.end11.do.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

lor.lhs.false:                                    ; preds = %if.end11
  %data = getelementptr inbounds %struct.delta_ipc_param, ptr %param, i32 0, i32 1
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %lor.lhs.false.do.end19_crit_edge, label %lor.lhs.false14

lor.lhs.false.do.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %17 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool15.not = icmp eq i32 %18, 0
  br i1 %tobool15.not, label %lor.lhs.false14.do.end19_crit_edge, label %if.end23

lor.lhs.false14.do.end19_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

do.end19:                                         ; preds = %lor.lhs.false14.do.end19_crit_edge, %lor.lhs.false.do.end19_crit_edge, %if.end11.do.end19_crit_edge
  %dev20 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev20, align 4
  %name21 = getelementptr i8, ptr %hdl, i32 456
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.56, ptr noundef %name21) #8
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false14
  %tobool24.not = icmp eq ptr %status, null
  br i1 %tobool24.not, label %if.end23.do.end34_crit_edge, label %lor.lhs.false25

if.end23.do.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34

lor.lhs.false25:                                  ; preds = %if.end23
  %data26 = getelementptr inbounds %struct.delta_ipc_param, ptr %status, i32 0, i32 1
  %21 = ptrtoint ptr %data26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data26, align 4
  %tobool27.not = icmp eq ptr %22, null
  br i1 %tobool27.not, label %lor.lhs.false25.do.end34_crit_edge, label %lor.lhs.false28

lor.lhs.false25.do.end34_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34

lor.lhs.false28:                                  ; preds = %lor.lhs.false25
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool30.not = icmp eq i32 %24, 0
  br i1 %tobool30.not, label %lor.lhs.false28.do.end34_crit_edge, label %if.end38

lor.lhs.false28.do.end34_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34

do.end34:                                         ; preds = %lor.lhs.false28.do.end34_crit_edge, %lor.lhs.false25.do.end34_crit_edge, %if.end23.do.end34_crit_edge
  %dev35 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev35, align 4
  %name36 = getelementptr i8, ptr %hdl, i32 456
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.59, ptr noundef %name36) #8
  br label %cleanup

if.end38:                                         ; preds = %lor.lhs.false28
  %add = add i32 %24, %18
  %ipc_buf = getelementptr inbounds %struct.delta_ipc_ctx, ptr %hdl, i32 0, i32 4
  %27 = ptrtoint ptr %ipc_buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ipc_buf, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %30)
  %cmp = icmp ugt i32 %add, %30
  br i1 %cmp, label %do.end45, label %if.end53

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %dev46 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev46, align 4
  %name47 = getelementptr i8, ptr %hdl, i32 456
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.62, ptr noundef %name47, i32 noundef %18, i32 noundef %24, i32 noundef %30) #8
  br label %cleanup

if.end53:                                         ; preds = %if.end38
  %vaddr.i = getelementptr inbounds %struct.delta_buf, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vaddr.i, align 4
  %cmp.not.i = icmp ule ptr %34, %16
  %add.ptr.i = getelementptr i8, ptr %16, i32 %18
  %add.ptr5.i = getelementptr i8, ptr %34, i32 %30
  %cmp6.i = icmp ule ptr %add.ptr.i, %add.ptr5.i
  %or.cond = select i1 %cmp.not.i, i1 %cmp6.i, i1 false
  br i1 %or.cond, label %if.end72, label %do.end59

do.end59:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %dev60 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev60, align 4
  %name61 = getelementptr i8, ptr %hdl, i32 456
  %add.ptr71 = getelementptr i8, ptr %add.ptr5.i, i32 -1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.65, ptr noundef %name61, i32 noundef %18, ptr noundef nonnull %16, ptr noundef %34, ptr noundef %add.ptr71) #8
  br label %cleanup

if.end72:                                         ; preds = %if.end53
  %cmp.not.i222 = icmp ule ptr %34, %22
  %add.ptr.i223 = getelementptr i8, ptr %22, i32 %24
  %cmp6.i225 = icmp ule ptr %add.ptr.i223, %add.ptr5.i
  %or.cond236 = select i1 %cmp.not.i222, i1 %cmp6.i225, i1 false
  br i1 %or.cond236, label %if.end93, label %do.end79

do.end79:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %dev80 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev80, align 4
  %name81 = getelementptr i8, ptr %hdl, i32 456
  %add.ptr92 = getelementptr i8, ptr %add.ptr5.i, i32 -1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.68, ptr noundef %name81, i32 noundef %24, ptr noundef nonnull %22, ptr noundef %34, ptr noundef %add.ptr92) #8
  br label %cleanup

if.end93:                                         ; preds = %if.end72
  %39 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -559038737, ptr %msg, align 4
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %hdl, ptr %4, align 4
  %copro_hdl.i = getelementptr inbounds %struct.delta_ipc_ctx, ptr %hdl, i32 0, i32 1
  %41 = ptrtoint ptr %copro_hdl.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %copro_hdl.i, align 4
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %5, align 4
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %6, align 4
  %45 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %18, ptr %7, align 4
  %paddr.i = getelementptr inbounds %struct.delta_buf, ptr %28, i32 0, i32 2
  %46 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %paddr.i, align 4
  %48 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vaddr.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i = add i32 %47, %sub.ptr.lhs.cast.i
  %add.i = sub i32 %sub.ptr.sub.i, %sub.ptr.rhs.cast.i
  %50 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add.i, ptr %8, align 4
  %51 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %24, ptr %9, align 4
  %52 = load i32, ptr %paddr.i, align 4
  %53 = load ptr, ptr %vaddr.i, align 4
  %sub.ptr.lhs.cast.i232 = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i233 = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i234 = add i32 %52, %sub.ptr.lhs.cast.i232
  %add.i235 = sub i32 %sub.ptr.sub.i234, %sub.ptr.rhs.cast.i233
  %54 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.i235, ptr %10, align 4
  %ept = getelementptr inbounds %struct.rpmsg_device, ptr %3, i32 0, i32 5
  %55 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ept, align 8
  %call100 = call i32 @rpmsg_send(ptr noundef %56, ptr noundef nonnull %msg, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end111, label %do.end105

do.end105:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  %dev106 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %57 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev106, align 4
  %name107 = getelementptr i8, ptr %hdl, i32 456
  %59 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %param, align 4
  %61 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.71, ptr noundef %name107, i32 noundef %call100, i32 noundef %60, ptr noundef %62) #8
  %sys_errors = getelementptr i8, ptr %hdl, i32 444
  %63 = ptrtoint ptr %sys_errors to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sys_errors, align 4
  %inc = add i32 %64, 1
  store i32 %inc, ptr %sys_errors, align 4
  br label %cleanup

if.end111:                                        ; preds = %if.end93
  %done = getelementptr inbounds %struct.delta_ipc_ctx, ptr %hdl, i32 0, i32 2
  %call113 = call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %do.end118, label %if.end126

do.end118:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  %dev119 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %65 = ptrtoint ptr %dev119 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev119, align 4
  %name120 = getelementptr i8, ptr %hdl, i32 456
  %67 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %param, align 4
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.74, ptr noundef %name120, i32 noundef %68, ptr noundef %70) #8
  %sys_errors124 = getelementptr i8, ptr %hdl, i32 444
  %71 = ptrtoint ptr %sys_errors124 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sys_errors124, align 4
  %inc125 = add i32 %72, 1
  store i32 %inc125, ptr %sys_errors124, align 4
  br label %cleanup

if.end126:                                        ; preds = %if.end111
  %73 = ptrtoint ptr %hdl to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %hdl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool127.not = icmp eq i32 %74, 0
  br i1 %tobool127.not, label %if.end126.cleanup_crit_edge, label %do.end131

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end131:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  %dev132 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %75 = ptrtoint ptr %dev132 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev132, align 4
  %name133 = getelementptr i8, ptr %hdl, i32 456
  %77 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %param, align 4
  %79 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.77, ptr noundef %name133, i32 noundef %74, i32 noundef %78, ptr noundef %80) #8
  %sys_errors138 = getelementptr i8, ptr %hdl, i32 444
  %81 = ptrtoint ptr %sys_errors138 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sys_errors138, align 4
  %inc139 = add i32 %82, 1
  store i32 %inc139, ptr %sys_errors138, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end131, %if.end126.cleanup_crit_edge, %do.end118, %do.end105, %do.end79, %do.end59, %do.end45, %do.end34, %do.end19, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end45 ], [ %call100, %do.end105 ], [ -5, %do.end131 ], [ -110, %do.end118 ], [ -22, %do.end79 ], [ -22, %do.end59 ], [ -22, %do.end34 ], [ -22, %do.end19 ], [ -22, %do.end7 ], [ -22, %do.end ], [ 0, %if.end126.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %msg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @delta_ipc_close(ptr noundef %hdl) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.delta_ipc_close_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hdl, i32 -204
  %dev = getelementptr i8, ptr %hdl, i32 -8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %rpmsg_device1 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %rpmsg_device1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rpmsg_device1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #5
  %4 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %msg, i32 0, i32 1
  %5 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %msg, i32 0, i32 2
  %6 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %msg, i32 0, i32 3
  %tobool.not = icmp eq ptr %hdl, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev2 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.79, ptr noundef nonnull inttoptr (i32 456 to ptr)) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ipc_buf = getelementptr inbounds %struct.delta_ipc_ctx, ptr %hdl, i32 0, i32 4
  %9 = ptrtoint ptr %ipc_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ipc_buf, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hw_free(ptr noundef %add.ptr, ptr noundef nonnull %10) #5
  %11 = ptrtoint ptr %ipc_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %ipc_buf, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %do.end12, label %if.end16

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %dev13 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev13, align 4
  %name14 = getelementptr i8, ptr %hdl, i32 456
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.82, ptr noundef %name14) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -559038737, ptr %msg, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %hdl, ptr %4, align 4
  %copro_hdl.i = getelementptr inbounds %struct.delta_ipc_ctx, ptr %hdl, i32 0, i32 1
  %16 = ptrtoint ptr %copro_hdl.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %copro_hdl.i, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %5, align 4
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %6, align 4
  %ept = getelementptr inbounds %struct.rpmsg_device, ptr %3, i32 0, i32 5
  %20 = ptrtoint ptr %ept to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ept, align 8
  %call = call i32 @rpmsg_send(ptr noundef %21, ptr noundef nonnull %msg, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %if.end25, label %do.end21

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %dev22 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev22, align 4
  %name23 = getelementptr i8, ptr %hdl, i32 456
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.85, ptr noundef %name23, i32 noundef %call) #8
  %sys_errors = getelementptr i8, ptr %hdl, i32 444
  %24 = ptrtoint ptr %sys_errors to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sys_errors, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %sys_errors, align 4
  br label %cleanup

if.end25:                                         ; preds = %if.end16
  %done = getelementptr inbounds %struct.delta_ipc_ctx, ptr %hdl, i32 0, i32 2
  %call27 = call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.end32, label %if.end38

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %dev33 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev33, align 4
  %name34 = getelementptr i8, ptr %hdl, i32 456
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.88, ptr noundef %name34) #8
  %sys_errors36 = getelementptr i8, ptr %hdl, i32 444
  %28 = ptrtoint ptr %sys_errors36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sys_errors36, align 4
  %inc37 = add i32 %29, 1
  store i32 %inc37, ptr %sys_errors36, align 4
  br label %cleanup

if.end38:                                         ; preds = %if.end25
  %30 = ptrtoint ptr %hdl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hdl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool39.not = icmp eq i32 %31, 0
  br i1 %tobool39.not, label %if.end38.cleanup_crit_edge, label %do.end43

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end43:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %dev44 = getelementptr inbounds %struct.delta_dev, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev44, align 4
  %name45 = getelementptr i8, ptr %hdl, i32 456
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.91, ptr noundef %name45, i32 noundef %31) #8
  %sys_errors48 = getelementptr i8, ptr %hdl, i32 444
  %34 = ptrtoint ptr %sys_errors48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sys_errors48, align 4
  %inc49 = add i32 %35, 1
  store i32 %inc49, ptr %sys_errors48, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %if.end38.cleanup_crit_edge, %do.end32, %do.end21, %do.end12, %do.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @delta_ipc_init(ptr noundef %delta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rpmsg_driver = getelementptr inbounds %struct.delta_dev, ptr %delta, i32 0, i32 17
  %0 = call ptr @memcpy(ptr %rpmsg_driver, ptr @delta_rpmsg_driver, i32 92)
  %call = tail call i32 @__register_rpmsg_driver(ptr noundef %rpmsg_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_rpmsg_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @delta_ipc_exit(ptr noundef %delta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rpmsg_driver = getelementptr inbounds %struct.delta_dev, ptr %delta, i32 0, i32 17
  tail call void @unregister_rpmsg_driver(ptr noundef %rpmsg_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_rpmsg_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @delta_ipc_probe(ptr noundef %rpmsg_device) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %rpmsg_device, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %rpmsg_device4 = getelementptr i8, ptr %1, i32 92
  %2 = ptrtoint ptr %rpmsg_device4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rpmsg_device, ptr %rpmsg_device4, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @delta_ipc_remove(ptr nocapture noundef readonly %rpmsg_device) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %rpmsg_device, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %rpmsg_device4 = getelementptr i8, ptr %1, i32 92
  %2 = ptrtoint ptr %rpmsg_device4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rpmsg_device4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delta_ipc_cb(ptr noundef %rpdev, ptr noundef readonly %data, i32 noundef %len, ptr nocapture noundef readnone %priv, i32 noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rpdev, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef null, ptr noundef nonnull @.str.95) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool2.not = icmp eq i32 %len, 0
  %or.cond = or i1 %tobool1.not, %tobool2.not
  br i1 %or.cond, label %do.end6, label %if.end7

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %rpdev, ptr noundef nonnull @.str.98, i32 noundef %src) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %len)
  %cmp.not = icmp eq i32 %len, 20
  br i1 %cmp.not, label %if.end13, label %do.end11

do.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %rpdev, ptr noundef nonnull @.str.101, i32 noundef %len, i32 noundef %src, i32 noundef 20) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -559038737, i32 %1)
  %cmp14.not = icmp eq i32 %1, -559038737
  br i1 %cmp14.not, label %if.end22, label %do.end18

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %rpdev, ptr noundef nonnull @.str.104, i32 noundef %src, i32 noundef %1, i32 noundef -559038737) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %host_hdl = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %host_hdl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_hdl, align 4
  %tobool24.not = icmp eq ptr %3, null
  br i1 %tobool24.not, label %do.end28, label %if.end30

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %rpdev, ptr noundef nonnull @.str.107, i32 noundef %src) #8
  br label %cleanup

if.end30:                                         ; preds = %if.end22
  %copro_hdl = getelementptr inbounds %struct.delta_ipc_ctx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %copro_hdl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %copro_hdl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool31.not = icmp eq i32 %5, 0
  br i1 %tobool31.not, label %if.then32, label %if.end30.if.end36_crit_edge

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %copro_hdl34 = getelementptr inbounds %struct.delta_ipc_header_msg, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %copro_hdl34 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %copro_hdl34, align 4
  %8 = ptrtoint ptr %copro_hdl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %copro_hdl, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end30.if.end36_crit_edge
  %err = getelementptr inbounds %struct.delta_ipc_cb_msg, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %err, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %3, align 4
  %done = getelementptr inbounds %struct.delta_ipc_ctx, ptr %3, i32 0, i32 2
  tail call void @complete(ptr noundef %done) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end28, %do.end18, %do.end11, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end11 ], [ -22, %do.end18 ], [ 0, %if.end36 ], [ -22, %do.end28 ], [ -22, %do.end6 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !138, !140, !142, !144, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 122, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @delta_ipc_open._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @delta_ipc_open._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 130, i32 3}
!10 = !{ptr @delta_ipc_open._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @delta_ipc_open._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 137, i32 3}
!14 = !{ptr @delta_ipc_open._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @delta_ipc_open._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 144, i32 3}
!18 = !{ptr @delta_ipc_open._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @delta_ipc_open._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 151, i32 3}
!22 = !{ptr @delta_ipc_open._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @delta_ipc_open._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 167, i32 10}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 187, i32 3}
!28 = !{ptr @delta_ipc_open._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @delta_ipc_open._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 197, i32 3}
!32 = !{ptr @delta_ipc_open._entry.21, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @delta_ipc_open._entry_ptr.23, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.25, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 207, i32 3}
!36 = !{ptr @delta_ipc_open._entry.24, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @delta_ipc_open._entry_ptr.26, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.27, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 238, i32 3}
!40 = !{ptr @.str.28, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @delta_ipc_set_stream._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @delta_ipc_set_stream._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.30, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 245, i32 3}
!45 = !{ptr @delta_ipc_set_stream._entry.29, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @delta_ipc_set_stream._entry_ptr.31, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.33, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 252, i32 3}
!49 = !{ptr @delta_ipc_set_stream._entry.32, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @delta_ipc_set_stream._entry_ptr.34, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.36, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 259, i32 3}
!53 = !{ptr @delta_ipc_set_stream._entry.35, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @delta_ipc_set_stream._entry_ptr.37, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.39, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 267, i32 3}
!57 = !{ptr @delta_ipc_set_stream._entry.38, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @delta_ipc_set_stream._entry_ptr.40, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.42, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 286, i32 3}
!61 = !{ptr @delta_ipc_set_stream._entry.41, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @delta_ipc_set_stream._entry_ptr.43, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.45, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 297, i32 3}
!65 = !{ptr @delta_ipc_set_stream._entry.44, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @delta_ipc_set_stream._entry_ptr.46, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.48, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 307, i32 3}
!69 = !{ptr @delta_ipc_set_stream._entry.47, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @delta_ipc_set_stream._entry_ptr.49, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.50, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 329, i32 3}
!73 = !{ptr @.str.51, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @delta_ipc_decode._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @delta_ipc_decode._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.53, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 336, i32 3}
!78 = !{ptr @delta_ipc_decode._entry.52, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @delta_ipc_decode._entry_ptr.54, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.56, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 343, i32 3}
!82 = !{ptr @delta_ipc_decode._entry.55, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @delta_ipc_decode._entry_ptr.57, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.59, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 350, i32 3}
!86 = !{ptr @delta_ipc_decode._entry.58, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @delta_ipc_decode._entry_ptr.60, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.62, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 357, i32 3}
!90 = !{ptr @delta_ipc_decode._entry.61, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @delta_ipc_decode._entry_ptr.63, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.65, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 367, i32 3}
!94 = !{ptr @delta_ipc_decode._entry.64, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @delta_ipc_decode._entry_ptr.66, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.68, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 378, i32 3}
!98 = !{ptr @delta_ipc_decode._entry.67, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @delta_ipc_decode._entry_ptr.69, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.71, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 400, i32 3}
!102 = !{ptr @delta_ipc_decode._entry.70, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @delta_ipc_decode._entry_ptr.72, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.74, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 411, i32 3}
!106 = !{ptr @delta_ipc_decode._entry.73, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @delta_ipc_decode._entry_ptr.75, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.77, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 421, i32 3}
!110 = !{ptr @delta_ipc_decode._entry.76, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @delta_ipc_decode._entry_ptr.78, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.79, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 442, i32 3}
!114 = !{ptr @.str.80, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @delta_ipc_close._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @delta_ipc_close._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.82, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 454, i32 3}
!119 = !{ptr @delta_ipc_close._entry.81, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @delta_ipc_close._entry_ptr.83, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.85, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 466, i32 3}
!123 = !{ptr @delta_ipc_close._entry.84, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @delta_ipc_close._entry_ptr.86, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.88, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 476, i32 3}
!127 = !{ptr @delta_ipc_close._entry.87, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @delta_ipc_close._entry_ptr.89, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.91, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 485, i32 3}
!131 = !{ptr @delta_ipc_close._entry.90, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @delta_ipc_close._entry_ptr.92, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @init_completion.__key, !134, !"__key", i1 false, i1 false}
!134 = !{!"../include/linux/completion.h", i32 87, i32 2}
!135 = !{ptr @.str.93, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.94, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 574, i32 18}
!138 = !{ptr @delta_rpmsg_driver, !139, !"delta_rpmsg_driver", i1 false, i1 false}
!139 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 573, i32 28}
!140 = !{ptr @delta_ipc_device_id_table, !141, !"delta_ipc_device_id_table", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 568, i32 31}
!142 = !{ptr @.str.95, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 500, i32 3}
!144 = !{ptr @.str.96, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @delta_ipc_cb._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @delta_ipc_cb._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.98, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 505, i32 3}
!149 = !{ptr @delta_ipc_cb._entry.97, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @delta_ipc_cb._entry_ptr.99, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.101, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 511, i32 3}
!153 = !{ptr @delta_ipc_cb._entry.100, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @delta_ipc_cb._entry_ptr.102, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.104, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 519, i32 3}
!157 = !{ptr @delta_ipc_cb._entry.103, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @delta_ipc_cb._entry_ptr.105, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.107, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/platform/sti/delta/delta-ipc.c", i32 527, i32 3}
!161 = !{ptr @delta_ipc_cb._entry.106, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @delta_ipc_cb._entry_ptr.108, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
