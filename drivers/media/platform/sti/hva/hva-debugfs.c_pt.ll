; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sti/hva/hva-debugfs.c_pt.bc'
source_filename = "../drivers/media/platform/sti/hva/hva-debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hva_ctx = type { ptr, %struct.v4l2_fh, %struct.v4l2_ctrl_handler, %struct.hva_controls, i8, i8, [100 x i8], %struct.work_struct, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hva_streaminfo, %struct.hva_frameinfo, ptr, ptr, i8, i32, i32, i32, i32, %struct.hva_ctx_dbg }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hva_controls = type { %struct.v4l2_fract, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i8, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hva_streaminfo = type { i32, i32, i32, [32 x i8], [32 x i8] }
%struct.hva_frameinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.hva_ctx_dbg = type { ptr, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hva_dev = type { %struct.v4l2_device, ptr, ptr, ptr, %struct.mutex, ptr, [16 x ptr], i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, %struct.mutex, %struct.completion, i32, [10 x ptr], i32, [10 x i32], i32, [10 x i32], i32, i32, i32, i32, i32, i32, %struct.hva_dev_dbg }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hva_dev_dbg = type { ptr, %struct.hva_ctx }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.94, i32 }
%union.anon.94 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.95, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.96, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.97, ptr, %struct.address_space, %struct.list_head, %union.anon.98, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.95 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.96 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.97 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.98 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
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
%struct.hva_enc = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr }

@hva_dbg_perf_end.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"st_hva\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hva_dbg_perf_end\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/platform/sti/hva/hva-debugfs.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s perf stream[%d] dts=%d encoded using %d bytes in %d us\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"st-hva\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@device_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @device_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"encoders\00", [23 x i8] zeroinitializer }, align 32
@encoders_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @encoders_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"last\00", [27 x i8] zeroinitializer }, align 32
@last_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @last_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@regs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @regs_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@ctx_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ctx_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%s]\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"registered as /dev/video%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[encoders]\0A|- %d registered encoders:\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"|- %s: %4.4s => %4.4s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"[last encoding]\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[no information recorded about last encoding]\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"|-%s\0A  |\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  |-[%sframe info]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"default \00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"  | |- pixel format=%4.4s\0A  | |- wxh=%dx%d\0A  | |- wxh (w/ encoder alignment constraint)=%dx%d\0A  |\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  |-[%sstream info]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"  | |- stream format=%4.4s\0A  | |- wxh=%dx%d\0A  | |- %s\0A  | |- %s\0A  |\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  |-[parameters]\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"  | |- %s\0A  | |- bitrate=%d bps\0A  | |- GOP size=%d\0A  | |- video aspect=%s\0A  | |- framerate=%d/%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [208 x i8], [48 x i8] } { [208 x i8] c"  | |- %s entropy mode\0A  | |- CPB size=%d kB\0A  | |- DCT8x8 enable=%s\0A  | |- qpmin=%d\0A  | |- qpmax=%d\0A  | |- PAR enable=%s\0A  | |- PAR id=%s\0A  | |- SEI frame packing enable=%s\0A  | |- SEI frame packing type=%s\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  |\0A  |-[errors]\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"  | |- system=%d\0A  | |- encoding=%d\0A  | |- frame=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"  |\0A  |-[performances]\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [281 x i8], [71 x i8] } { [281 x i8] c"  | |- frames encoded=%d\0A  | |- avg HW processing duration (0.1ms)=%d [min=%d, max=%d]\0A  | |- avg encoding period (0.1ms)=%d [min=%d, max=%d]\0A  | |- avg fps (0.1Hz)=%d\0A  | |- max reachable fps (0.1Hz)=%d\0A  | |- avg bitrate (kbps)=%d [min=%d, max=%d]\0A  | |- last bitrate (kbps)=%d\0A\00", [71 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[running encoding %d]\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 194, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 339, i32 46 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 341, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"device_fops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 332, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 342, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [14 x i8] c"encoders_fops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 333, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 343, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [10 x i8] c"last_fops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 334, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 344, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [10 x i8] c"regs_fops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 335, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 380, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant [9 x i8] c"ctx_fops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 369, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 278, i32 16 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 279, i32 16 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 289, i32 16 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 293, i32 17 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 308, i32 15 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 313, i32 15 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 21, i32 16 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 23, i32 16 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 24, i32 40 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 24, i32 45 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 25, i32 16 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 33, i32 16 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 35, i32 16 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 46, i32 14 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 47, i32 16 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 63, i32 17 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 74, i32 26 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 74, i32 35 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 84, i32 15 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 85, i32 17 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 93, i32 14 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 94, i32 16 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [48 x i8] c"../drivers/media/platform/sti/hva/hva-debugfs.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 361, i32 16 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @device_fops, ptr @.str.6, ptr @encoders_fops, ptr @.str.7, ptr @last_fops, ptr @.str.8, ptr @regs_fops, ptr @.str.9, ptr @ctx_fops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encoders_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @last_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctx_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 281, i32 352, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hva_dbg_perf_begin(ptr nocapture noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %begin = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 2
  %0 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %begin, align 8
  %call = tail call i64 @ktime_get() #5
  %2 = ptrtoint ptr %begin to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call, ptr %begin, align 8
  %is_valid_period = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 1
  %3 = ptrtoint ptr %is_valid_period to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_valid_period, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end462_crit_edge, label %if.end186

entry.if.end462_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end462

if.end186:                                        ; preds = %entry
  %sub.i = sub i64 %call, %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %5 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #5
  %6 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %5, i32 0) #8, !srcloc !84
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %6, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %6, 1
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %5, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #8, !srcloc !85
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %7, 0
  %tmp.0.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %tmp.0.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %tmp.0.i.i.i
  %8 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %cond213.i.i.i, i32 0) #8, !srcloc !84
  %asmresult.i = extractvalue { i64, i32 } %8, 0
  %asmresult4.i = extractvalue { i64, i32 } %8, 1
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %cond213.i.i.i, i64 %asmresult.i, i32 %asmresult4.i) #8, !srcloc !85
  %asmresult10.i = extractvalue { i64, i32 } %9, 0
  %storemerge = lshr i64 %asmresult10.i, 6
  %conv188 = trunc i64 %storemerge to i32
  %min_period = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 11
  %10 = ptrtoint ptr %min_period to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_period, align 8
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %conv188)
  %13 = ptrtoint ptr %min_period to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %min_period, align 8
  %max_period = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 12
  %14 = ptrtoint ptr %max_period to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_period, align 4
  %16 = tail call i32 @llvm.umax.i32(i32 %15, i32 %conv188)
  %17 = ptrtoint ptr %max_period to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %max_period, align 4
  %total_period = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 9
  %18 = ptrtoint ptr %total_period to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %total_period, align 8
  %add205 = add i32 %19, %conv188
  store i32 %add205, ptr %total_period, align 8
  %cnt_period = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 10
  %20 = ptrtoint ptr %cnt_period to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cnt_period, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %cnt_period, align 4
  %window_duration = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 16
  %22 = ptrtoint ptr %window_duration to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %window_duration, align 4
  %add206 = add i32 %23, %conv188
  store i32 %add206, ptr %window_duration, align 4
  %cnt_window = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 17
  %24 = ptrtoint ptr %cnt_window to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cnt_window, align 8
  %inc207 = add i32 %25, 1
  store i32 %inc207, ptr %cnt_window, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %inc207)
  %cmp209 = icmp ugt i32 %inc207, 31
  br i1 %cmp209, label %if.then211, label %if.end186.if.end462_crit_edge

