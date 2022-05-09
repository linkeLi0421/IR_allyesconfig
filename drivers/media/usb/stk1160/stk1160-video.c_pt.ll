; ModuleID = '/llk/IR_all_yes/drivers/media/usb/stk1160/stk1160-video.c_pt.bc'
source_filename = "../drivers/media/usb/stk1160/stk1160-video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.stk1160 = type { %struct.v4l2_device, %struct.video_device, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, %struct.list_head, %struct.vb2_queue, i32, ptr, i32, i32, %struct.stk1160_isoc_ctl, i32, i32, i32, i64, ptr, i32, %struct.i2c_adapter, %struct.i2c_client, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.list_head = type { ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.stk1160_isoc_ctl = type { i32, i32, ptr, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.96, i32 }
%union.anon.96 = type { i32 }
%struct.stk1160_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, ptr, i32, i32, i32, i32 }

@__param_str_debug = internal constant [14 x i8] c"stk1160.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype309 = internal constant [27 x i8] c"stk1160.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug310 = internal constant [41 x i8] c"stk1160.parm=debug:enable debug messages\00", section ".modinfo", align 1
@stk1160_alloc_isoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013stk1160: out of memory for urb array\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stk1160_alloc_isoc\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/usb/stk1160/stk1160-video.c\00", [54 x i8] zeroinitializer }, align 32
@stk1160_alloc_isoc._entry_ptr = internal global ptr @stk1160_alloc_isoc._entry, section ".printk_index", align 4
@stk1160_alloc_isoc._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013stk1160: out of memory for usb transfers\0A\00", [52 x i8] zeroinitializer }, align 32
@stk1160_alloc_isoc._entry_ptr.5 = internal global ptr @stk1160_alloc_isoc._entry.3, section ".printk_index", align 4
@stk1160_alloc_isoc._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013stk1160: cannot alloc %d bytes for tx[%d] buffer\0A\00", [44 x i8] zeroinitializer }, align 32
@stk1160_alloc_isoc._entry_ptr.8 = internal global ptr @stk1160_alloc_isoc._entry.6, section ".printk_index", align 4
@stk1160_alloc_isoc._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014stk1160: %d urbs allocated. Trying to continue...\0A\00", [43 x i8] zeroinitializer }, align 32
@stk1160_alloc_isoc._entry_ptr.11 = internal global ptr @stk1160_alloc_isoc._entry.9, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@stk1160_isoc_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013stk1160: urb error! status %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stk1160_isoc_irq\00", [47 x i8] zeroinitializer }, align 32
@stk1160_isoc_irq._entry_ptr = internal global ptr @stk1160_isoc_irq._entry, section ".printk_index", align 4
@stk1160_isoc_irq._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013stk1160: urb re-submit failed (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@stk1160_isoc_irq._entry_ptr.16 = internal global ptr @stk1160_isoc_irq._entry.14, section ".printk_index", align 4
@stk1160_process_isoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014stk1160: %s called with null device\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stk1160_process_isoc\00", [43 x i8] zeroinitializer }, align 32
@stk1160_process_isoc._entry_ptr = internal global ptr @stk1160_process_isoc._entry, section ".printk_index", align 4
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unlinked synchronously\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unlinked asynchronously\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Buffer error (overrun)\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Stalled (device not responding)\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Babble (bad cable?)\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Bit-stuff error (bad cable?)\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CRC/Timeout (could be anything)\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Device does not respond\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.print_err_status = private unnamed_addr constant [17 x i8] c"print_err_status\00", align 1
@print_err_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @__func__.print_err_status, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014URB status %d [%s].\0A\00", [41 x i8] zeroinitializer }, align 32
@print_err_status._entry_ptr = internal global ptr @print_err_status._entry, section ".printk_index", align 4
@print_err_status._rs.30 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@print_err_status._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @__func__.print_err_status, ptr @.str.2, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016URB packet %d, status %d [%s].\0A\00", [62 x i8] zeroinitializer }, align 32
@print_err_status._entry_ptr.33 = internal global ptr @print_err_status._entry.31, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@stk1160_copy_video._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.stk1160_copy_video = private unnamed_addr constant [19 x i8] c"stk1160_copy_video\00", align 1
@stk1160_copy_video._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.stk1160_copy_video, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014stk1160: buffer overflow detected\0A\00", [59 x i8] zeroinitializer }, align 32
@stk1160_copy_video._entry_ptr = internal global ptr @stk1160_copy_video._entry, section ".printk_index", align 4
@stk1160_copy_video._rs.36 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@stk1160_copy_video._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @__func__.stk1160_copy_video, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014stk1160: negative lencopy detected\0A\00", [58 x i8] zeroinitializer }, align 32
@stk1160_copy_video._entry_ptr.39 = internal global ptr @stk1160_copy_video._entry.37, section ".printk_index", align 4
@stk1160_copy_video._rs.40 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@stk1160_copy_video._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.stk1160_copy_video, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stk1160_copy_video._entry_ptr.42 = internal global ptr @stk1160_copy_video._entry.41, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.43 = internal global [10 x i64] [i64 8, i64 32, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967225, i64 4294967233, i64 4294967234, i64 4294967264, i64 4294967294]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 192]
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 20, i32 21 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 434, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 441, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 461, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 514, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 309, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 323, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 223, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 27, i32 17 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 31, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 34, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 37, i32 12 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 40, i32 12 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 43, i32 12 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 46, i32 12 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 49, i32 12 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 52, i32 12 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 57, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 60, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1163, i32 7 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 160, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 196, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private constant [45 x i8] c"../drivers/media/usb/stk1160/stk1160-video.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 202, i32 4 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_debug310, ptr @__UNIQUE_ID_debugtype309, ptr @__param_debug, ptr @print_err_status._entry, ptr @print_err_status._entry.31, ptr @print_err_status._entry_ptr, ptr @print_err_status._entry_ptr.33, ptr @stk1160_alloc_isoc._entry, ptr @stk1160_alloc_isoc._entry.3, ptr @stk1160_alloc_isoc._entry.6, ptr @stk1160_alloc_isoc._entry.9, ptr @stk1160_alloc_isoc._entry_ptr, ptr @stk1160_alloc_isoc._entry_ptr.11, ptr @stk1160_alloc_isoc._entry_ptr.5, ptr @stk1160_alloc_isoc._entry_ptr.8, ptr @stk1160_copy_video._entry, ptr @stk1160_copy_video._entry.37, ptr @stk1160_copy_video._entry.41, ptr @stk1160_copy_video._entry_ptr, ptr @stk1160_copy_video._entry_ptr.39, ptr @stk1160_copy_video._entry_ptr.42, ptr @stk1160_isoc_irq._entry, ptr @stk1160_isoc_irq._entry.14, ptr @stk1160_isoc_irq._entry_ptr, ptr @stk1160_isoc_irq._entry_ptr.16, ptr @stk1160_process_isoc._entry, ptr @stk1160_process_isoc._entry_ptr, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @print_err_status._rs.30, ptr @.str.32, ptr @.str.34, ptr @stk1160_copy_video._rs, ptr @.str.35, ptr @stk1160_copy_video._rs.36, ptr @.str.38, ptr @stk1160_copy_video._rs.40], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_alloc_isoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_alloc_isoc._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_alloc_isoc._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_alloc_isoc._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_isoc_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_isoc_irq._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_process_isoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_err_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_err_status._rs.30 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_err_status._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_copy_video._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_copy_video._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_copy_video._rs.36 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_copy_video._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_copy_video._rs.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_copy_video._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stk1160_cancel_isoc(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_bufs1 = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %num_bufs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_bufs1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8 = icmp sgt i32 %1, 0
  br i1 %cmp8, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %urb = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 12, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.09
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #5
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stk1160_free_isoc(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_bufs1 = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %num_bufs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_bufs1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp49 = icmp sgt i32 %1, 0
  br i1 %cmp49, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %urb3 = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 12, i32 2
  %transfer_buffer = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 12, i32 3
  %udev = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end14.for.body_crit_edge ]
  %2 = ptrtoint ptr %urb3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb3, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.050
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.if.end14_crit_edge, label %if.then

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then:                                          ; preds = %for.body
  %6 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx5 = getelementptr ptr, ptr %7, i32 %i.050
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 19
  %12 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %transfer_buffer_length, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 15
  %14 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %9, i32 noundef %15) #5
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  tail call void @usb_free_urb(ptr noundef nonnull %5) #5
  %16 = ptrtoint ptr %urb3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %urb3, align 4
  %arrayidx13 = getelementptr ptr, ptr %17, i32 %i.050
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end, %for.body.if.end14_crit_edge
  %19 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx17 = getelementptr ptr, ptr %20, i32 %i.050
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx17, align 4
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %if.end14.for.end_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %entry.for.end_crit_edge
  %urb19 = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 12, i32 2
  %22 = ptrtoint ptr %urb19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %urb19, align 4
  tail call void @kfree(ptr noundef %23) #5
  %transfer_buffer21 = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 12, i32 3
  %24 = ptrtoint ptr %transfer_buffer21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %transfer_buffer21, align 4
  tail call void @kfree(ptr noundef %25) #5
  %26 = ptrtoint ptr %urb19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %urb19, align 4
  %27 = ptrtoint ptr %transfer_buffer21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %transfer_buffer21, align 4
  %28 = ptrtoint ptr %num_bufs1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %num_bufs1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stk1160_uninit_isoc(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_bufs1.i = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %num_bufs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_bufs1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.i = icmp sgt i32 %1, 0
  br i1 %cmp8.i, label %for.body.lr.ph.i, label %entry.stk1160_cancel_isoc.exit_crit_edge

entry.stk1160_cancel_isoc.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %stk1160_cancel_isoc.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %urb.i = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 12, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %i.09.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #5
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.body.i.stk1160_cancel_isoc.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.stk1160_cancel_isoc.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stk1160_cancel_isoc.exit

stk1160_cancel_isoc.exit:                         ; preds = %for.body.i.stk1160_cancel_isoc.exit_crit_edge, %entry.stk1160_cancel_isoc.exit_crit_edge
  tail call void @stk1160_free_isoc(ptr noundef %dev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stk1160_alloc_isoc(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %isoc_ctl = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 12
  %num_bufs1 = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %num_bufs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_bufs1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.i.i = icmp sgt i32 %1, 0
  br i1 %cmp8.i.i, label %for.body.lr.ph.i.i, label %if.then.stk1160_uninit_isoc.exit_crit_edge

if.then.stk1160_uninit_isoc.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %stk1160_uninit_isoc.exit

for.body.lr.ph.i.i:                               ; preds = %if.then
  %urb.i.i = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 12, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.09.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %2 = ptrtoint ptr %urb.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %3, i32 %i.09.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #5
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %1
  br i1 %exitcond.not.i.i, label %for.body.i.i.stk1160_uninit_isoc.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body.i.i.stk1160_uninit_isoc.exit_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stk1160_uninit_isoc.exit

stk1160_uninit_isoc.exit:                         ; preds = %for.body.i.i.stk1160_uninit_isoc.exit_crit_edge, %if.then.stk1160_uninit_isoc.exit_crit_edge
  tail call void @stk1160_free_isoc(ptr noundef %dev) #5
  br label %if.end

if.end:                                           ; preds = %stk1160_uninit_isoc.exit, %entry.if.end_crit_edge
  %max_pkt_size = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %max_pkt_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_pkt_size, align 4
  %mul = shl i32 %7, 6
  %buf = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 12, i32 4
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %buf, align 4
  %9 = ptrtoint ptr %isoc_ctl to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %isoc_ctl, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 64) #8
  %urb7 = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 12, i32 2
  %11 = ptrtoint ptr %urb7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i.i, ptr %urb7, align 4
  %tobool10.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool10.not, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i169 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 64) #8
  %transfer_buffer = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 12, i32 3
  %13 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i169, ptr %transfer_buffer, align 4
  %tobool18.not = icmp eq ptr %call7.i.i.i169, null
  br i1 %tobool18.not, label %do.end22, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end13
  %udev = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 4
  br label %for.body

do.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  %14 = ptrtoint ptr %urb7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %urb7, align 4
  tail call void @kfree(ptr noundef %15) #5
  br label %cleanup

for.body:                                         ; preds = %for.inc74.for.body_crit_edge, %for.cond.preheader
  %i.0175 = phi i32 [ 0, %for.cond.preheader ], [ %inc75, %for.inc74.for.body_crit_edge ]
  %call28 = tail call ptr @usb_alloc_urb(i32 noundef 64, i32 noundef 3264) #5
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %for.body.free_i_bufs_crit_edge, label %if.end31

for.body.free_i_bufs_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_i_bufs

if.end31:                                         ; preds = %for.body
  %16 = ptrtoint ptr %urb7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %urb7, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %i.0175
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call28, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udev, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call28, i32 0, i32 15
  %call34 = tail call ptr @usb_alloc_coherent(ptr noundef %20, i32 noundef %mul, i32 noundef 3264, ptr noundef %transfer_dma) #5
  %21 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx37 = getelementptr ptr, ptr %22, i32 %i.0175
  %23 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call34, ptr %arrayidx37, align 4
  %24 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx40 = getelementptr ptr, ptr %24, i32 %i.0175
  %25 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx40, align 4
  %tobool41.not = icmp eq ptr %26, null
  br i1 %tobool41.not, label %do.end45, label %if.end51

do.end45:                                         ; preds = %if.end31
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %mul, i32 noundef %i.0175) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0175)
  %cmp48 = icmp eq i32 %i.0175, 0
  br i1 %cmp48, label %do.end45.free_i_bufs_crit_edge, label %nomore_tx_bufs

