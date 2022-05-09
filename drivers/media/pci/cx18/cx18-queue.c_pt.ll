; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-queue.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-queue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cx18_buffer = type { %struct.list_head, i32, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.cx18_mdl = type { %struct.list_head, i32, i32, i32, %struct.list_head, ptr, i32, i32 }
%struct.cx18_queue = type { %struct.list_head, %struct.atomic_t, i32, %struct.spinlock }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cx18_stream = type { %struct.video_device, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, i32, i32, i32, i32, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.work_struct, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.videobuf_queue, %struct.spinlock, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.106 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.103], %struct.media_entity_enum, i32 }
%struct.anon.103 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.cx18 = type { i32, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.cx18_av_state, %struct.cx2341x_handler, i32, i32, i32, i32, i32, %struct.mutex, %struct.cx18_options, [7 x i32], [7 x i32], [7 x %struct.cx18_stream], ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, ptr, ptr, %struct.vbi_info, i64, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, ptr, [11 x i8], [70 x %struct.cx18_in_work_order], [256 x i8], [2 x %struct.i2c_adapter], [2 x %struct.i2c_algo_bit_data], [2 x %struct.cx18_i2c_algo_callback_data], %struct.IR_i2c_init_data, i32, i32, %struct.mutex, %struct.v4l2_subdev, %struct.v4l2_subdev, i32, i32, i64, i64, %struct.work_struct }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cx18_av_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.162, %struct.anon.163, %struct.anon.164, %struct.anon.165, %struct.anon.166, %struct.anon.167, %struct.anon.168, %struct.anon.169 }
%struct.anon.162 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.163 = type { ptr, ptr }
%struct.anon.164 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.165 = type { ptr, ptr }
%struct.anon.166 = type { ptr, ptr, ptr }
%struct.anon.167 = type { ptr, ptr }
%struct.anon.168 = type { ptr, ptr }
%struct.anon.169 = type { ptr, ptr, ptr, ptr }
%struct.cx18_options = type { [7 x i32], i32, i32, i32 }
%struct.vbi_info = type { %struct.v4l2_format, ptr, i32, [2 x i32], i32, i32, [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], i32, %struct.cx18_mdl, %struct.cx18_buffer }
%struct.v4l2_format = type { i32, %union.anon.120 }
%union.anon.120 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.122, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.122 = type { i8 }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.cx18_in_work_order = type { %struct.work_struct, %struct.atomic_t, ptr, i32, i32, %struct.cx18_mailbox, [2 x %struct.cx18_mdl_ack], ptr }
%struct.cx18_mailbox = type { i32, i32, [6 x i32], i32, [6 x i32], i32 }
%struct.cx18_mdl_ack = type { i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.cx18_i2c_algo_callback_data = type { ptr, i32 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.161, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.161 = type { ptr }
%struct.cx18_scb = type { i32, [7 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, [7 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], [8 x i32], i32, [7 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], [8 x i32], i32, [7 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], [8 x i32], i32, [7 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], [8 x i32], i32, [7 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], [8 x i32], [8 x i32], [32 x i32], %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, [7 x [2 x %struct.cx18_mdl_ack]], [1 x %struct.cx18_mdl_ent] }
%struct.cx18_mdl_ent = type { i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.100, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.100 = type { %struct.atomic_t }

@cx18_queue_get_mdl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014%s: Skipped %s, MDL %d, %d times - it must have dropped out of rotation\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx18_queue_get_mdl\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/pci/cx18/cx18-queue.c\00", [60 x i8] zeroinitializer }, align 32
@cx18_queue_get_mdl._entry_ptr = internal global ptr @cx18_queue_get_mdl._entry, section ".printk_index", align 4
@cx18_debug = external dso_local local_unnamed_addr global i32, align 4
@cx18_stream_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016%s:  info: Allocate %s stream: %d x %d buffers (%d.%02d kB total)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx18_stream_alloc\00", [46 x i8] zeroinitializer }, align 32
@cx18_stream_alloc._entry_ptr = internal global ptr @cx18_stream_alloc._entry, section ".printk_index", align 4
@cx18_stream_alloc._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: Too many buffers, cannot fit in SCB area\0A\00", [48 x i8] zeroinitializer }, align 32
@cx18_stream_alloc._entry_ptr.7 = internal global ptr @cx18_stream_alloc._entry.5, section ".printk_index", align 4
@cx18_stream_alloc._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: Max buffers = %zu\0A\00", [39 x i8] zeroinitializer }, align 32
@cx18_stream_alloc._entry_ptr.10 = internal global ptr @cx18_stream_alloc._entry.8, section ".printk_index", align 4
@cx18_stream_alloc._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: Couldn't allocate buffers for %s stream\0A\00", [49 x i8] zeroinitializer }, align 32
@cx18_stream_alloc._entry_ptr.13 = internal global ptr @cx18_stream_alloc._entry.11, section ".printk_index", align 4
@cx18_stream_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s:  info: Deallocating buffers for %s stream\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx18_stream_free\00", [47 x i8] zeroinitializer }, align 32
@cx18_stream_free._entry_ptr = internal global ptr @cx18_stream_free._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 153, i32 5 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 340, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 350, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 351, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 398, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private constant [39 x i8] c"../drivers/media/pci/cx18/cx18-queue.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 409, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 326, i32 6 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @cx18_queue_get_mdl._entry, ptr @cx18_queue_get_mdl._entry_ptr, ptr @cx18_stream_alloc._entry, ptr @cx18_stream_alloc._entry.11, ptr @cx18_stream_alloc._entry.5, ptr @cx18_stream_alloc._entry.8, ptr @cx18_stream_alloc._entry_ptr, ptr @cx18_stream_alloc._entry_ptr.10, ptr @cx18_stream_alloc._entry_ptr.13, ptr @cx18_stream_alloc._entry_ptr.7, ptr @cx18_stream_free._entry, ptr @cx18_stream_free._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_queue_get_mdl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_stream_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_stream_alloc._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_stream_alloc._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_stream_alloc._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_stream_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_buf_swap(ptr nocapture noundef readonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bytesused = getelementptr inbounds %struct.cx18_buffer, ptr %buf, i32 0, i32 3
  %0 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bytesused, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %buf1 = getelementptr inbounds %struct.cx18_buffer, ptr %buf, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %i.06
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #10
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr, align 4
  %add = add i32 %i.06, 4
  %8 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytesused, align 4
  %cmp = icmp ult i32 %add, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_cx18_mdl_swap(ptr noundef readonly %mdl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_list = getelementptr inbounds %struct.cx18_mdl, ptr %mdl, i32 0, i32 4
  %0 = ptrtoint ptr %buf_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %buf.012 = load ptr, ptr %buf_list, align 4
  %cmp.not13 = icmp eq ptr %buf.012, %buf_list
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.loopexit:                                ; preds = %for.body.i
  %1 = ptrtoint ptr %buf.014 to i32
  call void @__asan_load4_noabort(i32 %1)
  %buf.0 = load ptr, ptr %buf.014, align 4
  %cmp.not = icmp eq ptr %buf.0, %buf_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.loopexit.for.end_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %buf.014 = phi ptr [ %buf.0, %for.cond.loopexit.for.body_crit_edge ], [ %buf.012, %entry.for.body_crit_edge ]
  %bytesused = getelementptr inbounds %struct.cx18_buffer, ptr %buf.014, i32 0, i32 3
  %2 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bytesused, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %for.body.lr.ph.i

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph.i:                                 ; preds = %for.body
  %buf1.i = getelementptr inbounds %struct.cx18_buffer, ptr %buf.014, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buf1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %i.06.i
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %add.ptr.i, align 4
  %add.i = add i32 %i.06.i, 4
  %10 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytesused, align 4
  %cmp.i = icmp ult i32 %add.i, %11
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.cond.loopexit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.loopexit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_queue_init(ptr noundef %q) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %q, ptr %q, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %q, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %q, ptr %prev.i, align 4
  %depth = getelementptr inbounds %struct.cx18_queue, ptr %q, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %depth, i32 noundef 4) #10
  %2 = ptrtoint ptr %depth to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %depth, align 4
  %bytesused = getelementptr inbounds %struct.cx18_queue, ptr %q, i32 0, i32 2
  %3 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bytesused, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @_cx18_enqueue(ptr noundef %s, ptr noundef %mdl, ptr noundef %q, i32 noundef %to_front) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %q_full = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 19
  %cmp.not = icmp eq ptr %q_full, %q
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bytesused = getelementptr inbounds %struct.cx18_mdl, ptr %mdl, i32 0, i32 6
  %0 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bytesused, align 4
  %readpos = getelementptr inbounds %struct.cx18_mdl, ptr %mdl, i32 0, i32 7
  %1 = ptrtoint ptr %readpos to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %readpos, align 4
  %m_flags = getelementptr inbounds %struct.cx18_mdl, ptr %mdl, i32 0, i32 3
  %2 = ptrtoint ptr %m_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %m_flags, align 4
  %skipped = getelementptr inbounds %struct.cx18_mdl, ptr %mdl, i32 0, i32 2
  %3 = ptrtoint ptr %skipped to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %skipped, align 4
  %curr_buf = getelementptr inbounds %struct.cx18_mdl, ptr %mdl, i32 0, i32 5
  %4 = ptrtoint ptr %curr_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %curr_buf, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %q_busy = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 18
  %cmp1 = icmp eq ptr %q_busy, %q
  br i1 %cmp1, label %land.lhs.true, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %depth = getelementptr inbounds %struct.cx18_queue, ptr %q, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %depth, i32 noundef 4) #10
  %5 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %6)
  %cmp2 = icmp sgt i32 %6, 62
  %q_free = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 17
  %spec.select = select i1 %cmp2, ptr %q_free, ptr %q
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true, %if.end.if.end4_crit_edge
  %q.addr.0 = phi ptr [ %q, %if.end.if.end4_crit_edge ], [ %spec.select, %land.lhs.true ]
  %lock = getelementptr inbounds %struct.cx18_queue, ptr %q.addr.0, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to_front)
  %tobool.not = icmp eq i32 %to_front, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end4
  %7 = ptrtoint ptr %q.addr.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %q.addr.0, align 4
  %call.i.i35 = tail call zeroext i1 @__list_add_valid(ptr noundef %mdl, ptr noundef %q.addr.0, ptr noundef %8) #10
  br i1 %call.i.i35, label %if.end.i.i, label %if.then5.if.end9_crit_edge

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  br label %if.end9.sink.split

if.else:                                          ; preds = %if.end4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %q.addr.0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i36 = tail call zeroext i1 @__list_add_valid(ptr noundef %mdl, ptr noundef %10, ptr noundef %q.addr.0) #10
  br i1 %call.i.i36, label %if.else.if.end9.sink.split_crit_edge, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.else.if.end9.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %if.else.if.end9.sink.split_crit_edge, %if.end.i.i
  %prev.i.sink = phi ptr [ %prev1.i.i, %if.end.i.i ], [ %prev.i, %if.else.if.end9.sink.split_crit_edge ]
  %q.addr.0.sink = phi ptr [ %8, %if.end.i.i ], [ %q.addr.0, %if.else.if.end9.sink.split_crit_edge ]
  %.sink39 = phi ptr [ %q.addr.0, %if.end.i.i ], [ %10, %if.else.if.end9.sink.split_crit_edge ]
  %11 = ptrtoint ptr %prev.i.sink to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mdl, ptr %prev.i.sink, align 4
  %12 = ptrtoint ptr %mdl to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %q.addr.0.sink, ptr %mdl, align 4
  %prev3.i.i37 = getelementptr inbounds %struct.list_head, ptr %mdl, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i37 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %.sink39, ptr %prev3.i.i37, align 4
  %14 = ptrtoint ptr %.sink39 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %mdl, ptr %.sink39, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.else.if.end9_crit_edge, %if.then5.if.end9_crit_edge
  %bytesused10 = getelementptr inbounds %struct.cx18_mdl, ptr %mdl, i32 0, i32 6
  %15 = ptrtoint ptr %bytesused10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bytesused10, align 4
  %readpos11 = getelementptr inbounds %struct.cx18_mdl, ptr %mdl, i32 0, i32 7
  %17 = ptrtoint ptr %readpos11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %readpos11, align 4
  %sub = sub i32 %16, %18
  %bytesused12 = getelementptr inbounds %struct.cx18_queue, ptr %q.addr.0, i32 0, i32 2
  %19 = ptrtoint ptr %bytesused12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bytesused12, align 4
  %add = add i32 %sub, %20
  store i32 %add, ptr %bytesused12, align 4
  %depth13 = getelementptr inbounds %struct.cx18_queue, ptr %q.addr.0, i32 0, i32 1
  %call.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef %depth13, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %depth13, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %depth13, ptr %depth13, i32 1, ptr elementtype(i32) %depth13) #10, !srcloc !41
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  ret ptr %q.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cx18_dequeue(ptr nocapture readnone %s, ptr noundef %q) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cx18_queue, ptr %q, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %q, align 4
  %cmp.i.not = icmp eq ptr %1, %q
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i15 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #10
  br i1 %call.i.i15, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
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
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  %bytesused = getelementptr inbounds %struct.cx18_mdl, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytesused, align 4
  %readpos = getelementptr inbounds %struct.cx18_mdl, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %readpos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %readpos, align 4
  %sub.neg = sub i32 %13, %11
  %bytesused3 = getelementptr inbounds %struct.cx18_queue, ptr %q, i32 0, i32 2
  %14 = ptrtoint ptr %bytesused3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bytesused3, align 4
  %sub4 = add i32 %sub.neg, %15
  store i32 %sub4, ptr %bytesused3, align 4
  %skipped = getelementptr inbounds %struct.cx18_mdl, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %skipped to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %skipped, align 4
  %depth = getelementptr inbounds %struct.cx18_queue, ptr %q, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %depth, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %depth, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %depth, ptr %depth, i32 1, ptr elementtype(i32) %depth) #10, !srcloc !42
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  %mdl.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %1, %list_del_init.exit ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  ret ptr %mdl.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cx18_queue_get_mdl(ptr noundef %s, i32 noundef %id, i32 noundef %bytesused) local_unnamed_addr #2 align 64 {
entry:
  %sweep_up = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sweep_up) #10
  %2 = getelementptr inbounds %struct.list_head, ptr %sweep_up, i32 0, i32 1
  %3 = ptrtoint ptr %sweep_up to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sweep_up, ptr %sweep_up, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sweep_up, ptr %2, align 4
  %q_busy = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 18
  %lock = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 18, i32 3
  call void @_raw_spin_lock(ptr noundef %lock) #10
  %5 = ptrtoint ptr %q_busy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %q_busy, align 8
  %cmp.not127 = icmp eq ptr %6, %q_busy
  br i1 %cmp.not127, label %entry.for.end.thread_crit_edge, label %for.body.lr.ph

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %entry
  %depth = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 18, i32 1
  %name = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %name20 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 3
  br label %for.body

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %if.end45

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mdl.0128 = phi ptr [ %6, %for.body.lr.ph ], [ %tmp.0130, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %mdl.0128 to i32
  call void @__asan_load4_noabort(i32 %7)
  %tmp.0130 = load ptr, ptr %mdl.0128, align 4
  %id13 = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.0128, i32 0, i32 1
  %8 = ptrtoint ptr %id13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %id)
  %cmp14.not = icmp eq i32 %9, %id
  br i1 %cmp14.not, label %if.end27, label %if.then

