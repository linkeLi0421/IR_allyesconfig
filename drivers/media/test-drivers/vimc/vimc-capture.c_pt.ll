; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vimc/vimc-capture.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vimc/vimc-capture.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vimc_ent_type = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.83, i32, i32 }
%union.anon.83 = type { i32 }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vimc_device = type { ptr, ptr, %struct.media_device, %struct.v4l2_device }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vimc_cap_device = type { %struct.vimc_ent_device, %struct.video_device, %struct.v4l2_pix_format, %struct.vb2_queue, %struct.list_head, %struct.spinlock, %struct.mutex, i32, %struct.vimc_stream, %struct.media_pad }
%struct.vimc_ent_device = type { ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vimc_stream = type { %struct.media_pipeline, [16 x ptr], i32, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vimc_pix_map = type { [8 x i32], i32, i32, i8 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.87, i32 }
%union.anon.87 = type { i32 }
%struct.vimc_cap_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.89, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.89 = type { i8 }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.104, [2 x i32] }
%union.anon.104 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }

@vimc_cap_type = dso_local global { %struct.vimc_ent_type, [20 x i8] } { %struct.vimc_ent_type { ptr @vimc_cap_add, ptr @vimc_cap_unregister, ptr @vimc_cap_release }, [20 x i8] zeroinitializer }, align 32
@vimc_cap_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&vcap->lock\00", [20 x i8] zeroinitializer }, align 32
@vimc_cap_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @vimc_cap_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @vimc_cap_buffer_prepare, ptr null, ptr null, ptr @vimc_cap_start_streaming, ptr @vimc_cap_stop_streaming, ptr @vimc_cap_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vimc_cap_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 438, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: vb2 queue init failed (err=%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vimc_cap_add\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/media/test-drivers/vimc/vimc-capture.c\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vimc_cap_add._entry_ptr = internal global ptr @vimc_cap_add._entry, section ".printk_index", align 4
@vimc_cap_add.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&vcap->qlock\00", [19 x i8] zeroinitializer }, align 32
@fmt_default = internal constant { %struct.v4l2_pix_format, [48 x i8] } { %struct.v4l2_pix_format { i32 640, i32 480, i32 859981650, i32 1, i32 0, i32 0, i32 8, i32 0, i32 0, %union.anon.83 zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@vimc_cap_mops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @vimc_vdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@vimc_cap_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@vimc_cap_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vimc_cap_querycap, ptr @vimc_cap_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vimc_cap_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vimc_cap_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vimc_cap_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vimc_cap_enum_framesizes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@vimc_cap_add._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 478, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: video register failed (err=%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@vimc_cap_add._entry_ptr.10 = internal global ptr @vimc_cap_add._entry.8, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vimc_cap_buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 316, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: buffer too small (%lu < %lu)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vimc_cap_buffer_prepare\00", [40 x i8] zeroinitializer }, align 32
@vimc_cap_buffer_prepare._entry_ptr = internal global ptr @vimc_cap_buffer_prepare._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vimc\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@vimc_cap_s_fmt_vid_cap.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vimc_cap_s_fmt_vid_cap\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"%s: format update: old:%dx%d (0x%x, %d, %d, %d, %d) new:%dx%d (0x%x, %d, %d, %d, %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"vimc_cap_type\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 492, i32 22 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 421, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"vimc_cap_qops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 322, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 437, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 444, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"fmt_default\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 35, i32 37 }
@___asan_gen_.57 = private unnamed_addr constant [14 x i8] c"vimc_cap_mops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 336, i32 45 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"vimc_cap_fops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 195, i32 42 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"vimc_cap_ioctl_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 205, i32 36 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 477, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 315, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 1163, i32 7 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 57, i32 23 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 60, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [50 x i8] c"../drivers/media/test-drivers/vimc/vimc-capture.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 130, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @vimc_cap_add._entry, ptr @vimc_cap_add._entry.8, ptr @vimc_cap_add._entry_ptr, ptr @vimc_cap_add._entry_ptr.10, ptr @vimc_cap_buffer_prepare._entry, ptr @vimc_cap_buffer_prepare._entry_ptr, ptr @vimc_cap_type, ptr @vimc_cap_add.__key, ptr @.str, ptr @vimc_cap_qops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @vimc_cap_add.__key.6, ptr @.str.7, ptr @fmt_default, ptr @vimc_cap_mops, ptr @vimc_cap_fops, ptr @vimc_cap_ioctl_ops, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_cap_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_cap_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_cap_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_cap_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_cap_add.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmt_default to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_cap_mops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_cap_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_cap_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_cap_add._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vimc_cap_buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vimc_cap_add(ptr noundef %vimc, ptr noundef %vcfg_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev1 = getelementptr inbounds %struct.vimc_device, ptr %vimc, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2328) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vdev3 = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 1
  %name = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %vcfg_name, ptr %name, align 8
  %function = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 65537, ptr %function, align 8
  %pad = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 9
  %flags = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 9, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %flags, align 8
  %call9 = tail call i32 @media_entity_pads_init(ptr noundef %vdev3, i16 noundef zeroext 1, ptr noundef %pad) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body, label %if.end.err_free_vcap_crit_edge

if.end.err_free_vcap_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_vcap

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @vimc_cap_add.__key) #8
  %queue = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %queue, align 8
  %io_modes = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 19, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 3, i32 10
  %6 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %drv_priv, align 8
  %buf_struct_size = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 3, i32 12
  %7 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 744, ptr %buf_struct_size, align 8
  %ops = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 3, i32 7
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @vimc_cap_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 8
  %timestamp_flags = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 3, i32 13
  %10 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8192, ptr %timestamp_flags, align 4
  %min_buffers_needed = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 3, i32 15
  %11 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %min_buffers_needed, align 4
  %lock14 = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 3, i32 5
  %12 = ptrtoint ptr %lock14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %lock, ptr %lock14, align 4
  %call15 = tail call i32 @vb2_queue_init(ptr noundef %queue) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end21, label %do.end20

do.end20:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %mdev = getelementptr inbounds %struct.vimc_device, ptr %vimc, i32 0, i32 2
  %13 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef %vcfg_name, i32 noundef %call15) #12
  br label %err_free_vcap

if.end21:                                         ; preds = %do.body
  %buf_list = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %buf_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %buf_list, ptr %buf_list, align 8
  %prev.i = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf_list, ptr %prev.i, align 4
  %qlock = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %qlock, ptr noundef nonnull @.str.7, ptr noundef nonnull @vimc_cap_add.__key.6, i16 noundef signext 3) #8
  %format = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 2
  %17 = call ptr @memcpy(ptr %format, ptr @fmt_default, i32 48)
  %call27 = tail call ptr @vimc_pix_map_by_pixelformat(i32 noundef 859981650) #8
  %18 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %format, align 8
  %bpp = getelementptr inbounds %struct.vimc_pix_map, ptr %call27, i32 0, i32 1
  %20 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bpp, align 4
  %mul = mul i32 %21, %19
  %bytesperline = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul, ptr %bytesperline, align 8
  %height = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height, align 4
  %mul33 = mul i32 %24, %mul
  %sizeimage = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 2, i32 5
  %25 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul33, ptr %sizeimage, align 4
  %ent = getelementptr inbounds %struct.vimc_ent_device, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %ent to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %vdev3, ptr %ent, align 4
  %process_frame = getelementptr inbounds %struct.vimc_ent_device, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %process_frame to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @vimc_cap_process_frame, ptr %process_frame, align 8
  %vdev_get_format = getelementptr inbounds %struct.vimc_ent_device, ptr %call7.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %vdev_get_format to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @vimc_cap_get_format, ptr %vdev_get_format, align 4
  %mdev39 = getelementptr inbounds %struct.vimc_device, ptr %vimc, i32 0, i32 2
  %29 = ptrtoint ptr %mdev39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mdev39, align 8
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %call7.i.i, align 8
  %device_caps = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 603979777, ptr %device_caps, align 8
  %ops45 = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 11
  %33 = ptrtoint ptr %ops45 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @vimc_cap_mops, ptr %ops45, align 8
  %release = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 1, i32 23
  %34 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @video_device_release_empty, ptr %release, align 8
  %fops = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 1, i32 3
  %35 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @vimc_cap_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 1, i32 24
  %36 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @vimc_cap_ioctl_ops, ptr %ioctl_ops, align 4
  %lock47 = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 1, i32 26
  %37 = ptrtoint ptr %lock47 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %lock, ptr %lock47, align 8
  %queue48 = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 1, i32 10
  %38 = ptrtoint ptr %queue48 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %queue, ptr %queue48, align 8
  %v4l2_dev49 = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 1, i32 7
  %39 = ptrtoint ptr %v4l2_dev49 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %v4l2_dev1, ptr %v4l2_dev49, align 4
  %vfl_dir = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 1, i32 14
  %40 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %vfl_dir, align 4
  %name50 = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 1, i32 12
  %call51 = tail call i32 @strscpy(ptr noundef %name50, ptr noundef %vcfg_name, i32 noundef 32) #8
  %driver_data.i.i = getelementptr inbounds %struct.vimc_cap_device, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 8
  %41 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %42 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fops, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vdev3, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool54.not = icmp eq i32 %call.i, 0
  br i1 %tobool54.not, label %if.end21.cleanup_crit_edge, label %do.end58

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end58:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %mdev39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mdev39, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.9, ptr noundef %name50, i32 noundef %call.i) #12
  br label %err_free_vcap