if.end186.if.end462_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end462

if.then211:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add206)
  %cmp213.not = icmp eq i32 %add206, 0
  br i1 %cmp213.not, label %if.then211.if.end457_crit_edge, label %if.then215

if.then211.if.end457_crit_edge:                   ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end457

if.then215:                                       ; preds = %if.then211
  %window_stream_size = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 18
  %26 = ptrtoint ptr %window_stream_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %window_stream_size, align 4
  %conv216 = zext i32 %27 to i64
  %mul217 = mul nuw nsw i64 %conv216, 80
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul217)
  %cmp420 = icmp ult i64 %mul217, 4294967296
  br i1 %cmp420, label %if.then428, label %if.else434, !prof !86

if.then428:                                       ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #7
  %conv429 = trunc i64 %mul217 to i32
  %div432 = udiv i32 %conv429, %add206
  br label %if.end438

if.else434:                                       ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #7
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add206, i64 %mul217) #8, !srcloc !87
  %asmresult1.i = extractvalue { i64, i64 } %28, 1
  %extract.t695 = trunc i64 %asmresult1.i to i32
  br label %if.end438

if.end438:                                        ; preds = %if.else434, %if.then428
  %div.0.off0 = phi i32 [ %div432, %if.then428 ], [ %extract.t695, %if.else434 ]
  %last_bitrate = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 19
  %29 = ptrtoint ptr %last_bitrate to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div.0.off0, ptr %last_bitrate, align 8
  %min_bitrate = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 20
  %30 = ptrtoint ptr %min_bitrate to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %min_bitrate, align 4
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 %div.0.off0)
  %33 = ptrtoint ptr %min_bitrate to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %min_bitrate, align 4
  %max_bitrate = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 21
  %34 = ptrtoint ptr %max_bitrate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_bitrate, align 8
  %36 = tail call i32 @llvm.umax.i32(i32 %35, i32 %div.0.off0)
  %37 = ptrtoint ptr %max_bitrate to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %max_bitrate, align 8
  br label %if.end457

if.end457:                                        ; preds = %if.end438, %if.then211.if.end457_crit_edge
  %window_stream_size458 = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 18
  %38 = ptrtoint ptr %window_stream_size458 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %window_stream_size458, align 4
  %39 = ptrtoint ptr %window_duration to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %window_duration, align 4
  %40 = ptrtoint ptr %cnt_window to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %cnt_window, align 8
  br label %if.end462