do.end45.free_i_bufs_crit_edge:                   ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_i_bufs

if.end51:                                         ; preds = %if.end31
  %27 = call ptr @memset(ptr %26, i32 0, i32 %mul)
  %28 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %udev, align 4
  %dev56 = getelementptr inbounds %struct.urb, ptr %call28, i32 0, i32 8
  %30 = ptrtoint ptr %dev56 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %dev56, align 4
  %31 = load ptr, ptr %udev, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i = shl i32 %33, 8
  %or59 = or i32 %shl.i, 4259968
  %pipe = getelementptr inbounds %struct.urb, ptr %call28, i32 0, i32 10
  %34 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or59, ptr %pipe, align 4
  %35 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx62 = getelementptr ptr, ptr %36, i32 %i.0175
  %37 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx62, align 4
  %transfer_buffer63 = getelementptr inbounds %struct.urb, ptr %call28, i32 0, i32 14
  %39 = ptrtoint ptr %transfer_buffer63 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %transfer_buffer63, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %call28, i32 0, i32 19
  %40 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul, ptr %transfer_buffer_length, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %call28, i32 0, i32 28
  %41 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @stk1160_isoc_irq, ptr %complete, align 4
  %context = getelementptr inbounds %struct.urb, ptr %call28, i32 0, i32 27
  %42 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %dev, ptr %context, align 4
  %interval = getelementptr inbounds %struct.urb, ptr %call28, i32 0, i32 25
  %43 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %interval, align 4
  %start_frame = getelementptr inbounds %struct.urb, ptr %call28, i32 0, i32 23
  %44 = ptrtoint ptr %start_frame to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %start_frame, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %call28, i32 0, i32 24
  %45 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 64, ptr %number_of_packets, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call28, i32 0, i32 13
  %46 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 6, ptr %transfer_flags, align 4
  br label %for.body66

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %if.end51
  %j.0174 = phi i32 [ 0, %if.end51 ], [ %inc, %for.body66.for.body66_crit_edge ]
  %k.0173 = phi i32 [ 0, %if.end51 ], [ %add, %for.body66.for.body66_crit_edge ]
  %arrayidx67 = getelementptr %struct.urb, ptr %call28, i32 0, i32 29, i32 %j.0174
  %47 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %k.0173, ptr %arrayidx67, align 4
  %48 = ptrtoint ptr %isoc_ctl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %isoc_ctl, align 4
  %length = getelementptr %struct.urb, ptr %call28, i32 0, i32 29, i32 %j.0174, i32 1
  %50 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %length, align 4
  %51 = load i32, ptr %isoc_ctl, align 4
  %add = add i32 %51, %k.0173
  %inc = add nuw nsw i32 %j.0174, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc74, label %for.body66.for.body66_crit_edge

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body66

