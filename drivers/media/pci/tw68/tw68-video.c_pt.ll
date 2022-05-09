; ModuleID = '/llk/IR_all_yes/drivers/media/pci/tw68/tw68-video.c_pt.bc'
source_filename = "../drivers/media/pci/tw68/tw68-video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.tw68_tvnorm = type { ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tw68_format = type { i32, i32, i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tw68_dev = type { %struct.mutex, %struct.spinlock, i16, %struct.v4l2_device, i32, %struct.video_device, %struct.v4l2_ctrl_handler, ptr, ptr, i8, i8, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, %struct.vb2_queue, %struct.list_head, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.tw68_buf = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, ptr, ptr, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.114, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.114 = type { ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.92, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.92 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.83 }
%union.anon.83 = type { i32, [28 x i8] }

@tw68_video_init1._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tw68_video:911:(hdl)->_lock\00", [36 x i8] zeroinitializer }, align 32
@tw68_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @tw68_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@tvnorms = internal constant { [6 x %struct.tw68_tvnorm], [144 x i8] } { [6 x %struct.tw68_tvnorm] [%struct.tw68_tvnorm { ptr @.str.23, i64 255, i32 24, i32 64, i32 129, i32 42, i32 6, i32 28, i32 3, i32 133, i32 0, i32 719, i32 24, i32 24, i32 311, i32 7, i32 22, i32 319, i32 1 }, %struct.tw68_tvnorm { ptr @.str.24, i64 45056, i32 89, i32 64, i32 137, i32 42, i32 14, i32 24, i32 8, i32 138, i32 0, i32 719, i32 22, i32 22, i32 262, i32 10, i32 21, i32 273, i32 0 }, %struct.tw68_tvnorm { ptr @.str.25, i64 16711680, i32 24, i32 27, i32 209, i32 128, i32 0, i32 28, i32 3, i32 133, i32 0, i32 719, i32 24, i32 24, i32 311, i32 7, i32 22, i32 319, i32 2 }, %struct.tw68_tvnorm { ptr @.str.26, i64 256, i32 89, i32 64, i32 185, i32 42, i32 14, i32 24, i32 8, i32 138, i32 0, i32 719, i32 22, i32 22, i32 262, i32 10, i32 21, i32 273, i32 4 }, %struct.tw68_tvnorm { ptr @.str.27, i64 1024, i32 24, i32 64, i32 161, i32 42, i32 6, i32 28, i32 3, i32 133, i32 0, i32 719, i32 24, i32 24, i32 311, i32 7, i32 22, i32 319, i32 5 }, %struct.tw68_tvnorm { ptr @.str.28, i64 2048, i32 24, i32 64, i32 129, i32 42, i32 6, i32 28, i32 186, i32 0, i32 0, i32 719, i32 26, i32 23, i32 262, i32 10, i32 21, i32 273, i32 6 }], [144 x i8] zeroinitializer }, align 32
@tw68_video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @tw68_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @tw68_buf_prepare, ptr @tw68_buf_finish, ptr null, ptr @tw68_start_streaming, ptr @tw68_stop_streaming, ptr @tw68_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@tw68_video_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @video_fops, i32 83886081, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"tw68_video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 16760319, ptr @video_device_release_empty, ptr @video_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@tw68_irq_video_done.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tw68\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tw68_irq_video_done\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/pci/tw68/tw68-video.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Lost sync\0A\00", [21 x i8] zeroinitializer }, align 32
@tw68_irq_video_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1001, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PABORT interrupt\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tw68_irq_video_done._entry_ptr = internal global ptr @tw68_irq_video_done._entry, section ".printk_index", align 4
@tw68_irq_video_done._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1003, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMAPERR interrupt\0A\00", [45 x i8] zeroinitializer }, align 32
@tw68_irq_video_done._entry_ptr.10 = internal global ptr @tw68_irq_video_done._entry.8, section ".printk_index", align 4
@tw68_irq_video_done.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.11, i8 0, i8 -4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FDMIS interrupt\0A\00", [47 x i8] zeroinitializer }, align 32
@tw68_irq_video_done.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.12, i8 0, i8 -3, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FFOF interrupt\0A\00", [16 x i8] zeroinitializer }, align 32
@tw68_irq_video_done.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 -2, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FFERR interrupt\0A\00", [47 x i8] zeroinitializer }, align 32
@tw68_set_scale.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tw68_set_scale\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"%s: width=%d, height=%d, both=%d\0A  tvnorm h_delay=%d, h_start=%d, h_stop=%d, v_delay=%d, v_start=%d, v_stop=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@tw68_set_scale.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.3, ptr @.str.16, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: %dx%d [%s%s,%s]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"T\00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@tw68_set_scale.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.3, ptr @.str.20, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s: hactive=%d, hdelay=%d, hscale=%d; vactive=%d, vdelay=%d, vscale=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@tw68_set_scale.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.3, ptr @.str.21, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"%s: setting CROP_HI=%02x, VDELAY_LO=%02x, VACTIVE_LO=%02x, HDELAY_LO=%02x, HACTIVE_LO=%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@tw68_set_scale.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.3, ptr @.str.22, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: setting SCALE_HI=%02x, VSCALE_LO=%02x, HSCALE_LO=%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PAL\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NTSC\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SECAM\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL-M\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL-Nc\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL-60\00", [25 x i8] zeroinitializer }, align 32
@formats = internal constant { [10 x %struct.tw68_format], [40 x i8] } { [10 x %struct.tw68_format] [%struct.tw68_format { i32 1329743698, i32 16, i32 48 }, %struct.tw68_format { i32 1363298130, i32 16, i32 52 }, %struct.tw68_format { i32 1346520914, i32 16, i32 32 }, %struct.tw68_format { i32 1380075346, i32 16, i32 36 }, %struct.tw68_format { i32 861030210, i32 24, i32 16 }, %struct.tw68_format { i32 859981650, i32 24, i32 20 }, %struct.tw68_format { i32 877807426, i32 32, i32 0 }, %struct.tw68_format { i32 876758866, i32 32, i32 12 }, %struct.tw68_format { i32 1448695129, i32 16, i32 64 }, %struct.tw68_format { i32 1498831189, i32 16, i32 68 }], [40 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@video_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@video_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @tw68_querycap, ptr @tw68_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tw68_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tw68_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tw68_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @tw68_g_std, ptr @tw68_s_std, ptr null, ptr @tw68_enum_input, ptr @tw68_g_input, ptr @tw68_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_log_status, ptr null, ptr @vidioc_g_register, ptr @vidioc_s_register, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Techwell Capture Card\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCI:%s\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Composite %d\00", [19 x i8] zeroinitializer }, align 32
@tw68_dump_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016Full dump of TW68 registers:\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tw68_dump_regs\00", [17 x i8] zeroinitializer }, align 32
@tw68_dump_regs._entry_ptr = internal global ptr @tw68_dump_regs._entry, section ".printk_index", align 4
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%03x  \00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08x \00", [26 x i8] zeroinitializer }, align 32
@tw68_dump_regs._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.34, ptr @.str.3, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016%s\00", [27 x i8] zeroinitializer }, align 32
@tw68_dump_regs._entry_ptr.39 = internal global ptr @tw68_dump_regs._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%03x \00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@tw68_dump_regs._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.34, ptr @.str.3, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tw68_dump_regs._entry_ptr.43 = internal global ptr @tw68_dump_regs._entry.42, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 9963805, i64 9963806]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.45 = internal global [12 x i64] [i64 10, i64 32, i64 859981650, i64 861030210, i64 876758866, i64 877807426, i64 1329743698, i64 1346520914, i64 1363298130, i64 1380075346, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.46 = internal global [12 x i64] [i64 10, i64 32, i64 859981650, i64 861030210, i64 876758866, i64 877807426, i64 1329743698, i64 1346520914, i64 1363298130, i64 1380075346, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.47 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.48 = internal global [8 x i64] [i64 6, i64 64, i64 255, i64 256, i64 1024, i64 2048, i64 45056, i64 16711680]
@___asan_gen_.49 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 911, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"tw68_ctrl_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 849, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant [8 x i8] c"tvnorms\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 110, i32 33 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"tw68_video_qops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 517, i32 29 }
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"tw68_video_template\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 890, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 999, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1001, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1003, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1009, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1014, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1018, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 262, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 287, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 292, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 300, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 309, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 112, i32 12 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 124, i32 12 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 136, i32 12 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 148, i32 12 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 160, i32 12 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 172, i32 12 }
@___asan_gen_.151 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 35, i32 33 }
@___asan_gen_.155 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1163, i32 7 }
@___asan_gen_.157 = private unnamed_addr constant [11 x i8] c"video_fops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 853, i32 42 }
@___asan_gen_.160 = private unnamed_addr constant [16 x i8] c"video_ioctl_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 863, i32 36 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 718, i32 21 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 720, i32 25 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 671, i32 37 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 781, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 785, i32 25 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 788, i32 26 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 794, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 799, i32 25 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 803, i32 27 }
@___asan_gen_.199 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.200 = private constant [39 x i8] c"../drivers/media/pci/tw68/tw68-video.c\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 811, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @tw68_dump_regs._entry, ptr @tw68_dump_regs._entry.37, ptr @tw68_dump_regs._entry.42, ptr @tw68_dump_regs._entry_ptr, ptr @tw68_dump_regs._entry_ptr.39, ptr @tw68_dump_regs._entry_ptr.43, ptr @tw68_irq_video_done._entry, ptr @tw68_irq_video_done._entry.8, ptr @tw68_irq_video_done._entry_ptr, ptr @tw68_irq_video_done._entry_ptr.10, ptr @tw68_video_init1._key, ptr @.str, ptr @tw68_ctrl_ops, ptr @tvnorms, ptr @tw68_video_qops, ptr @tw68_video_template, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @formats, ptr @.str.29, ptr @video_fops, ptr @video_ioctl_ops, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_video_init1._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvnorms to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_video_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_irq_video_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_irq_video_done._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_dump_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_dump_regs._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw68_dump_regs._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tw68_video_start_dma(ptr nocapture noundef %dev, ptr nocapture noundef readonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %field = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %field, align 4
  tail call fastcc void @tw68_set_scale(ptr noundef %dev, i32 noundef %1, i32 noundef %3, i32 noundef %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %lmmio = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 11
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %9 = and i32 %8, -16777217
  %10 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  tail call void @arm_heavy_mb() #8
  %dma = getelementptr inbounds %struct.tw68_buf, ptr %buf, i32 0, i32 5
  %12 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio, align 4
  %add.ptr8 = getelementptr i32, ptr %16, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %14) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %board_virqmask = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 14
  %17 = ptrtoint ptr %board_virqmask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %board_virqmask, align 8
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio, align 4
  %add.ptr12 = getelementptr i32, ptr %21, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %19) #8, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  %25 = and i32 %24, 16777215
  %fmt = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 15
  %26 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fmt, align 4
  %twformat = getelementptr inbounds %struct.tw68_format, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %twformat to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %twformat, align 4
  %or24 = and i32 %29, 124
  %30 = or i32 %25, -2097152000
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %or26 = or i32 %31, %or24
  %32 = tail call i32 @llvm.bswap.i32(i32 %or26)
  %33 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lmmio, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #8, !srcloc !114
  %35 = ptrtoint ptr %board_virqmask to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %board_virqmask, align 8
  %pci_irqmask = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 13
  %37 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pci_irqmask, align 4
  %or30 = or i32 %38, %36
  store i32 %or30, ptr %pci_irqmask, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %39 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lmmio, align 4
  %add.ptr36 = getelementptr i32, ptr %40, i32 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #8, !srcloc !112
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %43 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pci_irqmask, align 4
  %or45 = or i32 %44, %42
  %45 = tail call i32 @llvm.bswap.i32(i32 %or45)
  %46 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lmmio, align 4
  %add.ptr47 = getelementptr i32, ptr %47, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %45) #8, !srcloc !114
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tw68_set_scale(ptr nocapture noundef readonly %dev, i32 noundef %width, i32 noundef %height, i32 noundef %field) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tvnorm = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 22
  %0 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tvnorm, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %field)
  %cmp = icmp eq i32 %field, 4
  %2 = and i32 %field, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %3 = icmp eq i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %4 = icmp eq i32 %2, 4
  %5 = or i1 %4, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %field)
  %cmp7 = icmp eq i32 %field, 6
  %or.cond5 = or i1 %cmp7, %5
  %div2 = zext i1 %or.cond5 to i32
  %height.addr.0 = lshr i32 %height, %div2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tw68_set_scale.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tw68_set_scale, %if.then10)) #8
          to label %do.end [label %if.then10], !srcloc !121

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %h_delay = getelementptr inbounds %struct.tw68_tvnorm, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %h_delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %h_delay, align 8
  %h_start = getelementptr inbounds %struct.tw68_tvnorm, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %h_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %h_start, align 8
  %h_stop = getelementptr inbounds %struct.tw68_tvnorm, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %h_stop to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %h_stop, align 4
  %v_delay = getelementptr inbounds %struct.tw68_tvnorm, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %v_delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %v_delay, align 8
  %video_v_start = getelementptr inbounds %struct.tw68_tvnorm, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %video_v_start to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %video_v_start, align 4
  %video_v_stop = getelementptr inbounds %struct.tw68_tvnorm, ptr %1, i32 0, i32 14
  %16 = ptrtoint ptr %video_v_stop to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %video_v_stop, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tw68_set_scale.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, i32 noundef %width, i32 noundef %height.addr.0, i32 noundef %div2, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #8
  br label %do.end