if.end462:                                        ; preds = %if.end457, %if.end186.if.end462_crit_edge, %entry.if.end462_crit_edge
  %41 = ptrtoint ptr %is_valid_period to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %is_valid_period, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hva_dbg_perf_end(ptr noundef %ctx, ptr nocapture noundef readonly %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %call = tail call i64 @ktime_get() #5
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %stream, i32 0, i32 4
  %4 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %entry.if.end186_crit_edge, label %if.then.i

entry.if.end186_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end186

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %stream, i32 0, i32 10, i32 0, i32 3
  %6 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bytesused.i, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.then.i, %entry.if.end186_crit_edge
  %retval.0.i632 = phi i32 [ %7, %if.then.i ], [ 0, %entry.if.end186_crit_edge ]
  %timestamp6 = getelementptr inbounds %struct.vb2_buffer, ptr %stream, i32 0, i32 5
  %8 = ptrtoint ptr %timestamp6 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %timestamp6, align 8
  %10 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %9, i32 0) #8, !srcloc !84
  %asmresult.i = extractvalue { i64, i32 } %10, 0
  %asmresult4.i = extractvalue { i64, i32 } %10, 1
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %9, i64 %asmresult.i, i32 %asmresult4.i) #8, !srcloc !85
  %begin = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 2
  %12 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %begin, align 8
  %sub.i = sub i64 %call, %13
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %14 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #5
  %15 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %14, i32 0) #8, !srcloc !84
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %15, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %15, 1
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %14, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #8, !srcloc !85
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %16, 0
  %tmp.0.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %tmp.0.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %tmp.0.i.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_dbg_perf_end.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_dbg_perf_end, %if.then199)) #5
          to label %if.end422 [label %if.then199], !srcloc !88

if.then199:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #7
  %asmresult10.i = extractvalue { i64, i32 } %11, 0
  %extract625 = lshr i64 %asmresult10.i, 9
  %extract.t626 = trunc i64 %extract625 to i32
  %name = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 6
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %stream, i32 0, i32 4
  %17 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sequence, align 8
  %conv201 = trunc i64 %cond213.i.i.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_dbg_perf_end.__UNIQUE_ID_ddebug306, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %18, i32 noundef %extract.t626, i32 noundef %retval.0.i632, i32 noundef %conv201) #5
  br label %if.end422

if.end422:                                        ; preds = %if.then199, %if.end186
  %19 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %cond213.i.i.i, i32 0) #8, !srcloc !84
  %asmresult.i633 = extractvalue { i64, i32 } %19, 0
  %asmresult4.i634 = extractvalue { i64, i32 } %19, 1
  %20 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %cond213.i.i.i, i64 %asmresult.i633, i32 %asmresult4.i634) #8, !srcloc !85
  %asmresult10.i635 = extractvalue { i64, i32 } %20, 0
  %extract630 = lshr i64 %asmresult10.i635, 6
  %extract.t631 = trunc i64 %extract630 to i32
  %min_duration = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 5
  %21 = ptrtoint ptr %min_duration to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %min_duration, align 8
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 %extract.t631)
  %24 = ptrtoint ptr %min_duration to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %min_duration, align 8
  %max_duration = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 6
  %25 = ptrtoint ptr %max_duration to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_duration, align 4
  %27 = tail call i32 @llvm.umax.i32(i32 %26, i32 %extract.t631)
  %28 = ptrtoint ptr %max_duration to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %max_duration, align 4
  %total_duration = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 3
  %29 = ptrtoint ptr %total_duration to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %total_duration, align 8
  %add441 = add i32 %30, %extract.t631
  store i32 %add441, ptr %total_duration, align 8
  %cnt_duration = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 4
  %31 = ptrtoint ptr %cnt_duration to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cnt_duration, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %cnt_duration, align 4
  %total_stream_size = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 14
  %33 = ptrtoint ptr %total_stream_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %total_stream_size, align 4
  %add442 = add i32 %34, %retval.0.i632
  store i32 %add442, ptr %total_stream_size, align 4
  %window_stream_size = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 18
  %35 = ptrtoint ptr %window_stream_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %window_stream_size, align 4
  %add443 = add i32 %36, %retval.0.i632
  store i32 %add443, ptr %window_stream_size, align 4
  %is_valid_period = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 1
  %37 = ptrtoint ptr %is_valid_period to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %is_valid_period, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hva_debugfs_create(ptr noundef %hva) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.4, ptr noundef null) #5
  %dbg = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 30
  %0 = ptrtoint ptr %dbg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %dbg, align 8
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %call, ptr noundef %hva, ptr noundef nonnull @device_fops) #5
  %1 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dbg, align 8
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %2, ptr noundef %hva, ptr noundef nonnull @encoders_fops) #5
  %3 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dbg, align 8
  %call9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef %4, ptr noundef %hva, ptr noundef nonnull @last_fops) #5
  %5 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dbg, align 8
  %call12 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 292, ptr noundef %6, ptr noundef %hva, ptr noundef nonnull @regs_fops) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hva_debugfs_remove(ptr nocapture noundef %hva) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 30
  %0 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg, align 8
  tail call void @debugfs_remove(ptr noundef %1) #5
  %2 = ptrtoint ptr %dbg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dbg, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hva_dbg_ctx_create(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #5
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %name, align 4
  %dbg = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26
  %min_duration = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 5
  %3 = ptrtoint ptr %min_duration to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %min_duration, align 8
  %min_period = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 11
  %4 = ptrtoint ptr %min_period to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %min_period, align 8
  %min_bitrate = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 20
  %5 = ptrtoint ptr %min_bitrate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %min_bitrate, align 4
  %instance_id = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %instance_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %instance_id, align 8
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 4, ptr noundef nonnull @.str.9, i32 noundef %7)
  %dbg4 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 30
  %8 = ptrtoint ptr %dbg4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dbg4, align 8
  %call5 = call ptr @debugfs_create_file(ptr noundef nonnull %name, i16 noundef zeroext 292, ptr noundef %9, ptr noundef %ctx, ptr noundef nonnull @ctx_fops) #5
  %10 = ptrtoint ptr %dbg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5, ptr %dbg, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #5
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hva_dbg_ctx_remove(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 8
  %last_ctx = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 30, i32 1
  %4 = call ptr @memcpy(ptr %last_ctx, ptr %ctx, i32 944)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dbg1 = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26
  %5 = ptrtoint ptr %dbg1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dbg1, align 8
  tail call void @debugfs_remove(ptr noundef %6) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @device_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.10, ptr noundef %name) #5
  %vdev = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 8
  %num = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num, align 4
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef %conv) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encoders_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @encoders_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encoders_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %nb_of_encoders = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %nb_of_encoders to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nb_of_encoders, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.12, i32 noundef %3) #5
  %arrayidx17 = getelementptr %struct.hva_dev, ptr %1, i32 0, i32 19, i32 0
  %4 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx17, align 4
  %tobool.not18 = icmp eq ptr %5, null
  br i1 %tobool.not18, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %6 = phi ptr [ %10, %while.body.while.body_crit_edge ], [ %5, %entry.while.body_crit_edge ]
  %i.019 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %pixelformat = getelementptr inbounds %struct.hva_enc, ptr %6, i32 0, i32 2
  %streamformat = getelementptr inbounds %struct.hva_enc, ptr %6, i32 0, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.13, ptr noundef %8, ptr noundef %pixelformat, ptr noundef %streamformat) #5
  %inc = add i32 %i.019, 1
  %arrayidx = getelementptr %struct.hva_dev, ptr %1, i32 0, i32 19, i32 %inc
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @last_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @last_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @last_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %flags = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 30, i32 1, i32 9
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %last_ctx1 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 30, i32 1
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.14) #5
  %cnt_duration.i = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 30, i32 1, i32 26, i32 4
  %4 = ptrtoint ptr %cnt_duration.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt_duration.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %if.then.if.end190.i_crit_edge, label %if.then175.i