for.inc74:                                        ; preds = %for.body66
  %inc75 = add nuw nsw i32 %i.0175, 1
  %exitcond179.not = icmp eq i32 %inc75, 16
  br i1 %exitcond179.not, label %for.end76, label %for.inc74.for.body_crit_edge

for.inc74.for.body_crit_edge:                     ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end76:                                        ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %num_bufs1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 16, ptr %num_bufs1, align 4
  br label %cleanup

nomore_tx_bufs:                                   ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %urb7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %urb7, align 4
  %arrayidx81 = getelementptr ptr, ptr %54, i32 %i.0175
  %55 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx81, align 4
  tail call void @usb_free_urb(ptr noundef %56) #5
  %57 = ptrtoint ptr %urb7 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %urb7, align 4
  %arrayidx84 = getelementptr ptr, ptr %58, i32 %i.0175
  %59 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %arrayidx84, align 4
  %sub = add nsw i32 %i.0175, -1
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %sub) #9
  %60 = ptrtoint ptr %num_bufs1 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub, ptr %num_bufs1, align 4
  br label %cleanup

free_i_bufs:                                      ; preds = %do.end45.free_i_bufs_crit_edge, %for.body.free_i_bufs_crit_edge
  %add93 = add nuw nsw i32 %i.0175, 1
  %61 = ptrtoint ptr %num_bufs1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add93, ptr %num_bufs1, align 4
  tail call void @stk1160_free_isoc(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %free_i_bufs, %nomore_tx_bufs, %for.end76, %do.end22, %do.end
  %retval.0 = phi i32 [ -12, %free_i_bufs ], [ 0, %nomore_tx_bufs ], [ 0, %for.end76 ], [ -12, %do.end22 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stk1160_isoc_irq(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 0, label %sw.epilog
    i32 -104, label %entry.cleanup_crit_edge
    i32 -2, label %entry.cleanup_crit_edge26
    i32 -108, label %entry.cleanup_crit_edge27
  ]

entry.cleanup_crit_edge27:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge26:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %1) #9
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %3 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.end.i, label %for.cond.preheader.i

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #9
  br label %stk1160_process_isoc.exit

for.cond.preheader.i:                             ; preds = %sw.epilog
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %5 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %number_of_packets.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5114.i = icmp sgt i32 %6, 0
  br i1 %cmp5114.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.stk1160_process_isoc.exit_crit_edge

for.cond.preheader.i.stk1160_process_isoc.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stk1160_process_isoc.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %buf.i = getelementptr inbounds %struct.stk1160, ptr %4, i32 0, i32 12, i32 4
  %sequence.i.i = getelementptr inbounds %struct.stk1160, ptr %4, i32 0, i32 18
  %buf_lock.i.i = getelementptr inbounds %struct.stk1160, ptr %4, i32 0, i32 23
  %avail_bufs.i.i = getelementptr inbounds %struct.stk1160, ptr %4, i32 0, i32 6
  %width.i.i = getelementptr inbounds %struct.stk1160, ptr %4, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0115.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %status6.i = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0115.i, i32 3
  %7 = ptrtoint ptr %status6.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7.i = icmp slt i32 %8, 0
  br i1 %cmp7.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %for.body.i
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %8, label %if.then8.i.if.else.i.i_crit_edge [
    i32 -2, label %sw.bb.i89.i
    i32 -104, label %sw.bb1.i90.i
    i32 -63, label %sw.bb2.i91.i
    i32 -32, label %sw.bb3.i92.i
    i32 -75, label %sw.bb4.i93.i
    i32 -71, label %sw.bb5.i94.i
    i32 -84, label %sw.bb6.i95.i
    i32 -62, label %sw.bb7.i96.i
  ]

if.then8.i.if.else.i.i_crit_edge:                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

sw.bb.i89.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

sw.bb1.i90.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

sw.bb2.i91.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

sw.bb3.i92.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

sw.bb4.i93.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

sw.bb5.i94.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

sw.bb6.i95.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

sw.bb7.i96.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %sw.bb7.i96.i, %sw.bb6.i95.i, %sw.bb5.i94.i, %sw.bb4.i93.i, %sw.bb3.i92.i, %sw.bb2.i91.i, %sw.bb1.i90.i, %sw.bb.i89.i, %if.then8.i.if.else.i.i_crit_edge
  %errmsg.0.i97.i = phi ptr [ @.str.19, %if.then8.i.if.else.i.i_crit_edge ], [ @.str.27, %sw.bb7.i96.i ], [ @.str.26, %sw.bb6.i95.i ], [ @.str.25, %sw.bb5.i94.i ], [ @.str.24, %sw.bb4.i93.i ], [ @.str.23, %sw.bb3.i92.i ], [ @.str.22, %sw.bb2.i91.i ], [ @.str.21, %sw.bb1.i90.i ], [ @.str.20, %sw.bb.i89.i ]
  %call10.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @print_err_status._rs.30, ptr noundef nonnull @__func__.print_err_status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.else.i.i.for.inc.i_crit_edge, label %do.end15.i.i

if.else.i.i.for.inc.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.end15.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %i.0115.i, i32 noundef %8, ptr noundef nonnull %errmsg.0.i97.i) #9
  br label %for.inc.i