do.end:                                           ; preds = %if.then10, %entry
  %vdecoder = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 4
  %18 = ptrtoint ptr %vdecoder to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vdecoder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cond191 = icmp eq i32 %19, 0
  %h_delay0 = getelementptr inbounds %struct.tw68_tvnorm, ptr %1, i32 0, i32 9
  %h_delay20 = getelementptr inbounds %struct.tw68_tvnorm, ptr %1, i32 0, i32 8
  %hdelay.0.in = select i1 %cond191, ptr %h_delay0, ptr %h_delay20
  %20 = ptrtoint ptr %hdelay.0.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %hdelay.0 = load i32, ptr %hdelay.0.in, align 4
  %h_start21 = getelementptr inbounds %struct.tw68_tvnorm, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %h_start21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %h_start21, align 8
  %add = add i32 %22, %hdelay.0
  %h_stop22 = getelementptr inbounds %struct.tw68_tvnorm, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %h_stop22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %h_stop22, align 4
  %sub = sub i32 %24, %22
  %add24 = add i32 %sub, 1
  %mul = shl i32 %add24, 8
  %div25 = udiv i32 %mul, %width
  %v_delay26 = getelementptr inbounds %struct.tw68_tvnorm, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %v_delay26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %v_delay26, align 8
  %id = getelementptr inbounds %struct.tw68_tvnorm, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %id, align 8
  %and = and i64 %28, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool27.not = icmp eq i64 %and, 0
  %div28 = select i1 %tobool27.not, i32 312, i32 262
  %video_v_start29 = getelementptr inbounds %struct.tw68_tvnorm, ptr %1, i32 0, i32 13
  %29 = ptrtoint ptr %video_v_start29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %video_v_start29, align 4
  %sub30 = sub i32 %div28, %30
  %mul31 = shl i32 %sub30, 8
  %div32 = udiv i32 %mul31, %height.addr.0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tw68_set_scale.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tw68_set_scale, %if.then45)) #8
          to label %do.body80 [label %if.then45], !srcloc !121

if.then45:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %field)
  %cmp46 = icmp eq i32 %field, 2
  %brmerge = or i1 %cmp46, %cmp
  %31 = or i1 %3, %brmerge
  %32 = add i32 %field, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %33 = icmp ult i32 %32, 2
  %34 = or i1 %33, %31
  %35 = select i1 %34, ptr @.str.17, ptr @.str.18
  %36 = add i32 %field, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %37 = icmp ult i32 %36, 4
  %38 = or i1 %37, %3
  %39 = select i1 %38, ptr @.str.19, ptr @.str.18
  %40 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tvnorm, align 8
  %id75 = getelementptr inbounds %struct.tw68_tvnorm, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %id75 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %id75, align 8
  %call76 = tail call ptr @v4l2_norm_to_name(i64 noundef %43) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tw68_set_scale.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, i32 noundef %width, i32 noundef %height.addr.0, ptr noundef nonnull %35, ptr noundef nonnull %39, ptr noundef %call76) #8
  br label %do.body80

do.body80:                                        ; preds = %if.then45, %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tw68_set_scale.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tw68_set_scale, %if.then92)) #8
          to label %do.end95 [label %if.then92], !srcloc !121

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tw68_set_scale.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.14, i32 noundef %add24, i32 noundef %add, i32 noundef %div25, i32 noundef %sub30, i32 noundef %26, i32 noundef %div32) #8
  br label %do.end95

do.end95:                                         ; preds = %if.then92, %do.body80
  %and96 = lshr i32 %26, 2
  %44 = and i32 %and96, 192
  %and97 = lshr i32 %sub30, 4
  %45 = and i32 %and97, 48
  %and99 = lshr i32 %add, 6
  %46 = and i32 %and99, 12
  %and102 = lshr i32 %add24, 8
  %47 = and i32 %and102, 3
  %or = or i32 %44, %46
  %or101 = or i32 %or, %47
  %or104 = or i32 %or101, %45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tw68_set_scale.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tw68_set_scale, %if.then117)) #8
          to label %do.body121 [label %if.then117], !srcloc !121

if.then117:                                       ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tw68_set_scale.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.14, i32 noundef %or104, i32 noundef %26, i32 noundef %sub30, i32 noundef %add, i32 noundef %add24) #8
  br label %do.body121

do.body121:                                       ; preds = %if.then117, %do.end95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %conv = trunc i32 %or104 to i8
  %bmmio = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 12
  %48 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %49, i32 540
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #8, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %conv128 = trunc i32 %26 to i8
  %50 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bmmio, align 8
  %add.ptr130 = getelementptr i8, ptr %51, i32 544
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr130, i8 %conv128) #8, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  tail call void @arm_heavy_mb() #8
  %conv135 = trunc i32 %sub30 to i8
  %52 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bmmio, align 8
  %add.ptr137 = getelementptr i8, ptr %53, i32 548
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr137, i8 %conv135) #8, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  tail call void @arm_heavy_mb() #8
  %conv142 = trunc i32 %add to i8
  %54 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bmmio, align 8
  %add.ptr144 = getelementptr i8, ptr %55, i32 552
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr144, i8 %conv142) #8, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %conv149 = trunc i32 %add24 to i8
  %56 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bmmio, align 8
  %add.ptr151 = getelementptr i8, ptr %57, i32 556
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr151, i8 %conv149) #8, !srcloc !123
  %and152 = lshr i32 %div32, 4
  %58 = and i32 %and152, 240
  %and154 = lshr i32 %div25, 8
  %59 = and i32 %and154, 15
  %or156 = or i32 %58, %59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tw68_set_scale.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tw68_set_scale, %if.then169)) #8
          to label %do.body173 [label %if.then169], !srcloc !121