if.then:                                          ; preds = %for.body
  %skipped = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.0128, i32 0, i32 2
  %10 = ptrtoint ptr %skipped to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %skipped, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %skipped, align 4
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %depth, i32 noundef 4) #10
  %12 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %depth, align 4
  %sub = add i32 %13, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %sub)
  %cmp17.not = icmp ult i32 %inc, %sub
  br i1 %cmp17.not, label %if.then.for.inc_crit_edge, label %do.end

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end:                                           ; preds = %if.then
  %14 = ptrtoint ptr %name20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name20, align 8
  %16 = ptrtoint ptr %id13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id13, align 4
  %18 = ptrtoint ptr %skipped to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %skipped, align 4
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef %15, i32 noundef %17, i32 noundef %19) #13
  %call.i.i104 = call zeroext i1 @__list_del_entry_valid(ptr noundef %mdl.0128) #10
  br i1 %call.i.i104, label %if.end.i.i, label %do.end.__list_del_entry.exit.i_crit_edge

do.end.__list_del_entry.exit.i_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mdl.0128, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %mdl.0128 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mdl.0128, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %do.end.__list_del_entry.exit.i_crit_edge
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %2, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %mdl.0128, ptr noundef %27, ptr noundef nonnull %sweep_up) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %mdl.0128, ptr %2, align 4
  %29 = ptrtoint ptr %mdl.0128 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %sweep_up, ptr %mdl.0128, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %mdl.0128, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %mdl.0128, ptr %27, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %call.i.i102 = call zeroext i1 @__kasan_check_write(ptr noundef %depth, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %depth, i32 1, i32 3, i32 1) #10
  %32 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %depth, ptr %depth, i32 1, ptr elementtype(i32) %depth) #10, !srcloc !42
  br label %for.inc

if.end27:                                         ; preds = %for.body
  %call.i.i105 = call zeroext i1 @__list_del_entry_valid(ptr noundef %mdl.0128) #10
  br i1 %call.i.i105, label %if.end.i.i108, label %if.end27.for.end_crit_edge

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.i.i108:                                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i106 = getelementptr inbounds %struct.list_head, ptr %mdl.0128, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i106 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i106, align 4
  %35 = ptrtoint ptr %mdl.0128 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mdl.0128, align 4
  %prev1.i.i.i107 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i107 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i107, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %for.end

for.inc:                                          ; preds = %list_move_tail.exit, %if.then.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.0130, %q_busy
  br i1 %cmp.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.end:                                          ; preds = %if.end.i.i108, %if.end27.for.end_crit_edge
  %39 = ptrtoint ptr %mdl.0128 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %mdl.0128, ptr %mdl.0128, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %mdl.0128, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %mdl.0128, ptr %prev.i3.i, align 4
  %call.i.i103 = call zeroext i1 @__kasan_check_write(ptr noundef %depth, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %depth, i32 1, i32 3, i32 1) #10
  %41 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %depth, ptr %depth, i32 1, ptr elementtype(i32) %depth) #10, !srcloc !42
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  %cmp38.not = icmp eq ptr %mdl.0128, null
  br i1 %cmp38.not, label %for.end.if.end45_crit_edge, label %if.then39