if.end9.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0115.i
  %10 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transfer_buffer.i, align 4
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %13
  %actual_length.i = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0115.i, i32 2
  %14 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp14.i = icmp slt i32 %15, 5
  br i1 %cmp14.i, label %if.end9.i.for.inc.i_crit_edge, label %if.end16.i

if.end9.i.for.inc.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end16.i:                                       ; preds = %if.end9.i
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %17)
  %cmp18.i = icmp eq i8 %17, -64
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf.i, align 4
  %cmp21.not.i = icmp eq ptr %19, null
  br i1 %cmp18.i, label %if.then20.i, label %if.end34.i

if.then20.i:                                      ; preds = %if.end16.i
  br i1 %cmp21.not.i, label %if.then20.i.if.end.i.i_crit_edge, label %if.then23.i

if.then20.i.if.end.i.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then23.i:                                      ; preds = %if.then20.i
  %20 = ptrtoint ptr %sequence.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sequence.i.i, align 4
  %inc.i.i = add i32 %21, 1
  store i32 %inc.i.i, ptr %sequence.i.i, align 4
  %sequence2.i.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %19, i32 0, i32 4
  %22 = ptrtoint ptr %sequence2.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %sequence2.i.i, align 8
  %field.i.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %19, i32 0, i32 2
  %23 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %field.i.i, align 4
  %call.i.i.i = tail call i64 @ktime_get() #5
  %timestamp.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %19, i32 0, i32 5
  %24 = ptrtoint ptr %timestamp.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %call.i.i.i, ptr %timestamp.i.i, align 8
  %num_planes.i.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %19, i32 0, i32 4
  %25 = ptrtoint ptr %num_planes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_planes.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.not.i.i.i = icmp eq i32 %26, 0
  br i1 %cmp.not.i.i.i, label %if.then23.i.stk1160_buffer_done.exit.i_crit_edge, label %if.then.i.i.i