err_free_vcap:                                    ; preds = %do.end58, %do.end20, %if.end.err_free_vcap_crit_edge
  %ret.1 = phi i32 [ %call9, %if.end.err_free_vcap_crit_edge ], [ %call15, %do.end20 ], [ %call.i, %do.end58 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %48 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free_vcap, %if.end21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %48, %err_free_vcap ], [ %call7.i.i, %if.end21.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vimc_cap_unregister(ptr noundef %ved) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.vimc_cap_device, ptr %ved, i32 0, i32 1
  tail call void @vb2_video_unregister_device(ptr noundef %vdev) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vimc_cap_release(ptr noundef %ved) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %ved) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vimc_pix_map_by_pixelformat(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vimc_cap_process_frame(ptr noundef %ved, ptr nocapture noundef readonly %frame) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %qlock = getelementptr inbounds %struct.vimc_cap_device, ptr %ved, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %qlock) #8
  %buf_list = getelementptr inbounds %struct.vimc_cap_device, ptr %ved, i32 0, i32 4
  %0 = ptrtoint ptr %buf_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %buf_list, align 4
  %cmp.not = icmp eq ptr %1, %buf_list
  %add.ptr5 = getelementptr i8, ptr %1, i32 -736
  %tobool.not41 = icmp eq ptr %add.ptr5, null
  %tobool.not = or i1 %cmp.not, %tobool.not41
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %qlock) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %qlock) #8
  %call.i = tail call i64 @ktime_get() #8
  %timestamp = getelementptr i8, ptr %1, i32 -712
  %10 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call.i, ptr %timestamp, align 8
  %sequence = getelementptr inbounds %struct.vimc_cap_device, ptr %ved, i32 0, i32 7
  %11 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sequence, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %sequence, align 8
  %sequence10 = getelementptr i8, ptr %1, i32 -272
  %13 = ptrtoint ptr %sequence10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %sequence10, align 8
  %field = getelementptr inbounds %struct.vimc_cap_device, ptr %ved, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %field, align 4
  %field12 = getelementptr i8, ptr %1, i32 -292
  %16 = ptrtoint ptr %field12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %field12, align 4
  %call15 = tail call ptr @vb2_plane_vaddr(ptr noundef nonnull %add.ptr5, i32 noundef 0) #8
  %sizeimage = getelementptr inbounds %struct.vimc_cap_device, ptr %ved, i32 0, i32 2, i32 5
  %17 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sizeimage, align 4
  %19 = call ptr @memcpy(ptr %call15, ptr %frame, i32 %18)
  %num_planes.i = getelementptr i8, ptr %1, i32 -720
  %20 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 0
  br i1 %cmp.not.i, label %list_del.exit.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