for.end.if.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then39:                                        ; preds = %for.end
  %bytesused40 = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.0128, i32 0, i32 6
  %42 = ptrtoint ptr %bytesused40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %bytesused, ptr %bytesused40, align 4
  %skipped41 = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.0128, i32 0, i32 2
  %43 = ptrtoint ptr %skipped41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %skipped41, align 4
  %buf_list.i = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.0128, i32 0, i32 4
  %44 = ptrtoint ptr %buf_list.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %buf_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %45, %buf_list.i
  br i1 %cmp.i.not.i.i, label %if.then39.cx18_mdl_update_bufs_for_cpu.exit_crit_edge, label %list_is_singular.exit.i

if.then39.cx18_mdl_update_bufs_for_cpu.exit_crit_edge: ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_mdl_update_bufs_for_cpu.exit

list_is_singular.exit.i:                          ; preds = %if.then39
  %prev.i.i110 = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.0128, i32 0, i32 4, i32 1
  %46 = ptrtoint ptr %prev.i.i110 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i110, align 4
  %cmp.i.not.i = icmp eq ptr %45, %47
  br i1 %cmp.i.not.i, label %if.then.i, label %for.body.lr.ph.i.i

if.then.i:                                        ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %bytesused2.i = getelementptr inbounds %struct.cx18_buffer, ptr %45, i32 0, i32 3
  %48 = ptrtoint ptr %bytesused2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %bytesused, ptr %bytesused2.i, align 4
  %readpos.i = getelementptr inbounds %struct.cx18_buffer, ptr %45, i32 0, i32 4
  %49 = ptrtoint ptr %readpos.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %readpos.i, align 4
  %50 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cx1, align 4
  %pci_dev.i.i = getelementptr inbounds %struct.cx18, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pci_dev.i.i, align 4
  %dma_handle.i.i = getelementptr inbounds %struct.cx18_buffer, ptr %45, i32 0, i32 1
  %54 = ptrtoint ptr %dma_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma_handle.i.i, align 4
  %buf_size.i.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 14
  %56 = ptrtoint ptr %buf_size.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %buf_size.i.i, align 8
  %dma.i.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 10
  %58 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dma.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  call void @dma_sync_single_for_cpu(ptr noundef %dev.i.i.i, i32 noundef %55, i32 noundef %57, i32 noundef %59) #10
  br label %cx18_mdl_update_bufs_for_cpu.exit

for.body.lr.ph.i.i:                               ; preds = %list_is_singular.exit.i
  %buf_size1.i.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 14
  %60 = ptrtoint ptr %buf_size1.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buf_size1.i.i, align 8
  %dma.i.i.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %buf.027.i.i = phi ptr [ %45, %for.body.lr.ph.i.i ], [ %buf.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %bytesused.026.i.i = phi i32 [ %bytesused, %for.body.lr.ph.i.i ], [ %64, %for.body.i.i.for.body.i.i_crit_edge ]
  %readpos.i.i = getelementptr inbounds %struct.cx18_buffer, ptr %buf.027.i.i, i32 0, i32 4
  %62 = ptrtoint ptr %readpos.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %readpos.i.i, align 4
  %63 = call i32 @llvm.umin.i32(i32 %bytesused.026.i.i, i32 %61) #10
  %64 = call i32 @llvm.usub.sat.i32(i32 %bytesused.026.i.i, i32 %61) #10
  %65 = getelementptr inbounds %struct.cx18_buffer, ptr %buf.027.i.i, i32 0, i32 3
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %63, ptr %65, align 4
  %67 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cx1, align 4
  %pci_dev.i.i.i = getelementptr inbounds %struct.cx18, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %pci_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pci_dev.i.i.i, align 4
  %dma_handle.i.i.i = getelementptr inbounds %struct.cx18_buffer, ptr %buf.027.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %dma_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dma_handle.i.i.i, align 4
  %73 = ptrtoint ptr %buf_size1.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %buf_size1.i.i, align 8
  %75 = ptrtoint ptr %dma.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dma.i.i.i, align 4
  %dev.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  call void @dma_sync_single_for_cpu(ptr noundef %dev.i.i.i.i, i32 noundef %72, i32 noundef %74, i32 noundef %76) #10
  %77 = ptrtoint ptr %buf.027.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %buf.0.i.i = load ptr, ptr %buf.027.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %buf.0.i.i, %buf_list.i
  br i1 %cmp.not.i.i, label %for.body.i.i.cx18_mdl_update_bufs_for_cpu.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.cx18_mdl_update_bufs_for_cpu.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_mdl_update_bufs_for_cpu.exit

cx18_mdl_update_bufs_for_cpu.exit:                ; preds = %for.body.i.i.cx18_mdl_update_bufs_for_cpu.exit_crit_edge, %if.then.i, %if.then39.cx18_mdl_update_bufs_for_cpu.exit_crit_edge
  %type = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 4
  %78 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp42.not = icmp eq i32 %79, 1
  br i1 %cmp42.not, label %cx18_mdl_update_bufs_for_cpu.exit.if.end45_crit_edge, label %if.then43

cx18_mdl_update_bufs_for_cpu.exit.if.end45_crit_edge: ; preds = %cx18_mdl_update_bufs_for_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then43:                                        ; preds = %cx18_mdl_update_bufs_for_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  %m_flags = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.0128, i32 0, i32 3
  call void @_set_bit(i32 noundef 0, ptr noundef %m_flags) #10
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %cx18_mdl_update_bufs_for_cpu.exit.if.end45_crit_edge, %for.end.if.end45_crit_edge, %for.end.thread
  %ret.0124 = phi ptr [ null, %for.end.thread ], [ %mdl.0128, %cx18_mdl_update_bufs_for_cpu.exit.if.end45_crit_edge ], [ %mdl.0128, %if.then43 ], [ null, %for.end.if.end45_crit_edge ]
  %80 = ptrtoint ptr %sweep_up to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sweep_up, align 4
  %cmp57.not131 = icmp eq ptr %81, %sweep_up
  br i1 %cmp57.not131, label %if.end45.for.end68_crit_edge, label %for.body59.lr.ph

if.end45.for.end68_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end68

for.body59.lr.ph:                                 ; preds = %if.end45
  %q_free = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 17
  %lock.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 17, i32 3
  %prev.i.i121 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 17, i32 0, i32 1
  %bytesused12.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 17, i32 2
  %depth13.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 17, i32 1
  br label %for.body59

for.body59:                                       ; preds = %_cx18_enqueue.exit.for.body59_crit_edge, %for.body59.lr.ph
  %mdl.1132 = phi ptr [ %81, %for.body59.lr.ph ], [ %tmp.1, %_cx18_enqueue.exit.for.body59_crit_edge ]
  %82 = ptrtoint ptr %mdl.1132 to i32
  call void @__asan_load4_noabort(i32 %82)
  %tmp.1 = load ptr, ptr %mdl.1132, align 4
  %call.i.i111 = call zeroext i1 @__list_del_entry_valid(ptr noundef %mdl.1132) #10
  br i1 %call.i.i111, label %if.end.i.i114, label %for.body59.list_del_init.exit117_crit_edge

for.body59.list_del_init.exit117_crit_edge:       ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit117

if.end.i.i114:                                    ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i112 = getelementptr inbounds %struct.list_head, ptr %mdl.1132, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i.i112 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i.i112, align 4
  %85 = ptrtoint ptr %mdl.1132 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mdl.1132, align 4
  %prev1.i.i.i113 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %prev1.i.i.i113 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev1.i.i.i113, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %86, ptr %84, align 4
  br label %list_del_init.exit117

list_del_init.exit117:                            ; preds = %if.end.i.i114, %for.body59.list_del_init.exit117_crit_edge
  %89 = ptrtoint ptr %mdl.1132 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %mdl.1132, ptr %mdl.1132, align 4
  %prev.i3.i115 = getelementptr inbounds %struct.list_head, ptr %mdl.1132, i32 0, i32 1
  %90 = ptrtoint ptr %prev.i3.i115 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %mdl.1132, ptr %prev.i3.i115, align 4
  %bytesused.i118 = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.1132, i32 0, i32 6
  %91 = ptrtoint ptr %bytesused.i118 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %bytesused.i118, align 4
  %readpos.i119 = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.1132, i32 0, i32 7
  %92 = ptrtoint ptr %readpos.i119 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %readpos.i119, align 4
  %m_flags.i = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.1132, i32 0, i32 3
  %93 = ptrtoint ptr %m_flags.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %m_flags.i, align 4
  %skipped.i = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.1132, i32 0, i32 2
  %94 = ptrtoint ptr %skipped.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %skipped.i, align 4
  %curr_buf.i = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.1132, i32 0, i32 5
  %95 = ptrtoint ptr %curr_buf.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %curr_buf.i, align 4
  call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %96 = ptrtoint ptr %prev.i.i121 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i.i121, align 4
  %call.i.i36.i = call zeroext i1 @__list_add_valid(ptr noundef %mdl.1132, ptr noundef %97, ptr noundef %q_free) #10
  br i1 %call.i.i36.i, label %if.end9.sink.split.i, label %list_del_init.exit117._cx18_enqueue.exit_crit_edge

list_del_init.exit117._cx18_enqueue.exit_crit_edge: ; preds = %list_del_init.exit117
  call void @__sanitizer_cov_trace_pc() #12
  br label %_cx18_enqueue.exit

if.end9.sink.split.i:                             ; preds = %list_del_init.exit117
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %prev.i.i121 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %mdl.1132, ptr %prev.i.i121, align 4
  %99 = ptrtoint ptr %mdl.1132 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %q_free, ptr %mdl.1132, align 4
  %100 = ptrtoint ptr %prev.i3.i115 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %prev.i3.i115, align 4
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %mdl.1132, ptr %97, align 4
  br label %_cx18_enqueue.exit

_cx18_enqueue.exit:                               ; preds = %if.end9.sink.split.i, %list_del_init.exit117._cx18_enqueue.exit_crit_edge
  %102 = ptrtoint ptr %bytesused.i118 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bytesused.i118, align 4
  %104 = ptrtoint ptr %readpos.i119 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %readpos.i119, align 4
  %sub.i = sub i32 %103, %105
  %106 = ptrtoint ptr %bytesused12.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bytesused12.i, align 4
  %add.i = add i32 %sub.i, %107
  store i32 %add.i, ptr %bytesused12.i, align 4
  %call.i.i34.i = call zeroext i1 @__kasan_check_write(ptr noundef %depth13.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %depth13.i, i32 1, i32 3, i32 1) #10
  %108 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %depth13.i, ptr %depth13.i, i32 1, ptr elementtype(i32) %depth13.i) #10, !srcloc !41
  call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  %cmp57.not = icmp eq ptr %tmp.1, %sweep_up
  br i1 %cmp57.not, label %_cx18_enqueue.exit.for.end68_crit_edge, label %_cx18_enqueue.exit.for.body59_crit_edge