if.then169:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tw68_set_scale.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.14, i32 noundef %or156, i32 noundef %div32, i32 noundef %div25) #8
  br label %do.body173

do.body173:                                       ; preds = %if.then169, %do.body121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %conv176 = trunc i32 %or156 to i8
  %60 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bmmio, align 8
  %add.ptr178 = getelementptr i8, ptr %61, i32 568
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr178, i8 %conv176) #8, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %conv182 = trunc i32 %div32 to i8
  %62 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bmmio, align 8
  %add.ptr184 = getelementptr i8, ptr %63, i32 564
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr184, i8 %conv182) #8, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %conv188 = trunc i32 %div25 to i8
  %64 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bmmio, align 8
  %add.ptr190 = getelementptr i8, ptr %65, i32 572
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr190, i8 %conv188) #8, !srcloc !123
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tw68_set_tvnorm_hw(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %bmmio = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 624
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %3 = and i8 %2, -8
  %tvnorm = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 22
  %4 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tvnorm, align 8
  %format = getelementptr inbounds %struct.tw68_tvnorm, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format, align 8
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 7
  %conv3 = or i8 %9, %3
  %10 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bmmio, align 8
  %add.ptr5 = getelementptr i8, ptr %11, i32 624
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 %conv3) #8, !srcloc !123
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tw68_video_init1(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hdl1 = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 6
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl1, i32 noundef 6, ptr noundef nonnull @tw68_video_init1._key, ptr noundef nonnull @.str) #8
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @tw68_ctrl_ops, i32 noundef 9963776, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 20) #8
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @tw68_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 100) #8
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @tw68_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #8
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @tw68_ctrl_ops, i32 noundef 9963779, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #8
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @tw68_ctrl_ops, i32 noundef 9963806, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl1, ptr noundef nonnull @tw68_ctrl_ops, i32 noundef 9963805, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #8
  %error = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 6, i32 9
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl1) #8
  %2 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl_handler = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hdl1, ptr %ctrl_handler, align 4
  %call9 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tw68_video_init2(ptr noundef %dev, i32 noundef %video_nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tvnorm.i = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 22
  %0 = ptrtoint ptr %tvnorm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tvnorm.i, align 8
  %cmp.not.i = icmp eq ptr %1, @tvnorms
  br i1 %cmp.not.i, label %entry.set_tvnorm.exit_crit_edge, label %if.then.i

entry.set_tvnorm.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_tvnorm.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %width.i = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 720, ptr %width.i, align 8
  %height.i = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 17
  %3 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 576, ptr %height.i, align 4
  %4 = ptrtoint ptr %tvnorm.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tvnorms, ptr %tvnorm.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %bmmio.i.i = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 12
  %5 = ptrtoint ptr %bmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bmmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 624
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %8 = and i8 %7, -8
  %9 = ptrtoint ptr %tvnorm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tvnorm.i, align 8
  %format.i.i = getelementptr inbounds %struct.tw68_tvnorm, ptr %10, i32 0, i32 18
  %11 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %format.i.i, align 8
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 7
  %conv3.i.i = or i8 %14, %8
  %15 = ptrtoint ptr %bmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bmmio.i.i, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %16, i32 624
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i, i8 %conv3.i.i) #8, !srcloc !123
  br label %set_tvnorm.exit

set_tvnorm.exit:                                  ; preds = %if.then.i, %entry.set_tvnorm.exit_crit_edge
  %fmt = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 15
  %17 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr getelementptr inbounds ([10 x %struct.tw68_format], ptr @formats, i32 0, i32 4), ptr %fmt, align 4
  %width = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 16
  %18 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 720, ptr %width, align 8
  %height = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 17
  %19 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 576, ptr %height, align 4
  %field = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 19
  %20 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %field, align 4
  %active = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 21
  %21 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %active, ptr %active, align 4
  %prev.i = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 21, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %active, ptr %prev.i, align 4
  %vidq = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 20
  %23 = ptrtoint ptr %vidq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %vidq, align 8
  %timestamp_flags = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 20, i32 13
  %24 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8192, ptr %timestamp_flags, align 4
  %io_modes = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 20, i32 1
  %25 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 23, ptr %io_modes, align 4
  %ops = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 20, i32 7
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @tw68_video_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 20, i32 8
  %27 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @vb2_dma_sg_memops, ptr %mem_ops, align 8
  %drv_priv = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 20, i32 10
  %28 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev, ptr %drv_priv, align 8
  %gfp_flags = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 20, i32 14
  %29 = ptrtoint ptr %gfp_flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2052, ptr %gfp_flags, align 8
  %buf_struct_size = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 20, i32 12
  %30 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 760, ptr %buf_struct_size, align 8
  %lock9 = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 20, i32 5
  %31 = ptrtoint ptr %lock9 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev, ptr %lock9, align 4
  %min_buffers_needed = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 20, i32 15
  %32 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %min_buffers_needed, align 4
  %pci = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 8
  %33 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %dev13 = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 20, i32 2
  %35 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %dev11, ptr %dev13, align 8
  %call15 = tail call i32 @vb2_queue_init(ptr noundef %vidq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end, label %set_tvnorm.exit.cleanup_crit_edge

set_tvnorm.exit.cleanup_crit_edge:                ; preds = %set_tvnorm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %set_tvnorm.exit
  call void @__sanitizer_cov_trace_pc() #10
  %vdev = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 5
  %36 = call ptr @memcpy(ptr %vdev, ptr @tw68_video_template, i32 1352)
  %v4l2_dev = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 3
  %v4l2_dev17 = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 5, i32 7
  %37 = ptrtoint ptr %v4l2_dev17 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %v4l2_dev, ptr %v4l2_dev17, align 4
  %lock20 = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 5, i32 26
  %38 = ptrtoint ptr %lock20 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev, ptr %lock20, align 8
  %queue = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 5, i32 10
  %39 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %vidq, ptr %queue, align 8
  %driver_data.i.i = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 5, i32 5, i32 8
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dev, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 0, i32 noundef %video_nr, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %set_tvnorm.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call15, %set_tvnorm.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tw68_irq_video_done(ptr noundef %dev, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %status)
  %lmmio = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 11
  %1 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %2, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !114
  %and = and i32 %status, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %entry
  %slock = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %slock) #8
  %active = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 21
  %3 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %active, align 8
  %add.ptr1 = getelementptr i8, ptr %4, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %slock) #8
  %call.i = tail call i64 @ktime_get() #8
  %timestamp = getelementptr i8, ptr %4, i32 -712
  %13 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call.i, ptr %timestamp, align 8
  %field = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 19
  %14 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %field, align 4
  %field4 = getelementptr i8, ptr %4, i32 -292
  %16 = ptrtoint ptr %field4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %field4, align 4
  %seqnr = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 18
  %17 = ptrtoint ptr %seqnr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %seqnr, align 8
  %inc = add i32 %18, 1
  store i32 %inc, ptr %seqnr, align 8
  %sequence = getelementptr i8, ptr %4, i32 -272
  %19 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %sequence, align 8
  tail call void @vb2_buffer_done(ptr noundef %add.ptr1, i32 noundef 5) #8
  %and8 = and i32 %status, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp = icmp eq i32 %and8, 0
  br i1 %cmp, label %list_del.exit.cleanup143_crit_edge, label %list_del.exit.if.end10_crit_edge

list_del.exit.if.end10_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

list_del.exit.cleanup143_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup143

if.end10:                                         ; preds = %list_del.exit.if.end10_crit_edge, %entry.if.end10_crit_edge
  %status.addr.0 = phi i32 [ %and8, %list_del.exit.if.end10_crit_edge ], [ %status, %entry.if.end10_crit_edge ]
  %and11 = and i32 %status.addr.0, 4718592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end25_crit_edge, label %do.body14

if.end10.if.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.body14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tw68_irq_video_done.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tw68_irq_video_done, %if.then20)) #8
          to label %if.end25 [label %if.then20], !srcloc !121

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %pci = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 8
  %20 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci, align 4
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tw68_irq_video_done.__UNIQUE_ID_ddebug305, ptr noundef %dev21, ptr noundef nonnull @.str.4) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %do.body14, %if.end10.if.end25_crit_edge
  %and26 = and i32 %status.addr.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end34_crit_edge, label %do.end31

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %pci32 = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 8
  %22 = ptrtoint ptr %pci32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci32, align 4
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.5) #11
  br label %if.end34

if.end34:                                         ; preds = %do.end31, %if.end25.if.end34_crit_edge
  %and35 = and i32 %status.addr.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end43_crit_edge, label %do.end40

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %pci41 = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 8
  %24 = ptrtoint ptr %pci41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci41, align 4
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.9) #11
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %if.end34.if.end43_crit_edge
  %and44 = and i32 %status.addr.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end65_crit_edge, label %do.body47

if.end43.if.end65_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

do.body47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tw68_irq_video_done.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tw68_irq_video_done, %if.then59)) #8
          to label %if.end65 [label %if.then59], !srcloc !121

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  %pci60 = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 8
  %26 = ptrtoint ptr %pci60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci60, align 4
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tw68_irq_video_done.__UNIQUE_ID_ddebug306, ptr noundef %dev61, ptr noundef nonnull @.str.11) #8
  br label %if.end65

if.end65:                                         ; preds = %if.then59, %do.body47, %if.end43.if.end65_crit_edge
  %and66 = and i32 %status.addr.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.if.end120_crit_edge, label %if.then68

if.end65.if.end120_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.then68:                                        ; preds = %if.end65
  %28 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lmmio, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !112
  %31 = lshr i32 %30, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %and74 = and i32 %31, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lmmio, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %35 = and i32 %34, -33554433
  %36 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lmmio, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #8, !srcloc !114
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tw68_irq_video_done.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tw68_irq_video_done, %if.then100)) #8
          to label %do.body106 [label %if.then100], !srcloc !121