list_del.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %list_del.exit
  %22 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sizeimage, align 4
  %length.i = getelementptr i8, ptr %1, i32 -648
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp1.i = icmp ult i32 %25, %23
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !55

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1163, i32 noundef 9, ptr noundef null) #8
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %26 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %27, %if.then38.i ], [ %23, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr i8, ptr %1, i32 -652
  %28 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %list_del.exit.vb2_set_plane_payload.exit_crit_edge
  tail call void @vb2_buffer_done(ptr noundef nonnull %add.ptr5, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit, %if.then
  %retval.0 = phi ptr [ null, %vb2_set_plane_payload.exit ], [ inttoptr (i32 -11 to ptr), %if.then ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vimc_cap_get_format(ptr nocapture noundef readonly %ved, ptr nocapture noundef writeonly %fmt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.vimc_cap_device, ptr %ved, i32 0, i32 2
  %0 = call ptr @memcpy(ptr %fmt, ptr %format, i32 48)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vimc_cap_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizes, align 4
  %sizeimage = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ult i32 %5, %7
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %nplanes, align 4
  %sizeimage2 = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 2, i32 5
  %9 = ptrtoint ptr %sizeimage2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sizeimage2, align 4
  %11 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_cap_buffer_prepare(ptr nocapture noundef readonly %vb) #0 align 64 {
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
  %sizeimage = getelementptr inbounds %struct.vimc_cap_device, ptr %3, i32 0, i32 2, i32 5
  %4 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizeimage, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %vb2_plane_size.exit.cleanup_crit_edge, label %vb2_plane_size.exit.vb2_plane_size.exit14_crit_edge

vb2_plane_size.exit.vb2_plane_size.exit14_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_plane_size.exit14

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

vb2_plane_size.exit.thread:                       ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %5)
  %cmp16 = icmp ult i32 %9, %5
  br i1 %cmp16, label %if.then.i12, label %vb2_plane_size.exit.thread.cleanup_crit_edge

vb2_plane_size.exit.thread.cleanup_crit_edge:     ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i12:                                      ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit14

vb2_plane_size.exit14:                            ; preds = %if.then.i12, %vb2_plane_size.exit.vb2_plane_size.exit14_crit_edge
  %retval.0.i13 = phi i32 [ %11, %if.then.i12 ], [ 0, %vb2_plane_size.exit.vb2_plane_size.exit14_crit_edge ]
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %name19 = getelementptr inbounds %struct.vimc_cap_device, ptr %3, i32 0, i32 1, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.11, ptr noundef %name19, i32 noundef %retval.0.i13, i32 noundef %5) #12
  br label %cleanup

cleanup:                                          ; preds = %vb2_plane_size.exit14, %vb2_plane_size.exit.thread.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit14 ], [ 0, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %vb2_plane_size.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_cap_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %vdev = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 1
  %sequence = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sequence, align 8
  %stream = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 8
  %call2 = tail call i32 @media_pipeline_start(ptr noundef %vdev, ptr noundef %stream) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %qlock.i = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %qlock.i) #8
  %buf_list.i = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %buf_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf_list.i, align 8
  %cmp.not22.i = icmp eq ptr %4, %buf_list.i
  br i1 %cmp.not22.i, label %if.then.cleanup.sink.split_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn.in23.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %4, %if.then.for.body.i_crit_edge ]
  %vbuf.0.i = getelementptr i8, ptr %.pn.in23.i, i32 -736
  %5 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn.in23.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in23.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %.pn.in23.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in23.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %vbuf.0.i, i32 noundef 3) #8
  %cmp.not.i = icmp eq ptr %.pn.i, %buf_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.cleanup.sink.split_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