_cx18_enqueue.exit.for.body59_crit_edge:          ; preds = %_cx18_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body59

_cx18_enqueue.exit.for.end68_crit_edge:           ; preds = %_cx18_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end68

for.end68:                                        ; preds = %_cx18_enqueue.exit.for.end68_crit_edge, %if.end45.for.end68_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sweep_up) #10
  ret ptr %ret.0124
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_flush_queues(ptr noundef %s) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %q_busy = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 18
  %q_free = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 17
  tail call fastcc void @cx18_queue_flush(ptr noundef %s, ptr noundef %q_busy, ptr noundef %q_free)
  %q_full = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 19
  tail call fastcc void @cx18_queue_flush(ptr noundef %s, ptr noundef %q_full, ptr noundef %q_free)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx18_queue_flush(ptr noundef readnone %s, ptr noundef %q_src, ptr noundef %q_dst) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %q_src, %q_dst
  %q_full = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 19
  %cmp1 = icmp eq ptr %q_full, %q_dst
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  %q_busy = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 18
  %cmp3 = icmp eq ptr %q_busy, %q_dst
  %or.cond27 = select i1 %or.cond, i1 true, i1 %cmp3
  br i1 %or.cond27, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.cx18_queue, ptr %q_src, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %lock4 = getelementptr inbounds %struct.cx18_queue, ptr %q_dst, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock4) #10
  %0 = ptrtoint ptr %q_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %q_src, align 4
  %cmp.i.not31 = icmp eq ptr %1, %q_src
  br i1 %cmp.i.not31, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %prev.i2.i = getelementptr inbounds %struct.list_head, ptr %q_dst, i32 0, i32 1
  %depth = getelementptr inbounds %struct.cx18_queue, ptr %q_dst, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %list_move_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %22, %list_move_tail.exit.while.body_crit_edge ]
  %call.i.i28 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #10
  br i1 %call.i.i28, label %if.end.i.i, label %while.body.__list_del_entry.exit.i_crit_edge

while.body.__list_del_entry.exit.i_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
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
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %while.body.__list_del_entry.exit.i_crit_edge
  %9 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %10, ptr noundef %q_dst) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %prev.i2.i, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %q_dst, ptr %2, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %2, ptr %10, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %bytesused = getelementptr inbounds %struct.cx18_mdl, ptr %2, i32 0, i32 6
  %15 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %bytesused, align 4
  %readpos = getelementptr inbounds %struct.cx18_mdl, ptr %2, i32 0, i32 7
  %16 = ptrtoint ptr %readpos to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %readpos, align 4
  %m_flags = getelementptr inbounds %struct.cx18_mdl, ptr %2, i32 0, i32 3
  %17 = ptrtoint ptr %m_flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %m_flags, align 4
  %skipped = getelementptr inbounds %struct.cx18_mdl, ptr %2, i32 0, i32 2
  %18 = ptrtoint ptr %skipped to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %skipped, align 4
  %curr_buf = getelementptr inbounds %struct.cx18_mdl, ptr %2, i32 0, i32 5
  %19 = ptrtoint ptr %curr_buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %curr_buf, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %depth, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %depth, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %depth, ptr %depth, i32 1, ptr elementtype(i32) %depth) #10, !srcloc !41
  %21 = ptrtoint ptr %q_src to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %q_src, align 4
  %cmp.i.not = icmp eq ptr %22, %q_src
  br i1 %cmp.i.not, label %list_move_tail.exit.while.end_crit_edge, label %list_move_tail.exit.while.body_crit_edge

list_move_tail.exit.while.body_crit_edge:         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_move_tail.exit.while.end_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %list_move_tail.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  %23 = ptrtoint ptr %q_src to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %q_src, ptr %q_src, align 4
  %prev.i.i29 = getelementptr inbounds %struct.list_head, ptr %q_src, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i29 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %q_src, ptr %prev.i.i29, align 4
  %depth.i = getelementptr inbounds %struct.cx18_queue, ptr %q_src, i32 0, i32 1
  %call.i.i.i30 = tail call zeroext i1 @__kasan_check_write(ptr noundef %depth.i, i32 noundef 4) #10
  %25 = ptrtoint ptr %depth.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %depth.i, align 4
  %bytesused.i = getelementptr inbounds %struct.cx18_queue, ptr %q_src, i32 0, i32 2
  %26 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %bytesused.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  tail call void @_raw_spin_unlock(ptr noundef %lock4) #10
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_unload_queues(ptr noundef %s) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %q_idle1 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 20
  %q_busy = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 18
  tail call fastcc void @cx18_queue_flush(ptr noundef %s, ptr noundef %q_busy, ptr noundef %q_idle1)
  %q_full = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 19
  tail call fastcc void @cx18_queue_flush(ptr noundef %s, ptr noundef %q_full, ptr noundef %q_idle1)
  %q_free = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 17
  tail call fastcc void @cx18_queue_flush(ptr noundef %s, ptr noundef %q_free, ptr noundef %q_idle1)
  %lock = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 20, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %0 = ptrtoint ptr %q_idle1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %mdl.038 = load ptr, ptr %q_idle1, align 4
  %cmp.not39 = icmp eq ptr %mdl.038, %q_idle1
  br i1 %cmp.not39, label %entry.for.end_crit_edge, label %while.cond.preheader.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

while.cond.preheader.lr.ph:                       ; preds = %entry
  %buf_pool = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 12
  %prev.i2.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 12, i32 1
  %mdl_base_idx = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 7
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %while.end.while.cond.preheader_crit_edge, %while.cond.preheader.lr.ph
  %mdl.040 = phi ptr [ %mdl.038, %while.cond.preheader.lr.ph ], [ %mdl.0, %while.end.while.cond.preheader_crit_edge ]
  %buf_list = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.040, i32 0, i32 4
  %1 = ptrtoint ptr %buf_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %buf_list, align 4
  %cmp.i.not37 = icmp eq ptr %2, %buf_list
  br i1 %cmp.i.not37, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %list_move_tail.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %3 = phi ptr [ %19, %list_move_tail.exit.while.body_crit_edge ], [ %2, %while.cond.preheader.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body.__list_del_entry.exit.i_crit_edge

while.body.__list_del_entry.exit.i_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %while.body.__list_del_entry.exit.i_crit_edge
  %10 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %11, ptr noundef %buf_pool) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %prev.i2.i, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf_pool, ptr %3, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %3, ptr %11, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %bytesused = getelementptr inbounds %struct.cx18_buffer, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %bytesused to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %bytesused, align 4
  %readpos = getelementptr inbounds %struct.cx18_buffer, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %readpos to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %readpos, align 4
  %18 = ptrtoint ptr %buf_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %buf_list, align 4
  %cmp.i.not = icmp eq ptr %19, %buf_list
  br i1 %cmp.i.not, label %list_move_tail.exit.while.end_crit_edge, label %list_move_tail.exit.while.body_crit_edge

list_move_tail.exit.while.body_crit_edge:         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_move_tail.exit.while.end_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %list_move_tail.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %20 = ptrtoint ptr %mdl_base_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mdl_base_idx, align 8
  %id = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.040, i32 0, i32 1
  %22 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %id, align 4
  %23 = ptrtoint ptr %mdl.040 to i32
  call void @__asan_load4_noabort(i32 %23)
  %mdl.0 = load ptr, ptr %mdl.040, align 4
  %cmp.not = icmp eq ptr %mdl.0, %q_idle1
  br i1 %cmp.not, label %while.end.for.end_crit_edge, label %while.end.while.cond.preheader_crit_edge

while.end.while.cond.preheader_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %while.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_load_queues(ptr noundef %s) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %mdl_base_idx = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %mdl_base_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mdl_base_idx, align 8
  %q_idle = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 20
  %lock.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 20, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %4 = ptrtoint ptr %q_idle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %q_idle, align 4
  %cmp.i.not.i = icmp eq ptr %5, %q_idle
  br i1 %cmp.i.not.i, label %entry.for.end34.sink.split_crit_edge, label %if.then.i

entry.for.end34.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end34.sink.split

if.then.i:                                        ; preds = %entry
  %call.i.i15.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #10
  br i1 %call.i.i15.i, label %if.end.i.i.i, label %if.then.i.cx18_dequeue.exit_crit_edge