if.then23.i.stk1160_buffer_done.exit.i_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stk1160_buffer_done.exit.i

if.then.i.i.i:                                    ; preds = %if.then23.i
  %bytesused.i.i = getelementptr inbounds %struct.stk1160_buffer, ptr %19, i32 0, i32 4
  %27 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bytesused.i.i, align 8
  %length.i.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %19, i32 0, i32 10, i32 0, i32 4
  %29 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %28)
  %cmp1.i.i.i = icmp ult i32 %30, %28
  br i1 %cmp1.i.i.i, label %land.rhs.i.i.i, label %if.then.i.i.i.if.end42.i.i.i_crit_edge

if.then.i.i.i.if.end42.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.then.i.i.i
  %.b1.i.i.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.if.then38.i.i.i_crit_edge, label %if.then8.i.i.i, !prof !97

land.rhs.i.i.i.if.then38.i.i.i_crit_edge:         ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i.i.i

if.then8.i.i.i:                                   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 1163, i32 noundef 9, ptr noundef null) #5
  br label %if.then38.i.i.i

if.then38.i.i.i:                                  ; preds = %if.then8.i.i.i, %land.rhs.i.i.i.if.then38.i.i.i_crit_edge
  %31 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length.i.i.i, align 8
  br label %if.end42.i.i.i

if.end42.i.i.i:                                   ; preds = %if.then38.i.i.i, %if.then.i.i.i.if.end42.i.i.i_crit_edge
  %size.addr.0.i.i.i = phi i32 [ %32, %if.then38.i.i.i ], [ %28, %if.then.i.i.i.if.end42.i.i.i_crit_edge ]
  %bytesused.i.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %19, i32 0, i32 10, i32 0, i32 3
  %33 = ptrtoint ptr %bytesused.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %size.addr.0.i.i.i, ptr %bytesused.i.i.i, align 4
  br label %stk1160_buffer_done.exit.i

stk1160_buffer_done.exit.i:                       ; preds = %if.end42.i.i.i, %if.then23.i.stk1160_buffer_done.exit.i_crit_edge
  tail call void @vb2_buffer_done(ptr noundef nonnull %19, i32 noundef 5) #5
  %34 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %buf.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %stk1160_buffer_done.exit.i, %if.then20.i.if.end.i.i_crit_edge
  %call24.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buf_lock.i.i) #5
  %35 = ptrtoint ptr %avail_bufs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %avail_bufs.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %36, %avail_bufs.i.i
  br i1 %cmp.i.not.i.i, label %stk1160_next_buffer.exit.thread.i, label %if.then31.i.i

stk1160_next_buffer.exit.thread.i:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buf_lock.i.i, i32 noundef %call24.i.i) #5
  %37 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %buf.i, align 4
  br label %stk1160_process_isoc.exit

if.then31.i.i:                                    ; preds = %if.end.i.i
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 -736
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %36) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then31.i.i.stk1160_next_buffer.exit.i_crit_edge

if.then31.i.i.stk1160_next_buffer.exit.i_crit_edge: ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stk1160_next_buffer.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then31.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %36, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %stk1160_next_buffer.exit.i

stk1160_next_buffer.exit.i:                       ; preds = %if.end.i.i.i.i, %if.then31.i.i.stk1160_next_buffer.exit.i_crit_edge
  %44 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %36, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buf_lock.i.i, i32 noundef %call24.i.i) #5
  %46 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr.i.i, ptr %buf.i, align 4
  %cmp30.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp30.i, label %stk1160_next_buffer.exit.i.stk1160_process_isoc.exit_crit_edge, label %if.end34.thread.i

stk1160_next_buffer.exit.i.stk1160_process_isoc.exit_crit_edge: ; preds = %stk1160_next_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stk1160_process_isoc.exit

if.end34.thread.i:                                ; preds = %stk1160_next_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %.pr118.i = load i8, ptr %add.ptr.i, align 1
  br label %if.end40.i

if.end34.i:                                       ; preds = %if.end16.i
  br i1 %cmp21.not.i, label %if.end34.i.for.inc.i_crit_edge, label %if.end34.i.if.end40.i_crit_edge

if.end34.i.if.end40.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