list_del.exit.i.cleanup.sink.split_crit_edge:     ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @vimc_streamer_s_stream(ptr noundef %stream, ptr noundef %1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.end
  tail call void @media_pipeline_stop(ptr noundef %vdev) #8
  %qlock.i20 = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %qlock.i20) #8
  %buf_list.i21 = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %buf_list.i21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf_list.i21, align 8
  %cmp.not22.i22 = icmp eq ptr %15, %buf_list.i21
  br i1 %cmp.not22.i22, label %if.then6.cleanup.sink.split_crit_edge, label %if.then6.for.body.i27_crit_edge

if.then6.for.body.i27_crit_edge:                  ; preds = %if.then6
  br label %for.body.i27

if.then6.cleanup.sink.split_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.body.i27:                                     ; preds = %list_del.exit.i33.for.body.i27_crit_edge, %if.then6.for.body.i27_crit_edge
  %.pn.in23.i23 = phi ptr [ %.pn.i25, %list_del.exit.i33.for.body.i27_crit_edge ], [ %15, %if.then6.for.body.i27_crit_edge ]
  %vbuf.0.i24 = getelementptr i8, ptr %.pn.in23.i23, i32 -736
  %16 = ptrtoint ptr %.pn.in23.i23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i25 = load ptr, ptr %.pn.in23.i23, align 8
  %call.i.i.i26 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in23.i23) #8
  br i1 %call.i.i.i26, label %if.end.i.i.i30, label %for.body.i27.list_del.exit.i33_crit_edge