if.then.i.cx18_dequeue.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_dequeue.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %cx18_dequeue.exit

cx18_dequeue.exit:                                ; preds = %if.end.i.i.i, %if.then.i.cx18_dequeue.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %5, ptr %5, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %5, ptr %prev.i3.i.i, align 4
  %bytesused.i = getelementptr inbounds %struct.cx18_mdl, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bytesused.i, align 4
  %readpos.i = getelementptr inbounds %struct.cx18_mdl, ptr %5, i32 0, i32 7
  %16 = ptrtoint ptr %readpos.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %readpos.i, align 4
  %sub.neg.i = sub i32 %17, %15
  %bytesused3.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 20, i32 2
  %18 = ptrtoint ptr %bytesused3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bytesused3.i, align 4
  %sub4.i = add i32 %sub.neg.i, %19
  store i32 %sub4.i, ptr %bytesused3.i, align 4
  %skipped.i = getelementptr inbounds %struct.cx18_mdl, ptr %5, i32 0, i32 2
  %20 = ptrtoint ptr %skipped.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %skipped.i, align 4
  %depth.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 20, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %depth.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %depth.i, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %depth.i, ptr %depth.i, i32 1, ptr elementtype(i32) %depth.i) #10, !srcloc !42
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  %bufs_per_mdl = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 15
  %cmp.not132 = icmp eq ptr %5, null
  br i1 %cmp.not132, label %cx18_dequeue.exit.for.end34_crit_edge, label %land.rhs.lr.ph

cx18_dequeue.exit.for.end34_crit_edge:            ; preds = %cx18_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end34

land.rhs.lr.ph:                                   ; preds = %cx18_dequeue.exit
  %22 = ptrtoint ptr %bufs_per_mdl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bufs_per_mdl, align 4
  %buf_pool = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 12
  %scb = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 15
  %buf_size = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 14
  %bytesused12.i119 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 20, i32 2
  %depth13.i121 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 20, i32 1
  %mdl_size = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 16
  %q_free = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 17
  %lock.i101 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 17, i32 3
  %prev.i.i102 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 17, i32 0, i32 1
  %bytesused12.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 17, i32 2
  %depth13.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 17, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %cx18_dequeue.exit96.land.rhs_crit_edge, %land.rhs.lr.ph
  %mdl.0136 = phi ptr [ %5, %land.rhs.lr.ph ], [ %99, %cx18_dequeue.exit96.land.rhs_crit_edge ]
  %i.0135 = phi i32 [ %23, %land.rhs.lr.ph ], [ %i.1.lcssa145, %cx18_dequeue.exit96.land.rhs_crit_edge ]
  %mdl_id.0133 = phi i32 [ %3, %land.rhs.lr.ph ], [ %add30, %cx18_dequeue.exit96.land.rhs_crit_edge ]
  %24 = ptrtoint ptr %bufs_per_mdl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bufs_per_mdl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0135, i32 %25)
  %cmp3 = icmp eq i32 %i.0135, %25
  br i1 %cmp3, label %for.body, label %land.rhs.for.end34_crit_edge

land.rhs.for.end34_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end34

for.body:                                         ; preds = %land.rhs
  %id = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.0136, i32 0, i32 1
  %26 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mdl_id.0133, ptr %id, align 4
  %27 = ptrtoint ptr %bufs_per_mdl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bufs_per_mdl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp6127.not = icmp eq i32 %28, 0
  br i1 %cmp6127.not, label %for.body.if.then16_crit_edge, label %for.body7.lr.ph

for.body.if.then16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

for.body7.lr.ph:                                  ; preds = %for.body
  %buf_list = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.0136, i32 0, i32 4
  %prev.i2.i = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.0136, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %buf_pool to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %buf_pool, align 4
  %cmp.i.not149 = icmp eq ptr %30, %buf_pool
  br i1 %cmp.i.not149, label %for.body7.lr.ph.for.end_crit_edge, label %for.body7.lr.ph.if.end_crit_edge

for.body7.lr.ph.if.end_crit_edge:                 ; preds = %for.body7.lr.ph
  br label %if.end

for.body7.lr.ph.for.end_crit_edge:                ; preds = %for.body7.lr.ph
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body7:                                        ; preds = %list_move_tail.exit
  %31 = ptrtoint ptr %buf_pool to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %buf_pool, align 4
  %cmp.i.not = icmp eq ptr %32, %buf_pool
  br i1 %cmp.i.not, label %for.body7.for.end_crit_edge, label %for.body7.if.end_crit_edge

for.body7.if.end_crit_edge:                       ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body7.for.end_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %for.body7.if.end_crit_edge, %for.body7.lr.ph.if.end_crit_edge
  %33 = phi ptr [ %32, %for.body7.if.end_crit_edge ], [ %30, %for.body7.lr.ph.if.end_crit_edge ]
  %i.1128150 = phi i32 [ %inc, %for.body7.if.end_crit_edge ], [ 0, %for.body7.lr.ph.if.end_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %33) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %40 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i75 = tail call zeroext i1 @__list_add_valid(ptr noundef %33, ptr noundef %41, ptr noundef %buf_list) #10
  br i1 %call.i.i.i75, label %if.end.i.i.i76, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i76:                                   ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %33, ptr %prev.i2.i, align 4
  %43 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %buf_list, ptr %33, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %33, ptr %41, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i76, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %dma_handle = getelementptr inbounds %struct.cx18_buffer, ptr %33, i32 0, i32 1
  %46 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_handle, align 4
  %48 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %scb, align 4
  %add = add i32 %i.1128150, %mdl_id.0133
  %arrayidx = getelementptr %struct.cx18_scb, ptr %49, i32 0, i32 128, i32 %add
  tail call fastcc void @cx18_writel(i32 noundef %47, ptr noundef %arrayidx)
  %50 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %buf_size, align 8
  %52 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %scb, align 4
  %length = getelementptr %struct.cx18_scb, ptr %53, i32 0, i32 128, i32 %add, i32 1
  tail call fastcc void @cx18_writel(i32 noundef %51, ptr noundef %length)
  %inc = add nuw i32 %i.1128150, 1
  %54 = ptrtoint ptr %bufs_per_mdl to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bufs_per_mdl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %55)
  %cmp6 = icmp ult i32 %inc, %55
  br i1 %cmp6, label %for.body7, label %list_move_tail.exit.for.end_crit_edge

list_move_tail.exit.for.end_crit_edge:            ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_move_tail.exit.for.end_crit_edge, %for.body7.for.end_crit_edge, %for.body7.lr.ph.for.end_crit_edge
  %i.1.lcssa = phi i32 [ 0, %for.body7.lr.ph.for.end_crit_edge ], [ %inc, %list_move_tail.exit.for.end_crit_edge ], [ %inc, %for.body7.for.end_crit_edge ]
  %.lcssa = phi i32 [ %28, %for.body7.lr.ph.for.end_crit_edge ], [ %55, %list_move_tail.exit.for.end_crit_edge ], [ %55, %for.body7.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %.lcssa)
  %cmp15 = icmp eq i32 %i.1.lcssa, %.lcssa
  br i1 %cmp15, label %for.end.if.then16_crit_edge, label %if.else

for.end.if.then16_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.then16:                                        ; preds = %for.end.if.then16_crit_edge, %for.body.if.then16_crit_edge
  %i.1.lcssa144 = phi i32 [ %i.1.lcssa, %for.end.if.then16_crit_edge ], [ 0, %for.body.if.then16_crit_edge ]
  %56 = ptrtoint ptr %mdl_size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mdl_size, align 8
  %58 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %buf_size, align 8
  %rem = urem i32 %57, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool18.not = icmp eq i32 %rem, 0
  br i1 %tobool18.not, label %if.then16.if.end25_crit_edge, label %if.then19

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then19:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %scb, align 4
  %add22 = add i32 %i.1.lcssa144, %mdl_id.0133
  %sub = add i32 %add22, -1
  %length24 = getelementptr %struct.cx18_scb, ptr %61, i32 0, i32 128, i32 %sub, i32 1
  tail call fastcc void @cx18_writel(i32 noundef %rem, ptr noundef %length24)
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %if.then16.if.end25_crit_edge
  %bytesused.i97 = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.0136, i32 0, i32 6
  %62 = ptrtoint ptr %bytesused.i97 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %bytesused.i97, align 4
  %readpos.i98 = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.0136, i32 0, i32 7
  %63 = ptrtoint ptr %readpos.i98 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %readpos.i98, align 4
  %m_flags.i = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.0136, i32 0, i32 3
  %64 = ptrtoint ptr %m_flags.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %m_flags.i, align 4
  %skipped.i99 = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.0136, i32 0, i32 2
  %65 = ptrtoint ptr %skipped.i99 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %skipped.i99, align 4
  %curr_buf.i = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.0136, i32 0, i32 5
  %66 = ptrtoint ptr %curr_buf.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %curr_buf.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i101) #10
  %67 = ptrtoint ptr %prev.i.i102 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i102, align 4
  %call.i.i36.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mdl.0136, ptr noundef %68, ptr noundef %q_free) #10
  br i1 %call.i.i36.i, label %if.end9.sink.split.i, label %if.end25._cx18_enqueue.exit_crit_edge

if.end25._cx18_enqueue.exit_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %_cx18_enqueue.exit