if.then.if.end190.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end190.i

if.then175.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %total_duration.i = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 30, i32 1, i32 26, i32 3
  %6 = ptrtoint ptr %total_duration.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total_duration.i, align 8
  %div179.i = udiv i32 %7, %5
  br label %if.end190.i

if.end190.i:                                      ; preds = %if.then175.i, %if.then.if.end190.i_crit_edge
  %.sink.i = phi i32 [ %div179.i, %if.then175.i ], [ 0, %if.then.if.end190.i_crit_edge ]
  %avg_duration189.i = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 30, i32 1, i32 26, i32 7
  %8 = ptrtoint ptr %avg_duration189.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink.i, ptr %avg_duration189.i, align 8
  %total_duration191.i = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 30, i32 1, i32 26, i32 3
  %9 = ptrtoint ptr %total_duration191.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %total_duration191.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp192.not.i = icmp eq i32 %10, 0
  br i1 %cmp192.not.i, label %if.end190.i.if.end423.i_crit_edge, label %if.then194.i

if.end190.i.if.end423.i_crit_edge:                ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end423.i

if.then194.i:                                     ; preds = %if.end190.i
  %conv196.i = zext i32 %5 to i64
  %mul197.i = mul nuw nsw i64 %conv196.i, 100000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul197.i)
  %cmp400.i = icmp ult i64 %mul197.i, 4294967296
  br i1 %cmp400.i, label %if.then408.i, label %if.else414.i, !prof !86

if.then408.i:                                     ; preds = %if.then194.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv409.i = trunc i64 %mul197.i to i32
  %div412.i = udiv i32 %conv409.i, %10
  br label %if.end423.i

if.else414.i:                                     ; preds = %if.then194.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %mul197.i) #8, !srcloc !87
  %asmresult1.i1576.i = extractvalue { i64, i64 } %11, 1
  %extract.t1771.i = trunc i64 %asmresult1.i1576.i to i32
  br label %if.end423.i

if.end423.i:                                      ; preds = %if.else414.i, %if.then408.i, %if.end190.i.if.end423.i_crit_edge
  %.sink1790.i = phi i32 [ %div412.i, %if.then408.i ], [ %extract.t1771.i, %if.else414.i ], [ 0, %if.end190.i.if.end423.i_crit_edge ]
  %max_fps422.i = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 30, i32 1, i32 26, i32 8
  %12 = ptrtoint ptr %max_fps422.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink1790.i, ptr %max_fps422.i, align 4
  %cnt_period.i = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 30, i32 1, i32 26, i32 10
  %13 = ptrtoint ptr %cnt_period.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cnt_period.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp424.not.i = icmp eq i32 %14, 0
  br i1 %cmp424.not.i, label %if.end423.i.if.end653.i_crit_edge, label %if.then638.i

if.end423.i.if.end653.i_crit_edge:                ; preds = %if.end423.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end653.i

if.then638.i:                                     ; preds = %if.end423.i
  call void @__sanitizer_cov_trace_pc() #7
  %total_period.i = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 30, i32 1, i32 26, i32 9
  %15 = ptrtoint ptr %total_period.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %total_period.i, align 8
  %div642.i = udiv i32 %16, %14
  br label %if.end653.i