for.body.i27.list_del.exit.i33_crit_edge:         ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i33

if.end.i.i.i30:                                   ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i28 = getelementptr inbounds %struct.list_head, ptr %.pn.in23.i23, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i28, align 4
  %19 = ptrtoint ptr %.pn.in23.i23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in23.i23, align 4
  %prev1.i.i.i.i29 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i29, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit.i33

list_del.exit.i33:                                ; preds = %if.end.i.i.i30, %for.body.i27.list_del.exit.i33_crit_edge
  %23 = ptrtoint ptr %.pn.in23.i23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in23.i23, align 4
  %prev.i.i31 = getelementptr inbounds %struct.list_head, ptr %.pn.in23.i23, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i31 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i31, align 4
  tail call void @vb2_buffer_done(ptr noundef %vbuf.0.i24, i32 noundef 3) #8
  %cmp.not.i32 = icmp eq ptr %.pn.i25, %buf_list.i21
  br i1 %cmp.not.i32, label %list_del.exit.i33.cleanup.sink.split_crit_edge, label %list_del.exit.i33.for.body.i27_crit_edge

list_del.exit.i33.for.body.i27_crit_edge:         ; preds = %list_del.exit.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i27

list_del.exit.i33.cleanup.sink.split_crit_edge:   ; preds = %list_del.exit.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %list_del.exit.i33.cleanup.sink.split_crit_edge, %if.then6.cleanup.sink.split_crit_edge, %list_del.exit.i.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %qlock.i20.sink = phi ptr [ %qlock.i, %if.then.cleanup.sink.split_crit_edge ], [ %qlock.i20, %if.then6.cleanup.sink.split_crit_edge ], [ %qlock.i20, %list_del.exit.i33.cleanup.sink.split_crit_edge ], [ %qlock.i, %list_del.exit.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call2, %if.then.cleanup.sink.split_crit_edge ], [ %call4, %if.then6.cleanup.sink.split_crit_edge ], [ %call4, %list_del.exit.i33.cleanup.sink.split_crit_edge ], [ %call2, %list_del.exit.i.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %qlock.i20.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vimc_cap_stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %stream = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 8
  %call1 = tail call i32 @vimc_streamer_s_stream(ptr noundef %stream, ptr noundef %1, i32 noundef 0) #8
  %vdev = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 1
  tail call void @media_pipeline_stop(ptr noundef %vdev) #8
  %qlock.i = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %qlock.i) #8
  %buf_list.i = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %buf_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf_list.i, align 8
  %cmp.not22.i = icmp eq ptr %3, %buf_list.i
  br i1 %cmp.not22.i, label %entry.vimc_cap_return_all_buffers.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.vimc_cap_return_all_buffers.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vimc_cap_return_all_buffers.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in23.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %vbuf.0.i = getelementptr i8, ptr %.pn.in23.i, i32 -736
  %4 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in23.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in23.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in23.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %.pn.in23.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in23.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %vbuf.0.i, i32 noundef 6) #8
  %cmp.not.i = icmp eq ptr %.pn.i, %buf_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.vimc_cap_return_all_buffers.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

list_del.exit.i.vimc_cap_return_all_buffers.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vimc_cap_return_all_buffers.exit