if.then100:                                       ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  %pci101 = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 8
  %38 = ptrtoint ptr %pci101 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pci101, align 4
  %dev102 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tw68_irq_video_done.__UNIQUE_ID_ddebug307, ptr noundef %dev102, ptr noundef nonnull @.str.12) #8
  br label %do.body106

do.body106:                                       ; preds = %if.then100, %if.then68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lmmio, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #8, !srcloc !112
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  %or = or i32 %43, %and74
  %44 = tail call i32 @llvm.bswap.i32(i32 %or)
  %45 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lmmio, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #8, !srcloc !114
  br label %if.end120

if.end120:                                        ; preds = %do.body106, %if.end65.if.end120_crit_edge
  %and121 = and i32 %status.addr.0, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end120.cleanup143_crit_edge, label %do.body124

if.end120.cleanup143_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup143

do.body124:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tw68_irq_video_done.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tw68_irq_video_done, %if.then136)) #8
          to label %cleanup143 [label %if.then136], !srcloc !121

if.then136:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #10
  %pci137 = getelementptr inbounds %struct.tw68_dev, ptr %dev, i32 0, i32 8
  %47 = ptrtoint ptr %pci137 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pci137, align 4
  %dev138 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tw68_irq_video_done.__UNIQUE_ID_ddebug308, ptr noundef %dev138, ptr noundef nonnull @.str.13) #8
  br label %cleanup143

cleanup143:                                       ; preds = %if.then136, %do.body124, %if.end120.cleanup143_crit_edge, %list_del.exit.cleanup143_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_norm_to_name(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw68_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 9963776, label %do.body
    i32 9963779, label %do.body3
    i32 9963777, label %do.body11
    i32 9963778, label %do.body19
    i32 9963806, label %sw.bb33
    i32 9963805, label %sw.bb62
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  tail call void @arm_heavy_mb() #8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %bmmio = getelementptr i8, ptr %1, i32 200
  %7 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bmmio, align 8
  %add.ptr1 = getelementptr i8, ptr %8, i32 576
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1, i8 %conv) #8, !srcloc !123
  br label %sw.epilog

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  tail call void @arm_heavy_mb() #8
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val6, align 4
  %conv7 = trunc i32 %10 to i8
  %bmmio8 = getelementptr i8, ptr %1, i32 200
  %11 = ptrtoint ptr %bmmio8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bmmio8, align 8
  %add.ptr9 = getelementptr i8, ptr %12, i32 596
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9, i8 %conv7) #8, !srcloc !123
  br label %sw.epilog

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val14, align 4
  %conv15 = trunc i32 %14 to i8
  %bmmio16 = getelementptr i8, ptr %1, i32 200
  %15 = ptrtoint ptr %bmmio16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bmmio16, align 8
  %add.ptr17 = getelementptr i8, ptr %16, i32 580
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17, i8 %conv15) #8, !srcloc !123
  br label %sw.epilog

do.body19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @arm_heavy_mb() #8
  %val22 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %17 = ptrtoint ptr %val22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val22, align 4
  %conv23 = trunc i32 %18 to i8
  %bmmio24 = getelementptr i8, ptr %1, i32 200
  %19 = ptrtoint ptr %bmmio24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bmmio24, align 8
  %add.ptr25 = getelementptr i8, ptr %20, i32 588
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25, i8 %conv23) #8, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %val22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val22, align 4
  %conv30 = trunc i32 %22 to i8
  %23 = ptrtoint ptr %bmmio24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bmmio24, align 8
  %add.ptr32 = getelementptr i8, ptr %24, i32 592
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr32, i8 %conv30) #8, !srcloc !123
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  %val34 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %25 = ptrtoint ptr %val34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %bmmio51 = getelementptr i8, ptr %1, i32 200
  %27 = ptrtoint ptr %bmmio51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bmmio51, align 8
  %add.ptr52 = getelementptr i8, ptr %28, i32 700
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr52) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %tobool.not, label %do.body46, label %do.body35

do.body35:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  %30 = or i8 %29, -32
  %31 = ptrtoint ptr %bmmio51 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bmmio51, align 8
  %add.ptr45 = getelementptr i8, ptr %32, i32 700
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr45, i8 %30) #8, !srcloc !123
  br label %sw.epilog

do.body46:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  %33 = and i8 %29, 31
  %34 = ptrtoint ptr %bmmio51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bmmio51, align 8
  %add.ptr61 = getelementptr i8, ptr %35, i32 700
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr61, i8 %33) #8, !srcloc !123
  br label %sw.epilog

sw.bb62:                                          ; preds = %entry
  %val63 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %36 = ptrtoint ptr %val63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool64.not = icmp eq i32 %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %bmmio88 = getelementptr i8, ptr %1, i32 200
  %38 = ptrtoint ptr %bmmio88 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bmmio88, align 8
  %add.ptr89 = getelementptr i8, ptr %39, i32 696
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr89) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %41 = and i8 %40, -49
  br i1 %tobool64.not, label %do.body83, label %do.body66

do.body66:                                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #10
  %42 = or i8 %41, 32
  %43 = ptrtoint ptr %bmmio88 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bmmio88, align 8
  %add.ptr81 = getelementptr i8, ptr %44, i32 696
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr81, i8 %42) #8, !srcloc !123
  br label %sw.epilog

do.body83:                                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %bmmio88 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bmmio88, align 8
  %add.ptr98 = getelementptr i8, ptr %46, i32 696
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr98, i8 %41) #8, !srcloc !123
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body83, %do.body66, %do.body46, %do.body35, %do.body19, %do.body11, %do.body3, %do.body, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tw68_queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef %num_buffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %num_buffers1 = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 21
  %2 = ptrtoint ptr %num_buffers1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers1, align 4
  %4 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers, align 4
  %add = add i32 %5, %3
  %fmt = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fmt, align 4
  %depth = getelementptr inbounds %struct.tw68_format, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %depth, align 4
  %width = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 8
  %mul = mul i32 %11, %9
  %height = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %mul2 = mul i32 %mul, %13
  %shr = lshr i32 %mul2, 3
  %14 = tail call i32 @llvm.umax.i32(i32 %add, i32 2)
  %add.i = add nuw nsw i32 %shr, 4095
  %div6.i = and i32 %add.i, 1073737728
  %div1.i = udiv i32 4194304, %div6.i
  %15 = tail call i32 @llvm.umin.i32(i32 %div1.i, i32 %14) #8
  %sub = sub i32 %15, %3
  %16 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub, ptr %num_buffers, align 4
  %17 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %shr)
  %cmp6 = icmp ult i32 %20, %shr
  %cond = select i1 %cmp6, i32 -22, i32 0
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %num_planes, align 4
  %22 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5
  %retval.0 = phi i32 [ %cond, %if.then5 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw68_buf_prepare(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #8
  %width = getelementptr inbounds %struct.tw68_dev, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.tw68_dev, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %mul = mul i32 %7, %5
  %fmt = getelementptr inbounds %struct.tw68_dev, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fmt, align 4
  %depth = getelementptr inbounds %struct.tw68_format, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %depth, align 4
  %mul5 = mul i32 %mul, %11
  %shr = lshr i32 %mul5, 3
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %12 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mul5)
  %cmp.not = icmp ult i32 %mul5, 8
  br i1 %cmp.not, label %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.cleanup_crit_edge

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit.thread:                       ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %shr)
  %cmp92 = icmp ult i32 %15, %shr
  br i1 %cmp92, label %vb2_plane_size.exit.thread.cleanup_crit_edge, label %if.then.i90

vb2_plane_size.exit.thread.cleanup_crit_edge:     ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i90:                                      ; preds = %vb2_plane_size.exit.thread
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %shr)
  %cmp1.i = icmp ult i32 %17, %shr
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i90.if.end42.i_crit_edge

if.then.i90.if.end42.i_crit_edge:                 ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i90
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !145

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 1163, i32 noundef 9, ptr noundef null) #8
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i90.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %19, %if.then38.i ], [ %shr, %if.then.i90.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %20 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge
  %21 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %width, align 8
  %23 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fmt, align 4
  %depth9 = getelementptr inbounds %struct.tw68_format, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %depth9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %depth9, align 4
  %mul10 = mul i32 %26, %22
  %shr11 = lshr i32 %mul10, 3
  %field = getelementptr inbounds %struct.tw68_dev, ptr %3, i32 0, i32 19
  %27 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %field, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %28, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb14
    i32 5, label %sw.bb19
    i32 6, label %sw.bb28
  ]

sw.bb:                                            ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #10
  %pci = getelementptr inbounds %struct.tw68_dev, ptr %3, i32 0, i32 8
  %30 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci, align 4
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %34 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height, align 4
  %call13 = tail call i32 @tw68_risc_buffer(ptr noundef %31, ptr noundef %vb, ptr noundef %33, i32 noundef 0, i32 noundef -1, i32 noundef %shr11, i32 noundef 0, i32 noundef %35) #8
  br label %cleanup

sw.bb14:                                          ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #10
  %pci15 = getelementptr inbounds %struct.tw68_dev, ptr %3, i32 0, i32 8
  %36 = ptrtoint ptr %pci15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci15, align 4
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %40 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height, align 4
  %call18 = tail call i32 @tw68_risc_buffer(ptr noundef %37, ptr noundef %vb, ptr noundef %39, i32 noundef -1, i32 noundef 0, i32 noundef %shr11, i32 noundef 0, i32 noundef %41) #8
  br label %cleanup