if.end653.i:                                      ; preds = %if.then638.i, %if.end423.i.if.end653.i_crit_edge
  %.sink1791.i = phi i32 [ %div642.i, %if.then638.i ], [ 0, %if.end423.i.if.end653.i_crit_edge ]
  %avg_period652.i = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 30, i32 1, i32 26, i32 13
  %17 = ptrtoint ptr %avg_period652.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink1791.i, ptr %avg_period652.i, align 8
  %total_period654.i = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 30, i32 1, i32 26, i32 9
  %18 = ptrtoint ptr %total_period654.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %total_period654.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp655.not.i = icmp eq i32 %19, 0
  br i1 %cmp655.not.i, label %if.else1116.i, label %if.then657.i

if.then657.i:                                     ; preds = %if.end653.i
  %conv659.i = zext i32 %14 to i64
  %mul660.i = mul nuw nsw i64 %conv659.i, 100000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul660.i)
  %cmp863.i = icmp ult i64 %mul660.i, 4294967296
  br i1 %cmp863.i, label %if.then871.i, label %if.else877.i, !prof !86

if.then871.i:                                     ; preds = %if.then657.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv872.i = trunc i64 %mul660.i to i32
  %div875.i = udiv i32 %conv872.i, %19
  br label %if.else1093.i

if.else877.i:                                     ; preds = %if.then657.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %mul660.i) #8, !srcloc !87
  %asmresult1.i1626.i = extractvalue { i64, i64 } %20, 1
  %extract.t1778.i = trunc i64 %asmresult1.i1626.i to i32
  br label %if.else1093.i

if.else1093.i:                                    ; preds = %if.else877.i, %if.then871.i
  %div.3.off0.i = phi i32 [ %div875.i, %if.then871.i ], [ %extract.t1778.i, %if.else877.i ]
  %avg_fps.i = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 30, i32 1, i32 26, i32 15
  %21 = ptrtoint ptr %avg_fps.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div.3.off0.i, ptr %avg_fps.i, align 8
  %total_stream_size.i = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 30, i32 1, i32 26, i32 14
  %22 = ptrtoint ptr %total_stream_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %total_stream_size.i, align 4
  %conv891.i = zext i32 %23 to i64
  %mul892.i = mul nuw nsw i64 %conv891.i, 80
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul892.i)
  %cmp1095.i = icmp ult i64 %mul892.i, 4294967296
  br i1 %cmp1095.i, label %if.then1103.i, label %if.else1109.i, !prof !86

if.then1103.i:                                    ; preds = %if.else1093.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv1104.i = trunc i64 %mul892.i to i32
  %div1107.i = udiv i32 %conv1104.i, %19
  br label %hva_dbg_perf_compute.exit

if.else1109.i:                                    ; preds = %if.else1093.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %mul892.i) #8, !srcloc !87
  %asmresult1.i1651.i = extractvalue { i64, i64 } %24, 1
  %extract.t1782.i = trunc i64 %asmresult1.i1651.i to i32
  br label %hva_dbg_perf_compute.exit

if.else1116.i:                                    ; preds = %if.end653.i
  call void @__sanitizer_cov_trace_pc() #7
  %avg_fps885.i = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 30, i32 1, i32 26, i32 15
  %25 = ptrtoint ptr %avg_fps885.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %avg_fps885.i, align 8
  br label %hva_dbg_perf_compute.exit