vimc_cap_return_all_buffers.exit:                 ; preds = %list_del.exit.i.vimc_cap_return_all_buffers.exit_crit_edge, %entry.vimc_cap_return_all_buffers.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %qlock.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vimc_cap_buf_queue(ptr noundef %vb2_buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb2_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb2_buf, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %qlock = getelementptr inbounds %struct.vimc_cap_device, ptr %3, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %qlock) #8
  %list = getelementptr inbounds %struct.vimc_cap_buffer, ptr %vb2_buf, i32 0, i32 1
  %buf_list = getelementptr inbounds %struct.vimc_cap_device, ptr %3, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.vimc_cap_device, ptr %3, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %buf_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.vimc_cap_buffer, ptr %vb2_buf, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %qlock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vimc_streamer_s_stream(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_pipeline_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vimc_vdev_link_validate(ptr noundef) #1

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
define internal i32 @vimc_cap_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.14, i32 noundef 16) #8
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.14, i32 noundef 32) #8
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_cap_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mbus_code = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 5
  %0 = ptrtoint ptr %mbus_code to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mbus_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @vimc_pix_map_by_code(i32 noundef %1) #8
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call ptr @vimc_pix_map_by_index(i32 noundef %3) #8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end
  %vpix.0 = phi ptr [ %call, %if.end ], [ %call4, %if.else ]
  %tobool6.not = icmp eq ptr %vpix.0, null
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %pixelformat = getelementptr inbounds %struct.vimc_pix_map, ptr %vpix.0, i32 0, i32 2
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat, align 4
  %pixelformat9 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %6 = ptrtoint ptr %pixelformat9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pixelformat9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_cap_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %format = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %fmt, ptr %format, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_cap_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 3, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @vimc_cap_try_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vimc_cap_s_fmt_vid_cap.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vimc_cap_s_fmt_vid_cap, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !56

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 1, i32 12
  %format = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format, align 8
  %height = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %pixelformat = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixelformat, align 8
  %colorspace = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 2, i32 6
  %12 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %colorspace, align 8
  %quantization = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 2, i32 10
  %14 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %quantization, align 8
  %xfer_func = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 2, i32 11
  %16 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xfer_func, align 4
  %18 = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 2, i32 9
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %21 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fmt, align 4
  %height18 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %height18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height18, align 4
  %pixelformat20 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %pixelformat20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pixelformat20, align 4
  %colorspace22 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %27 = ptrtoint ptr %colorspace22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %colorspace22, align 4
  %quantization24 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %quantization24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %quantization24, align 4
  %xfer_func26 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %31 = ptrtoint ptr %xfer_func26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %xfer_func26, align 4
  %33 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vimc_cap_s_fmt_vid_cap.__UNIQUE_ID_ddebug306, ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef %name, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %35) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end
  %format29 = getelementptr inbounds %struct.vimc_cap_device, ptr %1, i32 0, i32 2
  %fmt30 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %36 = call ptr @memcpy(ptr %format29, ptr %fmt30, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_cap_try_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  %2 = tail call i32 @llvm.umax.i32(i32 %1, i32 16)
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 4096)
  %and = and i32 %3, 8190
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %7 = tail call i32 @llvm.umax.i32(i32 %6, i32 16)
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 2160)
  %and20 = and i32 %8, 4094
  %9 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and20, ptr %height, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixelformat, align 4
  %call = tail call ptr @vimc_pix_map_by_pixelformat(i32 noundef %11) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 859981650, ptr %pixelformat, align 4
  %call24 = tail call ptr @vimc_pix_map_by_pixelformat(i32 noundef 859981650) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vpix.0 = phi ptr [ %call, %entry.if.end_crit_edge ], [ %call24, %if.then ]
  %13 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fmt, align 4
  %bpp = getelementptr inbounds %struct.vimc_pix_map, ptr %vpix.0, i32 0, i32 1
  %15 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bpp, align 4
  %mul = mul i32 %16, %14
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %17 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul, ptr %bytesperline, align 4
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %mul28 = mul i32 %19, %mul
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %20 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul28, ptr %sizeimage, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %21 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp29 = icmp eq i32 %22, 0
  br i1 %cmp29, label %if.then30, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %field, align 4
  br label %do.body

do.body:                                          ; preds = %if.then30, %if.end.do.body_crit_edge
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %24 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %colorspace, align 4
  %26 = add i32 %25, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %26)
  %27 = icmp ult i32 %26, -12
  br i1 %27, label %if.then36, label %do.body.if.end38_crit_edge

do.body.if.end38_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %colorspace, align 4
  %29 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %29, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %quantization to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %quantization, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %32 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %xfer_func, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %do.body.if.end38_crit_edge
  %33 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %35)
  %cmp39 = icmp ugt i32 %35, 8
  br i1 %cmp39, label %if.then40, label %if.end38.if.end41_crit_edge