if.end34.i.for.inc.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end40.i:                                       ; preds = %if.end34.i.if.end40.i_crit_edge, %if.end34.thread.i
  %48 = phi i8 [ %.pr118.i, %if.end34.thread.i ], [ %17, %if.end34.i.if.end40.i_crit_edge ]
  %49 = phi ptr [ %add.ptr.i.i, %if.end34.thread.i ], [ %19, %if.end34.i.if.end40.i_crit_edge ]
  %50 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %48, label %if.end55.i [
    i8 -64, label %if.end40.i.if.then49.i_crit_edge
    i8 -128, label %if.end40.i.if.then49.i_crit_edge28
  ]

if.end40.i.if.then49.i_crit_edge28:               ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then49.i

if.end40.i.if.then49.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then49.i

if.then49.i:                                      ; preds = %if.end40.i.if.then49.i_crit_edge, %if.end40.i.if.then49.i_crit_edge28
  %51 = and i8 %48, 64
  %and.i = zext i8 %51 to i32
  %odd.i = getelementptr inbounds %struct.stk1160_buffer, ptr %49, i32 0, i32 5
  %52 = ptrtoint ptr %odd.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and.i, ptr %odd.i, align 4
  %53 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buf.i, align 4
  %pos.i = getelementptr inbounds %struct.stk1160_buffer, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %pos.i, align 8
  br label %for.inc.i

if.end55.i:                                       ; preds = %if.end40.i
  %56 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %width.i.i, align 8
  %mul.i.i = shl i32 %57, 1
  %mem.i.i = getelementptr inbounds %struct.stk1160_buffer, ptr %49, i32 0, i32 2
  %58 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mem.i.i, align 8
  %sub.i.i = add nsw i32 %15, -4
  %add.ptr.i108.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %pos.i.i = getelementptr inbounds %struct.stk1160_buffer, ptr %49, i32 0, i32 6
  %60 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pos.i.i, align 8
  %rem.i.i = urem i32 %61, %mul.i.i
  %odd.i.i = getelementptr inbounds %struct.stk1160_buffer, ptr %49, i32 0, i32 5
  %62 = ptrtoint ptr %odd.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %odd.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i109.i = icmp eq i32 %63, 0
  %spec.select.idx.i.i = select i1 %tobool.not.i109.i, i32 %mul.i.i, i32 0
  %spec.select.i.i = getelementptr i8, ptr %59, i32 %spec.select.idx.i.i
  %mul4.i.i = sub i32 %61, %rem.i.i
  %mul5.i.i = shl i32 %mul4.i.i, 1
  %add.i.i = add i32 %mul5.i.i, %rem.i.i
  %add.ptr6.i.i = getelementptr i8, ptr %spec.select.i.i, i32 %add.i.i
  %sub7.i.i = sub i32 %mul.i.i, %rem.i.i
  %64 = tail call i32 @llvm.smin.i32(i32 %sub.i.i, i32 %sub7.i.i) #5
  %bytesused.i110.i = getelementptr inbounds %struct.stk1160_buffer, ptr %49, i32 0, i32 4
  %65 = ptrtoint ptr %bytesused.i110.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bytesused.i110.i, align 8
  %length.i.i = getelementptr inbounds %struct.stk1160_buffer, ptr %49, i32 0, i32 3
  %67 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %length.i.i, align 4
  %sub11.i.i = sub i32 %66, %68
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %sub11.i.i)
  %cmp12.i.i = icmp ugt i32 %64, %sub11.i.i
  %69 = tail call i32 @llvm.umin.i32(i32 %64, i32 %sub11.i.i) #5
  %remain.0.i.i = select i1 %cmp12.i.i, i32 %sub11.i.i, i32 %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp18.i.i = icmp eq i32 %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remain.0.i.i)
  %cmp19.i.i = icmp eq i32 %remain.0.i.i, 0
  %or.cond.i.i = select i1 %cmp18.i.i, i1 true, i1 %cmp19.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp22.i.i = icmp slt i32 %69, 0
  %or.cond170.i.i = or i1 %cmp22.i.i, %or.cond.i.i
  br i1 %or.cond170.i.i, label %if.end55.i.for.inc.i_crit_edge, label %if.end24.i.i

if.end55.i.for.inc.i_crit_edge:                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end24.i.i:                                     ; preds = %if.end55.i
  %70 = ptrtoint ptr %add.ptr6.i.i to i32
  %add25.i.i = add i32 %69, %70
  %71 = ptrtoint ptr %59 to i32
  %add28.i.i = add i32 %68, %71
  call void @__sanitizer_cov_trace_cmp4(i32 %add25.i.i, i32 %add28.i.i)
  %cmp29.i.i = icmp ugt i32 %add25.i.i, %add28.i.i
  br i1 %cmp29.i.i, label %if.then30.i.i, label %if.end35.i.i

if.then30.i.i:                                    ; preds = %if.end24.i.i
  %call.i111.i = tail call i32 @___ratelimit(ptr noundef nonnull @stk1160_copy_video._rs, ptr noundef nonnull @__func__.stk1160_copy_video) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111.i)
  %tobool31.not.i.i = icmp eq i32 %call.i111.i, 0
  br i1 %tobool31.not.i.i, label %if.then30.i.i.for.inc.i_crit_edge, label %if.then30.i.i.cleanup.sink.split.i.i_crit_edge

if.then30.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