hva_dbg_perf_compute.exit:                        ; preds = %if.else1116.i, %if.else1109.i, %if.then1103.i
  %.sink1792.i = phi i32 [ 0, %if.else1116.i ], [ %div1107.i, %if.then1103.i ], [ %extract.t1782.i, %if.else1109.i ]
  %avg_bitrate1117.i = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 30, i32 1, i32 26, i32 22
  %26 = ptrtoint ptr %avg_bitrate1117.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink1792.i, ptr %avg_bitrate1117.i, align 4
  tail call fastcc void @format_ctx(ptr noundef %s, ptr noundef %last_ctx1)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.15) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %hva_dbg_perf_compute.exit
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @format_ctx(ptr noundef %s, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %streaminfo = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 17
  %frameinfo = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 18
  %ctrls1 = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 3
  %name = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, ptr noundef %name) #5
  %flags = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.19, ptr @.str.18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond) #5
  %width = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 18, i32 1
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 18, i32 2
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %aligned_width = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 18, i32 3
  %6 = ptrtoint ptr %aligned_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aligned_width, align 4
  %aligned_height = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 18, i32 4
  %8 = ptrtoint ptr %aligned_height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %aligned_height, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.20, ptr noundef %frameinfo, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #5
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and4 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %cond6 = select i1 %tobool5.not, ptr @.str.19, ptr @.str.18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.21, ptr noundef nonnull %cond6) #5
  %width7 = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 17, i32 1
  %12 = ptrtoint ptr %width7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width7, align 4
  %height8 = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 17, i32 2
  %14 = ptrtoint ptr %height8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height8, align 4
  %profile = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 17, i32 3
  %level = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 17, i32 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.22, ptr noundef %streaminfo, i32 noundef %13, i32 noundef %15, ptr noundef %profile, ptr noundef %level) #5
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.23) #5
  %call = tail call ptr @v4l2_ctrl_get_menu(i32 noundef 10029518) #5
  %bitrate_mode11 = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %bitrate_mode11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bitrate_mode11, align 4
  %arrayidx = getelementptr ptr, ptr %call, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %bitrate = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %bitrate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bitrate, align 4
  %gop_size = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %gop_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gop_size, align 4
  %call12 = tail call ptr @v4l2_ctrl_get_menu(i32 noundef 10029513) #5
  %aspect13 = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 3, i32 4
  %24 = ptrtoint ptr %aspect13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %aspect13, align 4
  %arrayidx14 = getelementptr ptr, ptr %call12, i32 %25
  %26 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx14, align 4
  %denominator = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 3, i32 0, i32 1
  %28 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %denominator, align 4
  %30 = ptrtoint ptr %ctrls1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ctrls1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, ptr noundef %19, i32 noundef %21, i32 noundef %23, ptr noundef %27, i32 noundef %29, i32 noundef %31) #5
  %32 = ptrtoint ptr %streaminfo to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %streaminfo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 875967048, i32 %33)
  %cmp = icmp eq i32 %33, 875967048
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = tail call ptr @v4l2_ctrl_get_menu(i32 noundef 10029669) #5
  %entropy_mode = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 3, i32 7
  %34 = ptrtoint ptr %entropy_mode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %entropy_mode, align 4
  %arrayidx18 = getelementptr ptr, ptr %call17, i32 %35
  %36 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx18, align 4
  %cpb_size = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 3, i32 8
  %38 = ptrtoint ptr %cpb_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpb_size, align 4
  %dct8x8 = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 3, i32 9
  %40 = ptrtoint ptr %dct8x8 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %dct8x8, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool19.not = icmp eq i8 %41, 0
  %cond20 = select i1 %tobool19.not, ptr @.str.27, ptr @.str.26
  %qpmin = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 3, i32 10
  %42 = ptrtoint ptr %qpmin to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qpmin, align 4
  %qpmax = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 3, i32 11
  %44 = ptrtoint ptr %qpmax to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %qpmax, align 4
  %vui_sar21 = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 3, i32 12
  %46 = ptrtoint ptr %vui_sar21 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %vui_sar21, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool22.not = icmp eq i8 %47, 0
  %cond23 = select i1 %tobool22.not, ptr @.str.27, ptr @.str.26
  %call24 = tail call ptr @v4l2_ctrl_get_menu(i32 noundef 10029679) #5
  %vui_sar_idc = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 3, i32 13
  %48 = ptrtoint ptr %vui_sar_idc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vui_sar_idc, align 4
  %arrayidx25 = getelementptr ptr, ptr %call24, i32 %49
  %50 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx25, align 4
  %sei_fp26 = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 3, i32 14
  %52 = ptrtoint ptr %sei_fp26 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %sei_fp26, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool27.not = icmp eq i8 %53, 0
  %cond28 = select i1 %tobool27.not, ptr @.str.27, ptr @.str.26
  %call29 = tail call ptr @v4l2_ctrl_get_menu(i32 noundef 10029682) #5
  %sei_fp_type = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 3, i32 15
  %54 = ptrtoint ptr %sei_fp_type to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sei_fp_type, align 4
  %arrayidx30 = getelementptr ptr, ptr %call29, i32 %55
  %56 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx30, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, ptr noundef %37, i32 noundef %39, ptr noundef nonnull %cond20, i32 noundef %43, i32 noundef %45, ptr noundef nonnull %cond23, ptr noundef %51, ptr noundef nonnull %cond28, ptr noundef %57) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sys_errors = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 23
  %58 = ptrtoint ptr %sys_errors to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sys_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool31.not = icmp eq i32 %59, 0
  br i1 %tobool31.not, label %lor.lhs.false, label %if.end.if.then35_crit_edge

if.end.if.then35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35

lor.lhs.false:                                    ; preds = %if.end
  %encode_errors = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 24
  %60 = ptrtoint ptr %encode_errors to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %encode_errors, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool32.not = icmp eq i32 %61, 0
  br i1 %tobool32.not, label %lor.lhs.false33, label %lor.lhs.false.if.then35_crit_edge

lor.lhs.false.if.then35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35

lor.lhs.false33:                                  ; preds = %lor.lhs.false
  %frame_errors = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 25
  %62 = ptrtoint ptr %frame_errors to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %frame_errors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool34.not = icmp eq i32 %63, 0
  br i1 %tobool34.not, label %lor.lhs.false33.if.end39_crit_edge, label %lor.lhs.false33.if.then35_crit_edge

lor.lhs.false33.if.then35_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35