sw.bb19:                                          ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #10
  %pci20 = getelementptr inbounds %struct.tw68_dev, ptr %3, i32 0, i32 8
  %42 = ptrtoint ptr %pci20 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci20, align 4
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %46 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %height, align 4
  %shr23 = lshr i32 %47, 1
  %mul24 = mul i32 %shr23, %shr11
  %call27 = tail call i32 @tw68_risc_buffer(ptr noundef %43, ptr noundef %vb, ptr noundef %45, i32 noundef 0, i32 noundef %mul24, i32 noundef %shr11, i32 noundef 0, i32 noundef %shr23) #8
  br label %cleanup

sw.bb28:                                          ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #10
  %pci29 = getelementptr inbounds %struct.tw68_dev, ptr %3, i32 0, i32 8
  %48 = ptrtoint ptr %pci29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pci29, align 4
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  %52 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %height, align 4
  %shr32 = lshr i32 %53, 1
  %mul33 = mul i32 %shr32, %shr11
  %call36 = tail call i32 @tw68_risc_buffer(ptr noundef %49, ptr noundef %vb, ptr noundef %51, i32 noundef %mul33, i32 noundef 0, i32 noundef %shr11, i32 noundef 0, i32 noundef %shr32) #8
  br label %cleanup

sw.default:                                       ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #10
  %pci38 = getelementptr inbounds %struct.tw68_dev, ptr %3, i32 0, i32 8
  %54 = ptrtoint ptr %pci38 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pci38, align 4
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  %58 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height, align 4
  %shr41 = lshr i32 %59, 1
  %call42 = tail call i32 @tw68_risc_buffer(ptr noundef %55, ptr noundef %vb, ptr noundef %57, i32 noundef 0, i32 noundef %shr11, i32 noundef %shr11, i32 noundef %shr11, i32 noundef %shr41) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb28, %sw.bb19, %sw.bb14, %sw.bb, %vb2_plane_size.exit.thread.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %sw.default ], [ 0, %sw.bb28 ], [ 0, %sw.bb19 ], [ 0, %sw.bb14 ], [ 0, %sw.bb ], [ -22, %vb2_plane_size.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tw68_buf_finish(ptr nocapture noundef readonly %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %pci = getelementptr inbounds %struct.tw68_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %size = getelementptr inbounds %struct.tw68_buf, ptr %vb, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 8
  %cpu = getelementptr inbounds %struct.tw68_buf, ptr %vb, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpu, align 4
  %dma = getelementptr inbounds %struct.tw68_buf, ptr %vb, i32 0, i32 5
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev4, i32 noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw68_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %active = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -736
  %seqnr = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %seqnr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %seqnr, align 8
  %call1 = tail call i32 @tw68_video_start_dma(ptr noundef %1, ptr noundef %add.ptr)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tw68_stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  tail call void @arm_heavy_mb() #8
  %lmmio = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %5 = and i32 %4, -50331649
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #8, !srcloc !114
  %active = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %active, align 4
  %cmp.i.not13 = icmp eq ptr %9, %active
  br i1 %cmp.i.not13, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %10 = phi ptr [ %20, %list_del.exit.while.body_crit_edge ], [ %9, %entry.while.body_crit_edge ]
  %add.ptr8 = getelementptr i8, ptr %10, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void @vb2_buffer_done(ptr noundef %add.ptr8, i32 noundef 6) #8
  %19 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %active, align 4
  %cmp.i.not = icmp eq ptr %20, %active
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tw68_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %slock = getelementptr inbounds %struct.tw68_dev, ptr %3, i32 0, i32 1
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %jmp = getelementptr inbounds %struct.tw68_buf, ptr %vb, i32 0, i32 4
  %4 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jmp, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 176, ptr %5, align 4
  %dma = getelementptr inbounds %struct.tw68_buf, ptr %vb, i32 0, i32 5
  %7 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma, align 4
  %add = add i32 %8, 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %add)
  %10 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %jmp, align 8
  %arrayidx11 = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %arrayidx11, align 4
  %active = getelementptr inbounds %struct.tw68_dev, ptr %3, i32 0, i32 21
  %13 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %active, align 4
  %cmp.i.not = icmp eq ptr %14, %active
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev15 = getelementptr inbounds %struct.tw68_dev, ptr %3, i32 0, i32 21, i32 1
  %15 = ptrtoint ptr %prev15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev15, align 4
  %cpu = getelementptr inbounds %struct.tw68_buf, ptr %vb, i32 0, i32 3
  %17 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpu, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %or = or i32 %20, 8
  store i32 %or, ptr %18, align 4
  %21 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %jmp20 = getelementptr i8, ptr %16, i32 16
  %24 = ptrtoint ptr %jmp20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %jmp20, align 8
  %arrayidx21 = getelementptr i32, ptr %25, i32 1
  %26 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %arrayidx21, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %list = getelementptr inbounds %struct.tw68_buf, ptr %vb, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.tw68_dev, ptr %3, i32 0, i32 21, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %28, ptr noundef %active) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list, ptr %prev.i, align 4
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %active, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.tw68_buf, ptr %vb, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tw68_risc_buffer(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw68_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.1, i32 noundef 16) #8
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.30, i32 noundef 32) #8
  %pci = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %bus_info, ptr noundef nonnull @.str.31, ptr noundef %retval.0.i.i)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tw68_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp = icmp ugt i32 %1, 9
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [10 x %struct.tw68_format], ptr @formats, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw68_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %width = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %height3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %height3, align 4
  %field = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %field, align 4
  %field5 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %field5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %field5, align 4
  %fmt6 = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %fmt6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fmt6, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %pixelformat, align 4
  %16 = load ptr, ptr %fmt6, align 4
  %depth = getelementptr inbounds %struct.tw68_format, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %depth, align 4
  %mul = mul i32 %18, %3
  %shr = lshr i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr, ptr %bytesperline, align 4
  %mul16 = mul i32 %shr, %6
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %20 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul16, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %21 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %colorspace, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw68_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @tw68_try_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %3, label %if.end.format_by_fourcc.exit_crit_edge [
    i32 1329743698, label %if.end.if.then.i_crit_edge
    i32 1363298130, label %if.then.fold.split.i
    i32 1346520914, label %if.then.fold.split9.i
    i32 1380075346, label %if.then.fold.split10.i
    i32 861030210, label %if.then.fold.split11.i
    i32 859981650, label %if.then.fold.split12.i
    i32 877807426, label %if.then.fold.split13.i
    i32 876758866, label %if.then.fold.split14.i
    i32 1448695129, label %if.then.fold.split15.i
    i32 1498831189, label %if.then.fold.split16.i
  ]

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end.format_by_fourcc.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %format_by_fourcc.exit

if.then.fold.split.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split9.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split10.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split11.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split12.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split13.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split14.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split15.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.fold.split16.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split9.i, %if.then.fold.split.i, %if.end.if.then.i_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %if.end.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split9.i ], [ 3, %if.then.fold.split10.i ], [ 4, %if.then.fold.split11.i ], [ 5, %if.then.fold.split12.i ], [ 6, %if.then.fold.split13.i ], [ 7, %if.then.fold.split14.i ], [ 8, %if.then.fold.split15.i ], [ 9, %if.then.fold.split16.i ]
  %add.ptr.i = getelementptr %struct.tw68_format, ptr @formats, i32 %i.07.lcssa.i
  br label %format_by_fourcc.exit

format_by_fourcc.exit:                            ; preds = %if.then.i, %if.end.format_by_fourcc.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %if.end.format_by_fourcc.exit_crit_edge ]
  %fmt3 = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %fmt3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %retval.0.i, ptr %fmt3, align 4
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fmt, align 4
  %width5 = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %width5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %width5, align 8
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %height7 = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %height7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %height7, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %field, align 4
  %field9 = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %field9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %field9, align 4
  br label %cleanup

cleanup:                                          ; preds = %format_by_fourcc.exit, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw68_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1329743698, label %entry.format_by_fourcc.exit_crit_edge
    i32 1363298130, label %if.then.fold.split.i
    i32 1346520914, label %if.then.fold.split9.i
    i32 1380075346, label %if.then.fold.split10.i
    i32 861030210, label %if.then.fold.split11.i
    i32 859981650, label %if.then.fold.split12.i
    i32 877807426, label %if.then.fold.split13.i
    i32 876758866, label %if.then.fold.split14.i
    i32 1448695129, label %if.then.fold.split15.i
    i32 1498831189, label %if.then.fold.split16.i
  ]

entry.format_by_fourcc.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %format_by_fourcc.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %format_by_fourcc.exit

if.then.fold.split9.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %format_by_fourcc.exit

if.then.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %format_by_fourcc.exit

if.then.fold.split11.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %format_by_fourcc.exit

if.then.fold.split12.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %format_by_fourcc.exit

if.then.fold.split13.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %format_by_fourcc.exit

if.then.fold.split14.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %format_by_fourcc.exit

if.then.fold.split15.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %format_by_fourcc.exit

if.then.fold.split16.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %format_by_fourcc.exit

format_by_fourcc.exit:                            ; preds = %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split9.i, %if.then.fold.split.i, %entry.format_by_fourcc.exit_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %entry.format_by_fourcc.exit_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split9.i ], [ 3, %if.then.fold.split10.i ], [ 4, %if.then.fold.split11.i ], [ 5, %if.then.fold.split12.i ], [ 6, %if.then.fold.split13.i ], [ 7, %if.then.fold.split14.i ], [ 8, %if.then.fold.split15.i ], [ 9, %if.then.fold.split16.i ]
  %add.ptr.i = getelementptr %struct.tw68_format, ptr @formats, i32 %i.07.lcssa.i
  %cmp = icmp eq ptr %add.ptr.i, null
  br i1 %cmp, label %format_by_fourcc.exit.cleanup_crit_edge, label %if.end