if.end9.sink.split.i:                             ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %prev.i.i102 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %mdl.0136, ptr %prev.i.i102, align 4
  %70 = ptrtoint ptr %mdl.0136 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %q_free, ptr %mdl.0136, align 4
  %prev3.i.i37.i = getelementptr inbounds %struct.list_head, ptr %mdl.0136, i32 0, i32 1
  %71 = ptrtoint ptr %prev3.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev3.i.i37.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %mdl.0136, ptr %68, align 4
  br label %_cx18_enqueue.exit

_cx18_enqueue.exit:                               ; preds = %if.end9.sink.split.i, %if.end25._cx18_enqueue.exit_crit_edge
  %73 = ptrtoint ptr %bytesused.i97 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bytesused.i97, align 4
  %75 = ptrtoint ptr %readpos.i98 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %readpos.i98, align 4
  %sub.i = sub i32 %74, %76
  %77 = ptrtoint ptr %bytesused12.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bytesused12.i, align 4
  %add.i = add i32 %sub.i, %78
  store i32 %add.i, ptr %bytesused12.i, align 4
  %call.i.i34.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %depth13.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %depth13.i, i32 1, i32 3, i32 1) #10
  %79 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %depth13.i, ptr %depth13.i, i32 1, ptr elementtype(i32) %depth13.i) #10, !srcloc !41
  br label %if.end29

if.else:                                          ; preds = %for.end
  %bytesused.i104 = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.0136, i32 0, i32 6
  %80 = ptrtoint ptr %bytesused.i104 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %bytesused.i104, align 4
  %readpos.i105 = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.0136, i32 0, i32 7
  %81 = ptrtoint ptr %readpos.i105 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %readpos.i105, align 4
  %m_flags.i106 = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.0136, i32 0, i32 3
  %82 = ptrtoint ptr %m_flags.i106 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %m_flags.i106, align 4
  %skipped.i107 = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.0136, i32 0, i32 2
  %83 = ptrtoint ptr %skipped.i107 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %skipped.i107, align 4
  %curr_buf.i108 = getelementptr inbounds %struct.cx18_mdl, ptr %mdl.0136, i32 0, i32 5
  %84 = ptrtoint ptr %curr_buf.i108 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %curr_buf.i108, align 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %85 = ptrtoint ptr %q_idle to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %q_idle, align 4
  %call.i.i35.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mdl.0136, ptr noundef %q_idle, ptr noundef %86) #10
  br i1 %call.i.i35.i, label %if.end.i.i.i113, label %if.else._cx18_enqueue.exit123_crit_edge

if.else._cx18_enqueue.exit123_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %_cx18_enqueue.exit123

if.end.i.i.i113:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i112 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %prev1.i.i.i112 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %mdl.0136, ptr %prev1.i.i.i112, align 4
  %88 = ptrtoint ptr %mdl.0136 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %86, ptr %mdl.0136, align 4
  %prev3.i.i37.i114 = getelementptr inbounds %struct.list_head, ptr %mdl.0136, i32 0, i32 1
  %89 = ptrtoint ptr %prev3.i.i37.i114 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %q_idle, ptr %prev3.i.i37.i114, align 4
  %90 = ptrtoint ptr %q_idle to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %mdl.0136, ptr %q_idle, align 4
  br label %_cx18_enqueue.exit123

_cx18_enqueue.exit123:                            ; preds = %if.end.i.i.i113, %if.else._cx18_enqueue.exit123_crit_edge
  %91 = ptrtoint ptr %bytesused.i104 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bytesused.i104, align 4
  %93 = ptrtoint ptr %readpos.i105 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %readpos.i105, align 4
  %sub.i118 = sub i32 %92, %94
  %95 = ptrtoint ptr %bytesused12.i119 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %bytesused12.i119, align 4
  %add.i120 = add i32 %sub.i118, %96
  store i32 %add.i120, ptr %bytesused12.i119, align 4
  %call.i.i34.i122 = tail call zeroext i1 @__kasan_check_write(ptr noundef %depth13.i121, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %depth13.i121, i32 1, i32 3, i32 1) #10
  %97 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %depth13.i121, ptr %depth13.i121, i32 1, ptr elementtype(i32) %depth13.i121) #10, !srcloc !41
  br label %if.end29

if.end29:                                         ; preds = %_cx18_enqueue.exit123, %_cx18_enqueue.exit
  %lock.i.sink = phi ptr [ %lock.i, %_cx18_enqueue.exit123 ], [ %lock.i101, %_cx18_enqueue.exit ]
  %i.1.lcssa145 = phi i32 [ %i.1.lcssa, %_cx18_enqueue.exit123 ], [ %i.1.lcssa144, %_cx18_enqueue.exit ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.sink) #10
  %add30 = add i32 %i.1.lcssa145, %mdl_id.0133
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %98 = ptrtoint ptr %q_idle to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile ptr, ptr %q_idle, align 4
  %cmp.i.not.i79 = icmp eq ptr %99, %q_idle
  br i1 %cmp.i.not.i79, label %if.end29.for.end34.sink.split_crit_edge, label %if.then.i81

if.end29.for.end34.sink.split_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end34.sink.split

if.then.i81:                                      ; preds = %if.end29
  %call.i.i15.i80 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %99) #10
  br i1 %call.i.i15.i80, label %if.end.i.i.i84, label %if.then.i81.cx18_dequeue.exit96_crit_edge

if.then.i81.cx18_dequeue.exit96_crit_edge:        ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_dequeue.exit96

if.end.i.i.i84:                                   ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i82 = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i.i.i82, align 4
  %102 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %99, align 4
  %prev1.i.i.i.i83 = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %prev1.i.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev1.i.i.i.i83, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %103, ptr %101, align 4
  br label %cx18_dequeue.exit96

cx18_dequeue.exit96:                              ; preds = %if.end.i.i.i84, %if.then.i81.cx18_dequeue.exit96_crit_edge
  %106 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %99, ptr %99, align 4
  %prev.i3.i.i85 = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %107 = ptrtoint ptr %prev.i3.i.i85 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %99, ptr %prev.i3.i.i85, align 4
  %bytesused.i86 = getelementptr inbounds %struct.cx18_mdl, ptr %99, i32 0, i32 6
  %108 = ptrtoint ptr %bytesused.i86 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bytesused.i86, align 4
  %readpos.i87 = getelementptr inbounds %struct.cx18_mdl, ptr %99, i32 0, i32 7
  %110 = ptrtoint ptr %readpos.i87 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %readpos.i87, align 4
  %sub.neg.i88 = sub i32 %111, %109
  %112 = ptrtoint ptr %bytesused12.i119 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %bytesused12.i119, align 4
  %sub4.i90 = add i32 %sub.neg.i88, %113
  store i32 %sub4.i90, ptr %bytesused12.i119, align 4
  %skipped.i91 = getelementptr inbounds %struct.cx18_mdl, ptr %99, i32 0, i32 2
  %114 = ptrtoint ptr %skipped.i91 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %skipped.i91, align 4
  %call.i.i.i93 = tail call zeroext i1 @__kasan_check_write(ptr noundef %depth13.i121, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %depth13.i121, i32 1, i32 3, i32 1) #10
  %115 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %depth13.i121, ptr %depth13.i121, i32 1, ptr elementtype(i32) %depth13.i121) #10, !srcloc !42
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  %cmp.not = icmp eq ptr %99, null
  br i1 %cmp.not, label %cx18_dequeue.exit96.for.end34_crit_edge, label %cx18_dequeue.exit96.land.rhs_crit_edge

cx18_dequeue.exit96.land.rhs_crit_edge:           ; preds = %cx18_dequeue.exit96
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

cx18_dequeue.exit96.for.end34_crit_edge:          ; preds = %cx18_dequeue.exit96
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end34

for.end34.sink.split:                             ; preds = %if.end29.for.end34.sink.split_crit_edge, %entry.for.end34.sink.split_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  br label %for.end34

for.end34:                                        ; preds = %for.end34.sink.split, %cx18_dequeue.exit96.for.end34_crit_edge, %land.rhs.for.end34_crit_edge, %cx18_dequeue.exit.for.end34_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx18_writel(i32 noundef %val, ptr noundef %addr) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.bswap.i32(i32 %val) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !43
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !44
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !45
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !46
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %val)
  %cmp1 = icmp eq i32 %2, %val
  br i1 %cmp1, label %entry.for.end_crit_edge, label %for.cond

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !43
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !44
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !45
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !46
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %val)
  %cmp1.1 = icmp eq i32 %4, %val
  br i1 %cmp1.1, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !43
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !44
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !45
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !46
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %val)
  %cmp1.2 = icmp eq i32 %6, %val
  br i1 %cmp1.2, label %for.cond.1.for.end_crit_edge, label %for.cond.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !43
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !44
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !45
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !46
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %val)
  %cmp1.3 = icmp eq i32 %8, %val
  br i1 %cmp1.3, label %for.cond.2.for.end_crit_edge, label %for.cond.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !43
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !44
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !45
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !46
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %val)
  %cmp1.4 = icmp eq i32 %10, %val
  br i1 %cmp1.4, label %for.cond.3.for.end_crit_edge, label %for.cond.4

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !43
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !44
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !45
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !46
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %val)
  %cmp1.5 = icmp eq i32 %12, %val
  br i1 %cmp1.5, label %for.cond.4.for.end_crit_edge, label %for.cond.5

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !43
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !44
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !45
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !46
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %val)
  %cmp1.6 = icmp eq i32 %14, %val
  br i1 %cmp1.6, label %for.cond.5.for.end_crit_edge, label %for.cond.6

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !43
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !44
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !45
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !46
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %val)
  %cmp1.7 = icmp eq i32 %16, %val
  br i1 %cmp1.7, label %for.cond.6.for.end_crit_edge, label %for.cond.7