lor.lhs.false33.if.end39_crit_edge:               ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then35:                                        ; preds = %lor.lhs.false33.if.then35_crit_edge, %lor.lhs.false.if.then35_crit_edge, %if.end.if.then35_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.28) #5
  %64 = ptrtoint ptr %sys_errors to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sys_errors, align 4
  %encode_errors37 = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 24
  %66 = ptrtoint ptr %encode_errors37 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %encode_errors37, align 8
  %frame_errors38 = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 25
  %68 = ptrtoint ptr %frame_errors38 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %frame_errors38, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.29, i32 noundef %65, i32 noundef %67, i32 noundef %69) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %lor.lhs.false33.if.end39_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.30) #5
  %cnt_duration = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 4
  %70 = ptrtoint ptr %cnt_duration to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cnt_duration, align 4
  %avg_duration = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 7
  %72 = ptrtoint ptr %avg_duration to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %avg_duration, align 8
  %min_duration = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 5
  %74 = ptrtoint ptr %min_duration to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %min_duration, align 8
  %max_duration = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 6
  %76 = ptrtoint ptr %max_duration to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %max_duration, align 4
  %avg_period = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 13
  %78 = ptrtoint ptr %avg_period to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %avg_period, align 8
  %min_period = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 11
  %80 = ptrtoint ptr %min_period to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %min_period, align 8
  %max_period = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 12
  %82 = ptrtoint ptr %max_period to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_period, align 4
  %avg_fps = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 15
  %84 = ptrtoint ptr %avg_fps to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %avg_fps, align 8
  %max_fps = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 8
  %86 = ptrtoint ptr %max_fps to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %max_fps, align 4
  %avg_bitrate = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 22
  %88 = ptrtoint ptr %avg_bitrate to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %avg_bitrate, align 4
  %min_bitrate = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 20
  %90 = ptrtoint ptr %min_bitrate to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %min_bitrate, align 4
  %max_bitrate = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 21
  %92 = ptrtoint ptr %max_bitrate to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %max_bitrate, align 8
  %last_bitrate = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 26, i32 19
  %94 = ptrtoint ptr %last_bitrate to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %last_bitrate, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.31, i32 noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef %87, i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %95) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_get_menu(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regs_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @regs_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regs_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @hva_hw_dump_regs(ptr noundef %1, ptr noundef %s) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hva_hw_dump_regs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctx_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @ctx_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctx_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %id = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 8
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.32, i32 noundef %conv) #5
  %cnt_duration.i = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 26, i32 4
  %4 = ptrtoint ptr %cnt_duration.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt_duration.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %entry.if.end190.i_crit_edge, label %if.then175.i

entry.if.end190.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end190.i

if.then175.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %total_duration.i = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 26, i32 3
  %6 = ptrtoint ptr %total_duration.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total_duration.i, align 8
  %div179.i = udiv i32 %7, %5
  br label %if.end190.i

if.end190.i:                                      ; preds = %if.then175.i, %entry.if.end190.i_crit_edge
  %.sink.i = phi i32 [ %div179.i, %if.then175.i ], [ 0, %entry.if.end190.i_crit_edge ]
  %avg_duration189.i = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 26, i32 7
  %8 = ptrtoint ptr %avg_duration189.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink.i, ptr %avg_duration189.i, align 8
  %total_duration191.i = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 26, i32 3
  %9 = ptrtoint ptr %total_duration191.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %total_duration191.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp192.not.i = icmp eq i32 %10, 0
  br i1 %cmp192.not.i, label %if.end190.i.if.end423.i_crit_edge, label %if.then194.i

if.end190.i.if.end423.i_crit_edge:                ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end423.i

if.then194.i:                                     ; preds = %if.end190.i
  %conv196.i = zext i32 %5 to i64
  %mul197.i = mul nuw nsw i64 %conv196.i, 100000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul197.i)
  %cmp400.i = icmp ult i64 %mul197.i, 4294967296
  br i1 %cmp400.i, label %if.then408.i, label %if.else414.i, !prof !86

if.then408.i:                                     ; preds = %if.then194.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv409.i = trunc i64 %mul197.i to i32
  %div412.i = udiv i32 %conv409.i, %10
  br label %if.end423.i

if.else414.i:                                     ; preds = %if.then194.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %mul197.i) #8, !srcloc !87
  %asmresult1.i1576.i = extractvalue { i64, i64 } %11, 1
  %extract.t1771.i = trunc i64 %asmresult1.i1576.i to i32
  br label %if.end423.i

if.end423.i:                                      ; preds = %if.else414.i, %if.then408.i, %if.end190.i.if.end423.i_crit_edge
  %.sink1790.i = phi i32 [ %div412.i, %if.then408.i ], [ %extract.t1771.i, %if.else414.i ], [ 0, %if.end190.i.if.end423.i_crit_edge ]
  %max_fps422.i = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 26, i32 8
  %12 = ptrtoint ptr %max_fps422.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink1790.i, ptr %max_fps422.i, align 4
  %cnt_period.i = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 26, i32 10
  %13 = ptrtoint ptr %cnt_period.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cnt_period.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp424.not.i = icmp eq i32 %14, 0
  br i1 %cmp424.not.i, label %if.end423.i.if.end653.i_crit_edge, label %if.then638.i

if.end423.i.if.end653.i_crit_edge:                ; preds = %if.end423.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end653.i

if.then638.i:                                     ; preds = %if.end423.i
  call void @__sanitizer_cov_trace_pc() #7
  %total_period.i = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 26, i32 9
  %15 = ptrtoint ptr %total_period.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %total_period.i, align 8
  %div642.i = udiv i32 %16, %14
  br label %if.end653.i