format_by_fourcc.exit.cleanup_crit_edge:          ; preds = %format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %format_by_fourcc.exit
  %field4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %field4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %field4, align 4
  %tvnorm = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 22
  %7 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tvnorm, align 8
  %id = getelementptr inbounds %struct.tw68_tvnorm, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %id, align 8
  %and = and i64 %10, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool.not, i32 576, i32 480
  %11 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %6, label %sw.default [
    i32 2, label %if.end.sw.epilog_crit_edge
    i32 3, label %if.end.sw.epilog_crit_edge81
    i32 4, label %if.end.sw.bb5_crit_edge
    i32 6, label %if.end.sw.bb5_crit_edge82
    i32 5, label %if.end.sw.bb5_crit_edge83
  ]

if.end.sw.bb5_crit_edge83:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

if.end.sw.bb5_crit_edge82:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

if.end.sw.epilog_crit_edge81:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end.sw.bb5_crit_edge, %if.end.sw.bb5_crit_edge82, %if.end.sw.bb5_crit_edge83
  %mul = shl nuw nsw i32 %cond, 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 4
  %div78 = lshr exact i32 %cond, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %div78)
  %cmp7 = icmp ugt i32 %13, %div78
  %cond8 = select i1 %cmp7, i32 4, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge81
  %field.0 = phi i32 [ %cond8, %sw.default ], [ %6, %sw.bb5 ], [ %6, %if.end.sw.epilog_crit_edge ], [ %6, %if.end.sw.epilog_crit_edge81 ]
  %maxh.0 = phi i32 [ %cond, %sw.default ], [ %mul, %sw.bb5 ], [ %cond, %if.end.sw.epilog_crit_edge ], [ %cond, %if.end.sw.epilog_crit_edge81 ]
  %14 = ptrtoint ptr %field4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %field.0, ptr %field4, align 4
  %15 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fmt1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %16)
  %cmp12 = icmp ult i32 %16, 48
  br i1 %cmp12, label %if.then13, label %sw.epilog.if.end16_crit_edge

sw.epilog.if.end16_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 48, ptr %fmt1, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %sw.epilog.if.end16_crit_edge
  %height18 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %height18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %19)
  %cmp19 = icmp ult i32 %19, 32
  br i1 %cmp19, label %if.then20, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %height18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 32, ptr %height18, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end16.if.end23_crit_edge
  %21 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fmt1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %22)
  %cmp26 = icmp ugt i32 %22, 720
  br i1 %cmp26, label %if.then27, label %if.end23.if.end30_crit_edge

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 720, ptr %fmt1, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end23.if.end30_crit_edge
  %24 = ptrtoint ptr %height18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %maxh.0)
  %cmp33 = icmp ugt i32 %25, %maxh.0
  br i1 %cmp33, label %if.then34, label %if.end30.if.end37_crit_edge

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %height18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %maxh.0, ptr %height18, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end30.if.end37_crit_edge
  %27 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fmt1, align 4
  %and40 = and i32 %28, -4
  store i32 %and40, ptr %fmt1, align 4
  %depth = getelementptr %struct.tw68_format, ptr @formats, i32 %i.07.lcssa.i, i32 1
  %29 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %depth, align 4
  %mul43 = mul i32 %30, %and40
  %shr = lshr i32 %mul43, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %31 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shr, ptr %bytesperline, align 4
  %32 = ptrtoint ptr %height18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height18, align 4
  %mul49 = mul i32 %33, %shr
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %34 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul49, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %35 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %colorspace, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %format_by_fourcc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -22, %format_by_fourcc.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw68_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tvnorm = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tvnorm, align 8
  %id1 = getelementptr inbounds %struct.tw68_tvnorm, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %id1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %id1, align 8
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %id, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw68_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 20, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_switch(i64 %id, ptr @__sancov_gen_cov_switch_values.48)
  switch i64 %id, label %for.body10.preheader [
    i64 255, label %for.body.preheader.if.end21_crit_edge
    i64 45056, label %if.end21.fold.split
    i64 16711680, label %if.end21.fold.split46
    i64 256, label %if.end21.fold.split47
    i64 1024, label %if.end21.fold.split48
    i64 2048, label %if.end21.fold.split49
  ]

for.body.preheader.if.end21_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

for.body10.preheader:                             ; preds = %for.body.preheader
  %and = and i64 %id, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.inc15, label %for.body10.preheader.if.end21_crit_edge

for.body10.preheader.if.end21_crit_edge:          ; preds = %for.body10.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

for.inc15:                                        ; preds = %for.body10.preheader
  %and.1 = and i64 %id, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.1)
  %tobool.not.1 = icmp eq i64 %and.1, 0
  br i1 %tobool.not.1, label %for.inc15.1, label %for.inc15.if.end21_crit_edge

for.inc15.if.end21_crit_edge:                     ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

for.inc15.1:                                      ; preds = %for.inc15
  %and.2 = and i64 %id, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.2)
  %tobool.not.2 = icmp eq i64 %and.2, 0
  br i1 %tobool.not.2, label %for.inc15.2, label %for.inc15.1.if.end21_crit_edge

for.inc15.1.if.end21_crit_edge:                   ; preds = %for.inc15.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

for.inc15.2:                                      ; preds = %for.inc15.1
  %and.3 = and i64 %id, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.3)
  %tobool.not.3 = icmp eq i64 %and.3, 0
  br i1 %tobool.not.3, label %for.inc15.3, label %for.inc15.2.if.end21_crit_edge

for.inc15.2.if.end21_crit_edge:                   ; preds = %for.inc15.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

for.inc15.3:                                      ; preds = %for.inc15.2
  %and.4 = and i64 %id, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.4)
  %tobool.not.4 = icmp eq i64 %and.4, 0
  br i1 %tobool.not.4, label %for.inc15.4, label %for.inc15.3.if.end21_crit_edge

for.inc15.3.if.end21_crit_edge:                   ; preds = %for.inc15.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

for.inc15.4:                                      ; preds = %for.inc15.3
  %and.5 = and i64 %id, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.5)
  %tobool.not.5 = icmp eq i64 %and.5, 0
  br i1 %tobool.not.5, label %for.inc15.4.cleanup_crit_edge, label %for.inc15.4.if.end21_crit_edge

for.inc15.4.if.end21_crit_edge:                   ; preds = %for.inc15.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

for.inc15.4.cleanup_crit_edge:                    ; preds = %for.inc15.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21.fold.split:                              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21.fold.split46:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21.fold.split47:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21.fold.split48:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21.fold.split49:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21:                                         ; preds = %if.end21.fold.split49, %if.end21.fold.split48, %if.end21.fold.split47, %if.end21.fold.split46, %if.end21.fold.split, %for.inc15.4.if.end21_crit_edge, %for.inc15.3.if.end21_crit_edge, %for.inc15.2.if.end21_crit_edge, %for.inc15.1.if.end21_crit_edge, %for.inc15.if.end21_crit_edge, %for.body10.preheader.if.end21_crit_edge, %for.body.preheader.if.end21_crit_edge
  %i.237 = phi i32 [ 0, %for.body10.preheader.if.end21_crit_edge ], [ 1, %for.inc15.if.end21_crit_edge ], [ 2, %for.inc15.1.if.end21_crit_edge ], [ 3, %for.inc15.2.if.end21_crit_edge ], [ 4, %for.inc15.3.if.end21_crit_edge ], [ 5, %for.inc15.4.if.end21_crit_edge ], [ 0, %for.body.preheader.if.end21_crit_edge ], [ 1, %if.end21.fold.split ], [ 2, %if.end21.fold.split46 ], [ 3, %if.end21.fold.split47 ], [ 4, %if.end21.fold.split48 ], [ 5, %if.end21.fold.split49 ]
  %arrayidx22 = getelementptr [6 x %struct.tw68_tvnorm], ptr @tvnorms, i32 0, i32 %i.237
  %tvnorm.i = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %tvnorm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tvnorm.i, align 8
  %cmp.not.i = icmp eq ptr %5, %arrayidx22
  br i1 %cmp.not.i, label %if.end21.cleanup_crit_edge, label %if.then.i

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %width.i = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 720, ptr %width.i, align 8
  %7 = lshr i32 21, %i.237
  %8 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.not = icmp eq i32 %8, 0
  %cond.i = select i1 %tobool.not.i.not, i32 480, i32 576
  %height.i = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond.i, ptr %height.i, align 4
  %10 = ptrtoint ptr %tvnorm.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx22, ptr %tvnorm.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %bmmio.i.i = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %bmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bmmio.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 624
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %14 = and i8 %13, -8
  %15 = ptrtoint ptr %tvnorm.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tvnorm.i, align 8
  %format.i.i = getelementptr inbounds %struct.tw68_tvnorm, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %format.i.i, align 8
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 7
  %conv3.i.i = or i8 %20, %14
  %21 = ptrtoint ptr %bmmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bmmio.i.i, align 8
  %add.ptr5.i.i = getelementptr i8, ptr %22, i32 624
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i, i8 %conv3.i.i) #8, !srcloc !123
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end21.cleanup_crit_edge, %for.inc15.4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %if.then.i ], [ -22, %for.inc15.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw68_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp ugt i32 %3, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.32, i32 noundef %3)
  %input = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 23
  %5 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %6)
  %cmp3 = icmp eq i32 %3, %6
  br i1 %cmp3, label %if.then4, label %if.end.if.end47_crit_edge

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then4:                                         ; preds = %if.end
  %bmmio = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 516
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %conv = zext i8 %9 to i32
  %10 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bmmio, align 8
  %add.ptr10 = getelementptr i8, ptr %11, i32 704
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr10) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp15.not = icmp eq i32 %and, 0
  br i1 %cmp15.not, label %if.then4.if.end18_crit_edge, label %if.then17