if.then30.i.i.for.inc.i_crit_edge:                ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end35.i.i:                                     ; preds = %if.end24.i.i
  %72 = call ptr @memcpy(ptr %add.ptr6.i.i, ptr %add.ptr.i108.i, i32 %69)
  %73 = ptrtoint ptr %bytesused.i110.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bytesused.i110.i, align 8
  %add37.i.i = add i32 %74, %69
  store i32 %add37.i.i, ptr %bytesused.i110.i, align 8
  %75 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %pos.i.i, align 8
  %add39.i.i = add i32 %76, %69
  store i32 %add39.i.i, ptr %pos.i.i, align 8
  %sub40.i.i = sub i32 %remain.0.i.i, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub40.i.i)
  %cmp41171.i.i = icmp sgt i32 %sub40.i.i, 0
  br i1 %cmp41171.i.i, label %if.end35.i.i.while.body.i.i_crit_edge, label %if.end35.i.i.for.inc.i_crit_edge

if.end35.i.i.for.inc.i_crit_edge:                 ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end35.i.i.while.body.i.i_crit_edge:            ; preds = %if.end35.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end90.i.i.while.body.i.i_crit_edge, %if.end35.i.i.while.body.i.i_crit_edge
  %src.addr.0175.i.i = phi ptr [ %add.ptr44.i.i, %if.end90.i.i.while.body.i.i_crit_edge ], [ %add.ptr.i108.i, %if.end35.i.i.while.body.i.i_crit_edge ]
  %remain.1174.i.i = phi i32 [ %sub91.i.i, %if.end90.i.i.while.body.i.i_crit_edge ], [ %sub40.i.i, %if.end35.i.i.while.body.i.i_crit_edge ]
  %dst.1173.i.i = phi ptr [ %add.ptr43.i.i, %if.end90.i.i.while.body.i.i_crit_edge ], [ %add.ptr6.i.i, %if.end35.i.i.while.body.i.i_crit_edge ]
  %lencopy.2172.i.i = phi i32 [ %82, %if.end90.i.i.while.body.i.i_crit_edge ], [ %69, %if.end35.i.i.while.body.i.i_crit_edge ]
  %add42.i.i = add i32 %lencopy.2172.i.i, %mul.i.i
  %add.ptr43.i.i = getelementptr i8, ptr %dst.1173.i.i, i32 %add42.i.i
  %add.ptr44.i.i = getelementptr i8, ptr %src.addr.0175.i.i, i32 %lencopy.2172.i.i
  %77 = tail call i32 @llvm.smin.i32(i32 %remain.1174.i.i, i32 %mul.i.i) #5
  %78 = ptrtoint ptr %bytesused.i110.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bytesused.i110.i, align 8
  %80 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %length.i.i, align 4
  %sub51.i.i = sub i32 %79, %81
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %sub51.i.i)
  %cmp52.i.i = icmp ugt i32 %77, %sub51.i.i
  %82 = tail call i32 @llvm.umin.i32(i32 %77, i32 %sub51.i.i) #5
  %remain.2.i.i = select i1 %cmp52.i.i, i32 %sub51.i.i, i32 %remain.1174.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp58.i.i = icmp eq i32 %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remain.2.i.i)
  %cmp60.i.i = icmp eq i32 %remain.2.i.i, 0
  %or.cond169.i.i = select i1 %cmp58.i.i, i1 true, i1 %cmp60.i.i
  br i1 %or.cond169.i.i, label %while.body.i.i.for.inc.i_crit_edge, label %if.end62.i.i

while.body.i.i.for.inc.i_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end62.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp63.i.i = icmp slt i32 %82, 0
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end74.i.i

if.then64.i.i:                                    ; preds = %if.end62.i.i
  %call65.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @stk1160_copy_video._rs.36, ptr noundef nonnull @__func__.stk1160_copy_video) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i.i)
  %tobool66.not.i.i = icmp eq i32 %call65.i.i, 0
  br i1 %tobool66.not.i.i, label %if.then64.i.i.for.inc.i_crit_edge, label %if.then64.i.i.cleanup.sink.split.i.i_crit_edge

if.then64.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.then64.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

if.then64.i.i.for.inc.i_crit_edge:                ; preds = %if.then64.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end74.i.i:                                     ; preds = %if.end62.i.i
  %83 = ptrtoint ptr %add.ptr43.i.i to i32
  %add75.i.i = add i32 %82, %83
  %84 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mem.i.i, align 8
  %86 = ptrtoint ptr %85 to i32
  %add78.i.i = add i32 %81, %86
  call void @__sanitizer_cov_trace_cmp4(i32 %add75.i.i, i32 %add78.i.i)
  %cmp79.i.i = icmp ugt i32 %add75.i.i, %add78.i.i
  br i1 %cmp79.i.i, label %if.then80.i.i, label %if.end90.i.i

if.then80.i.i:                                    ; preds = %if.end74.i.i
  %call81.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @stk1160_copy_video._rs.40, ptr noundef nonnull @__func__.stk1160_copy_video) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i.i)
  %tobool82.not.i.i = icmp eq i32 %call81.i.i, 0
  br i1 %tobool82.not.i.i, label %if.then80.i.i.for.inc.i_crit_edge, label %if.then80.i.i.cleanup.sink.split.i.i_crit_edge

if.then80.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %if.then80.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

if.then80.i.i.for.inc.i_crit_edge:                ; preds = %if.then80.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end90.i.i:                                     ; preds = %if.end74.i.i
  %87 = call ptr @memcpy(ptr %add.ptr43.i.i, ptr %add.ptr44.i.i, i32 %82)
  %sub91.i.i = sub i32 %remain.2.i.i, %82
  %88 = ptrtoint ptr %bytesused.i110.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bytesused.i110.i, align 8
  %add93.i.i = add i32 %89, %82
  store i32 %add93.i.i, ptr %bytesused.i110.i, align 8
  %90 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pos.i.i, align 8
  %add95.i.i = add i32 %91, %82
  store i32 %add95.i.i, ptr %pos.i.i, align 8
  %cmp41.i.i = icmp sgt i32 %sub91.i.i, 0
  br i1 %cmp41.i.i, label %if.end90.i.i.while.body.i.i_crit_edge, label %if.end90.i.i.for.inc.i_crit_edge