if.end38.if.end41_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %33, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end38.if.end41_crit_edge
  %quantization42 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %quantization42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %quantization42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp43 = icmp ugt i32 %38, 2
  br i1 %cmp43, label %if.then44, label %if.end41.if.end46_crit_edge

if.end41.if.end46_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %quantization42 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %quantization42, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end41.if.end46_crit_edge
  %xfer_func47 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %40 = ptrtoint ptr %xfer_func47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %xfer_func47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %41)
  %cmp48 = icmp ugt i32 %41, 7
  br i1 %cmp48, label %if.then49, label %if.end46.do.end_crit_edge

if.end46.do.end_crit_edge:                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %xfer_func47 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %xfer_func47, align 4
  br label %do.end

do.end:                                           ; preds = %if.then49, %if.end46.do.end_crit_edge
  %43 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %colorspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp53 = icmp eq i32 %44, 0
  br i1 %cmp53, label %if.then54, label %do.end.if.end56_crit_edge

do.end.if.end56_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then54:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 8, ptr %colorspace, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %do.end.if.end56_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vimc_cap_enum_framesizes(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %fsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %2 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixel_format, align 4
  %call = tail call ptr @vimc_pix_map_by_code(i32 noundef %3) #8
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 4
  %5 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %5, align 4
  %max_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %7 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4096, ptr %max_width, align 4
  %min_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 3
  %8 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %min_height, align 4
  %max_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 4
  %9 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2160, ptr %max_height, align 4
  %step_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 2
  %10 = ptrtoint ptr %step_width to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %step_width, align 4
  %step_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 5
  %11 = ptrtoint ptr %step_height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %step_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vimc_pix_map_by_code(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vimc_pix_map_by_index(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !12, !13, !15, !16, !18, !19, !20, !22, !24, !25, !26, !27, !29, !31, !32, !34, !36, !38, !40, !42, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @vimc_cap_type, !1, !"vimc_cap_type", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vimc/vimc-capture.c", i32 492, i32 22}
!2 = !{ptr @vimc_cap_add.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vimc/vimc-capture.c", i32 421, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/test-drivers/vimc/vimc-capture.c", i32 437, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vimc_cap_add._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @vimc_cap_add._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @vimc_cap_add.__key.6, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/media/test-drivers/vimc/vimc-capture.c", i32 444, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/test-drivers/vimc/vimc-capture.c", i32 477, i32 3}
!18 = !{ptr @vimc_cap_add._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @vimc_cap_add._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @vimc_cap_qops, !21, !"vimc_cap_qops", i1 false, i1 false}
!21 = !{!"../drivers/media/test-drivers/vimc/vimc-capture.c", i32 322, i32 29}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/test-drivers/vimc/vimc-capture.c", i32 315, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @vimc_cap_buffer_prepare._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @vimc_cap_buffer_prepare._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @fmt_default, !28, !"fmt_default", i1 false, i1 false}
!28 = !{!"../drivers/media/test-drivers/vimc/vimc-capture.c", i32 35, i32 37}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @vimc_cap_mops, !33, !"vimc_cap_mops", i1 false, i1 false}
!33 = !{!"../drivers/media/test-drivers/vimc/vimc-capture.c", i32 336, i32 45}
!34 = !{ptr @vimc_cap_fops, !35, !"vimc_cap_fops", i1 false, i1 false}
!35 = !{!"../drivers/media/test-drivers/vimc/vimc-capture.c", i32 195, i32 42}
!36 = !{ptr @vimc_cap_ioctl_ops, !37, !"vimc_cap_ioctl_ops", i1 false, i1 false}
!37 = !{!"../drivers/media/test-drivers/vimc/vimc-capture.c", i32 205, i32 36}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/test-drivers/vimc/vimc-capture.c", i32 57, i32 23}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/test-drivers/vimc/vimc-capture.c", i32 60, i32 4}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/test-drivers/vimc/vimc-capture.c", i32 130, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @vimc_cap_s_fmt_vid_cap.__UNIQUE_ID_ddebug306, !43, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{i64 2148812347, i64 2148812352, i64 2148812365, i64 2148812409, i64 2148812443, i64 2148812464}