if.then4.if.end18_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %status = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 6
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 8
  %or = or i32 %14, 65536
  store i32 %or, ptr %status, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.then4.if.end18_crit_edge
  %and19 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20.not = icmp eq i32 %and19, 0
  br i1 %cmp20.not, label %if.end18.if.end25_crit_edge, label %if.then22

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %status23 = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 6
  %15 = ptrtoint ptr %status23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status23, align 8
  %or24 = or i32 %16, 256
  store i32 %or24, ptr %status23, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end18.if.end25_crit_edge
  %and26 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %cmp27.not = icmp eq i32 %and26, 0
  br i1 %cmp27.not, label %if.end25.if.end32_crit_edge, label %if.then29

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %status30 = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 6
  %17 = ptrtoint ptr %status30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status30, align 8
  %or31 = or i32 %18, 2
  store i32 %or31, ptr %status30, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end25.if.end32_crit_edge
  %and33 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %cmp34.not = icmp eq i32 %and33, 0
  br i1 %cmp34.not, label %if.end32.if.end39_crit_edge, label %if.then36

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %status37 = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 6
  %19 = ptrtoint ptr %status37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status37, align 8
  %or38 = or i32 %20, 4
  store i32 %or38, ptr %status37, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end32.if.end39_crit_edge
  %21 = and i8 %12, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp41.not = icmp eq i8 %21, 0
  br i1 %cmp41.not, label %if.end39.if.end47_crit_edge, label %if.then43

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %status44 = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 6
  %22 = ptrtoint ptr %status44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status44, align 8
  %or45 = or i32 %23, 16777216
  store i32 %or45, ptr %status44, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end39.if.end47_crit_edge, %if.end.if.end47_crit_edge
  %call48 = tail call ptr @video_devdata(ptr noundef %file) #8
  %tvnorms = getelementptr inbounds %struct.video_device, ptr %call48, i32 0, i32 22
  %24 = ptrtoint ptr %tvnorms to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tvnorms, align 8
  %std = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 5
  %26 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw68_g_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw68_s_input(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i)
  %cmp = icmp ugt i32 %i, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %i, ptr %input, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %bmmio = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 520
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  %6 = and i8 %5, -13
  %7 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %input, align 4
  %.tr = trunc i32 %8 to i8
  %9 = shl i8 %.tr, 2
  %10 = and i8 %9, 12
  %conv5 = or i8 %10, %6
  %11 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bmmio, align 8
  %add.ptr7 = getelementptr i8, ptr %12, i32 520
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7, i8 %conv5) #8, !srcloc !123
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_log_status(ptr noundef %file, ptr noundef %priv) #0 align 64 {
entry:
  %line.i = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %line.i) #8
  %2 = call ptr @memset(ptr %line.i, i32 255, i32 80)
  %call.i3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #11
  %lmmio.i = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 11
  br label %for.end28.i

while.body.lr.ph.i:                               ; preds = %for.end28.i
  %bmmio.i = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 12
  br label %while.body.i

for.end28.i:                                      ; preds = %for.end28.i.for.end28.i_crit_edge, %entry
  %i.0114.i = phi i32 [ 0, %entry ], [ %add13.i, %for.end28.i.for.end28.i_crit_edge ]
  %call1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %line.i, ptr noundef nonnull @.str.35, i32 noundef %i.0114.i) #8
  %add.ptr.i = getelementptr i8, ptr %line.i, i32 %call1.i
  %3 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lmmio.i, align 4
  %5 = lshr exact i32 %i.0114.i, 2
  %add.ptr5.i = getelementptr i32, ptr %4, i32 %5
  %6 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !112
  %7 = call i32 @llvm.bswap.i32(i32 %6) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  %call9.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.36, i32 noundef %7) #8
  %add.ptr10.i = getelementptr i8, ptr %add.ptr.i, i32 %call9.i
  %8 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio.i, align 4
  %10 = or i32 %5, 1
  %add.ptr5.1.i = getelementptr i32, ptr %9, i32 %10
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.1.i) #8, !srcloc !112
  %12 = call i32 @llvm.bswap.i32(i32 %11) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  %call9.1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr10.i, ptr noundef nonnull @.str.36, i32 noundef %12) #8
  %add.ptr10.1.i = getelementptr i8, ptr %add.ptr10.i, i32 %call9.1.i
  %13 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio.i, align 4
  %15 = or i32 %5, 2
  %add.ptr5.2.i = getelementptr i32, ptr %14, i32 %15
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.2.i) #8, !srcloc !112
  %17 = call i32 @llvm.bswap.i32(i32 %16) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  %call9.2.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr10.1.i, ptr noundef nonnull @.str.36, i32 noundef %17) #8
  %add.ptr10.2.i = getelementptr i8, ptr %add.ptr10.1.i, i32 %call9.2.i
  %18 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio.i, align 4
  %20 = or i32 %5, 3
  %add.ptr5.3.i = getelementptr i32, ptr %19, i32 %20
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.3.i) #8, !srcloc !112
  %22 = call i32 @llvm.bswap.i32(i32 %21) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  %call9.3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr10.2.i, ptr noundef nonnull @.str.36, i32 noundef %22) #8
  %add.ptr10.3.i = getelementptr i8, ptr %add.ptr10.2.i, i32 %call9.3.i
  %23 = ptrtoint ptr %add.ptr10.3.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 32, ptr %add.ptr10.3.i, align 1
  %add13.i = add nuw nsw i32 %i.0114.i, 32
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr10.3.i, i32 1
  %24 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio.i, align 4
  %26 = or i32 %5, 4
  %add.ptr20.i = getelementptr i32, ptr %25, i32 %26
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #8, !srcloc !112
  %28 = call i32 @llvm.bswap.i32(i32 %27) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %call24.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %incdec.ptr.i, ptr noundef nonnull @.str.36, i32 noundef %28) #8
  %add.ptr25.i = getelementptr i8, ptr %incdec.ptr.i, i32 %call24.i
  %29 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lmmio.i, align 4
  %31 = or i32 %5, 5
  %add.ptr20.1.i = getelementptr i32, ptr %30, i32 %31
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.1.i) #8, !srcloc !112
  %33 = call i32 @llvm.bswap.i32(i32 %32) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %call24.1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr25.i, ptr noundef nonnull @.str.36, i32 noundef %33) #8
  %add.ptr25.1.i = getelementptr i8, ptr %add.ptr25.i, i32 %call24.1.i
  %34 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lmmio.i, align 4
  %36 = or i32 %5, 6
  %add.ptr20.2.i = getelementptr i32, ptr %35, i32 %36
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.2.i) #8, !srcloc !112
  %38 = call i32 @llvm.bswap.i32(i32 %37) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %call24.2.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr25.1.i, ptr noundef nonnull @.str.36, i32 noundef %38) #8
  %add.ptr25.2.i = getelementptr i8, ptr %add.ptr25.1.i, i32 %call24.2.i
  %39 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lmmio.i, align 4
  %41 = or i32 %5, 7
  %add.ptr20.3.i = getelementptr i32, ptr %40, i32 %41
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.3.i) #8, !srcloc !112
  %43 = call i32 @llvm.bswap.i32(i32 %42) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  %call24.3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr25.2.i, ptr noundef nonnull @.str.36, i32 noundef %43) #8
  %add.ptr25.3.i = getelementptr i8, ptr %add.ptr25.2.i, i32 %call24.3.i
  %incdec.ptr29.i = getelementptr i8, ptr %add.ptr25.3.i, i32 1
  %44 = ptrtoint ptr %add.ptr25.3.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 10, ptr %add.ptr25.3.i, align 1
  %45 = ptrtoint ptr %incdec.ptr29.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %incdec.ptr29.i, align 1
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull %line.i) #11
  %cmp.i = icmp ult i32 %i.0114.i, 224
  br i1 %cmp.i, label %for.end28.i.for.end28.i_crit_edge, label %while.body.lr.ph.i

for.end28.i.for.end28.i_crit_edge:                ; preds = %for.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end28.i

while.body.i:                                     ; preds = %for.end63.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %i.1123.i = phi i32 [ 256, %while.body.lr.ph.i ], [ %add57.3.i, %for.end63.i.while.body.i_crit_edge ]
  %call41.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %line.i, ptr noundef nonnull @.str.40, i32 noundef %i.1123.i) #8
  %add.ptr42.i = getelementptr i8, ptr %line.i, i32 %call41.i
  br label %for.cond46.preheader.i