for.cond.6.for.end_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.7:                                       ; preds = %for.cond.6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !43
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !44
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !45
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !46
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %val)
  %cmp1.8 = icmp eq i32 %18, %val
  br i1 %cmp1.8, label %for.cond.7.for.end_crit_edge, label %for.cond.8

for.cond.7.for.end_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !43
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !44
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !46
  br label %for.end

for.end:                                          ; preds = %for.cond.8, %for.cond.7.for.end_crit_edge, %for.cond.6.for.end_crit_edge, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_cx18_mdl_sync_for_device(ptr nocapture noundef readonly %s, ptr noundef readonly %mdl) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 10
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma1, align 4
  %buf_size2 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 14
  %2 = ptrtoint ptr %buf_size2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_size2, align 8
  %buf_list = getelementptr inbounds %struct.cx18_mdl, ptr %mdl, i32 0, i32 4
  %4 = ptrtoint ptr %buf_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %buf.015 = load ptr, ptr %buf_list, align 4
  %cmp.not16 = icmp eq ptr %buf.015, %buf_list
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cx = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 2
  %5 = ptrtoint ptr %cx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cx, align 4
  %pci_dev3 = getelementptr inbounds %struct.cx18, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pci_dev3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_dev3, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %buf.017 = phi ptr [ %buf.015, %for.body.lr.ph ], [ %buf.0, %for.body.for.body_crit_edge ]
  %dma_handle = getelementptr inbounds %struct.cx18_buffer, ptr %buf.017, i32 0, i32 1
  %9 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_handle, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev, i32 noundef %10, i32 noundef %3, i32 noundef %1) #10
  %11 = ptrtoint ptr %buf.017 to i32
  call void @__asan_load4_noabort(i32 %11)
  %buf.0 = load ptr, ptr %buf.017, align 4
  %cmp.not = icmp eq ptr %buf.0, %buf_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_stream_alloc(ptr noundef %s) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %buffers = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 13
  %2 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup88_crit_edge, label %do.body

entry.cleanup88_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup88

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %4 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end15_crit_edge, label %do.end

do.body.do.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %name4 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 3
  %5 = ptrtoint ptr %name4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name4, align 8
  %buf_size = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 14
  %7 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf_size, align 8
  %mul = mul i32 %8, %3
  %div141 = lshr i32 %mul, 10
  %mul11 = mul i32 %mul, 100
  %div12142 = lshr i32 %mul11, 10
  %rem = urem i32 %div12142, 100
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, ptr noundef %6, i32 noundef %3, i32 noundef %8, i32 noundef %div141, i32 noundef %rem) #13
  br label %do.end15

do.end15:                                         ; preds = %do.end, %do.body.do.end15_crit_edge
  %free_mdl_idx = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %free_mdl_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %free_mdl_idx, align 8
  %11 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buffers, align 4
  %add = add i32 %12, %10
  %arrayidx.idx = shl i32 %add, 3
  %arrayidx.offs = add i32 %arrayidx.idx, 3248
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %arrayidx.offs)
  %cmp18 = icmp sgt i32 %arrayidx.offs, 65536
  br i1 %cmp18, label %if.then19, label %if.end44

if.then19:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  %name32 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name32) #13
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name32, i32 noundef 7786) #13
  br label %cleanup88

if.end44:                                         ; preds = %do.end15
  %mdl_base_idx = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 7
  %13 = ptrtoint ptr %mdl_base_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %mdl_base_idx, align 8
  %14 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp47169.not = icmp eq i32 %15, 0
  br i1 %cmp47169.not, label %if.end44.for.end_crit_edge, label %for.body.lr.ph

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end44
  %buf_size56 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 14
  %q_idle = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 20
  %lock.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 20, i32 3
  %prev.i.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 20, i32 0, i32 1
  %bytesused12.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 20, i32 2
  %depth13.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 20, i32 1
  %dma = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 10
  %buf_pool = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 12
  %prev.i152 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 12, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0170 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 11712, i32 noundef 40) #14
  %cmp49 = icmp eq ptr %call7.i.i, null
  br i1 %cmp49, label %for.body.for.end_crit_edge, label %if.end51

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end51:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i145 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 11712, i32 noundef 24) #14
  %cmp53 = icmp eq ptr %call7.i.i145, null
  br i1 %cmp53, label %if.end51.for.end.sink.split_crit_edge, label %if.end8.i

if.end51.for.end.sink.split_crit_edge:            ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.sink.split

if.end8.i:                                        ; preds = %if.end51
  %18 = ptrtoint ptr %buf_size56 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_size56, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 11456) #15
  %buf58 = getelementptr inbounds %struct.cx18_buffer, ptr %call7.i.i145, i32 0, i32 2
  %20 = ptrtoint ptr %buf58 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i, ptr %buf58, align 4
  %cmp60 = icmp eq ptr %call9.i, null
  br i1 %cmp60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %for.end.sink.split

if.end62:                                         ; preds = %if.end8.i
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %buf_list = getelementptr inbounds %struct.cx18_mdl, ptr %call7.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %buf_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %buf_list, ptr %buf_list, align 4
  %prev.i146 = getelementptr inbounds %struct.cx18_mdl, ptr %call7.i.i, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %prev.i146 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %buf_list, ptr %prev.i146, align 8
  %25 = ptrtoint ptr %mdl_base_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mdl_base_idx, align 8
  %id = getelementptr inbounds %struct.cx18_mdl, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %id, align 8
  %bytesused.i = getelementptr inbounds %struct.cx18_mdl, ptr %call7.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %bytesused.i, align 8
  %readpos.i = getelementptr inbounds %struct.cx18_mdl, ptr %call7.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %readpos.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %readpos.i, align 4
  %m_flags.i = getelementptr inbounds %struct.cx18_mdl, ptr %call7.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %m_flags.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %m_flags.i, align 8
  %skipped.i = getelementptr inbounds %struct.cx18_mdl, ptr %call7.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %skipped.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %skipped.i, align 4
  %curr_buf.i = getelementptr inbounds %struct.cx18_mdl, ptr %call7.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %curr_buf.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %curr_buf.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %call.i.i36.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %34, ptr noundef %q_idle) #10
  br i1 %call.i.i36.i, label %if.end9.sink.split.i, label %if.end62._cx18_enqueue.exit_crit_edge

if.end62._cx18_enqueue.exit_crit_edge:            ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %_cx18_enqueue.exit

if.end9.sink.split.i:                             ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %q_idle, ptr %call7.i.i, align 8
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call7.i.i, ptr %34, align 4
  br label %_cx18_enqueue.exit

_cx18_enqueue.exit:                               ; preds = %if.end9.sink.split.i, %if.end62._cx18_enqueue.exit_crit_edge
  %39 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bytesused.i, align 8
  %41 = ptrtoint ptr %readpos.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %readpos.i, align 4
  %sub.i157 = sub i32 %40, %42
  %43 = ptrtoint ptr %bytesused12.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bytesused12.i, align 4
  %add.i = add i32 %sub.i157, %44
  store i32 %add.i, ptr %bytesused12.i, align 4
  %call.i.i34.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %depth13.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %depth13.i, i32 1, i32 3, i32 1) #10
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %depth13.i, ptr %depth13.i, i32 1, ptr elementtype(i32) %depth13.i) #10, !srcloc !41
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  %46 = ptrtoint ptr %call7.i.i145 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %call7.i.i145, ptr %call7.i.i145, align 8
  %prev.i147 = getelementptr inbounds %struct.list_head, ptr %call7.i.i145, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i147 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i145, ptr %prev.i147, align 4
  %48 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cx1, align 4
  %pci_dev = getelementptr inbounds %struct.cx18, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %52 = ptrtoint ptr %buf58 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buf58, align 4
  %54 = ptrtoint ptr %buf_size56 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %buf_size56, align 8
  %56 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma, align 4
  %call.i148 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %53) #10
  br i1 %call.i148, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %_cx18_enqueue.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i150, !prof !47

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit

if.then.i150:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #10
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44, i32 3
  %58 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i149 = icmp eq ptr %59, null
  br i1 %tobool.not.i.i149, label %if.end.i.i151, label %if.then.i150.dev_name.exit.i_crit_edge

if.then.i150.dev_name.exit.i_crit_edge:           ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i151:                                    ; preds = %if.then.i150
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i151, %if.then.i150.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %61, %if.end.i.i151 ], [ %59, %if.then.i150.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %_cx18_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %53, i32 noundef %55) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %62 = load ptr, ptr @mem_map, align 4
  %63 = ptrtoint ptr %53 to i32
  %sub.i = add i32 %63, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %62, i32 %shr.i
  %and.i = and i32 %63, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %55, i32 noundef %57, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_handle = getelementptr inbounds %struct.cx18_buffer, ptr %call7.i.i145, i32 0, i32 1
  %64 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %retval.0.i, ptr %dma_handle, align 8
  %65 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cx1, align 4
  %pci_dev.i = getelementptr inbounds %struct.cx18, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pci_dev.i, align 4
  %69 = ptrtoint ptr %buf_size56 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %buf_size56, align 8
  %71 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dma, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev.i.i, i32 noundef %retval.0.i, i32 noundef %70, i32 noundef %72) #10
  %73 = ptrtoint ptr %prev.i152 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i152, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i145, ptr noundef %74, ptr noundef %buf_pool) #10
  br i1 %call.i.i, label %if.end.i.i153, label %dma_map_single_attrs.exit.for.inc_crit_edge