if.end90.i.i.for.inc.i_crit_edge:                 ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end90.i.i.while.body.i.i_crit_edge:            ; preds = %if.end90.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

cleanup.sink.split.i.i:                           ; preds = %if.then80.i.i.cleanup.sink.split.i.i_crit_edge, %if.then64.i.i.cleanup.sink.split.i.i_crit_edge, %if.then30.i.i.cleanup.sink.split.i.i_crit_edge
  %.str.35.sink.i.i = phi ptr [ @.str.35, %if.then30.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.38, %if.then64.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.35, %if.then80.i.i.cleanup.sink.split.i.i_crit_edge ]
  %call88.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.35.sink.i.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %cleanup.sink.split.i.i, %if.end90.i.i.for.inc.i_crit_edge, %if.then80.i.i.for.inc.i_crit_edge, %if.then64.i.i.for.inc.i_crit_edge, %while.body.i.i.for.inc.i_crit_edge, %if.end35.i.i.for.inc.i_crit_edge, %if.then30.i.i.for.inc.i_crit_edge, %if.end55.i.for.inc.i_crit_edge, %if.then49.i, %if.end34.i.for.inc.i_crit_edge, %if.end9.i.for.inc.i_crit_edge, %do.end15.i.i, %if.else.i.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0115.i, 1
  %92 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %number_of_packets.i, align 4
  %cmp5.i = icmp slt i32 %inc.i, %93
  br i1 %cmp5.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.stk1160_process_isoc.exit_crit_edge

for.inc.i.stk1160_process_isoc.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stk1160_process_isoc.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

stk1160_process_isoc.exit:                        ; preds = %for.inc.i.stk1160_process_isoc.exit_crit_edge, %stk1160_next_buffer.exit.i.stk1160_process_isoc.exit_crit_edge, %stk1160_next_buffer.exit.thread.i, %for.cond.preheader.i.stk1160_process_isoc.exit_crit_edge, %do.end.i
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %94 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp24 = icmp sgt i32 %95, 0
  br i1 %cmp24, label %stk1160_process_isoc.exit.for.body_crit_edge, label %stk1160_process_isoc.exit.for.end_crit_edge

stk1160_process_isoc.exit.for.end_crit_edge:      ; preds = %stk1160_process_isoc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

stk1160_process_isoc.exit.for.body_crit_edge:     ; preds = %stk1160_process_isoc.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %stk1160_process_isoc.exit.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %stk1160_process_isoc.exit.for.body_crit_edge ]
  %status2 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.025, i32 3
  %96 = ptrtoint ptr %status2 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %status2, align 4
  %actual_length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.025, i32 2
  %97 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %actual_length, align 4
  %inc = add nuw nsw i32 %i.025, 1
  %98 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %number_of_packets, align 4
  %cmp = icmp slt i32 %inc, %99
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %stk1160_process_isoc.exit.for.end_crit_edge
  %call5 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %do.end8

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end8:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %for.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge26, %entry.cleanup_crit_edge27
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !75, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype309, !1, !"__UNIQUE_ID_debugtype309", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug310, !4, !"__UNIQUE_ID_debug310", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 22, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 434, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @stk1160_alloc_isoc._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @stk1160_alloc_isoc._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 441, i32 3}
!13 = !{ptr @stk1160_alloc_isoc._entry.3, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @stk1160_alloc_isoc._entry_ptr.5, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 461, i32 4}
!17 = !{ptr @stk1160_alloc_isoc._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @stk1160_alloc_isoc._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 514, i32 2}
!21 = !{ptr @stk1160_alloc_isoc._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @stk1160_alloc_isoc._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @debug, !24, !"debug", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 20, i32 21}
!25 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 309, i32 3}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @stk1160_isoc_irq._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @stk1160_isoc_irq._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 323, i32 3}
!33 = !{ptr @stk1160_isoc_irq._entry.14, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @stk1160_isoc_irq._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 223, i32 3}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @stk1160_process_isoc._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @stk1160_process_isoc._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 27, i32 17}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 31, i32 12}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 34, i32 12}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 37, i32 12}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 40, i32 12}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 43, i32 12}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 46, i32 12}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 49, i32 12}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 52, i32 12}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 57, i32 3}
!60 = distinct !{null, !59, !"_rs", i1 false, i1 false}
!61 = !{ptr @__func__.print_err_status, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @print_err_status._entry, !59, !"_entry", i1 false, i1 false}
!64 = !{ptr @print_err_status._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @print_err_status._rs.30, !66, !"_rs", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 60, i32 3}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @print_err_status._entry.31, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @print_err_status._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @stk1160_copy_video._rs, !74, !"_rs", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 160, i32 3}
!75 = !{ptr @__func__.stk1160_copy_video, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @stk1160_copy_video._entry, !74, !"_entry", i1 false, i1 false}
!78 = !{ptr @stk1160_copy_video._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @stk1160_copy_video._rs.36, !80, !"_rs", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 196, i32 4}
!81 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @stk1160_copy_video._entry.37, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @stk1160_copy_video._entry_ptr.39, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @stk1160_copy_video._rs.40, !85, !"_rs", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/stk1160/stk1160-video.c", i32 202, i32 4}
!86 = !{ptr @stk1160_copy_video._entry.41, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @stk1160_copy_video._entry_ptr.42, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"branch_weights", i32 2000, i32 1}