if.end653.i:                                      ; preds = %if.then638.i, %if.end423.i.if.end653.i_crit_edge
  %.sink1791.i = phi i32 [ %div642.i, %if.then638.i ], [ 0, %if.end423.i.if.end653.i_crit_edge ]
  %avg_period652.i = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 26, i32 13
  %17 = ptrtoint ptr %avg_period652.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink1791.i, ptr %avg_period652.i, align 8
  %total_period654.i = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 26, i32 9
  %18 = ptrtoint ptr %total_period654.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %total_period654.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp655.not.i = icmp eq i32 %19, 0
  br i1 %cmp655.not.i, label %if.else1116.i, label %if.then657.i

if.then657.i:                                     ; preds = %if.end653.i
  %conv659.i = zext i32 %14 to i64
  %mul660.i = mul nuw nsw i64 %conv659.i, 100000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul660.i)
  %cmp863.i = icmp ult i64 %mul660.i, 4294967296
  br i1 %cmp863.i, label %if.then871.i, label %if.else877.i, !prof !86

if.then871.i:                                     ; preds = %if.then657.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv872.i = trunc i64 %mul660.i to i32
  %div875.i = udiv i32 %conv872.i, %19
  br label %if.else1093.i

if.else877.i:                                     ; preds = %if.then657.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %mul660.i) #8, !srcloc !87
  %asmresult1.i1626.i = extractvalue { i64, i64 } %20, 1
  %extract.t1778.i = trunc i64 %asmresult1.i1626.i to i32
  br label %if.else1093.i

if.else1093.i:                                    ; preds = %if.else877.i, %if.then871.i
  %div.3.off0.i = phi i32 [ %div875.i, %if.then871.i ], [ %extract.t1778.i, %if.else877.i ]
  %avg_fps.i = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 26, i32 15
  %21 = ptrtoint ptr %avg_fps.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div.3.off0.i, ptr %avg_fps.i, align 8
  %total_stream_size.i = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 26, i32 14
  %22 = ptrtoint ptr %total_stream_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %total_stream_size.i, align 4
  %conv891.i = zext i32 %23 to i64
  %mul892.i = mul nuw nsw i64 %conv891.i, 80
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul892.i)
  %cmp1095.i = icmp ult i64 %mul892.i, 4294967296
  br i1 %cmp1095.i, label %if.then1103.i, label %if.else1109.i, !prof !86

if.then1103.i:                                    ; preds = %if.else1093.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv1104.i = trunc i64 %mul892.i to i32
  %div1107.i = udiv i32 %conv1104.i, %19
  br label %hva_dbg_perf_compute.exit

if.else1109.i:                                    ; preds = %if.else1093.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %mul892.i) #8, !srcloc !87
  %asmresult1.i1651.i = extractvalue { i64, i64 } %24, 1
  %extract.t1782.i = trunc i64 %asmresult1.i1651.i to i32
  br label %hva_dbg_perf_compute.exit

if.else1116.i:                                    ; preds = %if.end653.i
  call void @__sanitizer_cov_trace_pc() #7
  %avg_fps885.i = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 26, i32 15
  %25 = ptrtoint ptr %avg_fps885.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %avg_fps885.i, align 8
  br label %hva_dbg_perf_compute.exit

hva_dbg_perf_compute.exit:                        ; preds = %if.else1116.i, %if.else1109.i, %if.then1103.i
  %.sink1792.i = phi i32 [ 0, %if.else1116.i ], [ %div1107.i, %if.then1103.i ], [ %extract.t1782.i, %if.else1109.i ]
  %avg_bitrate1117.i = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 26, i32 22
  %26 = ptrtoint ptr %avg_bitrate1117.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink1792.i, ptr %avg_bitrate1117.i, align 4
  tail call fastcc void @format_ctx(ptr noundef %s, ptr noundef %1)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 194, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @hva_dbg_perf_end.__UNIQUE_ID_ddebug306, !1, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 339, i32 46}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 341, i32 2}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 342, i32 2}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 343, i32 2}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 344, i32 2}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 380, i32 31}
!18 = !{ptr @device_fops, !19, !"device_fops", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 332, i32 1}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 278, i32 16}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 279, i32 16}
!24 = !{ptr @encoders_fops, !25, !"encoders_fops", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 333, i32 1}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 289, i32 16}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 293, i32 17}
!30 = !{ptr @last_fops, !31, !"last_fops", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 334, i32 1}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 308, i32 15}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 313, i32 15}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 21, i32 16}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 23, i32 16}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 24, i32 40}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 24, i32 45}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 25, i32 16}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 33, i32 16}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 35, i32 16}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 46, i32 14}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 47, i32 16}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 63, i32 17}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 74, i32 26}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 74, i32 35}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 84, i32 15}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 85, i32 17}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 93, i32 14}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 94, i32 16}
!68 = !{ptr @regs_fops, !69, !"regs_fops", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 335, i32 1}
!70 = !{ptr @ctx_fops, !71, !"ctx_fops", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 369, i32 1}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/sti/hva/hva-debugfs.c", i32 361, i32 16}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i8 0, i8 2}
!84 = !{i64 1036229, i64 1036256, i64 1036278, i64 1036306}
!85 = !{i64 1036637, i64 1036664, i64 1036697, i64 1036718, i64 1036745, i64 1036771}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i64 2148521773, i64 2148522053, i64 2148522387, i64 2148522721}
!88 = !{i64 2148496586, i64 2148496591, i64 2148496604, i64 2148496648, i64 2148496682, i64 2148496703}