for.cond46.preheader.i:                           ; preds = %for.cond46.preheader.i.for.cond46.preheader.i_crit_edge, %while.body.i
  %i.2121.i = phi i32 [ %i.1123.i, %while.body.i ], [ %add57.3.i, %for.cond46.preheader.i.for.cond46.preheader.i_crit_edge ]
  %j.2120.i = phi i32 [ 0, %while.body.i ], [ %inc62.i, %for.cond46.preheader.i.for.cond46.preheader.i_crit_edge ]
  %cptr.2119.i = phi ptr [ %add.ptr42.i, %while.body.i ], [ %incdec.ptr60.i, %for.cond46.preheader.i.for.cond46.preheader.i_crit_edge ]
  %46 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bmmio.i, align 8
  %add.ptr51.i = getelementptr i8, ptr %47, i32 %i.2121.i
  %48 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr51.i) #8, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %conv.i = zext i8 %48 to i32
  %call55.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %cptr.2119.i, ptr noundef nonnull @.str.41, i32 noundef %conv.i) #8
  %add.ptr56.i = getelementptr i8, ptr %cptr.2119.i, i32 %call55.i
  %add57.i = add i32 %i.2121.i, 4
  %49 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bmmio.i, align 8
  %add.ptr51.1.i = getelementptr i8, ptr %50, i32 %add57.i
  %51 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr51.1.i) #8, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %conv.1.i = zext i8 %51 to i32
  %call55.1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr56.i, ptr noundef nonnull @.str.41, i32 noundef %conv.1.i) #8
  %add.ptr56.1.i = getelementptr i8, ptr %add.ptr56.i, i32 %call55.1.i
  %add57.1.i = add i32 %i.2121.i, 8
  %52 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bmmio.i, align 8
  %add.ptr51.2.i = getelementptr i8, ptr %53, i32 %add57.1.i
  %54 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr51.2.i) #8, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %conv.2.i = zext i8 %54 to i32
  %call55.2.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr56.1.i, ptr noundef nonnull @.str.41, i32 noundef %conv.2.i) #8
  %add.ptr56.2.i = getelementptr i8, ptr %add.ptr56.1.i, i32 %call55.2.i
  %add57.2.i = add i32 %i.2121.i, 12
  %55 = ptrtoint ptr %bmmio.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bmmio.i, align 8
  %add.ptr51.3.i = getelementptr i8, ptr %56, i32 %add57.2.i
  %57 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr51.3.i) #8, !srcloc !132
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %conv.3.i = zext i8 %57 to i32
  %call55.3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr56.2.i, ptr noundef nonnull @.str.41, i32 noundef %conv.3.i) #8
  %add.ptr56.3.i = getelementptr i8, ptr %add.ptr56.2.i, i32 %call55.3.i
  %add57.3.i = add i32 %i.2121.i, 16
  %incdec.ptr60.i = getelementptr i8, ptr %add.ptr56.3.i, i32 1
  %58 = ptrtoint ptr %add.ptr56.3.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 32, ptr %add.ptr56.3.i, align 1
  %inc62.i = add nuw nsw i32 %j.2120.i, 1
  %exitcond.not.i = icmp eq i32 %inc62.i, 4
  br i1 %exitcond.not.i, label %for.end63.i, label %for.cond46.preheader.i.for.cond46.preheader.i_crit_edge

for.cond46.preheader.i.for.cond46.preheader.i_crit_edge: ; preds = %for.cond46.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond46.preheader.i

for.end63.i:                                      ; preds = %for.cond46.preheader.i
  %incdec.ptr64.i = getelementptr i8, ptr %incdec.ptr60.i, i32 1
  %59 = ptrtoint ptr %incdec.ptr60.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 10, ptr %incdec.ptr60.i, align 1
  %60 = ptrtoint ptr %incdec.ptr64.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %incdec.ptr64.i, align 1
  %call70.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull %line.i) #11
  %cmp39.i = icmp slt i32 %add57.3.i, 1024
  br i1 %cmp39.i, label %for.end63.i.while.body.i_crit_edge, label %tw68_dump_regs.exit

for.end63.i.while.body.i_crit_edge:               ; preds = %for.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

tw68_dump_regs.exit:                              ; preds = %for.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %line.i) #8
  %call1 = call i32 @v4l2_ctrl_log_status(ptr noundef %file, ptr noundef %priv) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_register(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bmmio = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmmio, align 8
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %6 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %reg1, align 1
  %idx.ext = trunc i64 %7 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %idx.ext
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  %conv = zext i8 %8 to i64
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lmmio = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio, align 4
  %reg6 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %11 = ptrtoint ptr %reg6 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %reg6, align 1
  %shr = lshr i64 %12, 2
  %idx.ext7 = trunc i64 %shr to i32
  %add.ptr8 = getelementptr i32, ptr %10, i32 %idx.ext7
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !112
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %conv12 = zext i32 %14 to i64
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv12.sink = phi i64 [ %conv, %if.then ], [ %conv12, %if.else ]
  %15 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %conv12.sink, ptr %15, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_register(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %val, align 1
  br i1 %cmp, label %do.body, label %do.body2

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i64 %5 to i8
  %bmmio = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmmio, align 8
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %8 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %reg1, align 1
  %idx.ext = trunc i64 %9 to i32
  %add.ptr = getelementptr i8, ptr %7, i32 %idx.ext
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #8, !srcloc !123
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv6 = trunc i64 %5 to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv6)
  %lmmio = getelementptr inbounds %struct.tw68_dev, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio, align 4
  %reg7 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %13 = ptrtoint ptr %reg7 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %reg7, align 1
  %15 = trunc i64 %14 to i32
  %16 = lshr i32 %15, 2
  %idx.ext8 = and i32 %16, 16383
  %add.ptr9 = getelementptr i32, ptr %12, i32 %idx.ext8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %10) #8, !srcloc !114
  br label %if.end

if.end:                                           ; preds = %do.body2, %do.body
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !32, !34, !35, !36, !37, !38, !40, !41, !43, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !89, !91, !93, !94, !95, !97, !99, !101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @tw68_video_init1._key, !1, !"_key", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 911, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 999, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tw68_irq_video_done.__UNIQUE_ID_ddebug305, !4, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 1001, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @tw68_irq_video_done._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @tw68_irq_video_done._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 1003, i32 3}
!17 = !{ptr @tw68_irq_video_done._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @tw68_irq_video_done._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 1009, i32 3}
!21 = !{ptr @tw68_irq_video_done.__UNIQUE_ID_ddebug306, !20, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 1014, i32 3}
!24 = !{ptr @tw68_irq_video_done.__UNIQUE_ID_ddebug307, !23, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 1018, i32 3}
!27 = !{ptr @tw68_irq_video_done.__UNIQUE_ID_ddebug308, !26, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 262, i32 2}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @tw68_set_scale.__UNIQUE_ID_ddebug300, !29, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 287, i32 2}
!34 = !{ptr @tw68_set_scale.__UNIQUE_ID_ddebug301, !33, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!35 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 292, i32 2}
!40 = !{ptr @tw68_set_scale.__UNIQUE_ID_ddebug302, !39, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 300, i32 2}
!43 = !{ptr @tw68_set_scale.__UNIQUE_ID_ddebug303, !42, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 309, i32 2}
!46 = !{ptr @tw68_set_scale.__UNIQUE_ID_ddebug304, !45, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!47 = !{ptr @tw68_ctrl_ops, !48, !"tw68_ctrl_ops", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 849, i32 35}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 112, i32 12}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 124, i32 12}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 136, i32 12}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 148, i32 12}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 160, i32 12}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 172, i32 12}
!61 = !{ptr @tvnorms, !62, !"tvnorms", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 110, i32 33}
!63 = !{ptr @formats, !64, !"formats", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 35, i32 33}
!65 = !{ptr @tw68_video_qops, !66, !"tw68_video_qops", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 517, i32 29}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!69 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @tw68_video_template, !71, !"tw68_video_template", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 890, i32 34}
!72 = !{ptr @video_fops, !73, !"video_fops", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 853, i32 42}
!74 = !{ptr @video_ioctl_ops, !75, !"video_ioctl_ops", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 863, i32 36}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 718, i32 21}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 720, i32 25}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 671, i32 37}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 781, i32 2}
!84 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @tw68_dump_regs._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @tw68_dump_regs._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 785, i32 25}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 788, i32 26}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 794, i32 3}
!93 = !{ptr @tw68_dump_regs._entry.37, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @tw68_dump_regs._entry_ptr.39, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 799, i32 25}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 803, i32 27}
!99 = !{ptr @tw68_dump_regs._entry.42, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/media/pci/tw68/tw68-video.c", i32 811, i32 3}
!101 = !{ptr @tw68_dump_regs._entry_ptr.43, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i64 2156757748}
!112 = !{i64 7169426}
!113 = !{i64 2156758731}
!114 = !{i64 7169008}
!115 = !{i64 2156759059}
!116 = !{i64 2156759594}
!117 = !{i64 2156761113}
!118 = !{i64 2156762212}
!119 = !{i64 2156763669}
!120 = !{i64 2156764794}
!121 = !{i64 2148979913, i64 2148979918, i64 2148979931, i64 2148979975, i64 2148980009, i64 2148980030}
!122 = !{i64 2156751360}
!123 = !{i64 7168811}
!124 = !{i64 2156751718}
!125 = !{i64 2156752087}
!126 = !{i64 2156752455}
!127 = !{i64 2156752824}
!128 = !{i64 2156755839}
!129 = !{i64 2156756183}
!130 = !{i64 2156756529}
!131 = !{i64 2156800168}
!132 = !{i64 7169206}
!133 = !{i64 2156800349}
!134 = !{i64 2156801630}
!135 = !{i64 2156811328}
!136 = !{i64 2156812491}
!137 = !{i64 2156813474}
!138 = !{i64 2156816965}
!139 = !{i64 2156818012}
!140 = !{i64 2156780747}
!141 = !{i64 2156781162}
!142 = !{i64 2156781577}
!143 = !{i64 2156781992}
!144 = !{i64 2156782347}
!145 = !{!"branch_weights", i32 2000, i32 1}
!146 = !{i64 2156776854}
!147 = !{i64 2156777859}
!148 = !{i64 2156787378}
!149 = !{i64 2156787658}
!150 = !{i64 2156788549}
!151 = !{i64 2156788730}
!152 = !{i64 2156792773}
!153 = !{i64 2156793326}
!154 = !{i64 2156794950}
!155 = !{i64 2156796595}
!156 = !{i64 2156797183}