dma_map_single_attrs.exit.for.inc_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i.i153:                                    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %prev.i152 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call7.i.i145, ptr %prev.i152, align 4
  %76 = ptrtoint ptr %call7.i.i145 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %buf_pool, ptr %call7.i.i145, align 8
  %77 = ptrtoint ptr %prev.i147 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev.i147, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %call7.i.i145, ptr %74, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i153, %dma_map_single_attrs.exit.for.inc_crit_edge
  %inc = add nuw i32 %i.0170, 1
  %79 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %buffers, align 4
  %cmp47 = icmp ult i32 %inc, %80
  br i1 %cmp47, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.sink.split:                               ; preds = %if.then61, %if.end51.for.end.sink.split_crit_edge
  %call7.i.i145.lcssa178.sink = phi ptr [ %call7.i.i145, %if.then61 ], [ %call7.i.i, %if.end51.for.end.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i145.lcssa178.sink) #10
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end44.for.end_crit_edge
  %i.0166 = phi i32 [ 0, %if.end44.for.end_crit_edge ], [ %i.0170, %for.end.sink.split ], [ %inc, %for.inc.for.end_crit_edge ], [ %i.0170, %for.body.for.end_crit_edge ]
  %81 = ptrtoint ptr %buffers to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %buffers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0166, i32 %82)
  %cmp73 = icmp eq i32 %i.0166, %82
  br i1 %cmp73, label %if.then74, label %do.end81

if.then74:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %free_mdl_idx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %free_mdl_idx, align 8
  %add77 = add i32 %84, %i.0166
  store i32 %add77, ptr %free_mdl_idx, align 8
  br label %cleanup88

do.end81:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %name84 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %name86 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 3
  %85 = ptrtoint ptr %name86 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %name86, align 8
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name84, ptr noundef %86) #13
  tail call void @cx18_stream_free(ptr noundef %s)
  br label %cleanup88

cleanup88:                                        ; preds = %do.end81, %if.then74, %if.then19, %entry.cleanup88_crit_edge
  %retval.0 = phi i32 [ -12, %if.then19 ], [ 0, %if.then74 ], [ -12, %do.end81 ], [ 0, %entry.cleanup88_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_stream_free(ptr noundef %s) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %0 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cx1, align 4
  %name = getelementptr inbounds %struct.cx18, ptr %2, i32 0, i32 2, i32 4
  %name3 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 3
  %3 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name3, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name, ptr noundef %4) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  tail call void @cx18_unload_queues(ptr noundef %s)
  %q_idle = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 20
  %lock.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 20, i32 3
  %bytesused3.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 20, i32 2
  %depth.i = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 20, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %5 = ptrtoint ptr %q_idle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %q_idle, align 4
  %cmp.i.not.i32 = icmp eq ptr %6, %q_idle
  br i1 %cmp.i.not.i32, label %do.end5.cx18_dequeue.exit.thread_crit_edge, label %do.end5.if.then.i_crit_edge

do.end5.if.then.i_crit_edge:                      ; preds = %do.end5
  br label %if.then.i

do.end5.cx18_dequeue.exit.thread_crit_edge:       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_dequeue.exit.thread

cx18_dequeue.exit.thread:                         ; preds = %while.body.cx18_dequeue.exit.thread_crit_edge, %do.end5.cx18_dequeue.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  br label %while.cond8.preheader

if.then.i:                                        ; preds = %while.body.if.then.i_crit_edge, %do.end5.if.then.i_crit_edge
  %7 = phi ptr [ %27, %while.body.if.then.i_crit_edge ], [ %6, %do.end5.if.then.i_crit_edge ]
  %call.i.i15.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #10
  br i1 %call.i.i15.i, label %if.end.i.i.i, label %if.then.i.cx18_dequeue.exit_crit_edge

if.then.i.cx18_dequeue.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_dequeue.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %cx18_dequeue.exit

cx18_dequeue.exit:                                ; preds = %if.end.i.i.i, %if.then.i.cx18_dequeue.exit_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %7, ptr %7, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %7, ptr %prev.i3.i.i, align 4
  %bytesused.i = getelementptr inbounds %struct.cx18_mdl, ptr %7, i32 0, i32 6
  %16 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bytesused.i, align 4
  %readpos.i = getelementptr inbounds %struct.cx18_mdl, ptr %7, i32 0, i32 7
  %18 = ptrtoint ptr %readpos.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %readpos.i, align 4
  %sub.neg.i = sub i32 %19, %17
  %20 = ptrtoint ptr %bytesused3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bytesused3.i, align 4
  %sub4.i = add i32 %sub.neg.i, %21
  store i32 %sub4.i, ptr %bytesused3.i, align 4
  %skipped.i = getelementptr inbounds %struct.cx18_mdl, ptr %7, i32 0, i32 2
  %22 = ptrtoint ptr %skipped.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %skipped.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %depth.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %depth.i, i32 1, i32 3, i32 1) #10
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %depth.i, ptr %depth.i, i32 1, ptr elementtype(i32) %depth.i) #10, !srcloc !42
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %cx18_dequeue.exit.while.cond8.preheader_crit_edge, label %while.body

cx18_dequeue.exit.while.cond8.preheader_crit_edge: ; preds = %cx18_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond8.preheader

while.cond8.preheader:                            ; preds = %cx18_dequeue.exit.while.cond8.preheader_crit_edge, %cx18_dequeue.exit.thread
  %buf_pool = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 12
  %24 = ptrtoint ptr %buf_pool to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %buf_pool, align 4
  %cmp.i.not29 = icmp eq ptr %25, %buf_pool
  br i1 %cmp.i.not29, label %while.cond8.preheader.while.end16_crit_edge, label %while.body11.lr.ph

while.cond8.preheader.while.end16_crit_edge:      ; preds = %while.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end16

while.body11.lr.ph:                               ; preds = %while.cond8.preheader
  %buf_size = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 14
  %dma = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 10
  br label %while.body11

while.body:                                       ; preds = %cx18_dequeue.exit
  tail call void @kfree(ptr noundef nonnull %7) #10
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %26 = ptrtoint ptr %q_idle to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %q_idle, align 4
  %cmp.i.not.i = icmp eq ptr %27, %q_idle
  br i1 %cmp.i.not.i, label %while.body.cx18_dequeue.exit.thread_crit_edge, label %while.body.if.then.i_crit_edge

while.body.if.then.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

while.body.cx18_dequeue.exit.thread_crit_edge:    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_dequeue.exit.thread

while.body11:                                     ; preds = %list_del_init.exit.while.body11_crit_edge, %while.body11.lr.ph
  %28 = phi ptr [ %25, %while.body11.lr.ph ], [ %50, %list_del_init.exit.while.body11_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %28) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body11.list_del_init.exit_crit_edge

while.body11.list_del_init.exit_crit_edge:        ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body11.list_del_init.exit_crit_edge
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %28, ptr %28, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %28, ptr %prev.i3.i, align 4
  %37 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cx1, align 4
  %pci_dev = getelementptr inbounds %struct.cx18, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %dma_handle = getelementptr inbounds %struct.cx18_buffer, ptr %28, i32 0, i32 1
  %41 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma_handle, align 4
  %43 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %buf_size, align 8
  %45 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef 0) #10
  %buf15 = getelementptr inbounds %struct.cx18_buffer, ptr %28, i32 0, i32 2
  %47 = ptrtoint ptr %buf15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buf15, align 4
  tail call void @kfree(ptr noundef %48) #10
  tail call void @kfree(ptr noundef %28) #10
  %49 = ptrtoint ptr %buf_pool to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %buf_pool, align 4
  %cmp.i.not = icmp eq ptr %50, %buf_pool
  br i1 %cmp.i.not, label %list_del_init.exit.while.end16_crit_edge, label %list_del_init.exit.while.body11_crit_edge

list_del_init.exit.while.body11_crit_edge:        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body11

list_del_init.exit.while.end16_crit_edge:         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end16

while.end16:                                      ; preds = %list_del_init.exit.while.end16_crit_edge, %while.cond8.preheader.while.end16_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx18/cx18-queue.c", i32 153, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cx18_queue_get_mdl._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cx18_queue_get_mdl._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/cx18/cx18-queue.c", i32 340, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cx18_stream_alloc._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @cx18_stream_alloc._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/cx18/cx18-queue.c", i32 350, i32 3}
!13 = !{ptr @cx18_stream_alloc._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @cx18_stream_alloc._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/cx18/cx18-queue.c", i32 351, i32 3}
!17 = !{ptr @cx18_stream_alloc._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @cx18_stream_alloc._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/cx18/cx18-queue.c", i32 398, i32 2}
!21 = !{ptr @cx18_stream_alloc._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @cx18_stream_alloc._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/cx18/cx18-queue.c", i32 409, i32 2}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cx18_stream_free._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @cx18_stream_free._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 2148374604, i64 2148374630, i64 2148374659, i64 2148374693, i64 2148374724, i64 2148374747}
!42 = !{i64 2148377069, i64 2148377095, i64 2148377124, i64 2148377158, i64 2148377189, i64 2148377212}
!43 = !{i64 2158667174}
!44 = !{i64 5751525}
!45 = !{i64 5751943}
!46 = !{i64 2158666804}
!47 = !{!"branch_weights", i32 2000, i32 1}
